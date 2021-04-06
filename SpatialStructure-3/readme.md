
### Intent

This UT establishes a simple spatial structure for a level crossing (road/railway).

It is based on the storyline [SLLC-DD](https://app.box.com/folder/119147119179?s=q1x0vz7yqq7otrlet7dm2dx4u44s8fks).

### Prerequisites

This scenario builds upon following other scenarios:

- ProjectSetup-1

### Content

This scenario covers the following concepts and/or IFC entities:

- spatial structure
    - `IfcSite`
    - `IfcRailway`
    - `IfcRoad`
    - `IfcFacilityPart` with correct `PredefinedType`
    - `IfcRelInterferesElements`

### Situation

![](../SpatialStructure-3/Figure1-situation.png)

### Project Breakdown

To represent the project breakdown for this unit test, we envision the following project structure:

`IfcProject` (A.) contains `IfcSite` (A.a), which in turn contains:

- `IfcGeoModel` (or similar representing terrain - optional for this unit test)
- A.a.1 `IfcRoad`
    - `IfcAlignment` (optional for this unit test)
    - A.a.1.1 `IfcFacilityPart`
        - `PredefinedType=IfcRoadPartTypeEnum.ROADSEGMENT`
        - `UsageType=LONGITUDINAL`
    - A.a.1.2 `IfcFacilityPart`
        - `PredefinedType=IfcFacilityPartCommonTypeEnum.LEVELCROSSING`
        - `UsageType=LONGITUDINAL`
    - A.a.1.3 IfcFacilityPart
        - `PredefinedType=IfcRoadPartTypeEnum.ROADSEGMENT`
        - `UsageType=LONGITUDINAL`
- A.a.2 IfcRailway
    - `IfcAlignment` (optional for this unit test)
    - A.a.2.1 `IfcFacilityPart`
        - `PredefinedType=IfcRailwayPartTypeEnum.TRACKSTUCTUREPART`
        - `UsageType=LONGITUDINAL`
    - A.a.2.2 IfcFacilityPart
        - `PredefinedType=IfcFacilityPartCommonTypeEnum.LEVELCROSSING`
        - `UsageType=LONGITUDINAL`
    - A.a.2.3 IfcFacilityPart
        - `PredefinedType=IfcRailwayPartTypeEnum.TRACKSTRUCTUREPART`
        - `UsageType=LONGITUDINAL`

Additionally, there is an `IfcRelInterferesElements` with:

- `InterferenceType="Crosses"`
- `RelatingElement` = reference to A.a.1.2
- `RelatedElement` = reference to A.a.2.2
- `InterferenceGeometry` = optional for this unit test


### Expected Results

The aim of this Unit Test, as explained above, is to test the implementation of the project breakdown through the spatial structure concepts of IFC 4.3.

As such, the expected results are:

1. Screen-shot of the spatial structure breakdown as represented in the native application,
2. The resulting IFC file containing the spatial structure requested.

For example, the application should be able to display something like what is shown in the picture below: 

![](../SpatialStructure-3/Figure2-result.png)

### Supporting files

Following files correspond to this scenario:

| Filename                   | Description                                   |
|:-------------------------- | --------------------------------------------- |
| `SpatialStructure_3.ifc`   | IFC file with the content                     |
| `Figure 1 - Situation.png` | picture showing a map view of the situation   |
| `Figure 2 - result.png`    | picture showing possible result               |
| `IFCTreeView.png`          | picture showing file structure in IFCTreeView |
