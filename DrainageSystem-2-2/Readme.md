### Intent

This UT implements IfcDistributionSystem for road drainage with a culvert and open side ditches.

It is based on storyline [bSFi-IR-SLRD-DD](https://app.box.com/s/x9q3q62tcc77hdqpdw0vjncj7bg3byay). 

The unit test is similar to [DrainageSystem-2](https://github.com/bSI-InfraRoom/IFC-infra-unit-test/tree/main/DrainageSystem-2) but with the difference that classification, properties and materials are added to provide a more rich file which better aligns with the storyline exchange requirements.

### Prerequisites

This scenario builds upon following other scenarios:

- SpatialStructure-4
- DrainageSystem-2

### Content

This scenario covers the following concepts and/or IFC entities:

- spatial structure and containment
    - `IfcSite`
    - `IfcRoad`
    - `IfcFacilityPart` with correct `PredefinedType`
    - `IfcRelContainedInSpatialStructure`
    - `IfcRelReferencedInSpatialStructure`
- system structure
    - `IfcDistributionSystem` with correct `PredefinedType`
    - `IfcRelReferencedInSpatialStructure` to assign system to spatial element(s) it services
    - `IfcRelAssignsToGroup` to assign physical elements to the system
    - `IfcRelNests` to relate ports to physical elements
    - `IfcDistributionPort` with correct `PredefinedType` and `FlowDirection`
    - `IfcRelConnectsPorts` 
- physical elements 
    - `IfcDistributionChamberElement` with correct `PredefinedType`
    - `IfcPipeSegment` with correct `PredefinedType`
- classification
    - `IfcRelAssociatesClassification`
    - `IfcClassificationReference`
    - `IfcClassification`
    - `IfcRelDeclares`
- properties
    - `IfcRelDefinesByProperties`
    - `IfcPropertySet`
    - `IfcPropertyEnumeratedValue`
    - `IfcPropertySingleValue`
- materials
    - `IfcRelAssociatesMaterial`
    - `IfcMaterial`
    - `IfcMaterialProfileSetUsage`
    - `IfcMaterialProfileset`
    - `IfcMaterialProfile`

### Situation

The start situation is described in the UT DrainageSystem-2. This UT adds classification (InfraBIM), Pset and material information.

### Expected Results

Physical elements contained/referenced in the spatial structure set in UT SpatialStructure-4.
Should be visualised correctly compared to the supporting screenshots.
Physical elements grouped into one `IfcDistributionSystem`, which is assigned to `IfcRoad`.
Network topology using `IfcDistributionPort` and `IfcRelConnectsPorts`.
Classification, material information and Psets based on the input LandXML data with maximum re-use of Psets pre-defined in IFC.

### Supporting files

Following files correspond to this scenario:

| Filename                 | Description                                                  |
| :----------------------- | ------------------------------------------------------------ |
| `DrainageSystem-2-1.xml` | Inframodel/LandXML: PipeNetwork with Structs and Pipes       |
| `DrainageSystem-2-2.xml` | Inframodel/LandXML: Top surface of the road and slopes/ditches |
| `DrainageSystem-2-2.png` | Inframodel/LandXML: Screenshot from DrainageSystem-2-2.ifc   |
| `DrainageSystem-2-2.ifc` | IFC-file for reference.                                      |

The xml files comply with the InfraModel 4 specification for LandXML 1.2. The specification is found here: https://buildingsmart.fi/infra/inframodel/
