# r53_tables

File containing functions used for creating display tables for Systems Manager resources.



This file is meant to contain the set of functions used to create display tables
for Systems Manager resources.

#### Classes

 Class  | Doc
-----|-----
 R53ConsoleTables | Class responsible for creating display tables for Systems Manager resources.




## R53ConsoleTables

```python
class R53ConsoleTables
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
 build_hosted_zone_details_table | Create a display table for hosted zone details.




### build_hosted_zone_details_table

```python
def build_hosted_zone_details_table(self, resource_record_sets)
```

Create a display table for hosted zone details.



This function creates a display table for hosted zone details.


#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 resource_record_sets  |  dict | The resource record sets in the hosted zone.

#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 Unknown | str | The display table.








