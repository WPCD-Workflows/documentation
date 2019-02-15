.. _imp3_grid_tutorial:

IMP3 General Grid Description and Grid Service Library - Tutorial
=================================================================

1. Setup your environment
-------------------------

::

   echo $DATAVERSION
   echo $TOKAMAKNAME

should give "4.09a" and "test". If not, run
::

   source $ITMSCRIPTDIR/ITMv1 kepler test 4.09a > /dev/null

To copy the tutorial files:
::

   cp -r ~klingshi/bin/itm-grid ~/public

Switch to the right version of the PGI compiler:
::

   module unload openmpi/1.3.2/pgi-8.0 compilers/pgi/8.0
   module load compilers/pgi/10.2 openmpi/1.4.3/pgi-10.2

To set up the environment:
::

   cd $HOME/public/itm-grid/f90
   source setup.csh

2. Compile & run examples
-------------------------

2d structured grid write example
Source file is at:

::

   src/examples/itm_grid_example1_2dstructured_servicelibrary.f90

Compile:

::

   make depend
   make $OBJECTCODE/itm_grid_example1_2dstructured_servicelibrary.exe

Run:

::

   $OBJECTCODE/itm_grid_example1_2dstructured_servicelibrary.exe

2d structured grid read example
Source file is at:

::

   src/examples/itm_grid_example1_2dstructured_read.f90

Compile:

::

   make $OBJECTCODE/itm_grid_example1_2dstructured_read.exe

Run:

::

   $OBJECTCODE/itm_grid_example1_2dstructured_read.exe

3. Visualize
------------

To visualize the data written by the example program

::

   ~klingshi/bin/itm-grid/ualconnector -s 9001,1,0.0 -c edge

To visualize a more complex dataset

::

   ~klingshi/bin/itm-grid/ualconnector -s 17151,899,1000.0 -c edge -u klingshi -t aug

Combining data from two CPOs:

::

   ~klingshi/bin/itm-grid/ualconnector -s 17151,898,1000.0 -c edge -s 17151,899,1000.0 -c edge -u klingshi -t aug
