# sm_commands

File containing functions for the secrets manager commands.



This file is meant to handle the intermediate considerations between the
CUI and the AWS CLI. It is meant to be called by the CUI, and to call the
AWS CLI commands. It is not meant to be called directly by the user.

#### Classes

 Class  | Doc
-----|-----
 SecretsManagerCommands | Class used to use manager AWS Secrets Manager commands.




## SecretsManagerCommands

```python
class SecretsManagerCommands
```

Class used to use manager AWS Secrets Manager commands.



This class provides the interface between the AWS SecretsManager commands and the underlying
AWS SDK. It is responsible for calling the AWS SecretsManager commands, and providing
the results to other pyaws modules.


#### Attributes

 Attribute  | Type  | Doc
-----|----------|-----
 session  |  boto3.session.Session | The AWS session object.

#### Methods

 Method  | Doc
-----|-----
 get_secret_names | Get the secrets from the AWS Secrets Manager.
 get_all_secret_versions | Get all the secret versions in the AWS Secrets Manager.
 get_secret_version_data | Get the secret version in the AWS Secrets Manager.
 create_secret | Create the secret in the AWS Secrets Manager.
 delete_secret | Delete the secret in the AWS Secrets Manager.
 update_secret | Update the secret in the AWS Secrets Manager.




### __init__

```python
def __init__(self, session)
```

Initialize the SecretsManagerCommands class.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 session  |  boto3.session.Session | The AWS session object.





### get_secret_names

```python
def get_secret_names(self)
```

Get the secrets from the AWS Secrets Manager.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | list | A list of the secret names.





### get_all_secret_versions

```python
def get_all_secret_versions(self, secret_name)
```

Get all the secret versions in the AWS Secrets Manager.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 secret_name  |  str | The name of the secret to get the versions of.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | list | The secret versions.





### get_secret_version_data

```python
def get_secret_version_data(self, secret_name, version_id)
```

Get the secret version in the AWS Secrets Manager.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 secret_name  |  str | The name of the secret to get the version of.
 version_id  |  str | The version of the secret to get.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | dict | The secret version.





### create_secret

```python
def create_secret(self, secret_name, secret_value)
```

Create the secret in the AWS Secrets Manager.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 secret_name  |  str | The name of the secret to create.
 secret_value  |  str | The value of the secret to create.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | dict | The secret.





### delete_secret

```python
def delete_secret(self, secret_name)
```

Delete the secret in the AWS Secrets Manager.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 secret_name  |  str | The name of the secret to delete.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | dict | The secret.





### update_secret

```python
def update_secret(self, secret_name, secret_value)
```

Update the secret in the AWS Secrets Manager.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 secret_name  |  str | The name of the secret to update.
 secret_value  |  str | The value of the secret to update.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | dict | The secret.








