.. _amns_user_interface:

AMNS User Interface
===================

This section discusses the user interface to the AMNS subsystem.

The AMNS library is made available via a module - available versions can
be found by executing

::

   module avail amns

The include and library locations are specified via the "pkg-config"
system. To display the available package names do

::

   pkg-config --list-all | grep amns

Doxygen information about the user interface can be found
`here <https://portal.eufus.eu/documentation/EU-IM/doxygen/amns/amnsproto/User/4.10b/>`__.

The AMNS library can be called from

1. Fortran
2. C
3. Python
4. Java (in development)
5. Matlab (in development)

The various bindings for the different languages are given below, but
make use of a set of standard concepts which are described first.

.. _amns_user_interface_data_structures:

AMNS User Interface Data Structures
-----------------------------------

A number of data structures are used by the library interface. Some are
opaque (i.e. the contents are not of relevance to the user), and some
need to be set or read by the user programme.

The two opaque types are handles which are returned by the setup
routines and then need to be passed to the other routines:

1. amns_handle_type, used for the database wide routines
2. amns_handle_rx_type, used for the reaction specific routines

In some language bindings these are the basis of classes.

The non-opaque types are:

1. amns_error_type, used to indicate if an error occured and, if so,
   what the error was
2. amns_reaction_type, used to indicate the requested reaction
3. amns_set_type, used to set an AMNS internal parameter
4. amns_query_type, used to query an AMNS internal parameter
5. amns_answer_type, used to contain the answer from an AMNS query
6. amns_version_type, used to specify the AMNS version
7. amns_reactants_type, used to specify the reactants to a reaction
8. amns_reactant_type, a sub-component of amns_reactants_type used to
   characterize the individual reactants

The definitions of these data types can be found at the `doxygen
documentation for the AMNS User
routines <https://portal.eufus.eu/documentation/EU-IM/doxygen/amns/amnsproto/User/4.10b/>`__

.. _amns_user_interface_reactions:

AMNS User Interface Data Reactions
----------------------------------

The currently available reactions specified in reaction_typex%string in
the call to EU-IM_AMNS_SETUP_TABLE are

1.  RC: Recombination (acd)
2.  EI: Electron Impact Ionisation (scd)
3.  CX: CX recombination coeffts (ccd)
4.  BR: Recomb/brems power coeffts (prb)
5.  LR: Line radiation (plt)
6.  ZE: Effective Charge (zcd)
7.  ZE2: Effective Square Charge (ycd)
8.  EIP: Effective Ionisation Potential (ecd)
9.  some nuclear reactions
10. ...

The actual reactions are listed in the AMNS section.

.. _amns_user_interface_queries:

AMNS User Interface Data Queries
--------------------------------

The currently available queries for query%string in the call to
EU-IM_AMNS_QUERY is


The currently available queries for query%string in the call to
EU-IM_AMNS_QUERY_TABLE are

1.  source: source (origin) of the data
2.  no_of_reactants: number of tractants involved
3.  index: Not sure what this is
4.  filled: whether the data table has been filled ("Filled" or "Empty")
5.  reaction_type: reaction type
6.  reactants: nuclear charges of reactants
8.  state_label: label for the charge state (if appropriate)
9.  result_unit: units of the result
10. result_label: description of the result

.. _amns_user_interface_settings:

AMNS User Interface Data Setting Options
----------------------------------------

The currently setting options for set%string in the call to EU-IM_AMNS_SET
is

1. NONE

The currently available setting options for set%string in the call to
EU-IM_AMNS_SET_TABLE is

1. nowarn: deactivate warning when extrapolating

.. _amns_user_interface_f:

FORTRAN AMNS User Interface
---------------------------

The fortran interface to the AMNS subsystem is based on a standardised
set of calls to the AMNS library. The details of what lies behind these
calls is the responsibility of the AMNS data providers and does not need
to be understood by the users of the AMNS data.

The code modules devloped for the AMNS project are hosted in gforge as
the `project amnsproto <https://gforge6.eufus.eu/project/amnsproto/>`__.

.. _amns_user_interface_calls_f:

AMNS User Interface: Fortran Calls
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The 9 calls to the AMNS system are:

1. EU-IM_AMNS_SETUP, initialization call for the AMNS package
   ::

        subroutine EU-IM_AMNS_SETUP(handle, version, error_status)
          optional version, error_status
          type(amns_handle_type), intent(out) :: handle
          type(amns_version_type), intent(in) :: version
          type(amns_error_type), intent(out) :: error_status

2. EU-IM_AMNS_QUERY, query routine for the AMNS package
   ::

        subroutine EU-IM_AMNS_QUERY(handle,query,answer,error_status)
          optional error_status
          type(amns_handle_type), intent(in) :: handle
          type(amns_query_type), intent(in) :: query
          type(amns_answer_type), intent(out) :: answer
          type(amns_error_type), intent(out) :: error_status

3. EU-IM_AMNS_SET, set a parameter for the AMNS package
   ::

        subroutine EU-IM_AMNS_SET(handle,set,error_status)
          optional error_status
          type(amns_handle_type), intent(in) :: handle
          type(amns_set_type), intent(in) :: set
          type(amns_error_type), intent(out) :: error_status

4. EU-IM_AMNS_FINISH, finalization call for the AMNS package
   ::

        subroutine EU-IM_AMNS_FINISH(handle, error_status)
          optional error_status
          type(amns_handle_type), intent(inout) :: handle
          type(amns_error_type), intent(out) :: error_status

5. EU-IM_AMNS_SETUP_TABLE, initialization call for a particular reaction
   ::

        subroutine EU-IM_AMNS_SETUP_TABLE(handle, reaction_type, reactant, handle_rx, error_status)
          optional error_status
          type(amns_handle_type), intent(in) :: handle
          type(amns_reaction_type), intent(in) :: reaction_type
          type(amns_reactants_type), intent(in) :: reactant
          type(amns_handle_rx_type), intent(out) :: handle_rx
          type(amns_error_type), intent(out) :: error_status

6. EU-IM_AMNS_QUERY_TABLE, query routine for a particular reaction
   ::

        subroutine EU-IM_AMNS_QUERY_TABLE(handle_rx,query,answer,error_status)
          optional error_status
          type(amns_handle_rx_type), intent(in) :: handle_rx
          type(amns_query_type), intent(in) :: query
          type(amns_answer_type), intent(out) :: answer
          type(amns_error_type), intent(out) :: error_status

7. EU-IM_AMNS_SET_TABLE, set a parameter for a particular reaction
   ::

        subroutine EU-IM_AMNS_SET_TABLE(handle_rx,set,error_status)
          optional error_status
          type(amns_handle_rx_type), intent(in) :: handle_rx
          type(amns_set_type), intent(in) :: set
          type(amns_error_type), intent(out) :: error_status

8. EU-IM_AMNS_FINISH_TABLE, finalization call for a particular reaction
   ::

        subroutine EU-IM_AMNS_FINISH_TABLE(handle_rx, error_status)
          optional error_status
          type(amns_handle_rx_type), intent(inout) :: handle_rx
          type(amns_error_type), intent(out) :: error_status

9. EU-IM_AMNS_RX, get the rates associated with the input args for a
   particular reaction
   ::

        interface EU-IM_AMNS_RX
          module procedure EU-IM_AMNS_RX_1, EU-IM_AMNS_RX_2, EU-IM_AMNS_RX_3
        end interface

        subroutine EU-IM_AMNS_RX_1(handle_rx,out,arg1,arg2,arg3,error_status)
          optional arg2,arg3,error_status
          type(amns_handle_rx_type), intent(inout) :: handle_rx
          real (kind=R8), intent(out) :: out(:)
          real (kind=R8), intent(in) :: arg1(:),arg2(:),arg3(:)
          type(amns_error_type), intent(out) :: error_status

        subroutine EU-IM_AMNS_RX_2(handle_rx,out,arg1,arg2,arg3,error_status)
          optional arg2,arg3,error_status
          type(amns_handle_rx_type), intent(inout) :: handle_rx
          real (kind=R8), intent(out) :: out(:,:)
          real (kind=R8), intent(in) :: arg1(:,:),arg2(:,:),arg3(:,:)
          type(amns_error_type), intent(out) :: error_status

        subroutine EU-IM_AMNS_RX_3(handle_rx,out,arg1,arg2,arg3,error_status)
          optional arg2,arg3,error_status
          type(amns_handle_rx_type), intent(inout) :: handle_rx
          real (kind=R8), intent(out) :: out(:,:,:)
          real (kind=R8), intent(in) :: arg1(:,:,:),arg2(:,:,:),arg3(:,:,:)
          type(amns_error_type), intent(out) :: error_status

.. _amns_user_interface_example_f:

AMNS User Interface Example (Fortran)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An example of the use of the code can be found in the (`fortran minimal
example <https://gforge6.eufus.eu/svn/amnsproto/tags/examples/fortran/>`__):

::

   program minimal
     use itm_types
     use amns_types
     use amns_module

     implicit none

     type (amns_handle_type) :: amns                            ! AMNS global handle
     type (amns_handle_rx_type)  :: amns_rx                     ! AMNS table handle
     type (amns_reaction_type) :: xx_rx
     type (amns_reactants_type) :: species
     real (kind=R8) :: te=100.0_R8, ne=1e20_R8, rate

     call EU-IM_AMNS_SETUP(amns)                                  ! set up the AMNS system
     allocate(species%components(4))                            ! set up reactants
     species%components = (/ amns_reactant_type(6, 1, 12, 0), &
                             amns_reactant_type(1, 0, 2, 0), &
                             amns_reactant_type(6, 0, 12, 1), &
                             amns_reactant_type(1, 1, 2, 1) /)
     xx_rx%string='CX'                                          ! set up reaction
     call EU-IM_AMNS_SETUP_TABLE(amns, xx_rx, species, amns_rx)   ! set up table
     call EU-IM_AMNS_RX(amns_rx, rate, te, ne)                    ! get results
     write(*,*) 'Rate = ', rate
     call EU-IM_AMNS_FINISH_TABLE(amns_rx)                        ! finish with table
     call EU-IM_AMNS_FINISH(amns)                                 ! finish with amns

   end program minimal

.. _amns_user_interface_Makefile_f:

AMNS User Interface Example Fortran Makefile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An example Makefile demonstrating the use of the AMNS routines:

::

   obj/minimal: src/minimal.f90
           ifort -g -o $@ $< ${shell eval-pkg-config --cflags --libs \
         amns-amd64_intel_12 itmtypes-amd64_intel_12 ual-amd64_intel_12}

Other examples can be found
(`here <https://gforge6.eufus.eu/svn/amnsproto/tags/examples/>`__):

.. _amns_user_interface_c:

C AMNS User Interface
---------------------

The C interface to the AMNS subsystem is based on a standardised set of
calls to the AMNS library. The details of what lies behind these calls
is the responsibility of the AMNS data providers and does not need to be
understood by the users of the AMNS data.

The code modules devloped for the AMNS project are hosted in gforge as
the `project amnsproto <https://gforge6.eufus.eu/project/amnsproto/>`__.

.. _amns_user_interface_calls_c:

AMNS User Interface: C Calls
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The 9 calls to the AMNS system are:

1. EU-IM_AMNS_SETUP, initialization call for the AMNS package
   ::

      void EU-IM_AMNS_C_SETUP(void **handle_out, amns_error_type *error_status);

2. EU-IM_AMNS_QUERY, query routine for the AMNS package
   ::

      void EU-IM_AMNS_C_QUERY(void *handle_in, amns_query_type *query, 
                            amns_answer_type *answer, amns_error_type *error_status)

3. EU-IM_AMNS_SET, set a parameter for the AMNS package
   ::

      void EU-IM_AMNS_C_SET(void *handle_in, amns_set_type *set, amns_error_type *error_status);

4. EU-IM_AMNS_FINISH, finalization call for the AMNS package
   ::

      void EU-IM_AMNS_C_FINISH(void **handle_inout, amns_error_type *error_status);

5. EU-IM_AMNS_SETUP_TABLE, initialization call for a particular reaction
   ::

      void EU-IM_AMNS_C_SETUP_TABLE(void *handle_in, amns_reaction_type *reaction_type, 
                                  void *reactant_handle_in, void **handle_rx_out, 
                                  amns_error_type *error_status);

6. EU-IM_AMNS_QUERY_TABLE, query routine for a particular reaction
   ::

      void EU-IM_AMNS_C_QUERY_TABLE(void *handle_rx_in, amns_query_type *query, 
                                  amns_answer_type *answer, amns_error_type *error_status);

7. EU-IM_AMNS_SET_TABLE, set a parameter for a particular reaction
   ::

      void EU-IM_AMNS_C_SET_TABLE(void *handle_rx_in, amns_set_type *set, 
                                amns_error_type *error_status);

8. EU-IM_AMNS_FINISH_TABLE, finalization call for a particular reaction
   ::

      void EU-IM_AMNS_C_FINISH_TABLE(void **handle_rx_inout, amns_error_type *error_status);

9. EU-IM_AMNS_RX, get the rates associated with the input args for a
   particular reaction
   ::

      void EU-IM_AMNS_C_RX_0_A(void *handle_rx_in, double *out, 
                             double arg1, amns_error_type *error_status);
      void EU-IM_AMNS_C_RX_0_B(void *handle_rx_in, double *out, 
                             double arg1, double arg2, amns_error_type *error_status);
      void EU-IM_AMNS_C_RX_0_C(void *handle_rx_in, double *out, 
                             double arg1, double arg2, double arg3, amns_error_type *error_s
      tatus);

      void EU-IM_AMNS_C_RX_1_A(void *handle_rx_in, int nx, double *out, 
                             double *arg1, amns_error_type *error_status);
      void EU-IM_AMNS_C_RX_1_B(void *handle_rx_in, int nx, double *out, 
                             double *arg1, double *arg2, amns_error_type *error_status);
      void EU-IM_AMNS_C_RX_1_C(void *handle_rx_in, int nx, double *out, 
                             double *arg1, double *arg2, double *arg3, amns_error_ty
      pe *error_status);

      void EU-IM_AMNS_C_RX_2_A(void *handle_rx_in, int nx, int ny, 
                             double *out, double *arg1, amns_error_type *error_status);
      void EU-IM_AMNS_C_RX_2_B(void *handle_rx_in, int nx, int ny, 
                             double *out, double *arg1, double *arg2, amns_error_type *error_status);
      void EU-IM_AMNS_C_RX_2_C(void *handle_rx_in, int nx, int ny, 
                             double *out, double *arg1, double *arg2, double *arg3, amns_error_type *error_status);

      void EU-IM_AMNS_C_RX_3_A(void *handle_rx_in, int nx, int ny, int nz, 
                             double *out, double *arg1, amns_error_type *error_status);
      void EU-IM_AMNS_C_RX_3_B(void *handle_rx_in, int nx, int ny, int nz, 
                             double *out, double *arg1, double *arg2, amns_error_type *error_status);
      void EU-IM_AMNS_C_RX_3_C(void *handle_rx_in, int nx, int ny, int nz, 
                             double *out, double *arg1, double *arg2, double *arg3, amns_error_type *error_status);

In addition, service routines are provided for dealing with reactants:

::

   void EU-IM_AMNS_C_SETUP_REACTANTS(void **reactants_handle_out, char string_in[reaction_length], 
                                   int index_in, int n_react
   ants);
   void EU-IM_AMNS_C_SET_REACTANT(void *reactants_handle_in, int reactant_index, amns_reactant_type *reactant_in);
   void EU-IM_AMNS_C_GET_REACTANT(void *reactants_handle_in, int reactant_index, amns_reactant_type *reactant_out);
   void EU-IM_AMNS_C_FINISH_REACTANTS(void **reactants_handle_inout);

.. _amns_user_interface_example_c:

AMNS User Interface Example (C)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An example of the use of the code can be found in the (`c minimal
example <https://gforge6.eufus.eu/svn/amnsproto/tags/examples/c/>`__):

::

   #include "amns_interface.h"

   int main(int argc, char *argv[])
   {
     void* amns_handle = NULL;
     amns_c_error_type error_stat = DEFAULT_AMNS_C_ERROR_TYPE;
     void* reactants_handle = NULL;
     amns_c_reactant_type species1  = {.ZN=6, .ZA=1, .MI=12, .LR=0};
     amns_c_reactant_type species2  = {.ZN=1, .ZA=0, .MI=2 , .LR=0};
     amns_c_reactant_type species3  = {.ZN=6, .ZA=0, .MI=12, .LR=1};
     amns_c_reactant_type species4  = {.ZN=1, .ZA=1, .MI=2 , .LR=1};
     amns_c_reaction_type xx_rx  = {.string = "CX"};
     void* amns_cx_handle;
     double rate;

     EU-IM_AMNS_CC_SETUP(AMNS_HANDLE, &ERROR_STAT)
     printf("error = %s: %s\n", error_stat.flag ? "true" : "false", error_stat.string);
     EU-IM_AMNS_CC_SETUP_REACTANTS(REACTANTS_HANDLE, "", 0, 4)
     EU-IM_AMNS_CC_SET_REACTANT(reactants_handle, 1, SPECIES1)
     EU-IM_AMNS_CC_SET_REACTANT(reactants_handle, 2, SPECIES2)
     EU-IM_AMNS_CC_SET_REACTANT(reactants_handle, 3, SPECIES3)
     EU-IM_AMNS_CC_SET_REACTANT(reactants_handle, 4, SPECIES4)
     EU-IM_AMNS_CC_SETUP_TABLE(amns_handle, XX_RX, REACTANTS_HANDLE, &AMNS_CX_HANDLE, &ERROR_STAT)
     printf("error = %s: %s\n", error_stat.flag ? "true" : "false", error_stat.string);
     EU-IM_AMNS_CC_RX_0_B(amns_cx_handle, RATE, 100.0, 1E20, &ERROR_STAT)
     printf("error = %s: %s\n", error_stat.flag ? "true" : "false", error_stat.string);
     printf("rate=%e\n", rate);
     EU-IM_AMNS_CC_FINISH_TABLE(AMNS_CX_HANDLE, &ERROR_STAT)
     printf("error = %s: %s\n", error_stat.flag ? "true" : "false", error_stat.string);
     EU-IM_AMNS_CC_FINISH_REACTANTS(REACTANTS_HANDLE)
     EU-IM_AMNS_CC_FINISH(AMNS_HANDLE, &ERROR_STAT)
     printf("error = %s: %s\n", error_stat.flag ? "true" : "false", error_stat.string);
     return 0;
   }

.. _amns_user_interface_Makefile_c:

AMNS User Interface Example C Makefile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An example Makefile demonstrating the use of the AMNS routines:

::

   obj/minimal: src/minimal.c
           gcc -g -o $@ $< ${shell eval-pkg-config --cflags --libs\
             amns-ifort itmconstants ual-amd64_intel_12}

Other examples can be found
(`here <https://gforge6.eufus.eu/svn/amnsproto/tags/examples/>`__):

.. _amns_user_interface_python:

Python AMNS User Interface
--------------------------

The Python interface to the AMNS subsystem is based on a standardised
set of calls to the AMNS library. The details of what lies behind these
calls is the responsibility of the AMNS data providers and does not need
to be understood by the users of the AMNS data.

The code modules devloped for the AMNS project are hosted in gforge as
the `project amnsproto <https://gforge6.eufus.eu/project/amnsproto/>`__.

.. _amns_user_interface_calls_python:

AMNS User Interface: Python Calls
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Python interface creates

1. Amns (class)

   1. finalize (method)
   2. get_table (method)
   3. query (method)
   4. set (method)

2. Table (class)

   1. data (method)
   2. finalize (method)
   3. query (method)
   4. set (method)

3. Reactants (class)

   1. add (method)
   2. test (method)
   3. value (method)

.. _amns_user_interface_example_python:

AMNS User Interface Example (Python)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An example of the use of the code can be found in the (`python minimal
example <https://gforge6.eufus.eu/svn/amnsproto/tags/examples/python/>`__):

::

   #! /usr/bin/env python
   # -*- coding: utf-8 -*-
   import amns
   import numpy as np

   amnsdb = amns.Amns()
   r = amns.Reactants()
   r.add(6,1,12)
   r.add(1,0,2)
   r.add(6,0,12,lr=1)
   r.add(1,1,2,lr=1)
   table = amnsdb.get_table("CX", r)
   print "table.no_of_reactants", table.no_of_reactants
   print table.data(np.array([100.0]), np.array([1e20]))
   amnsdb.finalize()

Other examples can be found
(`here <https://gforge6.eufus.eu/svn/amnsproto/tags/examples/>`__):

