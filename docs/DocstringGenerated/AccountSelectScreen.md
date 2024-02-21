# account_select_screen

Manager implementation for CUI screen for selecting different profiles.



#### Classes

 Class  | Doc
-----|-----
 AccountSelectManager(pyaws.screen_manager.ScreenManager) | Class representing the manager for the account select screen




## AccountSelectManager(pyaws.screen_manager.ScreenManager)

```python
class AccountSelectManager(pyaws.screen_manager.ScreenManager)
```

Class representing the manager for the account select screen




#### Attributes

 Attribute  | Type  | Doc
-----|----------|-----
 menu_choices  |  list of str | Overriden attribute from base class with expanded menu choices.

#### Methods

 Method  | Doc
-----|-----
 process_menu_selection | Override of base class, executes depending on menu selection
 initialize_screen_elements | Override of base function. Initializes widgets, returns screen widget set
 clear_elements | Override of base class, clears text widgets
 set_initial_values | Override of base class, sets initial values for widgets
 set_initial_focus | Override of base function. Sets initial focus to the resource select box.
 refresh_status | Function that refreshes the list of profiles and the current status
 update_default_profile | Function that updates the default profile
 ask_delete_account | Function that asks user if they want to delete an account
 delete_account | Function that deletes an account
 delete_aws_profile | Deletes an AWS profile from the AWS credentials file




### __init__

```python
def __init__(self, top_manager)
```

Constructor for repo select manager







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

Override of base function. Initializes widgets, returns screen widget set




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 account_select_widget_set  |  py_cui.widget_set.WidgetSet | Widget set object for repo select screen





### clear_elements

```python
def clear_elements(self)
```

Override of base class, clears text widgets







### set_initial_values

```python
def set_initial_values(self)
```

Override of base class, sets initial values for widgets







### set_initial_focus

```python
def set_initial_focus(self)
```

Override of base function. Sets initial focus to the resource select box.







### refresh_status

```python
def refresh_status(self)
```

Function that refreshes the list of profiles and the current status







### update_default_profile

```python
def update_default_profile(self)
```

Function that updates the default profile







### ask_delete_account

```python
def ask_delete_account(self)
```

Function that asks user if they want to delete an account







### delete_account

```python
def delete_account(self, to_delete)
```

Function that deletes an account




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 to_delete  |  bool | True if user selected yes, False if user selected no





### delete_aws_profile

```python
def delete_aws_profile(self, profile)
```

Deletes an AWS profile from the AWS credentials file




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 profile  |  str | Name of the profile to delete








