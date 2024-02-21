# r53_commands

File containing functions used to call the underlying AWS Route53 commands



This file is meant to handle the intermediate considerations between the
CUI and the AWS R53 CLI. It is meant to be called by the CUI, and to call the
AWS CLI commands. It is not meant to be called directly by the user.

#### Classes

 Class  | Doc
-----|-----
 R53Commands | Class used to manage AWS R53 commands.




## R53Commands

```python
class R53Commands
```

Class used to manage AWS R53 commands.



This class provides the interface between the AWS R53 commands. 
It is responsible for calling the AWS R53 commands, and providing
the results to other pyaws modules.


#### Attributes

 Attribute  | Type  | Doc
-----|----------|-----
 session  |  boto3.session.Session | The AWS session object.

#### Methods

 Method  | Doc
-----|-----
 get_hosted_zones | List all hosted zones.
 get_hosted_zone_details | List all resource record sets in a hosted zone.




### __init__

```python
def __init__(self, session)
```

Constructor for R53Commands class.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 session  |  boto3.session.Session | The AWS session object.





### get_hosted_zones

```python
def get_hosted_zones(self)
```

List all hosted zones.



This function lists all hosted zones in the current AWS account.


#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | dict | The response from the AWS CLI.





### get_hosted_zone_details

```python
def get_hosted_zone_details(self, hosted_zone_id)
```

List all resource record sets in a hosted zone.



This function lists all resource record sets in a hosted zone.


#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 hosted_zone_id  |  str | The hosted zone id.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | dict | The response from the AWS CLI.








