# iam_commands

File containing functions used to call the underlying AWS IAM commands.



This file is meant to handle the intermediate considerations between the
CUI and the AWS IAM CLI. It is meant to be called by the CUI, and to call the
AWS CLI commands. It is not meant to be called directly by the user.

#### Classes

 Class  | Doc
-----|-----
 IAMCommands | Class used to manage AWS IAM commands.




## IAMCommands

```python
class IAMCommands
```

Class used to manage AWS IAM commands.



This class provides the interface between the AWS IAM commands. 
It is responsible for calling the AWS IAM commands, and providing
the results to other pyaws modules.


#### Attributes

 Attribute  | Type  | Doc
-----|----------|-----
 session  |  boto3.session.Session | The AWS session object.

#### Methods

 Method  | Doc
-----|-----
 get_users | Function to return a list of IAM users.
 get_user_details | Function to return the details of a specific IAM user.
 get_groups | Function to return a list of IAM groups.
 get_group_details | Function to return the details of a specific IAM group.
 get_policies | Function to return a list of user-created IAM policies.
 get_policy_details | Function to return the details of a specific IAM policy.
 get_roles | Function to return a list of IAM roles.
 get_role_details | Function to return the details of a specific IAM role.
 get_attached_role_policies | Function to return the policies attached to a specific IAM role.




### __init__

```python
def __init__(self, session)
```

Constructor for IAMCommands class.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 session  |  boto3.session.Session | The AWS session object.





### get_users

```python
def get_users(self)
```

Function to return a list of IAM users.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | list | A list of IAM user objects.





### get_user_details

```python
def get_user_details(self, user_name)
```

Function to return the details of a specific IAM user.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 user_name  |  str | The name of the IAM user.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | dict | A dictionary containing the details of the IAM user.





### get_groups

```python
def get_groups(self)
```

Function to return a list of IAM groups.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | list | A list of IAM group objects.





### get_group_details

```python
def get_group_details(self, group_name)
```

Function to return the details of a specific IAM group.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 group_name  |  str | The name of the IAM group.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | dict | A dictionary containing the details of the IAM group.





### get_policies

```python
def get_policies(self)
```

Function to return a list of user-created IAM policies.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | list | A list of user-created IAM policy objects.





### get_policy_details

```python
def get_policy_details(self, policy_name)
```

Function to return the details of a specific IAM policy.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 policy_name  |  str | The name of the IAM policy.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | dict | A dictionary containing the details of the IAM policy.





### get_roles

```python
def get_roles(self)
```

Function to return a list of IAM roles.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | list | A list of IAM role objects.





### get_role_details

```python
def get_role_details(self, role_name)
```

Function to return the details of a specific IAM role.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 role_name  |  str | The name of the IAM role.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | dict | A dictionary containing the details of the IAM role.





### get_attached_role_policies

```python
def get_attached_role_policies(self, role_name)
```

Function to return the policies attached to a specific IAM role.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 role_name  |  str | The name of the IAM role.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | list | A list of IAM policy objects attached to the role.








