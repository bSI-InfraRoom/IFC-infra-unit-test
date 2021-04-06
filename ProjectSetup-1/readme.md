
### Intent

This scenario encapsulates the model set up with correct units and project context.

- It sets the units of the project to SI or conversion based units.
- It contains a project *"Boilerplate"* with GUID=`2DAvEupIz0HQr73cMaawtY` 
   that establishes the bare minimum of an IFC file exchange.
- It establishes one geometric context for geometries.

### Prerequisites

This scenario builds upon following other scenarios:

- none

### Content

This scenario covers the following concepts and/or IFC entities:

- project context
    - `IfcProject`
- geometric context
    - `IfcGeometricRepresentationContext`
- default unit assignment
    - `IfcUnitAssignment`
    - `IfcUnit`
        - `IfcSIUnit`
	    - `IfcConversionBasedUnit`
	    - `IfcMonetaryUnit`
	    - `IfcMeasureWithUnit`

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|:----------------------------------|-------------------------------------------|
| `ProjectSetup-1.ifc`              | the IFC document                          |

### Additional explanation

This UT establishes the *bare minimum* of IFC content within an IFC file.
There are no products, geometries, properties or anything inside.

The main purpose of this UT is to have a basis for all UTs, where this *boilerplate* content must be included, but is not explained in detail.
