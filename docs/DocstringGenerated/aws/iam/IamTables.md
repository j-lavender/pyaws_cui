# iam_tables

File containing functions used for creating display tables for IAM resources.



This file is meant to contain the set of functions used to create display tables
for IAM resources.

#### Classes

 Class  | Doc
-----|-----
 IAMConsoleTables | Class responsible for creating display tables for IAM resources.




## IAMConsoleTables

```python
class IAMConsoleTables
```

Class responsible for creating display tables for IAM resources.



This class is responsible for creating display tables for IAM resources.


#### Attributes

 Attribute  | Type  | Doc
-----|----------|-----
 LOGGER  |  pyaws.logger.Logger | The pyaws logger object.

#### Methods

 Method  | Doc
-----|-----
 build_roles_details_table | Function to build a display table for IAM roles.
 build_users_details_table | Function to build a display table for IAM users.
 build_groups_details_table | Function to build a display table for IAM groups.
 build_attached_users_details_table | Function to build a display table for IAM Users attached to a group.
 build_policies_details_table | Function to build a display table for IAM policies.




### build_roles_details_table

```python
def build_roles_details_table(self, role_details)
```

Function to build a display table for IAM roles.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 role_details  |  list | A list of IAM role objects.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | str | A string containing the display table for IAM roles.





### build_users_details_table

```python
def build_users_details_table(self, user_details)
```

Function to build a display table for IAM users.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 user_details  |  list | A list of IAM user objects.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | str | A string containing the display table for IAM users.





### build_groups_details_table

```python
def build_groups_details_table(self, group_details)
```

Function to build a display table for IAM groups.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 group_details  |  list | A list of IAM group objects.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | str | A string containing the display table for IAM groups.





### build_attached_users_details_table

```python
def build_attached_users_details_table(self, attached_user_details)
```

Function to build a display table for IAM Users attached to a group.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 group_details  |  list | A list of IAM group objects.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | str | A string containing the display table for IAM users attached to a group.





### build_policies_details_table

```python
def build_policies_details_table(self, policy_details)
```

Function to build a display table for IAM policies.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 policy_details  |  list | A list of IAM policy objects.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | str | A string containing the display table for IAM policies.








