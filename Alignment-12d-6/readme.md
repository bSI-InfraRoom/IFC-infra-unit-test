
### Intent

This scenario has an alignment with left arc in horizontal and crest and sag arcs in vertical.

That is, it has 
Civil Horizontal:

- horizontal straight
- horizontal let arc with IFC positive radius of curvature
- horizontal straight

Civil Vertical:

- vertical straight
- vertical crest arc
- vertical straight
- vertical sag arc
- vertical straight

In the IFC file there is only the IFC semantic definition of the alignment and no IFC geometry.

![alignment12d6](../Alignment-12d-6/Alignment-12d-6.png  "Alignment with vertical crest and sag arcs")

The IFC file was generated by 12d Model. 

### Prerequisites

This scenario builds upon the scenarios:

- Alignment-12d-2

### Content

This scenario covers the additional concepts and/or IFC entities:

- `IfcAlignmentVerticalSegment` with `PredefinedType=CIRCULARARC` for crest and sag arc

### Supporting files

Following files correspond to this scenario:

| Filename                           | Description                                                                                            |
|------------------------------------|--------------------------------------------------------------------------------------------------------|
| `Alignment-12d-6.ifc`           | the exported content as an IFC file                                                                    |
| `Alignment-12d-6.png`           | plan and long section view of the alignment, and the segment parameters (with Civil radius and percent Grade) |


