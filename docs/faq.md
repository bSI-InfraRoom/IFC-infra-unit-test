
### I don't know how to use `markdown`.

Please see [markdown cheat sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet).
Any text editor will do,
 or use one of the free online editors (e.g. [markdown-it](https://markdown-it.github.io/)).

### I wish to participate with my own example files.

Take note of the [instructions](./docs/unit-test-instructions.md) and submit a pull request.

Contact `infrastructure@buildingsmart.org` (depending on the type of file) for help.

### I would like to include `*.*` files to the example files for reference (asked [here](https://github.com/buildingSMART/Sample-Test-Files/issues/17)).

Yes, of course. You can include multiple JPEGs if you see fit. Or IFC4 RV files. Or DWGs. Or PDFs. You should add anything that allows the other party to understand what is present in the IFC4x3 file.

### I have a question / comment / proposal regarding the documentation (resolved [here](https://github.com/buildingSMART/Sample-Test-Files/issues/92)).

Please open an issue here: https://github.com/bSI-InfraRoom/IFC-infra-unit-test/issues.

### How do I interpret the results from the checking procedure?

Consult [schema check documentation](./docs/ifc-and-md-check.md). In short:

- If `inform-ifc` fails, there are schema problems with IFC files. Consult `IFC_check_results` artifact for further information.
- If `inform-md` fails, the MD files do not comply with the guidelines. Consult `MD_check_results` artifact for further information.
