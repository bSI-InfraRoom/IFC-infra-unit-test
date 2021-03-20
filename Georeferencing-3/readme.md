
### Intent

This scenario provides the outline of a house in two separate files with different georeferencing:

- D48/GK (EPSG:3912)
- D96/TM (EPSG:3794)

The content of both files should overlay if interpreted correctly (up to a certain precision).

### Prerequisites

This scenario builds upon following other scenarios:

- Georeferencing-1
- SpatialStructure-1

### Content

This scenario covers the following additional concepts and/or IFC entities:

- representation of `IfcBuilding`:
    - `IfcPolyline`

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|:----------------------------------|-------------------------------------------|
| `GeoRef-3-d48.ifc`                | the outline in D48/GK as IFC file         |
| `GeoRef-3-d96.ifc`                | the outline in D96/TM as IFC file         |
| `GeoRef-3-D48-OIP.png`            | screen shot of D48/GK file loaded in TUM Open Infra Platform |
| `GeoRef-3-D96-OIP.png`            | screen shot of D96/TM file loaded in TUM Open Infra Platform |
