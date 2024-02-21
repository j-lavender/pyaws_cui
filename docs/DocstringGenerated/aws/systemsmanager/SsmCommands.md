# ssm_commands

File containing functions used to call the underlying AWS Systems Manager commands



This file is meant to handle the intermediate considerations between the
CUI and the AWS SSM CLI. It is meant to be called by the CUI, and to call the
AWS CLI commands. It is not meant to be called directly by the user.

#### Classes

 Class  | Doc
-----|-----
 SSMCommands | Class used to manage AWS SSM commands.




## SSMCommands

```python
class SSMCommands
```

Class used to manage AWS SSM commands.



This class provides the interface between the AWS SSM commands. 
It is responsible for calling the AWS SSM commands, and providing
the results to other pyaws modules.


#### Attributes

 Attribute  | Type  | Doc
-----|----------|-----
 session  |  boto3.session.Session | The AWS session object.

#### Methods

 Method  | Doc
-----|-----
 get_all_parameters | Function to return a list of all SSM parameters.
 get_parameter | Function to return the details of a specific SSM parameter.




### __init__

```python
def __init__(self, session)
```

Constructor for IAMCommands class.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 session  |  boto3.session.Session | The AWS session object.





### get_all_parameters

```python
def get_all_parameters(self)
```

Function to return a list of all SSM parameters.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | list | A list of SSM parameter objects.





### get_parameter

```python
def get_parameter(self, name)
```

Function to return the details of a specific SSM parameter.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 name  |  str | The name of the SSM parameter.








