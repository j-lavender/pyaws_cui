# account_console_screen

File containing functions used by the Account Console CUI screen.



This file is meant to handle the intermediate considerations between the 
CUI and the underlying aws commands found in pyaws.aws.

#### Classes

 Class  | Doc
-----|-----
 AccountConsoleManager(pyaws.screen_manager.ScreenManager) | Class used to manage functions for the Account Console CUI screen.




## AccountConsoleManager(pyaws.screen_manager.ScreenManager)

```python
class AccountConsoleManager(pyaws.screen_manager.ScreenManager)
```

Class used to manage functions for the Account Console CUI screen.



This class provides the interface between the Account Console CUI screen and the underlying
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
 initialize_screen_elements | Override of base class function. Initializes Account Console widgets, returns screen widget set.
 clear_elements | Override of base class function, clears text fields
 set_initial_values | Override of base function. Sets some initial text for the widgets
 set_initial_focus | Override of base function. Sets initial focus to the resource select box.
 refresh_status | Function that refreshes the status of the connection to the AWS account
 ask_refresh_status | Function that refreshes the status of the connection to the AWS account on command.
 available_resources | Function that returns a list of the available console screens.
 update_default_region | Function that updates the default region based on user selection.




### __init__

```python
def __init__(self, top_manager)
```

Constructor for AccountConsoleManager class.







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

Override of base class function. Initializes Account Console widgets, returns screen widget set.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 account_console_widget_set  |  py_cui.widget_set.WidgetSet | Widget set object for Account Console screen





### clear_elements

```python
def clear_elements(self)
```

Override of base class function, clears text fields







### set_initial_values

```python
def set_initial_values(self)
```

Override of base function. Sets some initial text for the widgets







### set_initial_focus

```python
def set_initial_focus(self)
```

Override of base function. Sets initial focus to the resource select box.







### refresh_status

```python
def refresh_status(self)
```

Function that refreshes the status of the connection to the AWS account







### ask_refresh_status

```python
def ask_refresh_status(self)
```

Function that refreshes the status of the connection to the AWS account on command.







### available_resources

```python
def available_resources(self)
```

Function that returns a list of the available console screens.




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | list of str | List of available console screens





### update_default_region

```python
def update_default_region(self)
```

Function that updates the default region based on user selection.










