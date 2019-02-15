.. _itm_cpo_handling:

Handling CPOs
=============

The tools below allow you to perform useful operations on the EU-IM
datastructures including entire CPOs in your Fortran90 workflows. They
are not meant as a replacement of the Universal Access Layer (UAL) but
rather as a complement especially in situations where the UAL is not
available or not practical, e.g. in U.S. - EFDA collaborations.

Module deallocate_stuctures
---------------------------

This Fortran90 module allows you to deallocate in a very simple way any
EU-IM data structure which is defined in euitm_schemas.f90.
Add the following use statement to your code:
::

     use deallocate_structures

The Fortran syntax for deallocating a cpo is then:
::

     call deallocate_cpo(cpo)

where cpo is a single time slice or a pointer array of a CPO (or other
EU-IM data structure).
With
::

      call set_deallocate_verbosity(verbosity)

you can set a verbosity level for the deallocate routines.
verbosity = 0
produces no output, whereas
verbosity > 0
produces verbose output.
The module
deallocate_structures.f90
is hosted by the
Gforge
project
itmshared
.
Check it out with
::

   svn checkout https://gforge6.eufus.eu/svn/itmshared/branches/tools target_dir

Two static libraries
libdeallocate_pgi.a
and
libdeallocate_g95.a
have been prebuilt on the
EU-IM Gateway
.
Module copy_structures
----------------------

This Fortran90 module allows you to copy in a very simple way any EU-IM
data structure which is defined in euitm_schemas.f90.
Add the following use statement to your code:
::

     use copy_structures

The Fortran syntax for copying a cpo is then:
::

     call copy_cpo(cpo_source, cpo_target)

where cpo_source and cpo_target are single time slices or arrays of a
CPO (or other EU-IM data structure) of the same derived type, real
scalars, or real arrays (1D - 7D).
The allocation of the elements of the target structure is done
automatically.
With
::

      call set_copy_verbosity(verbosity)

you can set a verbosity level for the copy routines.
verbosity = 0
produces no output, whereas
verbosity > 0
produces verbose output.
The module
copy_structures.f90
is hosted by the
Gforge
project
itmshared
.
Check it out with
::

   svn checkout https://gforge6.eufus.eu/svn/itmshared/branches/tools target_dir

Two static libraries
libcopy_pgi.a
and
libcopy_g95.a
have been prebuilt on the
EU-IM Gateway
.
Module euitm_copy
-----------------

This Fortran90 module allows you to copy in a very simple way any EU-IM
data structure which is defined in euitm_schemas.f90 including entire
trim traces.
Add the following use statement to your code:
::

     use euitm_copy

The Fortran syntax for copying a cpo via assignment is then:
::

     cpo_target = cpo_source

where cpo_source and cpo_target are single time slices or arrays of a
CPO (or other EU-IM data structure) of the same derived type.
The allocation of the elements of the target structure is done
automatically.
The program files are hosted by the Gforge project
itmshared
.
Check them out with
::

   svn checkout https://gforge6.eufus.eu/svn/itmshared/branches/perlcopy target_dir

To build the Fortran90 module, run
::

     creacopy.pl

It takes euitm_schemas.f90 from the directory
$UAL/fortraninterface/
.
Or supply the file from a given directory
::

     creacopy.pl $MYDIR/euitm_schemas.f90

Module is_set_structures
------------------------

This Fortran90 module can be used to check whether EU-IM data structures
including entire CPOs have been set. The subroutines in
is_set_structures.f90
write out the name of each element in the data structure together with
'T'
if it has been set or
'F'
if not.
Add the following use statement to your code:
::

     use is_set_structures

The Fortran syntax for checking a cpo is then:
::

     call is_set_cpo(cpo, "name of cpo")

where cpo is a single time slice or an array of a CPO (or other EU-IM data
structure) and "name of cpo" is a string containing the name of the CPO.
The module
is_set_structures.f90
is hosted by the
Gforge
project
itmshared
.
Check it out with
::

   svn checkout https://gforge6.eufus.eu/svn/itmshared/branches/tools target_dir

Two static libraries
libis_set_pgi.a
and
libis_set_g95.a
have been prebuilt on the
EU-IM Gateway
.
Module size_of_structures
-------------------------

The subroutines in
size_of_structures.f90
write out the name of each element in the data structure with its size,
the size of each entire substructure, and the size of the entire CPO.
The size can be given in bytes or in a more human friendly format
depending on the value of the logical parameter
human_readable
. The indentation is done in steps of 2 blanks with an initial
indentation of 1.
The maximum depth to which the results are displayed is specified by a
call to
set_size_of_maxlevel
. Output of empty fields can be suppressed by setting the verbosity to
zero with a call to
set_size_of_verbosity
. In all cases, sums are carried out over all levels.
Add the following use statement to your code:
::

     use size_of_structures

The Fortran syntax for calculating the size of a cpo is then:
::

     call size_of_cpo(cpo, total_size, human_readable, "name of cpo")

where cpo is a single time slice or an array of a CPO (or other EU-IM data
structure) and "name of cpo" is a string containing the name of the CPO.
total_size is an integer and should be set to zero before the call.
human_readable is a flag (true => human friendly format).
Set the verbosity with:
::

     call set_size_of_verbosity(verbosity)

verbosity = 0 => no output of empty fields
verbosity > 0 => full output
Set the maximum depth with:
::

     call set_size_of_maxlevel(level)

with level being an integer.
The module
size_of_structures.f90
is hosted by the
Gforge
project
itmshared
.
Check it out with
::

   svn checkout https://gforge6.eufus.eu/svn/itmshared/branches/tools target_dir

Two static libraries
libsize_of_pgi.a
and
libsize_of_g95.a
have been prebuilt on the
EU-IM Gateway
.
Module write_structures
-----------------------

This Fortran90 module can be used to write EU-IM data structures including
entire CPOs to disk.
The corresponding file is opened with
::

     call open_write_file(unit_no, file_name)

where unit_no is the file handle (integer) and file_name a string with
the file name (possibly including the path).
The file is closed with
::

     call close_write_file

Add the following use statement to your code:
::

     use write_structures

The Fortran syntax for writing a cpo to disk is then:
::

     call write_cpo(cpo, "name of cpo")

where cpo is a single time slice or an array of a CPO (or other EU-IM data
structure) and "name of cpo" is a string containing the name of the CPO.
With
::

      call set_write_verbosity(verbosity)

you can set a verbosity level for the write routines. verbosity = 0
produces no output, whereas verbosity > 0 produces verbose output.
The module
write_structures.f90
is hosted by the
Gforge
project
itmshared
.
Check it out with
::

   svn checkout https://gforge6.eufus.eu/svn/itmshared/branches/tools target_dir

Two static libraries
libwrite_pgi.a
and
libwrite_g95.a
have been prebuilt on the
EU-IM Gateway
.
Module read_structures
----------------------

This Fortran90 module can be used to read EU-IM data structures including
entire CPOs from disk.
The corresponding file is opened with
::

     call open_read_file(unit_no, file_name)

where unit_no is the file handle (integer) and file_name a string with
the file name (possibly including the path).
The file is closed with
::

     call close_read_file

Add the following use statement to your code:
::

     use read_structures

The Fortran syntax for reading a cpo from disk is then:
::

     call read_cpo(cpo, "name of cpo")

where cpo is a single time slice or an array of a CPO (or other EU-IM data
structure) and "name of cpo" is a string containing the name of the CPO.
The module automatically deallocates any fields already allocated in cpo
and allocates all required fields automatically. It is absolutely
essential that "name of cpo" is identical with the one chosen when the
cpo was written.
With
::

      call set_read_verbosity(verbosity)

you can set a verbosity level for the read routines. verbosity = 0
produces no output, whereas verbosity > 0 produces verbose output.
The module
read_structures.f90
is hosted by the
Gforge
project
itmshared
.
Check it out with
::

   svn checkout https://gforge6.eufus.eu/svn/itmshared/branches/tools target_dir

Two static libraries
libread_pgi.a
and
libread_g95.a
have been prebuilt on the
EU-IM Gateway
.
Module diff_structures
----------------------

This Fortran90 module can be used to compare two CPOs or other EU-IM data
structures. It was developed to facilitate benchmarks and automated test
suites for the code development. It was kept flexible through the use of
function arguments in the argument list of the subroutines of
diff_structures. This allows the user to specify his own function set
for the analysis and evalutation of the differences between the two
CPOs. A call to diff_cpo simply writes out the result of this user
defined function.
Add the following use statements to your code:
::

   use diff_structures
   use error_analysis

The Fortran syntax for calculating the differences between two cpos is
then:
::

     call diff_cpo(reference_cpo, test_cpo, name_root, func)

where reference_cpo is the reference CPO or other EU-IM data structure and
test_cpo is the test CPO or other EU-IM data structure.
name_root is a string which defines the root of the field names to be
displayed, e.g. 'equilibrium'.
func is a function argument to the subroutine diff_cpo. It can be any
user defined function with the following constraints:

-  It must be defined inside the module error_analysis (an example
   version with various error analysis functions is provided in
   error_analysis.f90
   ).
-  It follows the structure (dummy arguments, interface, overloading) as
   demonstrated in error_analysis.f90. The function always has a header
   function with a list of optional dummy arguments. Depending on which
   actual arguments are specified, this functions calls the overloaded
   function with the correct arguments. The interim function is required
   because of Fortran90/95 limitations. The actual error analysis is
   carried out inside the overloaded functions. Two fields of these
   functions are intent(inout) variables:
   ::

      diff_counter : to count the number of difference
      error_level  : to allow for sums or averages over entire CPOs (see examples)

   These two variables are private to the error_analysis module.
   To access them please use the functions
   ::

        get_diff_counter()

   and
   ::

        get_error_level()

   The function
   ::

        set_error_level(err_level)

   may be used to specify an initial value for the variable
   error_level
   .

With
::

      call set_diff_verbosity(verbosity)

you can set a verbosity level for the diff routines. verbosity = 0
produces no output, whereas verbosity > 0 produces verbose output.
The file
check_equilibrium.f90
represents a simple example for a program to compare two equilibrium
CPOs one of which is used as a reference for test cases in code
development. It clearly demonstrates the use of the diff_structures
module.
The module
diff_structures.f90
and the auxiliary file
error_analysis.f90
and
check_equilibrium.f90
are hosted by the
Gforge
project
itmshared
.
Check them out with
::

   svn checkout https://gforge6.eufus.eu/svn/itmshared/branches/tools target_dir

Two static libraries libdiff_pgi.a and libdiff_g95.a have been prebuilt on
the EU-IM Gateway .
