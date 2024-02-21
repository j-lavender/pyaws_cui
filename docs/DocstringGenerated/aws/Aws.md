# pyaws

AWS manager class. Responsible for establishing AWS session.



This module contains the main aws manager class, which is responsible for
esstablishing the AWS session and other AWS related utilities.

#### Classes

 Class  | Doc
-----|-----
 AWSManager | Class used to manage AWS session and other AWS related utilities.




## AWSManager

```python
class AWSManager
```

Class used to manage AWS session and other AWS related utilities.



This class provides the interface between the AWS session and the underlying
AWS SDK. It is responsible for establishing the AWS session, and providing
the AWS session to other pyaws modules.


#### Attributes

 Attribute  | Type  | Doc
-----|----------|-----
 session  |  boto3.session.Session | The AWS session object.
 region  |  str | The AWS region the session is in.
 profile  |  str | The AWS profile the session is using.

#### Methods

 Method  | Doc
-----|-----
 establish_aws_connection | Establishes the AWS session using the AWS profile and region.
 check_aws_connection | Checks if the AWS session is valid.




### __init__

```python
def __init__(self, profile, region=None)
```

Constructor for AWSManager class.


Initializes the AWSManager and establishes the AWS session.


#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 session  |  boto3.session.Session | The AWS session object.





### establish_aws_connection

```python
def establish_aws_connection(self)
```

Establishes the AWS session using the AWS profile and region.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 session  |  boto3.session.Session | The AWS session object.





### check_aws_connection

```python
def check_aws_connection(self)
```

Checks if the AWS session is valid.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 status  |  bool | True if session is valid, False otherwise.








