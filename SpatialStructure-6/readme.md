
### Intent

This scenario establishes a spatial structure for a shipyard. The intention is to show and test how spatial structures can be used to organize a project. 
The model utilizes new vertical and regional breakdown objects to organize the project and provide a skeleton for local placement.

A version with geometric representation has also been added to mimic the master planning (PHXX) use case involving the initial layout of a complex which provides visualization and volumetric segregation of the model. In Addition to this a third version with generic built element placeholders provides a simple visualisation of an arbituary facility

It is based on the storyline [RHDHV_IR_SLPW-BA-DD](https://app.box.com/s/3mqdo34f2u1fu5scfcbqn7krmwct2sfd) which has exchanges for spatial and master planning of a shipyard. 

The IFC file was generated using ABCT BIM Sandbox and GeomtryGym Library.

### Prerequisites

This scenario builds upon following other scenarios:

- ProjectSetup-1

### Content

This scenario covers the following concepts and/or IFC entities:

- Spatial Structure
	- `IfcSite`
	- `IfcMarineFacility` with predefined types
	- `IfcFacilityPart` with predefined and usage types
	- `IfcSpace`
- Representations
	- `IfcProductDefinitionShape`
	- `IfcShapeRepresentation`
- Placement
	- `IfcLocalPlacement`
- Geometry
	- `IfcBoundingBox`

Supplimentary models for visual purposes cover the following concepts and/or IFC entities in additions to above:

- Products
	- `IfcBuiltElement`
	- `IfcTransportElement`
	- `IfcSlab`
	- `IfcSolidStratum`
	- `IfcWaterStratum`
- Geometry
	- `IfcFacetedBRep`

#### Project Breakdown
Figure 1 shows the extent and plan layout of the masterplan.

![Master Plan][figure 1]
![Master Plan with geometry][figure 2]

To represent the project breakdown for this unit test, we envision the following project structure.
`IfcProject` contains an `IfcSite` (S.) with `Representation=IfcBoundingBox`, which in turn contains:

- S.SY `IfcMarineFacility` (Shipyard)
	- `Representation=IfcBoundingBox`
	- `PredefinedType=IfcMarineFacilityTypeEnum.SHIPYARD`
	- S.SY.W `IfcFacilityPart` (Shipyard Water Field)
		- `Representation=IfcBoundingBox`
        - `PredefinedType=IfcMarinePartTypeEnum.WATERFIELD`
        - `UsageType=REGION`
		- S.SY.W.1 `IfcMarineFacility` (Pier 1)
			- `Representation=IfcBoundingBox`
			- `PredefinedType=IfcMarineFacilityTypeEnum.JETTY`
			- S.SY.W.1.b1 `IfcSpace` (Berth 1)
				- `Representation=IfcExtrudedAreaSolid`
				- `PredefinedType=IfcSpaceTypeEnum.BERTH`
		- S.SY.W.2 `IfcMarineFacility` (Pier 2)
			- `Representation=IfcBoundingBox`
			- `PredefinedType=IfcMarineFacilityTypeEnum.JETTY`
			- S.SY.W.2.b3 `IfcSpace` (Berth 3)
				- `Representation=IfcBoundingBox`
				- `PredefinedType=IfcSpaceTypeEnum.BERTH`
			- S.SY.W.2.b4 `IfcSpace` (Berth 4)
				- `Representation=IfcBoundingBox`
				- `PredefinedType=IfcSpaceTypeEnum.BERTH`
		- S.SY.W.3 `IfcMarineFacility` (Pier 3)
			- `Representation=IfcBoundingBox`
			- `PredefinedType=IfcMarineFacilityTypeEnum.JETTY`
			- S.SY.W.3.b5 `IfcSpace` (Berth 5)
				- `Representation=IfcBoundingBox`
				- `PredefinedType=IfcSpaceTypeEnum.BERTH`
		- S.SY.W.4 `IfcMarineFacility` (Floating Drydock 1)
			- `Representation=IfcBoundingBox`
			- `PredefinedType=IfcMarineFacilityTypeEnum.FLOATINGDRYDOCK`
		- S.SY.W.5 `IfcMarineFacility` (Floating Drydock 2)
			- `Representation=IfcBoundingBox`
			- `PredefinedType=IfcMarineFacilityTypeEnum.FLOATINGDRYDOCK`
	- S.SY.L `IfcFacilityPart` (Shipyard Land Field)
		- `Representation=IfcBoundingBox`
        - `PredefinedType=IfcMarinePartTypeEnum.LANDFIELD`
        - `UsageType=REGION`
		- S.SY.L.1 `IfcMarineFacility` (Quay 1)
			- `Representation=IfcBoundingBox`
			- `PredefinedType=IfcMarineFacilityTypeEnum.QUAY`
			- S.SY.L.1.b2 `IfcSpace` (Berth 2)
				- `Representation=IfcBoundingBox`
				- `PredefinedType=IfcSpaceTypeEnum.BERTH`
		- S.SY.L.2 `IfcMarineFacility` (Dry Dock 1)
			- `Representation=IfcBoundingBox`
			- `PredefinedType=IfcMarineFacilityTypeEnum.DRYDOCK`		
		- S.SY.L.3 `IfcMarineFacility` (Quay 2)
			- `Representation=IfcBoundingBox`
			- `PredefinedType=IfcMarineFacilityTypeEnum.QUAY`
			- S.SY.L.3.b6 `IfcSpace` (Berth 6)
				- `Representation=IfcBoundingBox`
				- `PredefinedType=IfcSpaceTypeEnum.BERTH`
		- S.SY.L.4 `IfcMarineFacility` (Dry Dock 1)
			- `Representation=IfcBoundingBox`
			- `PredefinedType=IfcMarineFacilityTypeEnum.DRYDOCK`


The application should be able to display a project hierarchy as shown in Figure 2.

![Project Tree][figure 3]

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|-----------------------------------|-------------------------------------------|
| `SpatialStructure-6-1.ifc` | IFC file with informational spatial structure of shipyard |
| `SpatialStructure-6-2.ifc` | IFC file with additional geometry for master plan layout |
| `SpatialStructure-6-3.ifc` | IFC file with additional arbituay built elememts for master plan layout |
| `SpatialStructure-6-1.png` | Diagramatic overlay of master plan |
| `SpatialStructure-6-2.png` | master plan with geometry visualization |
| `SpatialStructure-6-3.png` | IFC Tree view produced in FZK Viewer |

[figure 1]: ./SpatialStructure-6-1.png "Diagramatic overlay of master plan"
[figure 2]: ./SpatialStructure-6-2.png "master plan with geometry visualization"
[figure 3]: ./SpatialStructure-6-3.png "IFC Tree view produced in FZK Viewer"
