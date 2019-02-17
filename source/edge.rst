.. _imp3_edge:

==========================
 Edge Transport Simulator
==========================

The goal of this work is to adopt the edge code like SOLPS-B2 to be used
within the EU-IM platform.

.. _imp3_grid:

IMP3 General Grid Description and Grid Service Library
======================================================

Resources
---------

-  GForge project page
-  Linking to library:
   general
   ,
   specific
-  A tutorial talk.
   Note: some slides might be out of date, please refer to the
   documentation.

Documentation
-------------

-  4.09a
   Resources:
   `Sources <https://gforge6.eufus.eu/svn/itmggd/branches/4.09a/>`__,
   `Fortran
   Examples <https://gforge6.eufus.eu/svn/itmggd/branches/4.09a/f90/src/examples/>`__

   Documentation:

   -  Release v1.2:
      Fortran 90
      ,
      Python
      ,
      ualconnector
      ,

-  4.10a
   Resources:
   `Sources <https://gforge6.eufus.eu/svn/itmggd/branches/4.10a/>`__,
   `Fortran
   Examples <https://gforge6.eufus.eu/svn/itmggd/branches/4.10a/f90/src/examples/>`__

   Documentation:

   -  Release v1.2:
      Fortran 90
      ,
      Python
      ,
      ualconnector
      ,

Outdated documentation
----------------------

This section collects information and documentation related to the
general grid description.

-  Some presentations:

   -  A tutorial talk from 2011
      ,
   -  General Meeting 2011:
      Short overview talk
      and
      detailed presentation

-  Instructions how to get a copy of the Grid Service Library
-  Documentation for the EU-IM Grid Service Library:
   Fortran 90
   ,
   Python
-  A short manual for ualconnector and VisIt

Some examples are included in the Grid Service Library distribution.

.. _imp3_gridexamples:

Example grids
~~~~~~~~~~~~~

Example grid details
++++++++++++++++++++

This section describes a number of example grids and gives some examples
for specific constructs (object lists, subgrids).

Example Grid #1: 2d structured R,Z grid
```````````````````````````````````````

Note: the grids shown here are used in the unit tests of the grid
service library implementation, i.e. the automated testing framework.

A 2d grid in (R,Z) constructed by combining two structured
one-dimensional spaces. The spaces are defined as follows, they define
nodes and edges as subobjects. The whole grid then looks like this
(attention, slightly differing scales in R and Z): A couple of examples
for object descriptor are given. Some explanations:

((1,1) (4,2)) = a 2d object (2d cell or face), implicitly created by
combining the 1d object (edge) no. 4 from space 1 and the 1d object no.
2 from space 2. ((1,0) (2,4)) = a 1d object (edge), implicitly created
by combining 1d object (edge) from space 1 with the 0d object (node) no.
4 from space 2. ((0,0) (2,2)) = a 0d object (node), implicitly created
by combining 0d objects (nodes) no. 2 from space 1 and no. 2 from space
2.

Object classes
##############

This section shows the different object classes present in the grid. The
implicit numbering of the objects in a class is obtained by iterating
over all subobjects defining the objects, lowest space first.

Object class (1,1): 2d cells/faces. They have the following implicit
numbering:
Object class (1,0): 1d edges, aligned along the R axis ("r-aligned").
They have the following implicit numbering:
Object class (0,1): 1d edges, aligned along the Z axis ("z-aligned").
They have the following implicit numbering:
Object class (0,0): 0d nodes. They have the following implicit
numbering:

Example 2: B2 grid
``````````````````

Object list examples
++++++++++++++++++++

Some examples for object lists, to explain the concept and show the
notation. All examples refer to the 2d structured R,Z example grid #1
given above.
Object descriptor A single object (= and object descriptor), for object
with object class (1,1), object index (4,2).

.. code-block:: console

   ((1,1) (4,2))

Explicit object lists An explicit object list is simply an enumeration
of object descriptors. The ordering of the objects is given directly by
their position in the list. Note that by definition, all objects in the
list must be of the same class (An implementation of an explicit object
list should enforce this. If you need lists of objects with differing
class, have a look at subgrids).

An explicit list of 2d cells (faces), listing the four corner cells of
the grid in the order bottom-left, bottom-right, top-left, top-right:

.. code-block:: console

     (((1,1) (1,1)),
     ((1,1) (5,1)),
     ((1,1) (1,4)),
     ((1,1) (5,4)))

Implicit object lists Implicit object lists use the implicit order of
(sub)objects to form an efficient representation of (possibly large)
sets of objects. They thus avoid explicit enumeration of individual
objects as done in the explicit objects lists. The following examples
demonstrate the implicit list notation. Note: the implicit list notation
is used in the Python implementation of the grid service library in
exactly the form given here.

Selecting all indices An implicit object list of all r-aligned edges:

.. code-block:: console

   ((1,0) (0,0))

Object and subobject indices in the grid description start counting from
1, i.e. object no. 1 is the first object. The index 0 is special and
denotes an undefined index. In this notation, it denotes all possible
indices.

An implicit object list of the (z-aligned) boundary edges on the left
boundary of the grid:

.. code-block:: console

   ((0,1) (1,0))

The first entry of the index tuple denotes the first node in the
r-space, the second entry denotes all edges in the z space. The implicit
list denotes a total of 4 1d edges. Their implicit numbering is again
given by iterating over all defining objects, lowest space first. The
list therefore expands to

.. code-block:: console

   ((0,1) (1,1))
   ((0,1) (1,2))
   ((0,1) (1,3))
   ((0,1) (1,4))

Selecting explicit lists of indices An implicit object list of the
(z-aligned) right and left boundary edges:

.. code-block:: console

   ((0,1) ([1,6],0))

The first entry of the index tuple denotes a list of nodes in the
r-space, more specifically the first and the last (=6th) node. The
second entry denotes again all edges in the z space. The implicit list
then denotes a total of 8 1d edges in the following order:

.. code-block:: console

   ((0,1) (1,1))
   ((0,1) (6,1))
   ((0,1) (1,2))
   ((0,1) (6,2))
   ((0,1) (1,3))
   ((0,1) (6,3))
   ((0,1) (1,4))
   ((0,1) (6,4))

Selecting ranges of indices An implicit object list of all 2d cells,
except the cells on the left and right boundary.

.. code-block:: console
                
   ((1,1) ((2,4),0))

The first entry of the index tuple denotes a range of edges in the
r-space, more specifically the edges 2 to 4. The second entry of the
index tuple denotes all four edges in the z-space. The implicit list
then denotes a total of 12 2d cells in the following order:

.. code-block:: console

   ((1,1) (2,1))
   ((1,1) (3,1))
   ((1,1) (4,1))
   ((1,1) (2,2))
   ((1,1) (3,2))
   ((1,1) (4,2))
   ((1,1) (2,3))
   ((1,1) (3,3))
   ((1,1) (4,3))
   ((1,1) (2,4))
   ((1,1) (3,4))
   ((1,1) (4,4))

All implementations of the grid service library define the constant
GRID_UNDEFINED=0 to specify an undefined index. Use of GRID_UNDEFINED
instead of 0 is advised to increase the readability of the code. The
following notations are therefore equivalent
((1,0) (0,0)) = ((1,0) (GRID_UNDEFINED,GRID_UNDEFINED))
((0,1) (1,0)) = ((0,1) (1,GRID_UNDEFINED))

Subgrid examples
++++++++++++++++

A subgrid is an ordered list of grid objects of a common dimension. The
difference to object lists is that they can contain objects of different
object classes.

The subgrid concept is central to storing data on grids. To store data,
first a subgrid has to be defined. The objects in the grid have a fixed
order, which then allows to unambiguously store the data associated with
the objects in vectors.

Technically, a subgrid is an ordered list of object lists, of which
every individual list is either explicit or implicit. The ordering of
the objects in the subgrid is then directly given by the ordering of the
object lists and the ordering of the grid objects therein.

Subgrid example The following subgrid consists of all boundary edges of
the 2d R,Z example grid #1, given as four implicit object lists.

.. code-block:: console

   ((1,0) (0,1))    ! bottom edges
   ((0,1) (6,0))    ! right edges
   ((1,0) (0,5))    ! top edges
   ((0,1) (1,0))    ! left edges

Explicitly listing the objects in the order given by the subgrid gives:

.. code-block:: console

   1:  ((1,0) (1,1))    ! bottom edges    
   2:  ((1,0) (2,1))   
   3:  ((1,0) (3,1))   
   4:  ((1,0) (4,1))   
   5:  ((1,0) (5,1))   
   6:  ((0,1) (6,1))    ! right edges
   7:  ((0,1) (6,2))
   8:  ((0,1) (6,3))
   9:  ((0,1) (6,4))
   10: ((1,0) (1,5))    ! top edges
   11: ((1,0) (2,5))
   12: ((1,0) (3,5))
   13: ((1,0) (4,5))
   14: ((1,0) (5,5))
   15: ((0,1) (1,1))    ! left edges
   16: ((0,1) (1,2))    
   17: ((0,1) (1,3))    
   18: ((0,1) (1,4))    

The number at the beginning of each line is the *local index* of the
object, where local means locally in the subgrid. Note that, again,
counting starts at 1.

.. _imp3_gridservicelibrary:

Grid service library
~~~~~~~~~~~~~~~~~~~~

Using the grid service library
++++++++++++++++++++++++++++++

Setting up the environment
``````````````````````````

The grid service library requires the EU-IM data structure version 4.09a
(or later). Before using it you have to make sure your environment is
set up properly. The following section assumes you are using csh or tcsh
on the Gateway.

First, your environment variables have to be set up properly. To check
them do

.. code-block:: console

   echo $TOKAMAKNAME

It should return

.. code-block:: console

   test

Also do

.. code-block:: console

   echo $DATAVERSION

It should return

.. code-block:: console

   4.09a

(or some higher version number). If either of them returns something
different, run

.. code-block:: console

   source $EU-IMSCRIPTDIR/EU-IMv1 kepler test 4.09a > /dev/null

and check the variables again.

Second, you have to ensure your data tree is set up properly. Do

.. code-block:: console

   ls ~/public/itmdb/itm_trees/$TOKAMAKNAME/$DATAVERSION/mdsplus/0/

If you get something like "No such file or directory", you have to set
up the tree first by running

.. code-block:: console

   $EU-IMSCRIPTDIR/create_user_itm_dir $TOKAMAKNAME $DATAVERSION

and then do the previous check again.

Checking out and testing the grid service library
`````````````````````````````````````````````````

To be able to get the code of the grid service library, you have to be a
member of the EU-IM General Grid description (itmggd) project (you can
apply for this `here <https://gforge6.eufus.eu/gf/project/itmggd/>`__).

Once you are a member, you can check out the code by

.. code-block:: console

   svn co https://gforge6.eufus.eu/svn/itmggd itm-grid

Then you can run the unit tests for the grid service library by

.. code-block:: console

   cd itm-grid
   source setup.csh

This will setup environment variables (especially OBJECTCODE) and
aliases. Then do

.. code-block:: console

   testgrid setup

This will set up the build system for the individual languages. It will
also build and execute a Fortran program that writes a simple 2d example
grid stored in an edge CPO into shot 1, run 1.

To actually run the tests do

.. code-block:: console

   testgrid all

This will go through the implementations in the different languages
(F90, Python, ...) and run unit tests for every on of them. If all goes
well, it should end with the message

.. code-block:: console

   Test all implementations: OK

If this is not the case, something is broken and must be fixed.

Example applications (outdated)
+++++++++++++++++++++++++++++++

Note: this is a bit outdated.
Have a look here.

Plotting 3d wall geometry with VisIt (temporary solution, not required any more)
````````````````````````````````````````````````````````````````````````````````

This example plots a 3d wall representation stored in the edge CPO (in
the future, this information will be stored in the wall CPO). The
example data used here is generated by a preprocessing tool which is
part of the ASCOT code.

1. Check out the grid service library (See above. You don't necessarily
   have to run the tests)
2. Change to the python/ directory and setup the environment:

.. code-block:: console

      cd itm-grid/python/; source setup.csh

3. Edit the file itm/examples/write_xdmf.py to use the right shot number
4. Run it (still in the python/ directory of the service library) with

.. code-block:: console

      python26 itm/examples/write_xdmf.py

   This will create two files: wall.xmf and wall.h5
   
5. Start visit with
   
.. code-block:: console

      visit23

   and open the wall.xmf file. Then select Plot->Mesh->Triangle and
   click on the "Draw" button.

Using UALConnector to visualize CPOs using the general grid description
```````````````````````````````````````````````````````````````````````

UALConnector allows you to bring data directly from the UAL into VisIt.

1. Check out the grid service library (See above. You don't necessarily
   have to run the tests)
2. Run UALConnector. Examples:
   
.. code-block:: console


      ./itm-grid/ualconnector -s 9001,1,1.0 -c edge -u klingshi -t test -v 4.09a

.. code-block:: console

      ./itm-grid/ualconnector -s 15,1,1.0 -c edge -u klingshi -t test -v 4.09a

3. When finished, close VisIt and terminate the UALConnector by typing
   'quit'.

You don't even have to check out the service library. UALConnector is
made available at


.. code-block:: console
                
   ~klingshi/bin/itm-grid/ualconnector

, i.e.

.. code-block:: console
                
   ~klingshi/bin/itm-grid/ualconnector -s 9001,1,1.0 -c edge -u klingshi -t test -v 4.09a

.. code-block:: console

   ~klingshi/bin/itm-grid/ualconnector -s 15,1,1.0 -c edge -u klingshi -t test -v 4.09a

.. _imp3_grid_tutorial:

IMP3 General Grid Description and Grid Service Library - Tutorial
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Setup your environment
++++++++++++++++++++++

.. code-block:: console

   echo $DATAVERSION
   echo $TOKAMAKNAME

should give "4.09a" and "test". If not, run

.. code-block:: console
                
   source $EU-IMSCRIPTDIR/EU-IMv1 kepler test 4.09a > /dev/null

To copy the tutorial files:

.. code-block:: console

   cp -r ~klingshi/bin/itm-grid ~/public

Switch to the right version of the PGI compiler:

.. code-block:: console

   module unload openmpi/1.3.2/pgi-8.0 compilers/pgi/8.0
   module load compilers/pgi/10.2 openmpi/1.4.3/pgi-10.2

To set up the environment:

.. code-block:: console

   cd $HOME/public/itm-grid/f90
   source setup.csh

Compile & run examples
++++++++++++++++++++++

2d structured grid write example
Source file is at:

.. code-block:: console

   src/examples/itm_grid_example1_2dstructured_servicelibrary.f90

Compile:

.. code-block:: console

   make depend
   make $OBJECTCODE/itm_grid_example1_2dstructured_servicelibrary.exe

Run:

.. code-block:: console


   $OBJECTCODE/itm_grid_example1_2dstructured_servicelibrary.exe

2d structured grid read example
Source file is at:

.. code-block:: console

   src/examples/itm_grid_example1_2dstructured_read.f90

Compile:

.. code-block:: console

   make $OBJECTCODE/itm_grid_example1_2dstructured_read.exe

Run:

.. code-block:: console

   $OBJECTCODE/itm_grid_example1_2dstructured_read.exe

Visualize
+++++++++

To visualize the data written by the example program

.. code-block:: console

   ~klingshi/bin/itm-grid/ualconnector -s 9001,1,0.0 -c edge

To visualize a more complex dataset

.. code-block:: console

   ~klingshi/bin/itm-grid/ualconnector -s 17151,899,1000.0 -c edge -u klingshi -t aug

Combining data from two CPOs:

.. code-block:: console

   ~klingshi/bin/itm-grid/ualconnector -s 17151,898,1000.0 -c edge -s 17151,899,1000.0 -c edge -u klingshi -t aug
