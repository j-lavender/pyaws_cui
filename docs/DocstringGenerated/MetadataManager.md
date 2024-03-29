# metadata_manager

Metadata Management Classes and Functions



#### Classes

 Class  | Doc
-----|-----
 PyAWSMetadataManager | Helper class for managing inter-use metadata for pyaws




## PyAWSMetadataManager

```python
class PyAWSMetadataManager
```

Helper class for managing inter-use metadata for pyaws




#### Attributes

 Attribute  | Type  | Doc
-----|----------|-----
 manager  |  PyAWSManager | The top level program manager object
 first_time  |  bool | Flag that tells metadata manager if metadata exists

#### Methods

 Method  | Doc
-----|-----
 write_metadata | Writes metadata file with cached settings
 apply_metadata | Applies metadata from cached settings
 read_metadata | Converts metadata json file to python dict




### __init__

```python
def __init__(self, manager)
```

Constructor for PyAWSMetadataManager







### write_metadata

```python
def write_metadata(self)
```

Writes metadata file with cached settings







### apply_metadata

```python
def apply_metadata(self, metadata)
```

Applies metadata from cached settings




#### Parameters

 Parameter  | Type  | Doc
-----|----------|-----
 metadata  |  dict | Metadata parsed from json to python dict.





### read_metadata

```python
def read_metadata(self)
```

Converts metadata json file to python dict




#### Returns

 Return Variable  | Type  | Doc
-----|----------|-----
 metadata  |  dict | metadata dictionary








