
### Intent

This scenario provides the outline of the house from Georeferencing-3 unit test in a single IFC file with different georeferencing:

- D48/GK (EPSG:3912)
- D96/TM (EPSG:3794)

Both outlines should overlay with a height difference of 0.5 meter if interpreted correctly (up to a certain precision for the horizontal layout).

### Prerequisites

This scenario builds upon following other scenarios:

- Georeferencing-3

### Content

This scenario covers the following additional concepts and/or IFC entities:

- multiple different georeferencing in single IFC file

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|:----------------------------------|-------------------------------------------|
| `GeoRef-4.ifc`                    | the building's outline as IFC file        |
| `GeoRef-4-OIP_wrong.png`          | screen shot of IFC file loaded in TUM Open Infra Platform - interpreted wrongly |
