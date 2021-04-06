
### Intent

This scenario establishes a simple spatial structure for a fragment of a generic facility, comprising of a quay and berth. The intention is to show and test how spatial structures can be used to organize a project. The model utilizes new vertical and regional breakdown objects to organize the project and provide a skeleton for local placement.

A version with geometric representation (surfaces for stratums, spatial volumes and a generic quay wall) has also been added to provide visual elements within an IFC Viewer.

The IFC file was generated using ABCT BIM Sandbox and GeomtryGym Library.

### Prerequisites

This scenario builds upon following other scenarios:

- ProjectSetup-1

### Content

This scenario covers the following concepts and/or IFC entities:

- Spatial Structure
	- `IfcSite`
	- `IfcFacility`
	- `IfcMarineFacility` with predefined types
	- `IfcFacilityPart` with predefined and usage types
	- `IfcSpace` with predefined types
- Products
	- `IfcSolidStratum`
	- `IfcWaterStratum`
- Representations
	- `IfcProductDefinitionShape`
	- `IfcShapeRepresentation`
- Placement
	- `IfcLocalPlacement`
- Geometry
	- `IfcExtrudedAreaSolid`
	- `IfcBoundingBox`

#### Project Breakdown

Figure 1 shows the `SpatialStructure-5-2.ifc` with its additional geometric representation to help visualise the structure.

![Visual][figure 1]

To represent the project breakdown for this unit test, we envision the following project structure.
`IfcProject` contains an `IfcSite` (S.) with `Representation=IfcBoundingBox`(in Visual), which in turn contains:

- S.F `IfcFacility` (Test Facility)
	- `Representation=IfcBoundingBox` (in Visual)
	- S.F.Q `IfcMarineFacility` (Quay)
		- `Representation=IfcBoundingBox` (in Visual)
        - `PredefinedType=IfcMarinePartTypeEnum.WATERFIELD`
        - `UsageType=REGION`
		- S.F.Q.b1 `IfcSpace` (Berth)
			- `Representation=IfcExtrudedAreaSolid` (in Visual)
			- `PredefinedType=IfcSpaceTypeEnum.BERTH`
		- S.F.Q.WL `IfcFacilityPart` (Low Water Level)
			- `PredefinedType=IfcMarinePartTypeEnum.LOWWATERLINE`
        	- `UsageType=VERTICAL`
		- S.F.Q.CL `IfcFacilityPart` (Quay Cope Level)
			- `PredefinedType=IfcMarinePartTypeEnum.COPELEVEL`
        	- `UsageType=VERTICAL`


The application should be able to display a project hierarchy as shown in Figure 2 wh.

![Project Tree][figure 2]

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|-----------------------------------|-------------------------------------------|
| `SpatialStructure-5-1.ifc` | IFC file with informational spatial structure |
| `SpatialStructure-5-2.ifc` | IFC file with additional geoemtric representations |
| `SpatialStructure-5-1.png` | Visual of SpatialStructure-5-2.ifc |
| `SpatialStructure-5-2.png` | IFC Tree view produced in FZK Viewer from SpatialStructure-5-1.ifc|

[Figure 1]: ../SpatialStructure-5/SpatialStructure-5-1.png "Diagramatic overlay of master plan"
[Figure 2]: ../SpatialStructure-5/SpatialStructure-5-2.png "IFC Tree view produced in FZK Viewer"


