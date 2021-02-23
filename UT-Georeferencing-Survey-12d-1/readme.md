
### Intent

Survey points are collected from the very beginning of a project and the position and elevation of any data in a project must be tied back to accurate survey.  
Basic survey data consists of survey strings.

This scenario covers the simplest survey string - a survey string of just one survey point.

To classify and identify data, Surveyers use the name of the survey string so this critical bit of information must be in the IFC file.
IfcRoot.Name is the obvious place to store the survey string name.  
In this case, the survey string consists of just one point.

To further identify special survey points, Surveyers uses a "Point id" for the partticular Survey Point.
A Property Set attribute is recommended in the IFC Schema for this additional information.  

This IFC file has a survey consisting of:

- a one point survey string with survey string name "SF LE" and the one point having Point Id "7A".

The coordinates are in Easting, Northing and AHD for the map projection MGA2020 Zone 56.
The Horizontal and Vertical datums, and Map Projection, are specified in IfcProjectedCRS.

![utsurvey12d1](../UT-Georeferencing-Survey-12d-1/UT-Georeferencing-Survey-12d-1.png  "Single Survey Point with Name "SF LE" and Point Id 7A") 

It appears that Survey data is written out as IfcAnnotation.
The IFC file was written by 12d Model. 

### Prerequisites

This scenario builds upon following other scenarios:

- ProjectSetup-1
- Georeferencing-1

### Content

This scenario covers the following new concepts and/or IFC entities:

-  `IfcAnnotation` with `IfcAnnotation.Name` as the Survey string name
-  `IfcAnnotation` with `IfcAnnotation.PredefinedType=USERDEFINED` and `IfcAnnotation.ObjectType=SurveyPoint`
-  `IfcPropertySet`
-  `IfcPropertySingleValue`
-  `IfcRelDefinesByPropeties`

### Supporting files

Following files correspond to this scenario:

| Filename                              | Description                        |
|---------------------------------------|------------------------------------|
| `UT-Georeferencing-Survey-12d-1.ifc`  | the exported content as IFC document |
| `UT-Georeferencing-Survey-12d-1.png`      | screen shot from 12d Model           |

