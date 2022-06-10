
### Intent

This scenario provides the outline of the house from Georeferencing-3 unit test in a single IFC file with different georeferencing:

- D48/GK (EPSG:3912)
- D96/TM (EPSG:3794)

Both outlines should overlay with a height difference of 0.5 meter if interpreted correctly (up to a certain precision for the horizontal layout).

**NOTE**: The produced IFC file is wrong according to the current specification. 
These changes are needed:

1. The constraint on the derived `HasCoordinateOperation` within `IfcGeometricRepresentationContext` has to be revised,
 such that not *all* `HasCoordinateOperation` attributes in an IFC file must refer to an *identical* instance of `IfcCoordinateReferenceSystem`.
1. A relaxation of the restriction of only one 3D and one 2D `IfcGeometricRepresentationContext` per IFC file is needed.

With these changes, an IFC file as presented in this unit test can be produced. See also [official documentation of `IfcGeometricRepresentationContext`](https://standards.buildingsmart.org/IFC/RELEASE/IFC4/ADD1/HTML/link/ifcgeometricrepresentationcontext.htm).

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
| `GeoRef-4-OIP_separateModels.png` | screen shot of IFC file loaded in TUM Open Infra Platform - interpreted as two separate models |
