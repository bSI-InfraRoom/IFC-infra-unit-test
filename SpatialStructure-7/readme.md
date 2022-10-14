
### Intent

An IFC-based test case for the HNTB storyline "prestressed concrete bridge".

The model was created using Autodesk InfraWorks and refined in Autodesk Revit. 
Inside Revit, a prototypical Dynamo interface transfers the model into appropriate IFC representations. 

The current IFC model covers aspects of spatial decomposition. 


### Prerequisites

This scenario builds upon following other scenarios:

- Project Setup
- Spatial Structure 

### Content

This scenario covers the following concepts and/or IFC entities:

- SpatialStructureElements such as `IfcBridge`, `IfcRoad`, and `IfcFacilityPart` with appropiate PDTs
- `IfcElement` subclasses to describe the bridge objects 

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|-----------------------------------|-------------------------------------------|
| SpatialStructure-7.rvt            | The bridge in Autodesk Revit 2021         |
| SpatialStructure-7.ifc            | The resulting IFC model                   |
| SpatialStructure-7-1.png          | Screenshot Revit                          |
| SpatialStructure-7-2.png          | Screenshot BIM Vision                     |
