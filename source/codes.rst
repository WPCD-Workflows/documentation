=====
Codes
=====

IMASviz
-------

The :doc:`IMASViz <viz:index>` code is used for IMAS visualisation.




.. _isip_fc2k:



How to turn a C++ code into a Kepler actor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This document is based on material provided by Yann Frauel and describes
how to make your C++ code EU-IM compliant and how to turn it into a Kepler
actor.

Adapt your C++ function
^^^^^^^^^^^^^^^^^^^^^^^

You must include the header file UALClasses.h:

.. code-block:: console

   #include "UALClasses.h"

The function arguments that are arrays or strings must be declared as
pointers, as usual. All other arguments must be passed by reference
(i.e. they must be declared with an ampersand):

.. code-block:: console
                
   void mycppfunction(double * vector, char * string, int & scalar)

The function arguments that are CPOs must be declared with types
ItmNs::Itm::cpo_type or ItmNs::Itm::cpo_typeArray. The first form is for
time-independent CPOs or a single slice of a time-dependent CPO. The
latter is for a complete time-dependent CPO. Note that in all cases, the
CPO is considered as a single object, not an array, so it must be passed
by reference as mentioned above:

.. code-block:: console

   void mycppfunction(
   ItmNs::Itm::limiter & lim,
   ItmNs::Itm::coreimpur & cor,
   ItmNs::Itm::ironmodelArray & iron)

The syntax is identical for input and output arguments. For output CPOs,
do not forget to use the usual methods to assign strings and allocate
arrays:

.. code-block:: console

   lim.datainfo.dataprovider.assign("test_limiter");
   iron.array.resize(3);
   iron.array(j).desc_iron.geom_iron.npoints.resize(3);

Otherwise, the content of CPOs is accessed as usual:

.. code-block:: console

   cout << lim.datainfo.dataprovider << endl;
   cout << iron.array(j).desc_iron.geom_iron.npoints(i);

How to use code parameters
^^^^^^^^^^^^^^^^^^^^^^^^^^

The code parameters are passed as the last argument with
ItmNs::codeparam_t& type:

.. code-block:: console

   void mycppfunction(..., ItmNs::codeparam_t & codeparam)

Each field of the param structure is a vector of 132-byte strings, not
necessarily terminated by 0-character! (This does not follow C/C++
standards and should be changed in the future.)

Compile your function as a library
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You need to include the header directories for the UAL and Blitz:

.. code-block:: console

   -I$(UAL)/include -I$(UAL)/lowlevel -I$(UAL)/cppinterface/ -I/afs/efda-
   itm.eu/gf/project/switm/blitz/blitz-0.9/include/

Same for linking:

.. code-block:: console

   -L$(UAL)/lib -lUALCPPInterface -lUALLowLevel -L/afs/efda-
   itm.eu/gf/project/switm/blitz/blitz-0.9/lib -lblitz

Additionally, you must compile with the -fPIC option.

Full example
^^^^^^^^^^^^

We want to generate an actor that has three different types of actors as
inputs and three different types of actors as output. Additionally, we
have an integer as input/output, a vector of doubles as output and a
string as output. We also want to use code parameters. Content of
mycppfunction.cpp:

.. code-block:: console

   #include "UALClasses.h"

   typedef struct {
         char **parameters;
         char **default_param;
         char **schema;
   } param;

   void mycppfunction(
         ItmNs::Itm::summary  SUM,
         EU-IMNS::EU-IM::ANTENNAS & ANT,
         EU-IMNS::EU-IM::EQUILIBRIUMARRAY & EQ,
         INT & X,
         EU-IMNS::EU-IM::LIMITER & LIM,
         EU-IMNS::EU-IM::COREIMPUR & COR,
         EU-IMNS::EU-IM::IRONMODELARRAY & IRON,
         DOUBLE * Y,
         CHAR * STR,
   PARAM & CODEPARAM)
   {

         /* DISPLAY FIRST LINE OF PARAMETERS */
         COUT &LT< codeparam.parameters[0] << endl;
         cout << codeparam.default_param[0] << endl;
         cout << codeparam.schema[0] << endl;
         /* display content of inputs */
         cout << "x=" << x << endl;
         cout << sum.time << endl;
         cout << sum.datainfo.dataprovider << endl;
         cout << ant.datainfo.dataprovider << endl;
         cout << eq.array(0).datainfo.dataprovider << endl;
         for (int k=0; k<3; k++) {
              for (int i=0; i<4; i++) {
                    cout << eq.array(k).profiles_1d.psi(i)<< " ";
              }
              cout << endl;
         }
         /* fill limiter CPO */
         lim.datainfo.dataprovider.assign("test_limiter");
         lim.position.r.resize(5);     // allocate vector
         for (int i=0; i<5; i++) {
               lim.position.r(i)=(i+1);
         }
         /* fill coreimpur CPO */
         cor.datainfo.dataprovider.assign("test_coreimpur");
         cor.flag.resize(3);          // allocate vector
         for (int i=0; i<3; i++) {
               cor.flag(i)=(i+1)*10;
         }
         cor.time=0; // don't forget to fill time for time-dependent CPOs
         /* fill ironmodel CPO */
         iron.array.resize(3);        // allocate slices
         for (int j=0; j<3; j++) {
               char s[255];
               sprintf(s,"test_ironmodel%d",j);
               iron.array(j).datainfo.dataprovider.assign(s); // allocate vector
               iron.array(j).desc_iron.geom_iron.npoints.resize(3);
               for (int i=0; i<3; i++) {
                     iron.array(j).desc_iron.geom_iron.npoints(i)=j*i;
               }
               iron.array(j).time=j;       // fill time for time-dependent CPOs
         }
         /* assign value to non CPO outputs */
         x=5;
         for (int i=0; i<10; i++) {
               y[i]=i;
         }
         strcpy(str,"This is a test string");
   }

Content of Makefile:

.. code-block:: console

   CXXFLAGS=-g -fPIC -I$(UAL)/include -I$(UAL)/lowlevel -I$(UAL)/cppinterface/
   -I$SWEU-IMDIR/blitz/blitz-0.9/include/
   LDFLAGS=-L$(UAL)/lib -lUALCPPInterface -lUALLowLevel -L/afs/efda-
   itm.eu/gf/project/switm/blitz/blitz-0.9/lib -lblitz
   libmycppfunction.a: mycppfunction.o
         ar -rvs libmycppfunction.a mycppfunction.o
   mycppfunction.o: mycppfunction.cpp
   clean:
         rm mycppfunction.o libmycppfunction.a

How to fill the FC2K window
^^^^^^^^^^^^^^^^^^^^^^^^^^^

First tab (Argument):

-  set number of input and output arguments (combined)
-  select type of arguments from drop-down menu
-  tick if argument is a single time slice
-  tick if argument is array (not for pointers)
-  if necessary define size of arrays
-  tick if argument is input argument
-  tick if argument is output argument (multiple ticks possible)

The fields Kepler, Ptolemy, and UAL are automatically filled with the
values which you set by running the ``EU-IMv1 script``.

.. figure:: /images/codes_1.png
   :align: center

Second tab (HasReturn):

-  specify return parameters (type, array, size)

.. figure:: /images/codes_2.png
   :align: center

Third tab (HasParameters):

-  tick if subroutine uses code specific parameters
-  specify (or browse for) XML code parameter input file
-  specify (or browse for) XML default code parameter file
-  specify (or browse for) W3C XML schema file (XSD)

For information on code specific parameters, please see `How to handle
code specific parameters <#itm_code_parameters>`__.

.. figure:: /images/codes_3.png
   :align: center

Fourth tab (Source):

-  specify programming language of source code
-  select appropriate compiler
-  tick
   Parallel MPI
   if code module is using MPI
-  tick
   Batch
   if code module shall be run in batch mode rather than interactively
   when running Kepler workflows
-  specify (or browse for) library file containing the code module
-  specify (or browse for) other libraries required by the code module

.. figure:: /images/codes_4.png
   :align: center

   
.. _imp12_listcodes:   

Plasma equilibrium and MHD (IMP12) list of codes
------------------------------------------------

The following list lists the codes and modules which are part of EU-IM-TF
tasks and their responsible officers. A link takes you to the status
page for each code.

A number of IMP12 codes have projects on
`gforge <https://gforge6.eufus.eu/gf/project/>`__.

Update the code status
`here <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM>`__.

Free boundary equilibrium codes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

CEDRES++, S. Brémond, CEA (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=CEDRES%2B%2B&SUBMIT=Submit+Query>`__,
`gforge <https://gforge6.eufus.eu/gf/project/cedres/>`__ )

CLISTE, P. Mc Carthy, DCU (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=CLISTE&SUBMIT=Submit+Query>`__
)

CREATE-NL, M. Mattei, ENEA Frascati (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=CREATE_NL&SUBMIT=Submit+Query>`__
)

EFIT++, L. Appel, CCFE (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=EFIT%2B%2B&SUBMIT=Submit+Query>`__
)

EQUAL, W. Zwingmann, EC (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=EQUAL&SUBMIT=Submit+Query>`__,
`gforge <https://gforge6.eufus.eu/gf/project/equal/>`__,
`actor <#imp12_equalslice_actor>`__ )

EQUINOX, B. Faugeras, CEA (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=equinox&SUBMIT=Submit+Query>`__,
`gforge <https://gforge6.eufus.eu/gf/project/equinox/>`__ )

FIXFREE, E. Giovannozzi, ENEA Frascati (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=FixFree&SUBMIT=Submit+Query>`__
)

Fixed boundary equilibrium codes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

CAXE, S. Medvedev, EPFL (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=CAXE&SUBMIT=Submit+Query>`__
)

CHEASE, O. Sauter, EPFL (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=CHEASE&SUBMIT=Submit+Query>`__,
`gforge <https://gforge6.eufus.eu/gf/project/chease/>`__ )

HELENA, C. Konz, IPP (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=HELENA&SUBMIT=Submit+Query>`__,
`actor <#imp12_helena_actor>`__ )

Linear MHD stability codes
~~~~~~~~~~~~~~~~~~~~~~~~~~

KINX, S. Medvedev, EPFL (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=KINX&SUBMIT=Submit+Query>`__
)

ILSA, C. Konz, IPP (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=ILSA&SUBMIT=Submit+Query>`__,
`actor <#imp12_ilsa_actor>`__ )

MARS, G. Vlad, ENEA Frascati (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=MARS&SUBMIT=Submit+Query>`__,
`gforge <https://gforge6.eufus.eu/gf/project/marsgw/>`__ )

MARS-F, D. Yadykin, Chalmers (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=MARS-F&SUBMIT=Submit+Query>`__,
`gforge <https://gforge6.eufus.eu/gf/project/marsf/>`__ )

Equilibrium codes with flow
~~~~~~~~~~~~~~~~~~~~~~~~~~~

FLOW, R. Paccagnella, ENEA RFX (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=FLOW&SUBMIT=Submit+Query>`__
)

3D Equilibrium Codes
~~~~~~~~~~~~~~~~~~~~

Sawtooth Crash Modules
~~~~~~~~~~~~~~~~~~~~~~

SAWTEETH, O. Sauter, CRPP (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=SAWTEETH&SUBMIT=Submit+Query>`__,
`gforge <https://gforge6.eufus.eu/gf/project/sawteeth/>`__ )

ELM Modules
~~~~~~~~~~~

RWM Modules
~~~~~~~~~~~

NTM Modules
~~~~~~~~~~~

3D MHD Codes
~~~~~~~~~~~~

JOREK, G. Huysmans, CEA (`code
status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=JOREK&SUBMIT=Submit+Query>`__
)

Error Field Modules
~~~~~~~~~~~~~~~~~~~

2D MHD Codes
~~~~~~~~~~~~

Disruption Modules
~~~~~~~~~~~~~~~~~~

Numerical Tools
~~~~~~~~~~~~~~~

PROGEN, C. Konz, IPP 

JALPHA, C. Konz, IPP 

.. _imp5_listcodes:

Heating, current drive (H&CD) and fast particles (IMP5) list of codes
---------------------------------------------------------------------

The following list lists the codes and modules which are part of EU-IM-TF
tasks and their responsible officers.

A number of IMP5 codes have projects on
`gforge <https://gforge6.eufus.eu/gf/project/?action=ProjectTroveBrowse&_trove_category_id=312>`__.

.. _imp5_listcodes_electron_heating_codes:

Electron heating codes
~~~~~~~~~~~~~~~~~~~~~~

.. _imp5_listcodes_EC_wave_codes:

EC wave codes
^^^^^^^^^^^^^

-  TORAY-FOM, E. Westerhof, FOM 
-  TORBEAM, E. Poli, IPP-Garching 
-  GRAY, L. Figini, ENEA-CNR 
-  TRAVIS, N. B. Marushchenko, IPP-Greifswald 
.. _imp5_listcodes_LH_wave_codes:

LH wave codes
^^^^^^^^^^^^^

-  RAYLH, A. Cardinali, EURATOM-ENEA (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=RAYLH&SUBMIT=Submit+Query>`__)

.. _imp5_listcodes_EC_LH_wave_codes:

Combined EC and LH wave codes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  C3PO, Y. Peysson, CEA (Cadarache) (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=C3PO&SUBMIT=Submit+Query>`__)

.. _imp5_listcodes_electron_fokker_planck:

Combined electron Fokker-Planck codes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  RELAX, E. Westerhof, FOM (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=RELAX&SUBMIT=Submit+Query>`__)

-  LUKE, Y. Peysson (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=LUKE&SUBMIT=Submit+Query>`__,
   `gforge <https://gforge6.eufus.eu/gf/project/luke/>`__)

.. _imp5_listcodes_lh_coupling:

LH coupling
^^^^^^^^^^^

-  ALOHA, J. Hillairet, CEA (Cadarache) (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=C3PO&SUBMIT=Submit+Query>`__,
   `gforge <https://gforge6.eufus.eu/gf/project/aloha/>`__)

.. _imp5_listcodes_time_domain_wave:

Time domain wave codes
^^^^^^^^^^^^^^^^^^^^^^

-  FWTOR, C. Tsironis, Hellenic Association (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=FWTOR&SUBMIT=Submit+Query>`__,
   `gforge <https://gforge6.eufus.eu/gf/project/spot/>`__)

.. _imp5_listcodes_ion_heating_codes:

Ion heating codes
~~~~~~~~~~~~~~~~~

.. _imp5_listcodes_IC_wave_codes:

Wave codes for ion cyclotron heating
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  TORIC, R. Bilato, IPP-Garching (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=TORIC&SUBMIT=Submit+Query>`__,
   `gforge <https://gforge6.eufus.eu/gf/project/toric/>`__)

-  EVE, R. Dumont, CEA (Cadarache) (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=EVE&SUBMIT=Submit+Query>`__,
   `gforge <https://gforge6.eufus.eu/gf/project/eve/>`__)

-  LION, O. Sauter, CRPP

-  Cyrano, E. Lerche, ERM/KMS

-  ICCOUP, T. Johnson, VR
   (`gforge <https://gforge6.eufus.eu/gf/project/fpsim/>`__)

.. _imp5_listcodes_IC_Fokker_Planck:

Fokker-Planck codes for ion cyclotron heating
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  FPSIM, L.-G. Eriksson, EC (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=fpsim&SUBMIT=Submit+Query>`__,
   `gforge <https://gforge6.eufus.eu/gf/project/fpsim/>`__)

-  SSFPQL, R. Bilato, IPP-Garching (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=SSFPQL&SUBMIT=Submit+Query>`__)

-  RFOF, T. Johnson, VR
   (`gforge <https://gforge6.eufus.eu/gf/project/rfof/>`__,
   `documentation <https://portal.eufus.eu/documentation/EU-IM/doxygen/imp5/rfof/docs/>`__,
   `codeparam <imp5_code_parameter_documentation_rfof.html>`__)

-  Stix_Redist, E. Lerche and D. Van Eester
   (`gforge <https://gforge6.eufus.eu/gf/project/stixredist/>`__,
   `codeparam <imp5_code_parameter_documentation_stix_redist.html>`__)

-  Stix_Disp, E. Lerche and D. Van Eester
   (`gforge <https://gforge6.eufus.eu/gf/project/stixredist/>`__)

.. _imp5_listcodes_NBI_sources:

NBI sources for Fokker-Planck codes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  BBNBI (Beamlet-based NBI module of ASCOT), O. Asunta, TEKES (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=BBNBI&SUBMIT=Submit+Query>`__,
   `gforge <https://gforge6.eufus.eu/gf/project/bbnbi/>`__)

-  NEMO, M. Schneider, CEA (Cadarache) (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=NEMO&SUBMIT=Submit+Query>`__,
   `gforge <https://gforge6.eufus.eu/gf/project/nemo/>`__,

-  SNBI (OAW NBI source), K. Schöpf, OAW (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=SNBI&SUBMIT=Submit+Query>`__)

.. _imp5_listcodes_nuclear_sources:

Nuclear sources (input for Fokker-Planck codes)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  Nuclearsim, T.Johnson, VR
   (`gforge <https://gforge6.eufus.eu/gf/project/nbisim/>`__,
   `codeparam <imp5_code_parameter_documentation_nuclearsim.html>`__)

.. _imp5_listcodes_NBI_Fokker-Planck:

NBI Fokker-Planck codes
^^^^^^^^^^^^^^^^^^^^^^^

-  RISK, M. Schneider, CEA (Cadarache) (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=RISK&SUBMIT=Submit+Query>`__,
   `gforge <https://gforge6.eufus.eu/gf/project/risk/>`__)

-  NBISIM, T. Johnson, VR

-  FIDIT, K. Schöpf, OAW (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=FIDIT&SUBMIT=Submit+Query>`__)

.. _imp5_listcodes_Advanced_Fokker-Planck:

Advanced codes
^^^^^^^^^^^^^^

(The following codes include either the synergy between IC and NBI
heating, or include both wave field and Fokker-Planck solver)

-  ASCOT, S. Sipila, TEKES (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=ASCOT&SUBMIT=Submit+Query>`__,
   `gforge <https://gforge6.eufus.eu/gf/project/ascot/>`__,
   `codeparam <imp5_code_parameter_documentation_ascot.html>`__)

-  SPOT, M. Schneider, CEA (Cadarache) (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=spot&SUBMIT=Submit+Query>`__,
   `gforge <https://gforge6.eufus.eu/gf/project/spot/>`__)

-  SELFO-light, T. Hellsten, VR (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=SELFO-light&SUBMIT=Submit+Query>`__,
   `gforge <https://gforge6.eufus.eu/gf/project/selfolight/>`__)

.. _imp5_listcodes_orbit_codes:

Orbit tracing codes
^^^^^^^^^^^^^^^^^^^

-  SOFI, S. Sipila, TEKES (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=SOFI&SUBMIT=Submit+Query>`__,
   `gforge <https://gforge6.eufus.eu/gf/project/sofi/>`__)

-  OAW Orbit Following Monte Carlo, K. Schöpf, OAW (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=ÖAW Orbit Following Monte Carlo&SUBMIT=Submit+Query>`__)

Fast particle codes
~~~~~~~~~~~~~~~~~~~

.. _imp5_listcodes_fast_ions_mhd:

Codes for fast ion-MHD interactions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  LIGKA, P. Lauber, IPP-Garching (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=LIGKA&SUBMIT=Submit+Query>`__)

-  MARS, G. Vlad, ENEA-Frascati (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=MARS&SUBMIT=Submit+Query>`__,
   `gforge <https://gforge6.eufus.eu/gf/project/marsgw/>`__)

-  HYMAGYC, G. Vlad, ENEA-Frascati (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=HYMAGYC&SUBMIT=Submit+Query>`__)

-  HMGC, C. Di Troia, ENEA-Frascati (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=HMGC&SUBMIT=Submit+Query>`__)

-  LEMAN, W.A. Cooper, EPFL-CRPP (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=LEMAN&SUBMIT=Submit+Query>`__)

.. _imp5_listcodes_runaways:

Runaway electrons
^^^^^^^^^^^^^^^^^

-  ARENA, G. Pokol and G. Csepany (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=ARENA&SUBMIT=Submit+Query>`__,
   `gforge <https://gforge6.eufus.eu/gf/project/arena/>`__)

Transport list of codes (IMP3)
------------------------------

-  ASPOEL, , (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=ASPOEL&SUBMIT=Submit+Query>`__)

-  BIT1, , (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=BIT1&SUBMIT=Submit+Query>`__)

-  CARRE, , (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=CARRE&SUBMIT=Submit+Query>`__)

-  COS, , (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=COS&SUBMIT=Submit+Query>`__)

-  EIRENE, , (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=EIRENE&SUBMIT=Submit+Query>`__)

-  EIRENE2, , (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=EIRENE2&SUBMIT=Submit+Query>`__)

-  EMC3-EIRENE, , (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=EMC3-EIRENE&SUBMIT=Submit+Query>`__)

-  ERO, , (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=ERO&SUBMIT=Submit+Query>`__)

-  ETS, , (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=ETS&SUBMIT=Submit+Query>`__)

-  METIS4EU-IM, , (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=METIS4EU-IM&SUBMIT=Submit+Query>`__)

-  SOLPS, , (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=SOLPS&SUBMIT=Submit+Query>`__)

-  SOLPS6, , (`code
   status <http://solps-mdsplus.aug.ipp.mpg.de:8080/EU-IM/specific_code_report?specific_codename=SOLPS6&SUBMIT=Submit+Query>`__)

