# ec2_tables

File containing functions used for creating display tables for ec2 resources.



This file is meant to contain the set of functions used to create display tables
for ec2 resources.

#### Classes

 Class  | Doc
-----|-----
 EC2ConsoleTables | Class responsible for creating display tables for ec2 resources.




## EC2ConsoleTables

```python
class EC2ConsoleTables
```

Class responsible for creating display tables for ec2 resources.




#### Attributes

 Attribute  | Type  | Doc
-----|----------|-----
 LOGGER  |  obj | The logger object used for logging output to the console.

#### Methods

 Method  | Doc
-----|-----
 build_instance_details_table | Function to display the details of the selected instance.
 build_image_details_table | Function to build the table of image details.
 build_volume_details_table | Function to build the table of volume details.
 build_snapshot_details_table | Function to build the table of snapshot details.
 build_security_group_details_table | Function to build the table of security group details.
 build_security_group_inbound_rules_table | Function to build the table of security group inbound rules.
 build_key_pair_details_table | Function to build the table of key pair details.
 build_elastic_ip_table | Function to build the table of elastic IP details.
 build_elastic_ip_details_table | Function to build the table of elastic IP details.
 build_load_balancer_details_table | Function to build the table of load balancer details.
 build_target_group_details_table | Function to build the table of target group details.
 build_launch_template_details_table | Function to build the table of launch template details.
 build_launch_template_instance_details_table | Function to build the table of launch template versions instance details.
 build_auto_scaling_group_details_table | Function to build the table of auto scaling group details.




### build_instance_details_table

```python
def build_instance_details_table(self, instance_details)
```

Function to display the details of the selected instance.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 instance_details  |  dict | The instance_details to display the details of.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 table  |  str | The table of instance details.





### build_image_details_table

```python
def build_image_details_table(self, image_details)
```

Function to build the table of image details.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 image_details  |  dict | The image details to build the table of details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 table  |  str | The table of image details.





### build_volume_details_table

```python
def build_volume_details_table(self, volume_details)
```

Function to build the table of volume details.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 volume_details  |  dict | The volume details to build the table of details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 table  |  str | The table of volume details.





### build_snapshot_details_table

```python
def build_snapshot_details_table(self, snapshot_details)
```

Function to build the table of snapshot details.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 snapshot_details  |  dict | The snapshot details to build the table of details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 table  |  str | The table of snapshot details.





### build_security_group_details_table

```python
def build_security_group_details_table(self, security_group_details)
```

Function to build the table of security group details.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 security_group_details  |  dict | The security group details to build the table of details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 table  |  str | The table of security group details.





### build_security_group_inbound_rules_table

```python
def build_security_group_inbound_rules_table(self, inbound_rules)
```

Function to build the table of security group inbound rules.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 inbound_rules  |  dict | The inbound rules to build the table of details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 table  |  str | The table of security group inbound rules.





### build_key_pair_details_table

```python
def build_key_pair_details_table(self, key_pair_details)
```

Function to build the table of key pair details.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 key_pair_details  |  dict | The key pair details to build the table of details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 table  |  str | The table of key pair details.





### build_elastic_ip_table

```python
def build_elastic_ip_table(self, elastic_ip_details_list)
```

Function to build the table of elastic IP details.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 elastic_ip_details_list  |  list | The list of elastic IP details to build the table of details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 table  |  str | The table of elastic IP details.





### build_elastic_ip_details_table

```python
def build_elastic_ip_details_table(self, elastic_ip_details)
```

Function to build the table of elastic IP details.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 elastic_ip_details  |  dict | The elastic IP details to build the table of details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 table  |  str | The table of elastic IP details.





### build_load_balancer_details_table

```python
def build_load_balancer_details_table(self, load_balancer_details)
```

Function to build the table of load balancer details.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 load_balancer_details  |  dict | The load balancer details to build the table of details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 table  |  str | The table of load balancer details.





### build_target_group_details_table

```python
def build_target_group_details_table(self, target_group_details)
```

Function to build the table of target group details.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 target_group_details  |  dict | The target group details to build the table of details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 table  |  str | The table of target group details.





### build_launch_template_details_table

```python
def build_launch_template_details_table(self, launch_template_details)
```

Function to build the table of launch template details.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 launch_template_details  |  dict | The launch template details to build the table of details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 table  |  str | The table of launch template details.





### build_launch_template_instance_details_table

```python
def build_launch_template_instance_details_table(self, launch_template_details)
```

Function to build the table of launch template versions instance details.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 launch_template_details  |  dict | The launch template versions to build the table of details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 table  |  str | The table of launch template versions instance details.





### build_auto_scaling_group_details_table

```python
def build_auto_scaling_group_details_table(self, auto_scaling_group_details)
```

Function to build the table of auto scaling group details.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 auto_scaling_group_details  |  dict | The auto scaling group details to build the table of details for.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 table  |  str | The table of auto scaling group details.








