
### Intent

Survey points are collected from the very beginning of a project and the position and elevation of any data in a project must be tied back to accurate survey.  
Basic survey data consists of survey strings.

This scenario covers a simple survey string which has a name but no Point Id's.

To classify and identify data, Surveyers use the name of the survey string so this critical bit of information must be in the IFC file.
IfcRoot.Name is the obvious place to store the survey point name.  
In this case, the survey string consists of just one point.

This IFC file has a survey consisting of:

- one survey string with name "RD ET" but with no Point Id's.

The coordinates are in Easting, Northing and AHD for the map projection MGA2020 Zone 56.
The Horizontal and Vertical datums, and Map Projection, are specified in IfcProjectedCRS.

![utsurvey12d2](../UT-Georeferencing-Survey-12d-2/UT-Georeferencing-Survey-12d-2.png  "Single Survey String with Name "RD ET") 

The IFC file was written by 12d Model. 

### Prerequisites

This scenario builds upon following other scenarios:

- UT-Georeferencing-Survey-12d-1

### Content

This scenario covers the following new concepts and/or IFC entities:

-  `IfcAnnotation` with `IfcAnnotation.Name` as the Survey string name
-  `IfcAnnotation` with `IfcAnnotation.PredefinedType=USERDEFINED` and `IfcAnnotation.ObjectType=SurveyString`

### Supporting files

Following files correspond to this scenario:

| Filename                              | Description                        |
|---------------------------------------|------------------------------------|
| `UT-Georeferencing-Survey-12d-2.ifc`  | the exported content as IFC document |
| `UT-Georeferencing-Survey-12d-2.png`      | screen shot from 12d Model           |

