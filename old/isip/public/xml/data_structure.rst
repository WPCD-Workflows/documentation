.. toctree::
   :maxdepth: 2

   ../../../isip/public/xml/itmtypes
   ../../../isip/public/xml/cpoinstances

.. _isip_data_structure:

Data Structure
==============

In a workflow, physics modules exchange physics data in the form of
standardised blocks of information : the Consistent Physical Objects
(CPOs). The list of CPOs as well as their inner structure defines the
EU-IM Data Structure. All physics modules should use these standardised
interfaces for I/O.

An introduction to the EU-IM data structure is given in the presentation
`Data Structures in
Practice <../imports/isip_EU-IMDataStructures-1.pdf>`__ by Frédéric
Imbeaux.

.. _isip_data_structure_releases:

Data Structure Releases (users)
-------------------------------

The whole EU-IM platform is released by versions. To each version
corresponds a definition of the Data Structure which can be found below.
See the `History <../imports/data_structure/isip_Phase4Versions.pdf>`__
for the history / description of all releases.

Data structure 4.10b.10 Released as a test version Data structure
4.10b.10
`(Browse) <../imports/data_structure/4.10b.10/Phase4TOP.html>`__ Type
definitions for Fortran can be found here
`Fortran <../imports/data_structure/4.10b.10/euitm_schemas.f90>`__ List
of changes: AMNS CPO: a few nodes have become vectors instead of scalar
ANTENNAS CPO: two nodes have been added COREPROF CPO: a few nodes have
been added NEOCLASSIC CPO: a few nodes have been added EQUILIBRIUM CPO:
clarified definition of geom_axis COREDELTA CPO: correction of the
impurity nodes DISTRIBUTION CPO: a few nodes have been added and a wrong
type definition has been corrected

Data structure 4.10b.8 Production release for 4.10b, dated August 2014
Data structure 4.10b.8
`(Browse) <../imports/data_structure/4.10b.8/Phase4top.html>`__
`(Download) <../imports/data_structure/4.10b.8/Phase4.10b.8_HTML.zip>`__.
Type definitions for Fortran can be found here
`Fortran <../imports/data_structure/4.10b.8/euitm_schemas.f90>`__

Data structure 4.10b.3 TEST release date: 12 May 2014, this is the first
version of datastructure 4.10b released for TESTING purposes. The
default production version is still 4.10a.3 (see below) Data structure
4.10b.3 `(Browse) <../imports/data_structure/4.10b.3/Phase4TOP.html>`__
`(Download) <../imports/data_structure/4.10b.3/Phase4.10b.3_HTML.tar>`__.

Data structure 4.10a.3 release date: February 2013, this is the slightly
updated 4.10a version under exploitation on the new Gateway in Garching
Data structure 4.10a.3
`(Browse) <../imports/data_structure/4.10a.3/Phase4top.html>`__
`(Download) <../imports/data_structure/4.10a.3/Phase4.10a.3_HTML.zip>`__.

Data structure 4.10a release date: 15/05/2012, significant updates of
the datastructure + full integration of memory caching in Kepler/UAL.
Last datastructure release on the Portici Gateway Data structure 4.10a
`(Browse) <../imports/data_structure/4.10a/Phase4top.html>`__
`(Download) <../imports/data_structure/4.10a/Phase4.10a_HTML.zip>`__.
Type definitions:

-  Fortran
-  C++
-  Java:
   The class definitions for Java can be found in
   $SWEU-IMDIR/ual/4.10a/javainterface/ualmemory/javainterface
-  Python:
   The class definitions for Python can be found in
   $SWEU-IMDIR/ual/4.10a/pythoninterface
-  Matlab:
   The class definitions for Matlab can be found in
   $SWEU-IMDIR/ual/4.10a/matlabinterface

Data structure 4.09b release date: 16/03/2012, this is a transition
version enabling UAL memory cache with the same datastructure as 4.09a
4.09b: This version has the same datastructure as 4.09a and features
in-memory transfer for the UAL (available only for the default JNI
execution mode). In-memory data transfer implied changes in UALinit and
UALcollector actors. Full Kepler release can be found at:
$SWEU-IMDIR/kepler/4.09b If you prefer to start from your Kepler 4.09a and
only update the UALinit and UALcollector actors, do this by running the
script: $SWEU-IMDIR/kepler/4.09b/script.sh (do this after EU-IMv1 specifying
the location of your original 4.09a Kepler). Note that this
transformation is not backward compatible.

Data structure 4.09a release date: 20/05/2011 Data structure 4.09a
`(Browse) <../imports/data_structure/4.09a/Phase4top.html>`__
`(Download) <../imports/data_structure/4.09a/Phase4.09a_HTML.zip>`__.
Type definitions:

-  Fortran
-  C++
-  Java:
   The class definitions for Java can be found in
   $SWEU-IMDIR/ual/4.09a/javainterface/ualmemory/javainterface
-  Python:
   The class definitions for Python can be found in
   $SWEU-IMDIR/ual/4.09a/pythoninterface
-  Matlab:
   The class definitions for Matlab can be found in
   $SWEU-IMDIR/ual/4.09a/matlabinterface

Data structure 4.08b release date: 23/09/2010 Data structure 4.08b
`(Browse) <../imports/data_structure/4.08b/Phase4top.html>`__
`(Download) <../imports/data_structure/4.08b/Phase4.08b_HTML.zip>`__.
Type definitions:

-  Fortran
-  C++
-  Java:
   The class definitions for Java can be found in
   $SWEU-IMDIR/ual/4.08b/javainterface/ualmemory/javainterface
-  Python:
   The class definitions for Python can be found in
   $SWEU-IMDIR/ual/4.08b/pythoninterface
-  Matlab:
   The class definitions for Matlab can be found in
   $SWEU-IMDIR/ual/4.08b/matlabinterface

Data structure 4.08a release date: 02/04/2010 Data structure 4.08a
`(Browse) <../imports/data_structure/4.08a/Phase4top.html>`__
`(Download) <../imports/data_structure/4.08a/Phase4.08a_HTML.zip>`__.
Type definitions:

-  Fortran
-  C++
-  Java:
   The class definitions for Java can be found in
   $SWEU-IMDIR/ual/4.08a/javainterface/ualmemory/javainterface
-  Python:
   The class definitions for Python can be found in
   $SWEU-IMDIR/ual/4.08a/pythoninterface
-  Matlab:
   The class definitions for Matlab can be found in
   $SWEU-IMDIR/ual/4.08a/matlabinterface

Data structure 4.07c release date: 02/04/2010 Data structure 4.07c is
exactly the same as 4.07b but this tag corresponds to a new release of
Kepler and associated tools.

Data structure 4.07b release date: 14/09/2009 Data structure 4.07b
`(Browse) <../imports/data_structure/4.07b/Phase4top.html>`__
`(Download) <../imports/data_structure/4.07b/Phase4.07b_HTML.zip>`__.
Type definitions:

-  Fortran
-  C++
-  Java:
   The class definitions for Java can be found in
   $SWEU-IMDIR/ual/4.07b/javainterface/ualmemory/javainterface
-  Python:
   The class definitions for Python can be found in
   $SWEU-IMDIR/ual/4.07b/pythoninterface
-  Matlab:
   The class definitions for Matlab can be found in
   $SWEU-IMDIR/ual/4.07b/matlabinterface

Data structure 4.07a release date: 04/05/2009 Data structure 4.07a
`(Browse) <../imports/data_structure/4.07a/Phase4top.html>`__
`(Download) <../imports/data_structure/4.07a/Phase4.07a_HTML.zip>`__.
Contains many revisions to IMP3 data structure, new CPOs from IMP2 and
IMP5. Type definitions:

-  Fortran
-  C++
-  Java:
   The class definitions for Java can be found in
   $SWEU-IMDIR/ual/4.07a/javainterface/ualmemory/javainterface
-  Python:
   The class definitions for Python can be found in
   $SWEU-IMDIR/ual/4.07a/pythoninterface
-  Matlab:
   The class definitions for Matlab can be found in
   $SWEU-IMDIR/ual/4.07a/matlabinterface

Data structure 4.06d release date: 19/09/2008 Data structure 4.06d
`(Browse) <../imports/data_structure/4.06d/Phase4top.html>`__
`(Download) <../imports/data_structure/4.06d/Phase4.06d_HTML.zip>`__.
Contains the core transport + equilibrium data structure. Type
definitions:

-  Fortran
-  C++
-  Java:
   The class definitions for Java can be found in
   $SWEU-IMDIR/ual/4.06d/javainterface/ualmemory/javainterface
-  Python:
   The class definitions for Python can be found in
   $SWEU-IMDIR/ual/4.06d/pythoninterface
-  Matlab:
   The class definitions for Matlab can be found in
   $SWEU-IMDIR/ual/4.06d/matlabinterface

Data structure XML schemas (experts)
------------------------------------

The EU-IM datastructure is coded as xml schemas. This unique source is
used to derive all EU-IM applications related to CPOs : UAL, CPO
documentation, ... The data structure XML schemas are stored in a
subversion repository in
/afs.eufus.eu/isip/project/portal/gforge/storage/svnroot/datastructure.

To export version 4.08b from the repository, storing it in subdirectory
*xml*, do

.. code-block:: console

               svn export https://gforge6.eufus.eu/svn/datastructure/tags/4.08b xml
           

To check out a subversion working copy of the entire repository, storing
it in subdirectory *datastructure*, do

.. code-block:: console

               svn co https://gforge6.eufus.eu/svn/datastructure
           

The instructions for writing the EU-IM datastructure XML schemas can be
found `here. <../imports/data_structure/isip_InstructionsSchemas.pdf>`__

