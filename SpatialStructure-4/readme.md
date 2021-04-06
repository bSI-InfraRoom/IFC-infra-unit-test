### Intent

This UT establishes a spatial structure for the level crossing storyline. The intention is to serve as a skeleton for upcoming unit tests for this storyline.

It is based on the storylines [SLLC-DD](https://app.box.com/folder/119147119179?s=q1x0vz7yqq7otrlet7dm2dx4u44s8fks) (IFC Rail phase 2) and [bSFi-IR-SLRD-DD](https://app.box.com/folder/122373280942?s=x9q3q62tcc77hdqpdw0vjncj7bg3byay) (IFC Infra Deployment)

### Prerequisites

None

### Content

This scenario covers the following concepts and/or IFC entities:

- Georeferencing
    - `IfcProjectedCRS`
    - `IfcMapConversion`
- Spatial structure
    - `IfcSite`
    - `IfcRailway`
    - `IfcRoad`
    - `IfcFacilityPart` with correct `PredefinedType`
    - `IfcRelInterferesElements`
- Geometry
    - `IfcExtrudedAreaSolid`
    - `IfcBoundingBox`

### Situation

Figure \ref{fig:spatial4-situation} shows the extent of the `IfcSite` and its georeferenced location.

![spatial4-situation](../SpatialStructure-4/Figure1-Situation.PNG "Caption")

Figures \ref{fig:spatial4-borders,fig:spatial4-borders2} show the spatial breakdown of the project into `IfcFacility` (blue) and `IfcFacilityPart` (turquoise).

![spatial4-borders](../SpatialStructure-4/Figure2-ToivolaAreaBorders.JPG "Caption")

![spatial4-borders2](../SpatialStructure-4/Figure3-ToivolaAreaBorders2.JPG "Caption")

#### Project Breakdown

To represent the project breakdown for this unit test, we envision the following project structure.
`IfcProject` (A.) contains `IfcSite` (A.a) with `Representation=IfcBoundingBox`, which in turn contains:

- A.a.1 `IfcRoad` (Sammalammintie)
    - `Representation=IfcExtrudedAreaSolid`
    - A.a.1.1 `IfcFacilityPart` (Sammalammintie segment 150 - 230)
        - `Representation=IfcExtrudedAreaSolid`
        - `PredefinedType=IfcRoadPartTypeEnum.ROADSEGMENT`
        - `UsageType=LONGITUDINAL`
    - A.a.1.2 `IfcFacilityPart` (Sammalammintie Päijänteentie intersection)
        - `Representation=IfcExtrudedAreaSolid`
        - `PredefinedType=IfcFacilityPartCommonTypeEnum.INTERSECTION`
        - `UsageType=LONGITUDINAL`
    - A.a.1.3 `IfcFacilityPart` (Sammalammintie segment 247 - 270)
        - `Representation=IfcExtrudedAreaSolid`
        - `PredefinedType=IfcRoadPartTypeEnum.ROADSEGMENT`
        - `UsageType=LONGITUDINAL`
    - A.a.1.4 `IfcFacilityPart` (Sammalammintie safety equipment road intersection)
        - `Representation=IfcExtrudedAreaSolid`
        - `PredefinedType=IfcRoadPartTypeEnum.INTERSECTION`
        - `UsageType=LONGITUDINAL`
    - A.a.1.5 `IfcFacilityPart` (Sammalamminitie level crossing)
        - `Representation=IfcExtrudedAreaSolid`
        - `PredefinedType=IfcRoadPartTypeEnum.RAILWAYCROSSING`
        - `UsageType=LONGITUDINAL`
    - A.a.1.6 `IfcFacilityPart` (Sammalammimtie segment 315 - 358)
        - `Representation=IfcExtrudedAreaSolid`
        - `PredefinedType=IfcRoadPartTypeEnum.ROADSEGMENT`
        - `UsageType=LONGITUDINAL`
    - A.a.1.7 `IfcFacilityPart` (Sammalammintie Road2 intersection)
        - `Representation=IfcExtrudedAreaSolid`
        - `PredefinedType=IfcRoadPartTypeEnum.INTERSECTION`
        - `UsageType=LONGITUDINAL`
    - A.a.1.8 `IfcFacilityPart` (Sammalammintie segment 386 - 620)
        - `Representation=IfcExtrudedAreaSolid`
        - `PredefinedType=IfcRoadPartTypeEnum.ROADSEGMENT`
        - `UsageType=LONGITUDINAL`
- A.a.2 `IfcRoad` (Safety equipment road)
    - `Representation=IfcExtrudedAreaSolid`
    - A.a.2.1 `IfcFacilityPart` (Safety equipment terminal)
        - `Representation=IfcExtrudedAreaSolid`
        - `PredefinedType=IfcFacilityPartCommonTypeEnum.TERMINAL`
        - `UsageType=LONGITUDINAL`
    - A.a.2.2 `IfcFacilityPart` (Sammalammintie safety equipment road intersection)
        - `Representation=IfcExtrudedAreaSolid` - Shared with A.a.1.4
        - `PredefinedType=IfcRoadPartTypeEnum.INTERSECTION`
        - `UsageType=LONGITUDINAL`
        - `IfcRelInterferesElements`
            - `InterferenceType='Crosses'`
            - `RelatingElement` = reference to A.a.1.4
            - `RelatedElement` = reference to A.a.2.2
- A.a.3 `IfcRoad` (Road2)
    - `Representation=IfcExtrudedAreaSolid`
    - A.a.3.1 `IfcFacilityPart` (Road2 segment 18 - 36)
        - `Representation=IfcExtrudedAreaSolid`
        - `PredefinedType=IfcRoadPartTypeEnum.ROADSEGMENT`
        - `UsageType=LONGITUDINAL`
    - A.a.3.2 `IfcFacilityPart` (Sammalammintie Road2 intersection)
        - `Representation=IfcExtrudedAreaSolid` - Shared with A.a.1.7
        - `PredefinedType=IfcRoadPartTypeEnum.INTERSECTION`
        - `UsageType=LONGITUDINAL`
        - `IfcRelInterferesElements`
            - `InterferenceType='Crosses'`
            - `RelatingElement` = reference to A.a.1.7
            - `RelatedElement` = reference to A.a.3.2
- A.a.4 `IfcRailway` (Railway)
    - `IfcExtrudedAreaSolid`
    - A.a.4.1 `IfcFacilityPart` (Railway part 1)
        - `Representation=` none
        - `PredefinedType=IfcRailwayPartTypeEnum.TRACKSTUCTUREPART`
        - `UsageType=LONGITUDINAL`
    - A.a.4.2 `IfcFacilityPart` (Sammalamminitie level crossing)
        - `Representation=IfcExtrudedAreaSolid` - Shared with A.a.1.5
        - `PredefinedType=IfcFacilityPartCommonTypeEnum.LEVELCROSSING`
        - `UsageType=LONGITUDINAL`
        - `IfcRelInterferesElements`
            - `InterferenceType='Crosses'`
            - `RelatingElement` = reference to A.a.1.5
            - `RelatedElement` = reference to A.a.4.2
    - A.a.4.3 `IfcFacilityPart` (Railway part 3)
        - `Representation=` none
        - `PredefinedType=IfcRailwayPartTypeEnum.TRACKSTUCTUREPART`
        - `UsageType=LONGITUDINAL`
    - A.a.4.4 `IfcFacilityPart` (Turvalaite Terminal)
        - `Representation=IfcExtrudedAreaSolid` - Shared with A.1.2.1
        - `PredefinedType=IfcFacilityPartCommonTypeEnum.TERMINAL`
        - `UsageType=LONGITUDINAL`
        - `IfcRelInterferesElements`
            - `InterferenceType='Crosses'`
            - `RelatingElement` = reference to A.a.2.1
            - `RelatedElement` = reference to A.a.4.4

The `PredefinedType` enumeration is selected through `IfcFacilityPartTypeSelect`.

### Expected Results

The aim of this Unit Test, as explained above, is to test the implementation of the project breakdown through the spatial structure concepts of IFC 4.3.

As such, the expected results are:

1. Screen-shot of the spatial structure breakdown as represented in the native application,
2. The resulting IFC file containing the spatial structure requested.

For example, the application should be able to display something as shown in Figure \ref{fig:spatial4-result}.

![spatial4-result](../SpatialStructure-4/Figure4-result.png "Expected result in software.")

The results when the IFC file is read into 12d Model is shown in the picture below: 

![](../SpatialStructure-4/SpatialStructure-4-12d-1.png)

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                                                  |
|:--------------------------------- | ------------------------------------------------------------ |
| `SpatialStructure-4.ifc`          | IFC file with the content                                    |
| `Figure1-Situation.png`           | picture showing a map view of the situation                  |
| `Figure2-ToivolaAreaBorders.JPG`  | picture showing a map over different facilities and parts - part1 |
| `Figure3-ToivolaAreaBorders2.JPG` | picture showing a map over different facilities and parts - part 2 |
| `Figure4-result.png`              | picture showing possible result                              |
| `ToivolaAreaBorders.dwg`          | dwg file as basis for figures 2 and 3                        |
| `IFCTreeView.png`                 | picture showing file structure in IFCTreeView                |
| `SpatialStructure-4-12d-1.png`    | picture showing spatial structure and geometry when read into 12d Model                |
