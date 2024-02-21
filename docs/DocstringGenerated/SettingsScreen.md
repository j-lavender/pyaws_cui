# settings_screen

A subscreen that allows for setting a variety of pyaws settings.



#### Classes

 Class  | Doc
-----|-----
 SettingsScreen(pyaws.screen_manager.ScreenManager) | Class representing settings subscreen for pyaws




## SettingsScreen(pyaws.screen_manager.ScreenManager)

```python
class SettingsScreen(pyaws.screen_manager.ScreenManager)
```

Class representing settings subscreen for pyaws




#### Attributes

 Attribute  | Type  | Doc
-----|----------|-----
 current_info_log  |  str | The current settings log text
 show_settings_log  |  bool | Toggle for showing settings log

#### Methods

 Method  | Doc
-----|-----
 initialize_screen_elements | Override of base class function. Initializes widgets, and returns widget set
 set_initial_values | Function that sets initial status bar text for settings window
 add_to_settings_log | Function that updates the settings info log panel
 fetch_about_file | Function that grabs file from github and displays it in info panel
 revert_settings_log | Function that resets to showing settings info
 open_web_docs | Function tasked with open docs in external browser
 show_tutorial | Function that demonstrates tutorial for using pyaws
 ask_log_file_path | Prompts user to enter log file path
 get_settings_ascii_art | Gets ascii art settings logo
 toggle_logging | Function that enables/disables logging
 update_default_profile | Function that updates the default profile
 ask_default_profile | Function that asks the user for the default profile
 update_default_region | Function that updates the default region
 ask_default_region | Function that asks the user for the default region
 update_log_file_path | Function that updates log file path if valid
 refresh_status | Override of base class refresh function.




### __init__

```python
def __init__(self, top_manager)
```

Constructor for SettingsScreen







### initialize_screen_elements

```python
def initialize_screen_elements(self)
```

Override of base class function. Initializes widgets, and returns widget set




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 settings_widget_set  |  py_cui.widget_set.WidgetSet | Widget set object for rsettings screen





### set_initial_values

```python
def set_initial_values(self)
```

Function that sets initial status bar text for settings window







### add_to_settings_log

```python
def add_to_settings_log(self, text)
```

Function that updates the settings info log panel




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 text  |  str | New log item to write to settings info panel





### fetch_about_file

```python
def fetch_about_file(self, file)
```

Function that grabs file from github and displays it in info panel




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 file  |  str | Filename to fetch from github repository





### revert_settings_log

```python
def revert_settings_log(self)
```

Function that resets to showing settings info







### open_web_docs

```python
def open_web_docs(self)
```

Function tasked with open docs in external browser







### show_tutorial

```python
def show_tutorial(self)
```

Function that demonstrates tutorial for using pyaws







### ask_log_file_path

```python
def ask_log_file_path(self)
```

Prompts user to enter log file path







### get_settings_ascii_art

```python
def get_settings_ascii_art(self)
```

Gets ascii art settings logo




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 settings_message  |  str | Block letter ascii art settings logo





### toggle_logging

```python
def toggle_logging(self)
```

Function that enables/disables logging







### update_default_profile

```python
def update_default_profile(self, new_profile)
```

Function that updates the default profile




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 profile  |  str | The new default profile





### ask_default_profile

```python
def ask_default_profile(self)
```

Function that asks the user for the default profile







### update_default_region

```python
def update_default_region(self, new_region)
```

Function that updates the default region




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 region  |  str | The new default region





### ask_default_region

```python
def ask_default_region(self)
```

Function that asks the user for the default region







### update_log_file_path

```python
def update_log_file_path(self, new_log_file_path, default_path=False)
```

Function that updates log file path if valid




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 new_log_file_path  |  str | Path to new log file





### refresh_status

```python
def refresh_status(self)
```

Override of base class refresh function.










