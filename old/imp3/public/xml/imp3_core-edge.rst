.. _imp3_core-edge:

Core-Edge Coupled Transport Simulations
=======================================

The goal of this work is to implement a direct scheme for coupled
core-edge transport simulations. For the core the ETS, the core impurity
code and the core neutrals code will be used. For the edge SOLPS-B2 will
be used.

At the end of 2011, a manual coupling procedure had been implemented, as
described in `this
document <../imports/core_edge_coupling_via_manual_intervention.pdf>`__.

Activities 2012
---------------

In 2012 work is ongoing to automate this procedure. The following steps
have occurred:

-  Modified the main part of SOLPS-B2 to introduce

   -  "b2mn_init", a routine to initialize SOLPS-B2
   -  "b2mn_step", a routine that can be called repeatedly to advance
      the edge plasma simulation
   -  "b2mn_fin", a routine to finalize SOLPS-B2

   These changes involved splitting "b2mndr" into "b2mndr_0", "b2mndr_1"
   and "b2mndr_2"
-  The introduction of a new routine "b2mn_ets" which is called with
   input CPOs "coreprof", "coreimpur" and "coreneutrals", and returns
   output CPOs "coreprof", "coreimpur", "coreneutrals" and "edge". The
   routine:

   -  calls "b2mn_init" on the first call
   -  based on the input core CPOs, alters the SOLPS-B2 boundary
      conditions before calling "b2mn_step", and then revises the
      boundary conditions in the output core CPOs
   -  calls "b2mn_fin" at the end of the calculation

-  Changes to many of the input/output routines in SOLPS-B2 so that

   -  input data is looked for in the present directory, it's parent, or
      the sibling "baserun" directory
   -  output files that are already present no longer cause the code to
      stop with an error message

   The result of this is that SOLPS-B2 no longer needs to be run by the
   previously required Makefile which copied input files into a run
   directory.
-  The modification of the ETS Fortran workflow code "eq_ets_test" to
   include calls to "b2mn_ets".
-  The Fortran workflow runs coupled calculations, and verification runs
   are currently in progress.

   -  A problem in the UAL which causes the message "No more slots
      available for arrays of structures" and the program then to hang
      has been identified
   -  Fixes in the 4.09a ETS were back-ported from 4.10a, and problems
      with impurity transport coefficients identified and fixed. There
      may still be a problem with impurity energy losses.
   -  D and D+C+Ar+Ne+He runs are both being done

