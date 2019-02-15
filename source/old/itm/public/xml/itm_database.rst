.. _itm_database:

EU-IM Database
============

The tools below allow you to directly access the EU-IM data base without
using the Universal Access Layer (UAL). This may prove useful when the
UAL is not available.

printcpo
--------

This Fortran90 program writes on the screen the non empty fields of the
CPOs stored in the specified database entry.
It can be run directly from a unix shell:
::

   unix prompt> printcpo <shot> <run> <treename>

where the parameters are the shot number, the run number, and the name
of the MDSPLUS tree. If no parameters are provided, a default value of 1
is used for the shot number and the run number, while the treename
default to euitm.
Example:
::

   unix prompt> printcpo 3 2

In the current version, the program writes out the dimension of a field
array, while it writes out the values of a scalar field to standard out.
The routine can also be used in a Fortran90 program.
Add the following use statement to your code:
::

     use euitm_printcpo

Call the routine like this:
::

     call printcpo(<cpo variable>)

Example:
::

       ...
       type(type_equilibrium),pointer :: equilibrium(:) => null()
       ...
       call euitm_get(idx, 'equilibrium', equilibrium)
       ...
       call printcpo(equilibrium)

The program files are hosted by the
Gforge
project
itmshared
.
Check them out with
::

   svn checkout https://gforge6.eufus.eu/svn/itmshared/branches/perlprintcpo target_dir

To build the program and the routines, just use the make facility:
::

   unix prompt> make

The make uses the pgi compiler.
The files included are:

-  Makefile
   - the Makefile
-  creaprint.pl
   - a perl script which reads the definition of all data structures
   from the file euitm_schemas.f90 and writes the file
   euitm_printcpo.f90, which contains a module with all the routine
   needed to print a cpo.
-  creamainprint.pl
   - writes the main program (printcpo.f90) based on the definitions in
   euitm_schemas.f90.
-  printcpoargs.f90
   - routine that returns the arguments passed to the main program.

