# pyaws

File containing functions used by the secrets manager commands.



This file is meant to handle the AWS SecretsManager CUI elements and connections 
to the underlying AWS SecretsManager commands found in pyaws.aws.secretsmanager.commands.

#### Classes

 Class  | Doc
-----|-----
 SMConsoleManager(pyaws.screen_manager.ScreenManager) | Class responsible for managing the Secrets Manager Console screen.




## SMConsoleManager(pyaws.screen_manager.ScreenManager)

```python
class SMConsoleManager(pyaws.screen_manager.ScreenManager)
```

Class responsible for managing the Secrets Manager Console screen.



This class provides functions used by pyaws to manage the Secrets Manager Console CUI screen.
It provides the interface between the CUI and the underlying AWS SecretsManager 
commands aws commands found in pyaws.aws. It inherits from the ScreenManager class, which provides
the basic functionality for all screen managers in pyaws.


#### Attributes

 Attribute  | Type  | Doc
-----|----------|-----
 menu_choices  |  list of str | Overriden list of menu choices accessible from the account select menu

#### Methods

 Method  | Doc
-----|-----
 process_menu_selection | Override of base class, executes depending on menu selection
 initialize_screen_elements | Function that initializes the screen elements for the Secrets Manager Console.
 refresh_status | Function that refreshes the Secrets Manager Console screen.
 clear_elements | Function that clears the Secrets Manager Console screen elements.
 set_initial_values | Function that sets the initial values for the Secrets Manager Console screen elements.
 set_initial_focus | Override of base function. Sets initial focus to the resource select box.
 display_secret_names | Function that gets the secret names from the AWS Secrets Manager.
 display_secret_versions | Function that gets the secret versions from the AWS Secrets Manager.
 set_current_secret_version | Function that sets the current secret version.
 display_secret_value | Function that gets the secret value from the AWS Secrets Manager.
 build_secret_data_table | Function that builds the secret value table.
 copy_current_secret_value_to_clipboard | Function that copies the current secret value to the clipboard.
 get_logo_text | Generates ascii-art version of pyaws logo
 show_help_text | Function that shows the help text for the SM Console screen.
 get_help_text | Generates help text for SM Console screen




### __init__

```python
def __init__(self, top_manager)
```

Constructor for the SecretsManagerScreen class.







### process_menu_selection

```python
def process_menu_selection(self, selection)
```

Override of base class, executes depending on menu selection




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 selection  |  str | The user's menu selection





### initialize_screen_elements

```python
def initialize_screen_elements(self)
```

Function that initializes the screen elements for the Secrets Manager Console.







### refresh_status

```python
def refresh_status(self)
```

Function that refreshes the Secrets Manager Console screen.







### clear_elements

```python
def clear_elements(self)
```

Function that clears the Secrets Manager Console screen elements.







### set_initial_values

```python
def set_initial_values(self)
```

Function that sets the initial values for the Secrets Manager Console screen elements.







### set_initial_focus

```python
def set_initial_focus(self)
```

Override of base function. Sets initial focus to the resource select box.







### display_secret_names

```python
def display_secret_names(self)
```

Function that gets the secret names from the AWS Secrets Manager.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | list | The secret names.





### display_secret_versions

```python
def display_secret_versions(self)
```

Function that gets the secret versions from the AWS Secrets Manager.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | list | The secret versions.





### set_current_secret_version

```python
def set_current_secret_version(self)
```

Function that sets the current secret version.







### display_secret_value

```python
def display_secret_value(self)
```

Function that gets the secret value from the AWS Secrets Manager.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | dict | The secret value.





### build_secret_data_table

```python
def build_secret_data_table(self, secret_data)
```

Function that builds the secret value table.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 secret_data  |  dict | The secret version metadata.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | list | The secret value table.





### copy_current_secret_value_to_clipboard

```python
def copy_current_secret_value_to_clipboard(self)
```

Function that copies the current secret value to the clipboard.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | str | The secret value.





### get_logo_text

```python
def get_logo_text(self)
```

Generates ascii-art version of pyaws logo




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 logo  |  str | ascii-art logo





### show_help_text

```python
def show_help_text(self)
```

Function that shows the help text for the SM Console screen.







### get_help_text

```python
def get_help_text(self)
```

Generates help text for SM Console screen




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 help_text  |  str | The help text for the SM Console screen








