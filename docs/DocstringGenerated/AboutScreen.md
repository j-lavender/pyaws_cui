# about_screen

Subscreen used to display information about the program.



#### Classes

 Class  | Doc
-----|-----
 AboutScreenManager(pyaws.screen_manager.ScreenManager) | Class containing the about screen.




## AboutScreenManager(pyaws.screen_manager.ScreenManager)

```python
class AboutScreenManager(pyaws.screen_manager.ScreenManager)
```

Class containing the about screen.



#### Methods

 Method  | Doc
-----|-----
 initialize_screen_elements | Override of base class function. Initializes widgets, and returns widget set
 set_initial_values | Override of base class, sets initial values for widgets




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

Override of base class, sets initial values for widgets










