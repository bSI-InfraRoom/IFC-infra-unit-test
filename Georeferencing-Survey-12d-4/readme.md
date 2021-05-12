
### Intent

Survey data is collected from the very beginning of a project and the position and elevation of any other data in the project must be tied back to accurate survey.  
Survey data starts with points and strings which are an ordered set of points (vertices) vertices connected by segments.
A survey point is just a survey string with only one vertex
 
As well as collecting the (x,y) and sometimes a z for each vertex, surveyors also collect properties for the entire string, properties for each vertex of the string and properties for each segment of the string.
For example when picking up the top of a buried pipe, the Quality level can vary for each vertex and for each segment of the pipe.

In this Unit Test the segments and vertices are represetned by individual IfcAnnotation entities, each with their own Property Sets.
The entities are connected via a separate IfcRelNests entity for segments and vertices:

- RelNests linking the string segments back to the entire string, where each segment has its own Propery set
- Each Segment has Segment appended to the name and the segment number in the description (starting at 1)
- RelNests linking the string vertices back to the entire string, where each vertex has its own Property set and the name and description modified to distinguish vertices
- Each Vertex has Vertex appended to the name and the vertex number in the description (starting at 1)

This encoding is to allow the process to be reversed when read into another software package. 

So this scenario covers one simple survey string with property sets for the entire string, property sets for vertex properties and property sets for segment properties

This IFC file has a survey consisting of:

- one survey string with name "SW"
- Property Set "SW" with properties STRMATERIAL, STRSHAPE and STRDIAMETER
- Four string segments, each with Property set "SW"
- Five string vertices, each with Property sets "SW" and "PT ID"

The coordinates are in Easting, Northing and AHD for the map projection MGA2020 Zone 56.
The Horizontal and Vertical datums, and Map Projection, are specified in IfcProjectedCRS.
IfcMapConversion is a "No Operation" as the data in the file is already in map coordinates and needs no further transformation. 

![georefsurvey12d4](../Georeferencing-Survey-12d-4/Georeferencing-Survey-12d-4.png  "Survey String with Vertex and Segment Property Sets")
![georefsurvey12d4RDF](../Georeferencing-Survey-12d-4/Georeferencing-Survey-12d-4-in-RDF-ifcviewer.png  "Survey String with Vertex and Segment Property Set in RDF ifcviewer")

The IFC file was written by 12d Model. 

### Prerequisites

This scenario builds upon following other scenarios:

- Georeferencing-Survey-12d-2
- Georeferencing-Survey-12d-3

### Content

This scenario covers the following new concepts and/or IFC entities:

-  `IfcComplexProperty`
-  `IfcPropertySingleValue` with `IfcPropertySingleValue.Nominalvalue` IFCLABEL
-  `IfcPropertySingleValue` with `IfcPropertySingleValue.Nominalvalue` IFCREAL


### Supporting files

Following files correspond to this scenario:

| Filename                           | Description                        |
|------------------------------------|------------------------------------|
| `Georeferencing-Survey-12d-4.ifc`  | the exported content as IFC document |
| `Georeferencing-Survey-12d-4.png`      | screen shot from 12d Model           |
| `Georeferencing-Survey-12d-4-RDF-ifcviewer.png`      | screen shot from RDF ifcviewer      |

