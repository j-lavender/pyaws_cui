# ec2_commands

File containing functions used to call the underlying AWS EC2 commands.



This file is meant to handle the intermediate considerations between the
CUI and the AWS EC2 CLI. It is meant to be called by the CUI, and to call the
AWS CLI commands. It is not meant to be called directly by the user.

#### Classes

 Class  | Doc
-----|-----
 EC2Commands | Class used to manage AWS EC2 commands.




## EC2Commands

```python
class EC2Commands
```

Class used to manage AWS EC2 commands.



This class provides the interface between the AWS EC2 commands. 
It is responsible for calling the AWS EC2 commands, and providing
the results to other pyaws modules.


#### Attributes

 Attribute  | Type  | Doc
-----|----------|-----
 session  |  boto3.session.Session | The AWS session object.

#### Methods

 Method  | Doc
-----|-----
 get_instances | Gets the instances in the current session.
 get_instance_details | Gets the instance with the given instance id.
 get_images | Gets the private images in the current session.
 get_image_details | Gets the image with the given image id.
 get_volumes | Gets the volumes in the current session.
 get_volume_details | Gets the volume with the given volume id.
 get_snapshots | Gets the snapshots in the current session.
 get_snapshot_details | Gets the snapshot details of the given snapshot id.
 get_security_groups | Gets the security groups in the current session.
 get_security_group_details | Gets the security group details of the given security group id.
 get_key_pairs | Gets the key pairs in the current session.
 get_key_pair_details | Gets the key pair details of the given key pair id.
 get_elastic_ips | Gets the elastic ips in the current session.
 get_elastic_ip_details | Gets the elastic ip details of the given elastic ip id.
 get_load_balancers | Gets the load balancers in the current session.
 get_load_balancer_details | Gets the load balancer details of the given load balancer id.
 get_target_groups | Gets the target groups in the current session.
 get_target_group_details | Gets the target group details of the given target group id.
 get_launch_templates | Gets the launch templates in the current session.
 get_launch_template_details | Gets the launch template details of the given launch template id.
 get_auto_scaling_groups | Gets the auto scaling groups in the current session.
 get_auto_scaling_group_details | Gets the auto scaling group details of the given auto scaling group name.




### __init__

```python
def __init__(self, session)
```

Constructor for EC2Commands class.


Initializes the EC2Commands and establishes the AWS session.


#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 session  |  boto3.session.Session | The AWS session object.





### get_instances

```python
def get_instances(self)
```

Gets the instances in the current session.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 instances  |  list of dict | The instances in the current session.





### get_instance_details

```python
def get_instance_details(self, instance_id)
```

Gets the instance with the given instance id.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 instance_id  |  str | The instance id of the instance to get.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 instance_details  |  dict | The instance with the given instance id.





### get_images

```python
def get_images(self)
```

Gets the private images in the current session.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 private_images  |  list of dict | The private images in the current session.





### get_image_details

```python
def get_image_details(self, image_id)
```

Gets the image with the given image id.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 image_id  |  str | The image id of the image to get.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 image_details  |  dict | The image with the given image id.





### get_volumes

```python
def get_volumes(self)
```

Gets the volumes in the current session.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 volumes  |  list of dict | The volumes in the current session.





### get_volume_details

```python
def get_volume_details(self, volume_id)
```

Gets the volume with the given volume id.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 volume_id  |  str | The volume id of the volume to get.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 volume_details  |  dict | The volume with the given volume id.





### get_snapshots

```python
def get_snapshots(self)
```

Gets the snapshots in the current session.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 snapshots  |  list of dict | The snapshots in the current session.





### get_snapshot_details

```python
def get_snapshot_details(self, snapshot_id)
```

Gets the snapshot details of the given snapshot id.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 snapshot_id  |  str | The snapshot id to get details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 snapshot_details  |  dict | The snapshot details of the given snapshot id.





### get_security_groups

```python
def get_security_groups(self)
```

Gets the security groups in the current session.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 security_groups  |  list of dict | The security groups in the current session.





### get_security_group_details

```python
def get_security_group_details(self, security_group_id)
```

Gets the security group details of the given security group id.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 security_group_id  |  str | The security group id to get details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 security_group_details  |  dict | The security group details of the given security group id.





### get_key_pairs

```python
def get_key_pairs(self)
```

Gets the key pairs in the current session.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 key_pairs  |  list of dict | The key pairs in the current session.





### get_key_pair_details

```python
def get_key_pair_details(self, key_pair_name)
```

Gets the key pair details of the given key pair id.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 key_pair_id  |  str | The key pair id to get details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 key_pair_details  |  dict | The key pair details of the given key pair id.





### get_elastic_ips

```python
def get_elastic_ips(self)
```

Gets the elastic ips in the current session.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 elastic_ips  |  list of dict | The elastic ips in the current session.





### get_elastic_ip_details

```python
def get_elastic_ip_details(self, elastic_ip_id)
```

Gets the elastic ip details of the given elastic ip id.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 elastic_ip_id  |  str | The elastic ip id to get details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 elastic_ip_details  |  dict | The elastic ip details of the given elastic ip id.





### get_load_balancers

```python
def get_load_balancers(self)
```

Gets the load balancers in the current session.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 load_balancers  |  list of dict | The load balancers in the current session.





### get_load_balancer_details

```python
def get_load_balancer_details(self, load_balancer_name)
```

Gets the load balancer details of the given load balancer id.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 load_balancer_name  |  str | The load balancer name to get details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 load_balancer_details  |  dict | The load balancer details of the given load balancer id.





### get_target_groups

```python
def get_target_groups(self)
```

Gets the target groups in the current session.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 target_groups  |  list of dict | The target groups in the current session.





### get_target_group_details

```python
def get_target_group_details(self, target_group_name)
```

Gets the target group details of the given target group id.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 target_group_name  |  str | The target group id to get details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 target_group_details  |  dict | The target group details of the given target group id.





### get_launch_templates

```python
def get_launch_templates(self)
```

Gets the launch templates in the current session.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 launch_templates  |  list of dict | The launch templates in the current session.





### get_launch_template_details

```python
def get_launch_template_details(self, launch_template_id)
```

Gets the launch template details of the given launch template id.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 launch_template_id  |  str | The launch template id to get details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 launch_template_details  |  dict | The launch template details of the given launch template id.





### get_auto_scaling_groups

```python
def get_auto_scaling_groups(self)
```

Gets the auto scaling groups in the current session.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 auto_scaling_groups  |  list of dict | The auto scaling groups in the current session.





### get_auto_scaling_group_details

```python
def get_auto_scaling_group_details(self, auto_scaling_group_name)
```

Gets the auto scaling group details of the given auto scaling group name.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 auto_scaling_group_name  |  str | The auto scaling group name to get details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 auto_scaling_group_details  |  dict | The auto scaling group details of the given auto scaling group name.








