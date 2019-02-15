.. toctree::
   :maxdepth: 2

   ../../../itm/public/xml/itm_practicalxml
   ../../../itm/public/xml/itm_subversion
   ../../../itm/public/xml/itm_code_parameters
   ../../../isip/public/xml/isip_howtos_gateway
   ../../../isip/public/xml/isip_fc2k_cpp
   ../../../itm/public/xml/itm_assertions
   ../../../itm/public/xml/itm_howtos_code_documentation
   ../../../itm/public/xml/itm_doxygen_fortran

.. _itm_howtos:

HowTo's
=======

This section is intended to host useful material on how to solve
everyday problems when dealing with EU-IM tools both as a developer and as
a user. The material is presented in an instructive way via tutorials,
HowTo's, and user guides.

.. _itm_quickstart:

How to adapt your code to EU-IM platform (Quick Start).
-----------------------------------------------------

This is a fast manual on the steps needed to adapt the stand alone
version of a code to be used as an actor inside a KEPLER workflow .
Please do not get discouraged but rather contact `Denis
Kalupin <mailto:denis.kalupin@efda.org>`__ for help.

.. _itm_contribute:

How to contribute to the EU-IM documentation websites.
----------------------------------------------------

Your contribution to the EU-IM documentation websites is very welcome. To
be able to contribute to the EU-IM websites you must be a member of the
documentation project

.. code-block:: console

   doc_test
         

under Gforge on the EU-IM Gateway (see `How to become a member of a Gforge
project <#join_project>`__). After having joined the project please
check out a working copy of the repository:

.. code-block:: console

   svn co https://gforge6.eufus.eu/svn/doc_test/trunk target_dir
         

where target_dir is a directory name of your choice (it will be created
by svn in your current directory) The trunk/ of the repository has the
following structure which reflects the project structure of the EU-IM:

.. code-block:: console

   - world
   - itm
   - isip
   - amns
   - edrg
   - imp12
   - imp3
   - imp4
   - imp5
         

Material in world will be visible on the web server to the whole world
while access to the material in all other projects is limited to EU-IM
members via login. Each project has two subdirectories

.. code-block:: console

   - private
   - public
         

Material placed into private will only be visible to members of the same
project whereas material in public is visible to the entire EU-IM-TF.
Inside public you find the following structure:

.. code-block:: console

   - graphics
   - html
   - imports
   - pdf
   - xml
         

The graphics directory is intended to host all graphics files whereas
the imports directory shall host all other file types except for the xml
and html files used for the generation of the EU-IM web pages. Those shall
be placed into the xml and html directories. The pdf directory is used
for processing only. Please do not place any files there. Currently you
are not allowed to created any subdirectories under the graphics
directory and files there have to follow a naming convention. You may,
however, create any structure of subdirectories under the imports
directory and files there may have any name. To contribute material to
the EU-IM web pages you have two options:

.. code-block:: console

   - XML
   - HTML
         

The recommended way of contributing is in the form of XML documents
following the DocBook format. The EU-IM-TF currently uses a publishing
tool created by John Storrs which allows the automatic conversion of
DocBook like XML documents into HTML. This method has various advantages
among which the most pronounced are that the contributor will not have
to worry about the style and the overall structure of the web pages but
rather contribute his/her material in the form of simple DocBook
elements. The publication tools will then convert the existing material
into a hierarchical and searchable structure of web pages with a single
layout. The current publishing tool PracticalXML allows only a small
subset of the large variety of DocBook elements. For information about
Docbook, including online books, visit the `'official home
page' <http://www.docbook.org>`__. For the full DocBook tagset, see
`DocBook: The Definitive
Guide <http://www.docbook.org/tdg/en/html/docbook.html>`__. Some
extensions based on HTML have been added for highlighting and
structuring of the web pages. If there is need for extensions, they may
be implemented by extending PracticalXML. Please contact John Storrs or
Christian Konz if you are missing fundamental functionalities. A short
introduction to using PracticalXML can be found following the `How to
write documents for Practical XML <#itm_practicalxml>`__ link.
Alternatively or in addition you may place directly designed HTML pages
in the html directory of your project. This allows you to use the full
scope of HTML elements and your own style sheet (though not recommended)
but has the drawback that your pages will not be searchable nor included
in the overall structure. Writing your web pages in XML will allow them
to be included in the automatic creation of hierarchical book-like pdf's
of the web pages. Therefore, please give DocBook XML a try. It is easy
to learn and to use. To avoid name clashes, you will have to adopt the
following convention on file names in the graphics directory and Id's:
All names of the files in the graphics/ and html/ directories must start
with the name of the project plus an underscore, for instance
"imp12_graphic.png" instead of "image.png". Furthermore, the Id names of
the xml files which you find in the 'section class' element must
likewise start with the name of the project plus underscore, for
instance <section class="topic" id="itm_practicalxml">. This will make
sure that your documents will not be overwritten by documents with
identical names. All links to files must be relative. There are two
types of links to files:

-  links to
   xml files
   in
   <include file= ... >
   tags: These must be relative to the
   itm/public/xml
   directory
   , e.g.
   <include file="../../../itm/public/xml/itm_howtos.xml">
   .
-  links to
   files in
   imports/
   in
   <ulink url=... >
   tags: These must be relative to the
   html
   directory of the web server
   , e.g.
   <ulink url="../imports/meetings/2009/EDRG_kickoff/edrg_kick-off.ppt">

Automatic PDF Generation: For web pages developed in XML, you have the
option to automatically generate a pdf version of your web page. The
tools of PracticalXML will convert the specified xml document into pdf
and also decend into depending xml documents. The result is an article
like document with table of contents and hyperlinks. To tell the system
to automatically generate a pdf version of a web page you need to
include the pdf attribute in the top section of your xml document.
Example:

.. code-block:: console

   <section class="topic" id="itm_howtos" pdf="itm_howtos">
         

The value of the pdf tag has to be identical to the value of the id tag
and the name of the xml file, in the example above: itm_howtos.xml. The
system will then automatically generate a pdf version of the web page
and place it into the pdf/ directory, in the example as itm_howtos.pdf.
It will also generate the pdf link symbol ☞ pdf at the top of the page
which links directly to the pdf document. Automatic Update Information:
Using the svn keyword Id it is possible to generate an automatic update
information for each xml document. For this, you have to add the
following line

.. code-block:: console

         

at the bottom of your xml document just before closing the last section
tag. Furthermore, you have to set svn:keywords to Id. This can be done
with

.. code-block:: console

   svn ps svn:keywords Id example.xml
         

assuming your xml is stored in "example.xml". With each commit, svn will
automatically add the commit information between the two '$' which will
be processed into the required update information by the system. Once
you have committed your changes, a (soon) automatic make process will
update the EU-IM web pages with your changes and place them on the web
server. It will also automatically generate pdf's of all web pages. A
link to the pdf is shown at the top of the web pages. The date and
author of the last updates is shown at the bottom of the pages.

.. _itm_testbed:

PracticalXML Testbed
~~~~~~~~~~~~~~~~~~~~

To allow for an easy and decoupled development of the XML web pages of
each project (which will later be linked to the entire website by a cron
job) we have developed a test bed environment. Please use this
environment to generate your web pages before committing an XML file to
the trunk/ directory.
The idea here is that you can generate the corresponding html version
independently of the rest of the web pages. This allows you to debug and
polish your XML files before committing them to the trunk.
Here is what you need to do for that:
1.) First check out a working copy of the test bed
doc_test/branches
:
.. code-block:: console

   svn checkout https://gforge6.eufus.eu/svn/doc_test/branches target_dir
         

This will create a local copy of the software
publishxml
in your working copy and a binary version of
tex2im
which should run on all linux platforms.
To include
tex2im
in your path please do the following
.. code-block:: console

   setenv PATH {$PATH}:path_to_target_dir/tex2im-1.8
         

or equivalent (depending on the shell) where
path_to_target_dir
is the path to your working copy.
2.) Inside the test bed check out a working copy of your project's web
pages (here for ISIP as an example):
.. code-block:: console

   svn checkout https://gforge6.eufus.eu/svn/doc_test/trunk/isip isip
         

This will strongly reduce the size of your working copy and allow you to
edit you project's web pages without worrying about the rest of the
website.
If you require access to the rest of the website consider checking out
additional working copies of separate projects just like your own.
3.) Edit your web pages inside your working copy of your project, i.e.
.. code-block:: console

   cd isip/public/xml

   edit xml files

   cd ../../ (i.e. inside isip/)

   svn commit -m "- made some changes"  (just an example)
         

IMPORTANT:
Commit your changes from within the working copy of your project (i.e.
isip
), NOT from the working copy of the test bed (i.e.
doc_branches
) - else nothing will happen.
4.) Make your web pages:
.. code-block:: console

   cd isip/public/xml

   ./makehtml.sh main.xml
         

This will create the corresponding html files in
isip/public/html/
and a symbolic link in
isip/public/imports/
.
If there are errors in your xml files, you will see the error messages
here.
If you like to make a single web page, do
.. code-block:: console

   ./makehtml.sh <filename>
         

where
<filename>
is the name of your xml document.
5.) Inspect your web pages:
.. code-block:: console

   firefox isip/public/html/index.html
         

The layout is as it will appear on the server.
Please be aware that the test bed does NOT allow you to upload material
to the web server yourself. This is done automatically by a CRON job.
For inspiration on which elements are available in PracticalXML please
consider the example document
test.xml
in the
xml
directory of the test bed.
Dependencies:
We assume that you have the following software installed on your system:
.. code-block:: console

   - perl
   - python
   - latex
   - pdflatex
   - convert
         

All these are needed to make the web pages.
.. _itm_categorize_documents:

How to categorize imported documents.
-------------------------------------

Documents which are placed in the imports/ directories and added via a
<ulink> element can be categorized using a variety of attributes for the
<ulink> tag. Categorized documents will appear ordered by category in
the `EU-IM Document Catalog <#itm_document_catalog>`__ and are therefore
much easier to identify and to find than uncategorized documents. The
categorization has to be done by hand but is worth the extra bit of
effort.

Attributes for the categorization: Besides the standard attribute $url,
there are 10 optional attributes for the <ulink> tag which are described
in the following. All 10 attributes have to present for the
corresponding document to be categorized. Documents which have been
categorized at one location in the XML tree of the EU-IM website do not
need to be categorized again when linked to the website at a different
location.

-  title
   - The actual title of the document. May be different from the working
   title inside the <ulink> tag.
-  type
   - The classification type of the document. Current classification
   types are:

   -  administrative
   -  documentation
   -  movie
   -  poster
   -  presentation
   -  report
   -  technical
   -  tutorial

   Missing classification types may be added with the consent of the
   publication team.
-  project
   - This is the EU-IM project's name under which the document was
   created
   . This attribute is intended to show which project is responsible for
   a potential maintenance of the document. Allowed values are:

   -  edrg
   -  amns
   -  isip
   -  imp12
   -  imp3
   -  imp4
   -  imp5
   -  ism
   -  tfl

-  author
   - The last name(s) of the main author.
-  year
   - The year when the document was last modified in the format YYYY.
-  month
   - The month when the document was last modified in the format MM.
-  topic
   - The general physics/numerics/math topic under which the document
   might be placed. Currently, the following topics are available:

   -  control
   -  ecrh
   -  equilibrium
   -  fast particles
   -  general
   -  grid
   -  heating
   -  icrh
   -  infrastructure
   -  legal
   -  machine descriptions
   -  mhd
   -  monitoring
   -  nbi
   -  numerics
   -  transport
   -  turbulence
   -  workflows

   Since this list is not exhaustive, you are welcome to add new topics
   as you wish. However, please keep in mind that a too granular
   categorization is of little use.
-  complexity
   - Please carefully assess the complexity of the document for
   categorization. The complexity levels are:

   -  introductory
   -  standard
   -  expert

-  addressee
   - Whom is the document mainly targeted at? Addressees are:

   -  user
   -  developer
   -  public

-  size
   - Number of pages of the document if applicable (else 0).

The order of the attributes is free. All values have to be enclosed in
double quotes ("). Avoid leading or trailing spaces. An example for a
categorized import (here edrg) is shown below:

.. code-block:: console

   <ulink url="../imports/meetings/2009/EDRG_kickoff/edrg_kick-off.ppt"
   title="Experimentalists and Diagnosticians Resource Group (EDRG) - Kick-off Meeting"
   type="presentation" project="edrg" author="Coelho" year="2009" month="01"
   topic="control" complexity="standard" addressee="public" size="15">
   Overview of EDRG for 2009 (R.Coelho)</ulink>
         

.. _join_project:

How to become a member of a Gforge project.
-------------------------------------------

To become a member of a Gforge project please login to the EU-IM Portal at
https://portal.eufus.eu and follow the tabs

.. code-block:: console

   GFORGE -> Projects
         

Now find the project you would like to join on the list of projects.
Please click on the link and then on the button . The project leader
will likely honor your request and add you as a developer to the
project.

.. _export_actor:

How to export an actor from Kepler
----------------------------------

If you like to export an
actor
from your private
Kepler
installation and make it available to another user please do the
following:

-  Run
   EU-IMv1
   to make sure that your
   $KEPLER
   environment variable points to your private version of Kepler that
   contains the actor to be exported.
-  Extract the actor from Kepler:
   extract_actor actor_name
   This generates a file called
   actor_name.tar
   in the current directory.
-  Make the generated tar file available to the other user(s).

.. _import_actor:

How to import an actor into Kepler
----------------------------------

If you like to import an actor from another user into your private
Kepler installation please do the following:

-  Get or locate the tar file that contains the actor. The file does not
   have to be in your own directory. Only read permission is needed.
-  Run
   EU-IMv1
   to make sure that your
   $KEPLER
   environment variable points to your private version of Kepler where
   the actor shall be imported.
-  cd
   to a directory where you have write permission and import the actor
   into Kepler:
   import_actor [path/]actor_name
   The path is only necessary if the tar file that contains the actor is
   not located in the current directory.
-  You can now run Kepler and the actor should be present.

.. _remove_actor:

How to remove an actor from Kepler
----------------------------------

If you like to remove an actor from your private Kepler installation
please do the following:

-  Run
   EU-IMv1
   to make sure that your
   $KEPLER
   environment variable points to your version of Kepler from where the
   actor shall be removed.
-  Remove the actor from Kepler:
   rmactor actor_name
   The name of the actor should be as it appears in Kepler.
-  You can now run Kepler and the actor should be absent.

.. _doxygen_web_pages:

Doxygen generated web pages
---------------------------

It is possible to include doxygen generated web pages in the EU-IM web
pages. Since these pages are automatically generated and can be large,
it is probably better not to put them into subversion. Instead a
directory can be created for you under
.. code-block:: console

         $EU-IMDOXYGENROOT/[GROUP]/[PROJECT]
       

which can then be referenced by
.. code-block:: console

         <ulink
         url="https://portal.eufus.eu/documentation/EU-IM/doxygen/[GROUP]/[PROJECT]/">
         SOME TEXT </ulink>
       

in your xml (making the appropriate substitutions for
[GROUP]
and
[PROJECT]
). You will then need to copy the html generated by doxygen into the
above directory.
