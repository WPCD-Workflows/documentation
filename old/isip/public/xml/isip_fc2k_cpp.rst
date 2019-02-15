.. _isip_fc2k_cpp:

How to turn a C++ code into a Kepler actor
==========================================

This document is based on material provided by Yann Frauel and describes
how to make your C++ code EU-IM compliant and how to turn it into a Kepler
actor.

Adapt your C++ function
-----------------------

You must include the header file UALClasses.h:

::

   #include "UALClasses.h"

The function arguments that are arrays or strings must be declared as
pointers, as usual. All other arguments must be passed by reference
(i.e. they must be declared with an ampersand):

::

   void mycppfunction(double * vector, char * string, int & scalar)

The function arguments that are CPOs must be declared with types
ItmNs::Itm::cpo_type or ItmNs::Itm::cpo_typeArray. The first form is for
time-independent CPOs or a single slice of a time-dependent CPO. The
latter is for a complete time-dependent CPO. Note that in all cases, the
CPO is considered as a single object, not an array, so it must be passed
by reference as mentioned above:

::

   void mycppfunction(
   ItmNs::Itm::limiter & lim,
   ItmNs::Itm::coreimpur & cor,
   ItmNs::Itm::ironmodelArray & iron)

The syntax is identical for input and output arguments. For output CPOs,
do not forget to use the usual methods to assign strings and allocate
arrays:

::

   lim.datainfo.dataprovider.assign("test_limiter");
   iron.array.resize(3);
   iron.array(j).desc_iron.geom_iron.npoints.resize(3);

Otherwise, the content of CPOs is accessed as usual:

::

   cout << lim.datainfo.dataprovider << endl;
   cout << iron.array(j).desc_iron.geom_iron.npoints(i);

How to use code parameters
--------------------------

The code parameters are passed as the last argument with
ItmNs::codeparam_t& type:

::

   void mycppfunction(..., ItmNs::codeparam_t & codeparam)

Each field of the param structure is a vector of 132-byte strings, not
necessarily terminated by 0-character! (This does not follow C/C++
standards and should be changed in the future.)

Compile your function as a library
----------------------------------

You need to include the header directories for the UAL and Blitz:

::

   -I$(UAL)/include -I$(UAL)/lowlevel -I$(UAL)/cppinterface/ -I/afs/efda-
   itm.eu/gf/project/switm/blitz/blitz-0.9/include/

Same for linking:

::

   -L$(UAL)/lib -lUALCPPInterface -lUALLowLevel -L/afs/efda-
   itm.eu/gf/project/switm/blitz/blitz-0.9/lib -lblitz

Additionally, you must compile with the -fPIC option.

Full example
------------

We want to generate an actor that has three different types of actors as
inputs and three different types of actors as output. Additionally, we
have an integer as input/output, a vector of doubles as output and a
string as output. We also want to use code parameters. Content of
mycppfunction.cpp:

::

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

::

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
---------------------------

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

Second tab (HasReturn):

-  specify return parameters (type, array, size)

Third tab (HasParameters):

-  tick if subroutine uses code specific parameters
-  specify (or browse for) XML code parameter input file
-  specify (or browse for) XML default code parameter file
-  specify (or browse for) W3C XML schema file (XSD)

For information on code specific parameters, please see `How to handle
code specific parameters <#itm_code_parameters>`__.

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

