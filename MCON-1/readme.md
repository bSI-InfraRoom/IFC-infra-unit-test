### Intent

This UT implements IfcAnnotation/SUPERELEVATION and IfcAnnotation/WIDTH to test requirements based on storyline [TC127-IR-SLRH-C-MCON](https://app.box.com/folder/122373399568?s=fr6k8xqud6uug6ep0s158uxtb70doxcd). Particularly the exchange scenarios 1 (alignment) and 4 (Requirements of final product). Regarding exchange scenario 4, this unit test particularly tests the use of IfcAnnotation/SUPERELEVATIONEVENT and IfcAnnotation/WIDTHEVENT together with a lateral breakdown of the facility parts from [SpatialStructure-4](https://github.com/bSI-InfraRoom/IFC-infra-unit-test/tree/main/SpatialStructure-4) and linear placement of the objects along the alignments.

### Prerequisites

This scenario builds upon following other scenarios:

- SpatialStructure-4

### Content

This scenario covers the following concepts and/or IFC entities:

- spatial structure and containment
    - `IfcSite`
    - `IfcRoad`
    - `IfcFacilityPart` with correct `PredefinedType` (UsageType both LONGITUDINAL and LATERAL)
    - `IfcRelContainedInSpatialStructure`
- physical elements 
    - `IfcAlignment`
    - `IfcLinearPlacement`
    - `IfcAnnotation` with correct `PredefinedType` and Psets

### Situation

The start situation is described in the UT SpatialStructure-4 output (SpatialStructure-4.ifc).

The area of concern is especially the part where the main road (M14334 - starting from the railway level crossing) intersects with the smaller road Y3 (Road2 in the spatial structure).

Typical ross-section definitions are given in Figure-1

![Figure-1](..\MCON-1\M14334-Cross-section.png)

Figure-1 : Cross-section definitions

In Figure-2, the changes of superelevations and widths along the alignments are shown.

![Figure-2](..\MCON-1\Superelevations-Widths.png)

### Expected Results

- A spatial structure base on UT [SpatialStructure-4](https://github.com/bSI-InfraRoom/IFC-infra-unit-test/tree/main/SpatialStructure-4)
- The main alignment (M14334) contained at IfcSite level
- The alignment for the side road (Y3/Road2) contained at IfcRoad level
- The necessary facility parts subdivided further laterally into CARRIAGEWAY, SOFTSHOULDER (left and right), ROADSIDEPART (Sideslope left and right) and ROADSIDEPART (back slope left and right)
    - These are used to contain the IfcAnnotation/SUPERELEVATION and IfcAnnotationWidth objects with the specified values as properties
- Linear placements along the alignments for the longitudinal facility parts and the IfcAnnotation objects

### Supporting files

Following files correspond to this scenario:

| Filename                     | Description                                                  |
| :--------------------------- | ------------------------------------------------------------ |
| `TOI-M14334-0000A.xml`       | Inframodel/LandXML: Alignment for main road                  |
| `TOI-M14334-0000A.ifc`       | IfcAlignment for main road                                   |
| `TOI-Y3-0000A.xml`           | Inframodel/LandXML: Alignment for side road                  |
| `TOI-Y3-0000A.ifc`           | Inframodel/LandXML: Alignment for side road                  |
| `M14334-Cross-section.png`   | Image showing the typical cross sections                     |
| `Superelevations-Widths.png` | Image showing the changes of superelevations and widths along the alignments |
| `MCON-1.ifc`                 | Resulting IFC-file                                           |

The xml files comply with the InfraModel 4 specification for LandXML 1.2. The specification is found here: https://buildingsmart.fi/infra/inframodel/
