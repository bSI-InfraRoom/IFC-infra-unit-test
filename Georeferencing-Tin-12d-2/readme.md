
### Intent

This scenario has a TIN with coordinates for `IfcTriangulatedIrregularNetwork` in map units (map metres)
 but using a local origin of (256400.0, 7011600.0, 0.0) to truncate the coordinates.
IfcMapConversion is used to translate data to the correct (Easting, Northing, Height) for the map projection.
The data is already in map units (map metres) so Scale is 1.
The Horizontal and Vertical datums are specified in `IfcProjectedCRS`.

The TIN has one colour for all the triangles and there are no voids in the TIN.

Special note: the data is *NOT* in local engineering coordinates.
The units for *x* and *y* are map units (map metres) and not ground units. 

The IFC file was written by 12d Model.

### Prerequisites

This scenario builds upon the other scenarios:

- Georeferencing-Tin-12d-1

### Content

This scenario covers the additional concepts and/or IFC entities:

- `IfcMapConversion` is used to translate the data from truncated map coordinates (a local origin) to map coordinates. 

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|:----------------------------------|-------------------------------------------|
| `UT-Georeferencing-Tin-12d-2.ifc` | the exported content as IFC document      |
| `UT-Georeferencing-Tin-12d-2.png` | screen shot from 12d Model                |

