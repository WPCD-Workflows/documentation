.. _itm_status_2011-05_amns_imp3:

1.  David Coster

    -  updated ETS trunk to 4.09a

    -  updated AMNSPROTO user and provider code to 4.09a

    -  implemented an interface to MySQL in the AMNS user and provider
       code to deal with version numbers

    -  updated the ETS to run with the latest AMNS version

    -  updated the b2ar component of SOLPS to use the AMNS rate
       coefficients (in addition to the existing ADPAK, STRAHL and ADAS
       data interfaces)

2.  Hajo Klingshirn

    -  Data structures:

       -  Redesign edge CPO and grid datastructure for 4.09a (subgrids,
          general data types, improved data storage, metrics,
          generalized data, representation...)

       -  Help redesign AMNS CPO for 4.09a

       -  Start development of wall CPO in collaboration with LSPM
          (Paris)

       -  Help development of extending equilibrium CPO to support 3d
          eq.

    -  Grid Service Library:

       -  Extend F90 implementation (subgrids, high level interface for
          structured grids)

       -  Extend python implementation (subgrids, plotting)

       -  Work on moving service library to 4.09a

    -  Codes

       -  B2

          -  comprehensive data output to 4.09a edge CPO

          -  generalized output of subgrids

       -  ITM-CARRE

          -  Refactor in preparation for ITM-CARRE actor

          -  Remove user interaction parts

    -  Documentation:

       -  Website documentation of grid concepts

       -  Documentation of standard test discretizations

       -  Grid tutorial

3.  Xavier Bonnin

    -  Continued development of ITM_CARRE: I/O with CPOs, translation
       routines from CPO to CARRE internal data structures, removed
       screen output for preparation of Kepler CARRE actor, Fortran
       wrapper for CARRE_ITM module produced.

    -  Proposed a data structure for wall CPO (including hydrogen
       inventory and surface chemical composition)

    -  Ongoing development of a hydrogen inventory model for use as an
       ITM module.

4.  David Tskhakaya

    -  Started development of the c version of the AMNS module

    -  Development of the CPO-ized version of the BIT1 code;

5.  Roman Stankiewicz

    -  Continue the work on stiff problem

    -  modified the solver 3 by using the values of unknown solution in
       the points lying in the middle of the mesh interval in this case
       the scheme is conservative.

6.  Irena Ivanova-Stanik

    -  include radiativity power by impurity use for AMNS data 4.08b

    -  comparise radiativity power between SANCO and ETS for C

    -  prepare actor for impurity in the Kepler

7.  Viorica Stancalie

    -  R-Matrix calculations for e- + Co IV scattering

    -  full relativistic Dirac-Fock R-matrix calculation (DARC) for
       electron-scattering Ar 2+ ions

8.  António Figueiredo

    -  Characterized the problem of convergence loss in the default
       solver_test run, following the implementation of "numerical"
       Ohmic heating power. I concluded that the problem is in the
       calculation of the derivative of PSI (QOH depends on
       d^2PSI/dRHO^2), and not of a specific solver

    -  Maintained the ETS branch in
       https://gforge6.eufus.eu/svn/ets/branches/figueiredo/ETS

    -  Occasionally found/fixed/reported ETS bugs

    -  Implemented the solver_test workflow in Kepler based on the
       “figueiredo” branch of the ETS. The workflow is running well and
       basically read but I'm still improving some things.

9.  Kinga Gal

    -  pellet actor was created and can be run as a part of ETS
       workflows (single pellet injection, Fortran based)

10. Irina Voitsekhovitch

    -  benchmarking of the ETS workflow simulating current diffusion and
       electron and ion temperature evolution with Bohm-gyroBohm
       transport model against ASTRA/CRONOS/JETTO simulations (in
       collaboration with ISM-ACT1)

11. Leena Aho-Mantila

    -  submitted a paper about the validation of SOLPS5.0-ERO
       simulations against ASDEX Upgrade 13C injection experiments in
       low-density L-mode

12. Angelines Alberto

    -  support to the activities that David Tskhakaya implement about
       development of the C/C++ version of the AMNS module

13. Rob Wieggers

    -  Finalizing implementation of the physics of Eunomia, including:

       -  a CR model yielding line-of-sight integrated Stark and Doppler
          broadened emission line profiles

       -  double Maxwellian velocity distributions for neutrals

    -  Started validation of Eunomia against Pilot-PSI

14. Simppa Äkäslompolo

    -  WP11-ITM-AMNS-ACT1-01/TEKES: "Fusion cross sections, also
       converted to v_par and v_per"

       -  Received introduction from D.Coster, workplan exists.

       -  A working MATLAB implementation of the algorithm for
          converting fusion cross sections to v_par v_per has been
          written

       -  The new ASCOT4 kernel is ported to gateway, AMNS testing with
          that can commence

15. Karoly Tokesi

    -  Test calculations for state-selective charge exchange cross
       sections in collision between 50 keV/amu N7+ H-atom using
       classical trajectory Monte Carlo method. Our results are in good
       agreements with the literature data.

       State selective capture cross calculations at low energy N7+ and
       H(1s) collisions.

       Test calculations for partially stripped ions.

16. Katharina Igenbergs

    -  In March we had a very fruitful meeting with David Coster at IPP
       Garching. In this meeting we agreed that our data will be
       supplied in ADAS data format. This will simplify the input of our
       data into ITM structures. Data for fully stripped Be, C, N, and
       Ne ions are already prepared and will be entered in due time. We
       are currently working on the data sets for Li and on calculations
       of collision systems involving highly charged Ar ions.

17. João P. S. Bizarro

    -  This is basically a no-report since, apart from a couple of
       discussions I had with Luís when he came from the last CC (in
       Cadarache), I haven't yet done anything on the ETS V and V in
       2011. I planned to concentrate on that activity essentially
       during the second semester of 2011, having decided to attend the
       next two CC's (as well as that devoted to ISM).

18. Jorge Ferreira

    -  My main activity have been to support the development,
       verification and validation, of all ETS Kepler workflows:

       -  testing the coupling between the equilibrium actors and the
          ETS actor

       -  adding new actors from IMP12, IMP4 and IMP5 to the ETS Kepler
          workflow, and doing preliminary verification tests

       -  Participation in the joint activities between IMP3 and ISM to
          developed a set of validation tests for the ETS Kepler
          workflows

    -  I also give support to the ETS team that is doing the ETS
       verification tests.

2019-01-31 09:23:43Z g2dpc $
