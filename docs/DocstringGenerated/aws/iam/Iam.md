# pyaws

File containing functions used by the IAM Console CUI screen.



This file is meant to handle the AWS IAM CUI elements and connections 
to the underlying AWS IAM commands found in pyaws.aws.iam.commands.

#### Classes

 Class  | Doc
-----|-----
 IAMConsoleManager(pyaws.screen_manager.ScreenManager) | Class responsible for managing IAM Console CUI screen.




## IAMConsoleManager(pyaws.screen_manager.ScreenManager)

```python
class IAMConsoleManager(pyaws.screen_manager.ScreenManager)
```

Class responsible for managing IAM Console CUI screen.



This class provides functions used by pyaws to manage the IAM Console CUI screen.
It provides the interface between the IAM Console CUI screen and the underlying
aws commands found in pyaws.aws. It inherits from the ScreenManager class, which provides
the basic functionality for all screen managers in pyaws.


#### Attributes

 Attribute  | Type  | Doc
-----|----------|-----
 menu_choices  |  list of str | Overriden list of menu choices accessible from the account select menu

#### Methods

 Method  | Doc
-----|-----
 process_menu_selection | Override of base class, executes depending on menu selection
 initialize_screen_elements | Function that initialize the widgets for the IAM Console Screen. Overrides base class function.
 available_resources | Function to return a list of available IAM resources.
 refresh_status | Function that refreshes the status of the IAM Console screen.
 clear_elements | Function that clears the widgets for the IAM Console screen.
 clear_resource_elements | Function that clears the widgets for the IAM Console screen.
 set_initial_values | Function that sets the initial values for the IAM Console screen.
 set_initial_focus | Override of base function. Sets initial focus to the resource select box.
 fetch_iam_resource_list | Function to parse and fetch teh IAM resource list associated
 process_resource_menu | Function to parse the resource menu for resources.
 display_resource_menu | Function to fetch the resources in the current session.
 set_current_resource_id | Function to set the current resource id.
 display_resource_details | Function to fetch the details of the selected resource.
 get_logo_text | Generates ascii-art version of pyaws logo
 show_help_text | Function that shows the help text for the IAM Console screen.
 get_help_text | Generates help text for IAM Console screen




### __init__

```python
def __init__(self, top_manager)
```

Constructor for IAMConsoleManager class.







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

Function that initialize the widgets for the IAM Console Screen. Overrides base class function.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 iam_console_manager_widget_set  |  py_cui.widget_set.WidgetSet | The widget set for the IAM Console Screen





### available_resources

```python
def available_resources(self)
```

Function to return a list of available IAM resources.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | list | A list of available IAM resources.





### refresh_status

```python
def refresh_status(self)
```

Function that refreshes the status of the IAM Console screen.







### clear_elements

```python
def clear_elements(self)
```

Function that clears the widgets for the IAM Console screen.







### clear_resource_elements

```python
def clear_resource_elements(self)
```

Function that clears the widgets for the IAM Console screen.







### set_initial_values

```python
def set_initial_values(self)
```

Function that sets the initial values for the IAM Console screen.







### set_initial_focus

```python
def set_initial_focus(self)
```

Override of base function. Sets initial focus to the resource select box.







### fetch_iam_resource_list

```python
def fetch_iam_resource_list(self)
```

Function to parse and fetch teh IAM resource list associated


with the selected IAM resource.





### process_resource_menu

```python
def process_resource_menu(self, resources, resource_type)
```

Function to parse the resource menu for resources.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 resources  |  list of dict | The list of resources to parse
 resource_type  |  str | The type of the resourcess

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 resource_ids  |  list of str | The IDs of the resources in the current session
 resource_list  |  list of str | The list of resources to display in the menu





### display_resource_menu

```python
def display_resource_menu(self, resource_type, get_resources, get_resource_details, build_resource_details_table)
```

Function to fetch the resources in the current session.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 resource_type  |  str | The type of resource to fetch
 get_resources  |  function | The function to call to fetch the resources
 get_resource_details  |  function | The function to call to fetch the details of the selected resource
 build_resource_details_table  |  function | The function to call to build the details table for the selected resource

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 resource_ids  |  list of str | The IDs of the resources in the current session





### set_current_resource_id

```python
def set_current_resource_id(self, resource_type, get_resource_details, build_resource_details_table)
```

Function to set the current resource id.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 resource_type  |  str | The type of resource to fetch
 get_resource_details  |  function | The function to call to fetch the details of the selected resource
 build_resource_details_table  |  function | The function to call to build the details table for the selected resource

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 resource_details  |  str | The details of the selected resource





### display_resource_details

```python
def display_resource_details(self, resource_type, get_resource_details, build_resource_details_table)
```

Function to fetch the details of the selected resource.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 resource_type  |  str | The type of resource to fetch
 get_resource_details  |  function | The function to call to fetch the details of the selected resource
 build_resource_details_table  |  function | The function to call to build the details table for the selected resource

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 resource_details  |  str | The details of the selected resource





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

Function that shows the help text for the IAM Console screen.







### get_help_text

```python
def get_help_text(self)
```

Generates help text for IAM Console screen




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 help_text  |  str | The help text for the IAM Console screen








