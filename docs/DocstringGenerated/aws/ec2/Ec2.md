# pyaws

File containing functions used by the EC2 Console CUI screen.



This file is meant to handle the AWS EC2 CUI elements and connections 
to the underlying AWS EC2 commands found in pyaws.aws.ec2.commands.

#### Classes

 Class  | Doc
-----|-----
 EC2ConsoleManager(pyaws.screen_manager.ScreenManager) | Class responsible for managing EC2 Console CUI screen.

#### Functions

 Function  | Doc
-----|-----
 get_instance_name | Function to get parse name from Instance details.




### get_instance_name

```python
def get_instance_name(instance_details)
```

Function to get parse name from Instance details.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 instance_details  |  dict | The instance_details to get the name from.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 name  |  str | The name of the instance.





## EC2ConsoleManager(pyaws.screen_manager.ScreenManager)

```python
class EC2ConsoleManager(pyaws.screen_manager.ScreenManager)
```

Class responsible for managing EC2 Console CUI screen.



This class provides functions used by pyaws to manage the EC2 Console CUI screen.
It provides the interface between the EC2 Console CUI screen and the underlying
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
 initialize_screen_elements | Function that initialize the widgets for the EC2 Console screen. Overrides base class function.
 clear_elements | Function that clears the widgets for the EC2 Console screen.
 clear_resource_elements | Function that clears the Resource widgets for the EC2 Console screen.
 set_initial_values | Function that sets the initial values for the EC2 Console screen.
 set_initial_focus | Override of base function. Sets initial focus to the resource select box.
 refresh_status | Function that refreshes the status of the EC2 Console screen.
 available_ec2_resources | Function that returns a list of available EC2 resources.
 fetch_ec2_resource_list | Function to parse and fetch the EC2 resource list
 process_resource_menu | Function to parse the resource menu for resources.
 display_resource_menu | Function to fetch the resources in the current session.
 set_current_resource_id | Function to set the current resource id.
 display_resource_details | Function to fetch the details of the selected resource.
 get_logo_text | Generates ascii-art version of pyaws logo
 show_help_text | Function that shows the help text for the EC2 Console screen.
 get_help_text | Generates help text for EC2 Console screen




### __init__

```python
def __init__(self, top_manager)
```

Constructor for EC2ConsoleManager class.







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

Function that initialize the widgets for the EC2 Console screen. Overrides base class function.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 ec2_console_manager_widget_set  |  py_cui.widget_set.WidgetSet | Widget set object for EC2 Console screen





### clear_elements

```python
def clear_elements(self)
```

Function that clears the widgets for the EC2 Console screen.







### clear_resource_elements

```python
def clear_resource_elements(self)
```

Function that clears the Resource widgets for the EC2 Console screen.







### set_initial_values

```python
def set_initial_values(self)
```

Function that sets the initial values for the EC2 Console screen.







### set_initial_focus

```python
def set_initial_focus(self)
```

Override of base function. Sets initial focus to the resource select box.







### refresh_status

```python
def refresh_status(self)
```

Function that refreshes the status of the EC2 Console screen.







### available_ec2_resources

```python
def available_ec2_resources(self)
```

Function that returns a list of available EC2 resources.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 available_resources  |  list of str | The list of available EC2 resources





### fetch_ec2_resource_list

```python
def fetch_ec2_resource_list(self)
```

Function to parse and fetch the EC2 resource list


associated with the selected resource.





### process_resource_menu

```python
def process_resource_menu(self, resources, resource_type, get_resource_details=None, get_instance_name=None)
```

Function to parse the resource menu for resources.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 resources  |  list of dict | The list of resources to parse
 resource_type  |  str | The type of the resources
 get_resource_details  |  function, optional | The function to call to fetch the details of the selected resource
 get_instance_name  |  function, optional | The function to call to get the name of the instance

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

Function that shows the help text for the EC2 Console screen.







### get_help_text

```python
def get_help_text(self)
```

Generates help text for EC2 Console screen




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 help_text  |  str | The help text for the EC2 Console screen








