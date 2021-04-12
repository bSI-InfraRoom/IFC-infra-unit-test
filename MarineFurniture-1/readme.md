
### Intent

This scenario establishes a simple partial model of a shiplock. The intention is to show and test mooring furniture, this UT represents a mooring bollard.

It is based on the storyline [WSV_IR_SLPW-OM-AM](https://app.box.com/s/dlp0ljs827laiz3c7d128hq3rfqj2t4u) which has Building element proxies and geometry of sample bollards. 

IFC file MarineFurniture-1-1 contains a standard mooring element within a simplistic spatial tree (for informational purposes). the Second IFC file MarineFurniture-1-2 contains an example of the new accompanying property set for mooring devices `PSet_MooringDeviceCommon`

The IFC file was generated using ABCT BIM Sandbox and GeomtryGym Library.

### Prerequisites

This scenario builds upon following other scenarios:

- ProjectSetup-1

### Content

This scenario covers the following concepts and/or IFC entities:

- Spatial Structure
	- `IfcMarineFacility` with predefined type `SHIPLOCK`
- Products
	- `IfcMooringDevice` with predefine type `BOLLARD`	
- Representations
	- `IfcProductDefinitionShape`
	- `IfcShapeRepresentation`
- Placement
	- `IfcLocalPlacement`
- Geometry
	- `IfcFacetedBRep`
	- `IfcShellBasedSurfaceModel`

#### Situation

Figure 1 shows the example bollards and associated tree. contained within both IFC Files

![Marine Furniture][figure 1]

Figure 2 shows the content of MarineFurniture-1-2 with the additional property set example

![Marine Furniture Property Sets][figure 2]

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|-----------------------------------|-------------------------------------------|
| `MarineFurniture-1-1.ifc` | IFC file with example mooring device |
| `MarineFurniture-1-2.ifc` | IFC file with example mooring device with Property Sets |
| `MarineFurniture-1-1.png` | IFC Tree view produced in FZK Viewer |
| `MarineFurniture-1-2.png` | Mooring Device Property sets in FZK Viewer |

[figure 1]: ../MarineFurniture-1/MarineFurniture-1-1.png "IFC Tree view produced in FZK Viewer"
[figure 2]: ../MarineFurniture-1/MarineFurniture-1-2.png "Mooring Device Property sets in FZK Viewer"
