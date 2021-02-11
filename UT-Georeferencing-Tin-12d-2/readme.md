
### Intent

IFC 4x3 RC2
This scenario has a tin with coordinates for IfcTriangulatedIrregularNetwork using a local origin of (256400.0, 7011600.0, 0.0).
IfcMapConversion is used to translate data to the correct (Easting, Northing, Height) for the map projection.
The data is already in map units so Scale is 1.

The tin has just one colour for all the triangles. 
There are no voids.

The Horizontal and Vertical datums are specified in 'IfcProjectedCRS'.

The ifc file was written by 12d Model. 

### Prerequisites

This scenario builds upon the other scenarios:

- Georeferencing-Tin-12d-1

### Content

This scenario covers the additional concepts and/or IFC entities:

- 'IfcMapConversion' is used to translate the data to map coordindates

### Supporting files

Following files correspond to this scenario:

| Filename                                         | Description                               |
|--------------------------------------------------|-------------------------------------------|
| `UT-Georeferencing-Tin-12d-2.ifc` | the exported content as IFC document      |
| `UT-Georeferencing-Tin-12d-2.png` | screen shot from 12d Model                |

