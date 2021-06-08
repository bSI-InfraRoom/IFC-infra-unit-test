
### Intent

This scenario has a tin (only 1.5K triangles) with just one colour for all the triangles. 
The coordinates are in Easting, Northing and AHD for the map projection MGA2020 Zone 56, and heights in AHD.
The Horizontal and Vertical datums are specified in `IfcProjectedCRS`.
`IfcMapConversion` leaves the coordinates as they are and all Scales are 1. 

![georeferencingtin12d1](../Georeferencing-Tin-12d-1/Georeferencing-Tin-12d-1.png  "tin in Map Coordinates  MGA2020 Zone 56 Vertical AHD") 

The IFC file was genereated by 12d Model. 

### Prerequisites

This scenario builds upon following other scenarios:

- Georeferencing-1

### Content

This scenario covers the following concepts and/or IFC entities:

- `IfcTriangulatedIrregularNetwork`
- `IfcSolidStratum`
- `IfcIndexedColourMap`

### Supporting files

Following files correspond to this scenario:

| Filename                     | Description                               |
|:-----------------------------------|-------------------------------------------|
| `Georeferencing-Tin-12d-1.ifc`       | the exported content as IFC document      |
| `Georeferencing-Tin-12d-1.png`       | screen shot from 12d Model                |

