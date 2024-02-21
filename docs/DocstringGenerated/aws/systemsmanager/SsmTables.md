# ssm_tables

File containing functions used for creating display tables for Systems Manager resources.



This file is meant to contain the set of functions used to create display tables
for Systems Manager resources.

#### Classes

 Class  | Doc
-----|-----
 SSMConsoleTables | Class responsible for creating display tables for Systems Manager resources.




## SSMConsoleTables

```python
class SSMConsoleTables
```

Class responsible for creating display tables for Systems Manager resources.



This class is responsible for creating display tables for Systems Manager resources.


#### Attributes

 Attribute  | Type  | Doc
-----|----------|-----
 LOGGER  |  pyaws.logger.Logger | The pyaws logger object.

#### Methods

 Method  | Doc
-----|-----
 build_parameters_details_table | Function to build a display table for SSM parameters.




### build_parameters_details_table

```python
def build_parameters_details_table(self, parameter_details)
```

Function to build a display table for SSM parameters.




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 parameter_details  |  list | A list of SSM parameter objects.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | str | A string containing the display table for SSM parameters.








