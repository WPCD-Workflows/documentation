.. _itm_code_parameters:

How to handle code specific parameters
======================================

This section explains how to treat code specific parameters in the
framework of the ITM-TF.

Code specific parameters are all parameters which are specific to the
code (like switches, scaling parameters, and parameters for built-in
analytical models) as well as parameters to explicitly overrule fields
in the ITM data structures. Generally no data (should go into CPOs).

ITM Convention: As the rest of the data structures, all code specific
parameters should be given in XML format, i.e., in form of an XML
string.

Each CPO features a structure called codeparam which, among other
information like code name and version, contains the string or string
array parameters to receive the XML string. For Fortran90 the data type
definitions are shown below: In addition to the data structure type
type_codeparam which contains the above mentioned XML string, a data
structure type type_param has been defined. This structure is used by
the automatic actor generator tool FC2K. It contains three fields, all
of which are string arrays. The first field parameters is to hold the
actual code specific parameters, whereas the second field default_param
allows for the defintion of a complete set of default values for the
code specific parameters. The third field schema finally shall hold the
W3C XML schema which describes the code specific structure of the XML
string in parameters. For C/C++ the structure codeparam is defined as a
struct (see below). The XML string to hold the code specific parameters
is stored in the string parameters.

.. _Why_XML:

Why XML?
--------

-  extremely versatile markup language ('generalisation' of HTML)
-  self-describing data through use of DTDs (document type definitions)
   or W3C schemas
-  simple to edit: plain ASCII, similar to HTML
-  can handle all levels of complexity
-  large and fast growing user community
-  large infrastructure of tools for XML creation, manipulation, and
   usage: XPath, XPointer, XSLT, XSL-FO, CSS, parsers, editors,
   browsers, etc.
-  already in use for CPO definitions
-  allows separation of generic tools and code specific parameters

A real world example for code specific parameters in the form of an XML
string is shown in the figure below.
The example shows a reduced set of code parameters for the fixed
boundary equilibrium module
HELENA
. It demonstrates in a nice way the use of XML for code parameters.
Every tag, i.e. the elements enclosed in the brackets '<' and '>' must
be closed which is done by the closing tag which is enclosed by '</' and
'>'.
The first two elements are standard for any XML document. The first
defines the version of XML being used while the second defined a style
sheet for visualizing the XML string in a browser. The second element is
optional and only becomes operational when you provide a style sheet -
marked by the suffix
.xsl
.
The root tag, which is the outermost container of all other elements,
should be the
parameters
element.
Comments of arbitrary length may be added using the
'<!--'
and
'-->'
delimiters.
The XML document can have an arbitrary structure and depth. The actual
values of the code parameters are entered between the enclosing tags as
simple ASCII. All types, e.g. strings, integers, floats, booleans are
possible as well as arrays of them. Elements in arrays shall be
separated by spaces only (no commas) and appear as simple lists. No
quotes are used for strings. The values for boolean elements depend on
which programming language will process them. E.g. Fortran90 allows for
.true.
and
.false.
as valid values.
The order of elements can be arbitrarily chosen. Only the structure,
i.e. enclosing container tags, matters.
W3C XML Schemas
---------------

Among the many possibilities the ITM-TF has opted for the use of W3C XML
schemas to describe which elements are allowed in the XML code parameter
string for an ITM-TF module. The definition of a schema allows for the
design of generic tools through the seperation of the specific structure
of the code parameters of a specific module from the development of
those tools. By defining a W3C XML schema, all code specific information
is cast into a single file which is itself an XML string. Therefore, the
same tools, e.g. XML parsers, can be used for both the code parameters
as well as the XML schema.
For more details please refer to the
Tutorial on W3C XML Schemas
.
How to convert Code Parameters into XML
---------------------------------------

To convert the code parameters of an existing physics code into XML, you
will have to carry out 3 major steps. A variety of tools have been
developed by the ITM-TF to assist you in this process.
Step 1: Extraction - XML Schema
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In a first step, you should extract the structure of the code specific
parameters (i.e. names, types, structures, dimensions, allowed choices
and ranges, etc.) into a separate file, the so-called
W3C XML Schema
.
The tool
CREATE_SCHEMA
in the project
xmllib
may help you to automatically generate a skeleton XML schema from a
simple ASCII list of your code parameters.
Advantages:

-  no format specific read subroutines needed anymore
-  all tools can be made generic
-  all code specific information stored in one single external file or
   XML string
-  creation of the schema is a 'once-in-a-code's-lifetime' event
-  later changes very simple through changing the schema
-  enables
   input checking
   before running the code
-  schema serves as
   minimum documentation
   for input

Step 2: Conversion - XML File
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In a second step, you should convert your former input files containing
the code parameters into XML input files like the one shown in the
section
Why XML?
. These XML input files are
instances
of the XML schema of the code.
No tools to assist you with this conversion yet exist but tools to
generate empty XML input files as well as to convert Fortran namelist
files into XML input files are currently under development.
Advantages:

-  text input files easier to understand by user
-  same advantage as namelist: input does not have to be complete
-  free order of input parameters as long as structure is not changed
-  possibility to define beginner's and expert's settings
-  input checks possible
-  XML can be used for namelist input as well as any other format

Step 3: Assignment Function
~~~~~~~~~~~~~~~~~~~~~~~~~~~

In the third step, you need to create the so called assignment function.
This function assigns the values from your XML input file to the
corresponding variables in your code. Since compiler languages like
Fortran or C/C++ do not know
introspection
, this function cannot be created in a generic way. It's specific shape
depends on the structure of the specific code.
It can however be automatically generated for simple W3C XML schemas
using the
CREATE_ASSIGN
tool (so far only for Fortran90 modules) of the project
xmllib
.
Advantages:

-  generic tools have to be developed only once and can be used for any
   code
-  generic tools as separate library - easier to maintain
-  GUI development or use of existing GUIs become possible (e.g. xforms
   in a browser)
-  users do not need to know about XML at all
-  developers need to know only very little about XML

ITM XML Parser
--------------

A large variety of parsers for XML are available in the XML community.
However, to be able to quickly adapt the parsers, the ITM-TF has
developed its own simple XML parsers in Fortran90 and C/C++. These
parsers were specifically designed to fulfill the needs of the ITM-TF
and to work smoothly with its infrastructure.
.. _f90_parser:

Fortran90
~~~~~~~~~

Lightweight Fortran90 parser for XML documents:

-  compact (~500 lines Fortran90), efficient, fast parser
-  parses XML documents with arbitrary depth and complexity (except for
   attributes)
-  based on W3C XML Schemas (can be used to validate XML documents)
-  uses tree-like lists with parent, child, and sibling pointers
-  tag names and value lists of arbitrary length (dynamical memory
   allocation)
-  available as module
   euitm_xml_parser
-  first parses the code specific W3C schema, then parses the entire XML
   document sequentially like SAX
-  comes with useful subroutines in
   xml_tools.f90
   and
   string_manipulation_tools.f90

Tree Structure
euitm_xml_parse:

-  input parameter of type
   type_param
   contains the XML schema in string array
   schema
   and the XML string for the code parameters in string array
   parameters
-  parses the schema and builds an empty tree with the structure
   described by the schema: associates the corresponding pointers,
   allocates the tag names
   cname
   and fills in the tag names
-  parses the actual XML document and fills the parsed values
   cvalue
   into the tree
-  returns the complete tree in
   parameter_list
   and the number of successfully parsed parameters
   nparm

For information on how to call the Fortran90 XML parser please refer to
the
section on CREATE_ASSIGN
.
check out project
xmllib
::

   svn co https://gforge6.eufus.eu/svn/xmllib target_dir

The Fortran90 XML Parser can be found in
trunk/src/
.
C/C++
~~~~~

under construction
.. _create_schema:

Creating XML schemas with CREATE_SCHEMA
---------------------------------------

Create a parameter list in
parameter_list.txt
like the one in the example above:

-  precede namelist or block names with '-+' level identifiers
-  list name, type, and dimension for each parameter in namelist
-  specify length of strings with '*' right after 'string' type
-  add comments following '! '
-  names must be alphanumeric, no special characters, no spaces,
   underscores allowed

check out project
xmllib
::

   svn co https://gforge6.eufus.eu/svn/xmllib target_dir

The tool
CREATE_SCHEMA
can be found in
branches/toolbox/schema_generator/
.
Run CREATE_SCHEMA

-  move
   parameter_list.txt
   into
   input/
-  gmake -f makefile_pgi
   in
   obj/
-  ./create_schema.e
   in
   run/
-  generates
   w3c_schema.xsd
   in
   output/

Polish and improve your schema (optional):

-  add
   minOccurs="0"
   if parameter is optional
-  add range restrictions for integers and floats by defining new
   simpleTypes
   using restriction with
   minInclusive
   and
   maxInclusive
   or
   minExclusive
   and
   maxExclusive
-  define allowed options for strings or integers using
   pattern
-  limit length of arrays by using
   maxLength
-  etc., etc.

.. _create_assign:

Creating assignment functions with CREATE_ASSIGN
------------------------------------------------

The automatic creation of the assignment functions is currently only
available for Fortran90. An equivalent tool for C/C++ is yet to be
created.
Fortran90
~~~~~~~~~

The tool
CREATE_SCHEMA
uses the previously defined list
parameter_list.txt
and the generated schema
w3c_schema.xsd
to automatically generate a Fortran90 subroutine
assign_code_parameters.f90
which can be used to assign the code parameters read from the XML string
to the internal variables of your module.
To generate the assignment subroutine first check out project
xmllib
::

   svn co https://gforge6.eufus.eu/svn/xmllib target_dir

The tool
CREATE_ASSIGN
can be found in
branches/toolbox/assignment_generator/
.
Run CREATE_ASSIGN

-  move
   parameter_list.txt
   into
   input/
-  move
   w3c_schema.xsd
   into
   input/
-  gmake -f makefile_pgi
   in
   obj/
-  ./create_assign.e
   in
   run/
-  generates
   assign_code_parameters.f90
   in
   output/

CREATE_ASSIGN generates the Fortran90 subroutine
assign_code_parameters.f90
which if called will do everything which is needed to read the XML
schema, parse the XML string, and assign the values found in the XML
string to the corresponding variables in the code. In most cases, no or
very little manipulation of this subroutine is needed, for instance in
the case of deep structures (more than 2 levels) and arrays. Please
refer to existing schemas and assignment routines, like those for the
HELENA
module, for guidance.
The tool CREATE_ASSIGN assumes that the variable names in your code
agree with the names which you have chosen for the code parameters.
If this is not the case, you will have to edit the names in the
assignment statements or calls to
char2num
by hand to match your internal variables.
The assignment routine receives the parameter
code_parameters
of type
type_param
which holds both the XML schema as well as the actual XML string (see
above
).
It calls the ITM-TF Fortran90 Parser
euitm_xml_parse
on the structure
code_parameters
(see
Fortran90 Parser
) which returns the tree of stacked code parameters from the XML schema
together with the values found in the XML string as a single connected
list in
parameter_list
. The remaining loop together with the select structure then steps
through the tree and assigns all values which it finds to the
corresponding internal variables.
assign_code_parameters:

-  sets pointer to head of list
   parameter_list%first
-  assigns values to in-code variables by stepping through the tree and
   using select case constructs and the interfaces in
   string_manipulation_tools.f90
-  finally destroys the tree

The figure below demonstrates how to call the assignment routine from
your module.
Make sure that the assignment subroutine can access the required
internal variables through use statements or other ways.
assign_code_parameters
uses the ITM standard
itm_types
for its variable declarations.
C/C++
~~~~~

Development of the tool for C/C++ is still pending.
Validating your XML
~~~~~~~~~~~~~~~~~~~

To validate your XML and XSD files, you may use xmlstar ( path:
$SWITMDIR/xmlstar/bin/ ):
usage:
::

   xml val -w file.xml

or
::

   xml val -s file.xsd file.xml

The first validates an XML file (could also be a schema) and is very
useful for detecting syntactic errors.
The second validates the schema (file.xsd) and the XML file (file.xml)
against the schema.
.. _itm_codeparam_2013dev:

Developments from January 2013
------------------------------

.. _itm_codeparam_convert_namelist_to_xml:

Creating default XML
~~~~~~~~~~~~~~~~~~~~

The data going into the actor has to be stored in an xml-file that
follows the data-structure defined by the xml-schema. An automated way
to generate this xml file can be stored in the directory
xmllib/branches/toolbox/xml_generator/. Generate the xml-file place a
schema in xmllib/branches/toolbox/xml_generator/input and then run make
in xmllib/branches/toolbox/xml_generator/obj/. The output xml-file will
then be generated in the directory
xmllib/branches/toolbox/xml_generator/output/.

.. _itm_codeparam_convert_namelist_to_xml:

Creating XML and parameter-list.txt from namelists
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Under Construction

To generate the xml and the parameter-list.txt first check out project
xmllib

::

   svn co https://gforge6.eufus.eu/svn/xmllib xmllib

The conversion is done by first placing the namelist in the directory
xmllib/branches/toolbox/namelists/input/. Then run make in the directory
xmllib/branches/toolbox/namelists/.

.. _itm_codeparam_automated_creation_xml_xsd_assign:

Automated creation of XML/XSD/assign_codeparam.f90
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An automated proceedure has been installed to generate all files needed
to install code-parameters in a Fortran code. The procedure require that
you first put you file parameter_list.txt in the directory
xmllib/branches/toolbox/schema_generator/input/ and then type make in
the directory xmllib/branches/toolbox/. All output file are then stored
in xmllib/branches/toolbox/output/.

Resources
---------

Online
~~~~~~

-  XML.com
   The web site
   http://www.xml.com
   is one of the most complete and timely sources of XML information and
   news around.
-  XML.org
   Sponsored by OASIS,
   http://www.xml.org
   has XML news and resources, including the XML Catalog, a guide to XML
   products and services.
-  DocBook
   OASIS, the maintainers of DocBook, have a web page devoted to the XML
   application at
   http://www.docbook.org
   .
-  W3C
   The World Wide Web Consortium at
   http://www.w3.org
   oversees the specifications and guidelines for the technology of the
   World Wide Web. Check here for information about CSS, DOM, (X)HTML,
   MathML, XLinks, XML, XPath, XPointer, XSL, and other web
   technologies.

ITM-TF
~~~~~~

Join
project XMLLIB
under
Gforge
.
(see
How to join a Gforge project
)
Fortran90 XML Parser:
https://gforge6.eufus.eu/svn/xmllib/trunk/parser
Schema Generator CREATE_SCHEMA:
https://gforge6.eufus.eu/svn/xmllib/branches/create_schema
Generate assign_code_parameters.f90 with CREATE_ASSIGN:
https://gforge6.eufus.eu/svn/xmllib/branches/create_assign
GUIs
----

XForms
~~~~~~

Use browser to interface XML documents based on W3C schema
XForms:
'XML application that represents the next generation of forms for the
Web. By splitting traditional XHTML forms into three parts - XForms
model, instance data, and user interface - it separates presentation
from content...' (W3C)

-  use a W3C XML schema to generate the fields in the form
-  use an XML document to fill data into the fields (default values
   possible)
-  XForm is an XHTML file created from the XML schema using a stylesheet
   (done only once)
-  existing extensions to Firefox 2 and 3 required

(by courtesy of G. Huysmans)
XML Tools
---------

tons of open source XML tools available
xmlstarlet
carries out various XML operations, including validation against DTDs
and schemas (
xmlstarlet
).
Examples:
To test whether a file is well-formed XML:
::

   xml val -w helena.xml

To test a file against an XML schema:
::

   xml val -e --xsd helena.xsd helena.xml

IBM XML Schema Quality Checker:
Checks for problems in W3C XML Schemas, and clearly identifies any
problems found (
xmlsqc
).
To check a schema file:
::

   ibmsqc helena.xsd

.. _W3C_tutorial:

Tutorial on W3C XML Schemas
---------------------------

Short Introduction to W3C XML Schemas:

-  Among other schemas (RELAX NG, Schematron)
   W3C XML Schemas
   are directed toward describing how elements are arranged in a
   document (like the syntax or grammar of a language - your personal
   'XML language').
-  Other than DTDs, W3C XML Schemas can also constrain the type of data
   in an element.
-  XML Schemas are themselves XML documents, i.e., allow for checks for
   well-formedness and validity.

Example:
root element and container elements
Example:
string with prescribed values
Example:
string with length constraint
Example:
integer with minimum value
Example:
user defined simpleType unit_float
Example:
array of user defined simpleType
Limitation:
no arrays of complex types allowed!
(issue with arrays of complex numbers for instance; may hopefully be
lifted in the near future)
