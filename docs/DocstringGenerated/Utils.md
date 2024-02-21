# utils

File containing utility functions for pyaws.



This file is meant to contain utility classes and functions for pyaws.  
These functions are meant to be used by other pyaws modules.

- DateTimeEncoder: Custom JSON encoder class for datetime objects.
- HandleAwsError: Class to handle AWS error responses.

#### Classes

 Class  | Doc
-----|-----
 DateTimeEncoder(json.JSONEncoder) | Custom JSON encoder class for datetime objects.
 HandleAwsError | Class to handle AWS error responses.




## DateTimeEncoder(json.JSONEncoder)

```python
class DateTimeEncoder(json.JSONEncoder)
```

Custom JSON encoder class for datetime objects.



#### Methods

 Method  | Doc
-----|-----
 default | Default encoder method.




### default

```python
def default(self, obj)
```

Default encoder method.










## HandleAwsError

```python
class HandleAwsError
```

Class to handle AWS error responses.



This class is meant to be used as a decorator to handle AWS error responses.

Example usage to decorate all methods in a class:
@UTILS.HandleAwsError.decorate_all_methods(UTILS.HandleAwsError.handle_aws_error)

Example usage to decorate a single method:
@UTILS.HandleAwsError.handle_aws_error

#### Methods

 Method  | Doc
-----|-----
 decorate_all_methods |
 class_decorator |
 handle_aws_error |
 wrapper |




### decorate_all_methods

```python
def decorate_all_methods(decorator)
```









### class_decorator

```python
def class_decorator(cls)
```









### handle_aws_error

```python
def handle_aws_error(func)
```









### wrapper

```python
def wrapper(*args, **kwargs)
```












