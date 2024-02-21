# pyaws

Main pyaws manager class and entry point



The main driver class contains code for common actions performed by all subscreens such as
profile management, as well as functions for switching between subscreens.

Author: James Lavender 
Created: 2023-12-01

#### Classes

 Class  | Doc
-----|-----
 PyAWSManager |

#### Functions

 Function  | Doc
-----|-----
 get_aws_credentials_path | Returns the path to the AWS credentials file
 get_aws_profiles | Returns a list of AWS profiles from the AWS credentials file
 get_aws_regions | Returns a list of AWS regions available as of April 2023.
 parse_args | Parses command line arguments
 main | Entry point for the pyaws application. It is responsible for parsing command line arguments and initializing the CUI.




### get_aws_credentials_path

```python
def get_aws_credentials_path(self)
```

Returns the path to the AWS credentials file




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 path  |  str | Path to the AWS credentials file





### get_aws_profiles

```python
def get_aws_profiles(self)
```

Returns a list of AWS profiles from the AWS credentials file




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 profiles  |  list of str | List of AWS profiles from the AWS credentials file





### get_aws_regions

```python
def get_aws_regions(self)
```

Returns a list of AWS regions available as of April 2023.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 regions  |  list of str | List of AWS regions





### parse_args

```python
def parse_args()
```

Parses command line arguments




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 credentials_file  |  str | AWS Credentials file path
 save_metadata  |  bool | flag to say if metadata should be saved





### main

```python
def main()
```

Entry point for the pyaws application. It is responsible for parsing command line arguments and initializing the CUI.







## PyAWSManager

```python
class PyAWSManager
```




Main pyaws manager class. Controls all operations of the CUI.


#### Methods

 Method  | Doc
-----|-----
 close_cleanup | Function fired upon closing pyaws
 clean_exit | Function that exits the CUI cleanly
 error_exit | Function that exits the CUI with an error code
 open_not_supported_popup | Function that displays warning for a non-supported operation
 open_profile_not_provied_popup | Function that displays warning when default_profile is not set.
 open_region_not_provied_popup | Function that displays warning when default_region is not set.
 open_connection_not_established_popup | Function that displays warning when connection is not established.
 open_account_console_window | Function that opens the account console window
 open_account_select_window | Function that opens the account select window
 open_settings_window | Function that opens the settings window
 open_about_window | Function that opens the about window
 open_resource_console_window | Function that opens the resource console window
 update_default_profile | Function that updates the default profile
 update_default_region | Function that updates the default region
 establish_aws_connection | Function that establishes a connection to the AWS account
 update_message | Function that is run after user inputs message
 ask_message | Function that asks the user for input.
 get_logo_text | Generates ascii-art version of pyaws logo
 get_about_info | Generates some about me information
 get_welcome_message | Function that gets a basic welcome message shown at first run




### __init__

```python
def __init__(self, root, target_path, save_metadata, args)
```

Constructor for PyAWSManager







### close_cleanup

```python
def close_cleanup(self)
```

Function fired upon closing pyaws







### clean_exit

```python
def clean_exit(self)
```

Function that exits the CUI cleanly







### error_exit

```python
def error_exit(self)
```

Function that exits the CUI with an error code







### open_not_supported_popup

```python
def open_not_supported_popup(self, operation)
```

Function that displays warning for a non-supported operation




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 operation  |  str | The name of the non-supported operation





### open_profile_not_provied_popup

```python
def open_profile_not_provied_popup(self)
```

Function that displays warning when default_profile is not set.







### open_region_not_provied_popup

```python
def open_region_not_provied_popup(self)
```

Function that displays warning when default_region is not set.







### open_connection_not_established_popup

```python
def open_connection_not_established_popup(self)
```

Function that displays warning when connection is not established.







### open_account_console_window

```python
def open_account_console_window(self)
```

Function that opens the account console window







### open_account_select_window

```python
def open_account_select_window(self)
```

Function that opens the account select window







### open_settings_window

```python
def open_settings_window(self)
```

Function that opens the settings window







### open_about_window

```python
def open_about_window(self)
```

Function that opens the about window







### open_resource_console_window

```python
def open_resource_console_window(self)
```

Function that opens the resource console window




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 selection  |  str | The name of the window to open





### update_default_profile

```python
def update_default_profile(self, profile)
```

Function that updates the default profile




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 profile  |  str | The new default profile





### update_default_region

```python
def update_default_region(self, region)
```

Function that updates the default region




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 region  |  str | The new default region





### establish_aws_connection

```python
def establish_aws_connection(self)
```

Function that establishes a connection to the AWS account




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | bool | True if connection successful, False otherwise





### update_message

```python
def update_message(self, message)
```

Function that is run after user inputs message




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 message  |  str | User returned input





### ask_message

```python
def ask_message(self, prompt, callback=None)
```

Function that asks the user for input.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 prompt  |  str | Prompt for user input
 callback  |  function | Default None, otherwise, function fired after credentials are asked





### get_logo_text

```python
def get_logo_text(self)
```

Generates ascii-art version of pyaws logo




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 logo  |  str | ascii-art logo





### get_about_info

```python
def get_about_info(self, with_logo=True)
```

Generates some about me information




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 with_logo  |  bool | flag to show logo or not.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 about_info  |  str | string with about information





### get_welcome_message

```python
def get_welcome_message(self)
```

Function that gets a basic welcome message shown at first run




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 welcome  |  str | welcome message string








