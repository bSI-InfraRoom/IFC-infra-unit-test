 
### Intent

IFC 4x3 RC2
This scenario has an alignment with left and right arcs and left and right leading and trailing clothoid transitions in horizontal
 and no vertical
That is, it has 
Civil Horizontal Geometry (HG):

- straight of length 38.292
- left clothoid transition of length 20 with IFC positive radius of curvature going from 0 to 150
- left arc of length 74.118 with IFC positive radius of curvature
- left clothoid transition of length 30 with IFC positive radius of curvature going from 150 to 0,
- straight of length 14.9
- left arc of length 12.45 with IFC positive radius of curvature 40
- straight of length 47.26,
- leading right clothoid transition of length 10 with IFC negative radius of curvature going from 0 to -75
- right arc of length 26.798 with IFC negative radius of curvature -75,
- trailing right clothoid transition of length 30 with IFC negative radius of curvature going from -75 to 0
- straight of length 54.426

Civil Vertical Geometry (VG): none

In the IFC file there is only the IFC semantic definition of the alignment and no IFC geometry.
The IFC file was generated by 12d Model. 

### Prerequisites

This scenario builds upon the scenarios

- UT-Alignment-12d-4

### Content

This scenario covers the additional concepts and/or IFC entities:

  `IfcAlignmentHorizontalSegment` with `PredefinedType=CLOTHOID` with negative radius of curvature
  `IfcAlignmentHorizontalSegment` with `PredefinedType=CIRCULARARC` with negative radius of curvature


### Supporting files

Following files correspond to this scenario:

| Filename                           | Description                                                |
|------------------------------------|------------------------------------------------------------|
| `UT-Alignment-12d-5.ifc`           | the exported content as an IFC file                        |
| `UT-Alignment-12d-5.png`           | plan view of the alignment and table of segment parameters |

