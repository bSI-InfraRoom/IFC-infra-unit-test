
### Intent

This scenario establishes a simple partial model of a shiplock. The intention is to show and test New predefined type of IfcStair for ladders, this UT represents an access ladder in a shiplock chamber wall.

It is based on the storyline [WSV_IR_SLPW-OM-AM](https://app.box.com/s/dlp0ljs827laiz3c7d128hq3rfqj2t4u) which has Building element proxies and geometry of sample ladders. 

IFC file MarineFurniture-2-1 contains a standard ladder element within a simplistic spatial tree (for informational purposes). the Second IFC file MarineFurniture-2-2 contains an example of the accompanying property set `PSet_StairCommon` for the context of a ladder.

The IFC file was generated using ABCT BIM Sandbox and GeomtryGym Library.

### Prerequisites

This scenario builds upon following other scenarios:

- ProjectSetup-1

### Content

This scenario covers the following concepts and/or IFC entities:

- Spatial Structure
	- `IfcMarineFacility` with predefined type `SHIPLOCK`
- Products
	- `IfcStair` with predefine type `LADDER`	
- Representations
	- `IfcProductDefinitionShape`
	- `IfcShapeRepresentation`
- Placement
	- `IfcLocalPlacement`
- Geometry
	- `IfcFacetedBRep`
	- `IfcShellBasedSurfaceModel`

#### Situation

Figure 1 shows the example bollards and associated tree contained within both IFC Files and the additional property set example

![Marine Furniture][figure 1]

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|-----------------------------------|-------------------------------------------|
| `MarineFurniture-2-1.ifc` | IFC file with example ladder |
| `MarineFurniture-2-2.ifc` | IFC file with example ladder with Property Sets |
| `MarineFurniture-2.png` | IFC Tree view produced in BimVision with property sets |

[figure 1]: ../MarineFurniture-2/MarineFurniture-2.png "IFC Tree view produced in BimVision with property sets"
