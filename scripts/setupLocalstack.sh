#!/bin/bash

COUNT=$1


# Ensure count is not empty
if [ -z "$COUNT" ] || [ "$COUNT" -lt 1 ]; then
    echo "Please provide a count of instances greater than or equal to 1."
    exit 1
fi

if [ -z "$COUNT" ]; then
    echo "Please provide a count of instances to create."
    exit 1
fi


# Init Localstack
echo "Ensuring localstack is running..."
if ! docker ps | grep localstack; then
    localstack start -d
    if [ $? -ne 0 ]; then
        echo "Failed to start localstack. Exiting..."
        exit 1
    fi
else
    echo "Localstack already running..."
fi


# Key pair
echo "Checking for existing test key pair..."
if [ ! -f ./localstack-test-key.pem ]; then
    echo "Creating new key pair..."
    awslocal ec2 create-key-pair --key-name localstack-test-key | jq -r '.KeyMaterial' > localstack-test-key.pem
    chmod 400 localstack-test-key.pem
else
    echo "Key pair already exists..."
fi


# IAM
echo "Beginning IAM setup..."
echo "Creating test IAM Policy..."
awslocal iam create-policy \
    --policy-name test-policy \
    --policy-document '{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Action":"ec2:*","Resource":"*"}]}' > /dev/null 2>&1
# Create IAM Role
echo "Creating test IAM Role with attached policy..."
ROLE_ARN=$(awslocal iam create-role \
    --role-name test-role \
    --assume-role-policy-document '{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Principal":{"Service":"ec2.amazonaws.com"},"Action":"sts:AssumeRole"}]}' | jq -r '.Role.Arn')
echo "Setting IAM Role policy to created test policy..."
awslocal iam attach-role-policy \
    --role-name test-role \
    --policy-arn $(awslocal iam list-policies | jq -r '.Policies[] | select(.PolicyName == "test-policy") | .Arn') > /dev/null 2>&1
    # Create IAM Instance Profile
echo "Creating test IAM Instance Profile..."
awslocal iam create-instance-profile --instance-profile-name test-role > /dev/null 2>&1
# Add IAM Role to Instance Profile
echo "Adding IAM Role to Instance Profile..."
awslocal iam add-role-to-instance-profile --instance-profile-name test-role --role-name test-role > /dev/null 2>&1
echo "Done"


# Security Group
echo "Setting security group rule..."
awslocal ec2 authorize-security-group-ingress \
    --group-id default \
    --protocol tcp \
    --port 8000 \
    --cidr 0.0.0.0/0  > /dev/null 2>&1
echo "Done"


# Create instances
SG_ID=$(awslocal ec2 describe-security-groups | jq -r '.SecurityGroups[0].GroupId')
USER_DATA=$(cat <<EOF
#!/bin/bash

# Add your user data commands here
echo "This is the user data script"
# Example command:
# apt-get update
EOF
)
echo "Creating $COUNT instances..."
for i in $(seq 1 $COUNT); do
    echo "Creating instance $i..."
    INSTANCE_ID=$(awslocal ec2 run-instances \
        --image-id ami-ff0fea8310f3 \
        --count 1 \
        --instance-type t3.nano \
        --key-name localstack-test-key \
        --security-group-ids $SG_ID \
        --user-data "$USER_DATA" \
        --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=test-instance-$i}]" | jq -r '.Instances[0].InstanceId')

    # Associate IAM Instance Profile with EC2 Instance
    awslocal ec2 associate-iam-instance-profile --instance-id $INSTANCE_ID --iam-instance-profile Name=test-role > /dev/null 2>&1
    echo "Done"
done
echo "Done"
INSTANCE_IDS=$(awslocal ec2 describe-instances | jq -r '.Reservations[].Instances[].InstanceId')
echo "Waiting for instances to be running..."
awslocal ec2 wait instance-running --instance-ids $INSTANCE_IDS


# AMI
echo "Creating AMIs from instances..."
for INSTANCE_ID in $INSTANCE_IDS; do
    awslocal ec2 create-image \
        --instance-id $INSTANCE_ID \
        --name "my-ami-$INSTANCE_ID" \
        --description "My AMI - $INSTANCE_ID" \
        --no-reboot > /dev/null 2>&1
done
echo "Done"


# Elastic IP
echo "Creating test Elastic IP..."
awslocal ec2 allocate-address --domain vpc > /dev/null 2>&1
echo "Done"
echo "Attaching Elastic IP to first test-instance..."
ELASTIC_IP=$(awslocal ec2 describe-addresses | jq -r '.Addresses[0].AllocationId')
awslocal ec2 associate-address --instance-id $(echo $INSTANCE_IDS | cut -d' ' -f1) --allocation-id $ELASTIC_IP > /dev/null 2>&1
echo "Done"


# Secrets Manager
echo "Creating test secrets..."
for i in $(seq 1 $COUNT); do
    secret_name="test-secret-$i"
    echo "Creating $secret_name..."
    awslocal secretsmanager create-secret \
        --name $secret_name \
        --description "Test secret $i" \
        --secret-string '{"username":"testuser","password":"testpass"}' > /dev/null 2>&1

    for j in {1..3}; do
        echo "Updating $secret_name with version $j..."
        awslocal secretsmanager update-secret \
            --secret-id $secret_name \
            --secret-string '{"username":"testuser","password":"testpass","version":"'$j'"}' > /dev/null 2>&1
    done
done
echo "Done"
echo "Uploading key pair to Secrets Manager..."
awslocal secretsmanager create-secret \
    --name localstack-test-key \
    --description "Test key pair" \
    --secret-string file://localstack-test-key.pem > /dev/null 2>&1
echo "Done"


# SSM Parameter Store
echo "Creating test parameters..."
for i in $(seq 1 $COUNT); do
    param_name="test-param-$i"
    echo "Creating $param_name..."
    awslocal ssm put-parameter \
        --name $param_name \
        --description "Test parameter $i" \
        --type String \
        --value "test-value-$i" > /dev/null 2>&1
done
echo "Done"
echo "Updating test parameter..."
awslocal ssm put-parameter \
    --name test-param-1 \
    --description "Test parameter 1" \
    --type String \
    --value "test-value-1-updated" > /dev/null 2>&1
echo "Done"
echo "Uploading key pair to SSM Parameter Store..."
awslocal ssm put-parameter \
    --name localstack-test-key \
    --description "Test key pair" \
    --type SecureString \
    --value file://localstack-test-key.pem > /dev/null 2>&1
echo "Done"


# Launch Template
echo "Creating launch templates..."
for i in $(seq 1 $COUNT); do
    launch_template_name="test-launch-template-$i"
    echo "Creating $launch_template_name..."
    awslocal ec2 create-launch-template \
        --launch-template-name $launch_template_name \
        --version-description "Test launch template $i" \
        --launch-template-data '{
            "ImageId": "ami-ff0fea8310f3",
            "InstanceType": "t3.nano",
            "KeyName": "localstack-test-key",
            "IamInstanceProfile": {
                "Arn": "'$ROLE_ARN'"
            },
            "UserData": "echo \"This is the user data script\" # Example command: apt-get update"
        }' > /dev/null 2>&1
done
echo "Done"

echo "Creating instances using launch templates..."
for i in $(seq 1 $COUNT); do
    launch_template_name="test-launch-template-$i"
    echo "Creating instance with $launch_template_name..."
    awslocal ec2 run-instances \
        --launch-template '{"LaunchTemplateName":"'$launch_template_name'","Version":"1"}' > /dev/null 2>&1
done
echo "Done"

# Only supported by Localstack Pro.
# # Create target group
# echo "Creating target group..."
# awslocal elbv2 create-target-group \
#     --name test-target-group \
#     --protocol HTTP \
#     --port 80 \
#     --vpc-id $(awslocal ec2 describe-vpcs | jq -r '.Vpcs[0].VpcId')
# echo "Done"
# echo "Attach first two test instances to target group..."
# for i in $(seq 1 2); do
#     awslocal elbv2 register-targets \
#         --target-group-arn $(awslocal elbv2 describe-target-groups | jq -r '.TargetGroups[0].TargetGroupArn') \
#         --targets Id=$(echo $INSTANCE_IDS | cut -d' ' -f$i)
# done
# echo "Done"
# # Create load balancer
# echo "Creating load balancer..."
# awslocal elbv2 create-load-balancer \
#     --name test-load-balancer \
#     --subnets $(awslocal ec2 describe-subnets | jq -r '.Subnets[].SubnetId' | tr '\n' ',' | sed 's/,$//') \
#     --security-groups $SG_ID
# echo "Done"
# # Create listener
# echo "Creating listener..."
# awslocal elbv2 create-listener \
#     --load-balancer-arn $(awslocal elbv2 describe-load-balancers | jq -r '.LoadBalancers[0].LoadBalancerArn') \
#     --protocol HTTP \
#     --port 80 \
#     --default-actions Type=forward,TargetGroupArn=$(awslocal elbv2 describe-target-groups | jq -r '.TargetGroups[0].TargetGroupArn')
# echo "Done"

# Only supported by Localstack Pro.
# Create autoscaling group
# echo "Creating autoscaling group..."
# awslocal autoscaling create-auto-scaling-group \
#     --auto-scaling-group-name test-auto-scaling-group \
#     --launch-template "LaunchTemplateName=test-launch-template-1,Version=1" \
#     --min-size 1 \
#     --max-size 3 \
#     --desired-capacity 2 \
#     --vpc-zone-identifier $(awslocal ec2 describe-subnets | jq -r '.Subnets[].SubnetId' | tr '\n' ',' | sed 's/,$//') > /dev/null 2>&1
# echo "Done"


# Route53
echo "Creating hosted zone..."
awslocal route53 create-hosted-zone \
    --name test.local \
    --caller-reference $(date +%s) > /dev/null 2>&1
echo "Creating record set..."
awslocal route53 change-resource-record-sets \
    --hosted-zone-id $(awslocal route53 list-hosted-zones | jq -r '.HostedZones[0].Id' | cut -d'/' -f3) \
    --change-batch '{
        "Changes": [
            {
                "Action": "CREATE",
                "ResourceRecordSet": {
                    "Name": "test.local",
                    "Type": "A",
                    "TTL": 300,
                    "ResourceRecords": [
                        {
                            "Value": "10.0.0.0"
                        }
                    ]
                }
            }
        ]
    }' > /dev/null 2>&1
echo "Done"



# Done
echo "Localstack setup complete"