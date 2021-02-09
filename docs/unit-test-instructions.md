
# Instructions for submitting new unit tests

## Producing new unit tests

- Make a separate folder for your contributions named `topic-nr`, for example:

Example: `Georeferencing-1`

- Copy the [template](./unit-test-template.md) into the folder and rename it to `readme.md`.

- Your task is to replace all *italic* elements in the template with your content.

    - Please observe the [guidelines](#guidelines) below.

    - In order to be more version control friendly, please split longer sentences in lines,
 so that no line length surpasses 100 characters (see this sentence as an example).

- Add additional files to support the unit test and name them according to this schema:

> topic-nr[-additional enumeration for files of same sort].extension

Example: `GeoRef-1-2.png` is the 2nd figure of the 1st UT within the Georeferencing topic.

- Create a [pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request-from-a-fork) to the main repository.

## Amend existing unit tests

- Add and/or amend content.
- If adding files, add an entry to the files table in the `readme.md` of the unit test.
- Create a [pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request-from-a-fork) to the main repository.

## IFC STEP file header instructions

**NOTE:** There are no official Model View Definitions defined for IFC4.3 yet (as of 2021.02.02.). To avoid any errors vs schema checking, `ViewDefinition [Ifc4X3NotAssigned]` should be added in the header section of the file., i.e.

> FILE_DESCRIPTION (('ViewDefinition [Ifc4X3NotAssigned]'), '2;1');

**NOTE:** The current (2021.01.13.) correct version of IFC4.3 file schema in the physical file is `IFC4x3_RC2`, i.e.

> FILE_SCHEMA(('IFC4X3_RC2'));

## <a name="guidelines"></a> `readme` guidelines

- no underscore chars `_` in Markdown filepath & literal text
    - use minus `-` instead
    - or enclose as code with `...`
- lists & headings are separated from the text by empty lines before & after
- list entries are indented with 4n spaces (n=[0,1,2,...])
- all headings are 3rd level (`### Heading`)
- no main heading needed (`# Title`)
