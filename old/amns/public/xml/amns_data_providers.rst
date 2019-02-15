.. _amns_data_providers_documentation:

AMNS Data Providers Documentation
=================================

A prototype code for generating an AMNS database from ADAS and nuclear
can be found in gforge as the `project
amnsproto <https://gforge6.eufus.eu/gf/project/amnsproto/>`__ in the
branches/adas_db area.

Doxygen generated documentation
-------------------------------

So far the only documentation is the `doxygen documentation for the AMNS
Data Provider
routines <https://portal.eufus.eu/documentation/EU-IM/doxygen/amns/amnsproto/Provider/4.10b/>`__
(follow the links to Files|File List|src/amns_driver.f90).

Tips/Comments
-------------

Here are some comments about the data provider driver:

-  At the time of writing, the only data provided were atomic rate
   coefficients derived from ADAS and nuclear cross-sections for fusion.
-  The relevant code can be found in the
   amnsproto
   project in GFORGE in branches/amns_db/src, with the driver
   amns_driver.F90
-  Compilation is done by typing
   make
   in
   branches/amns_db
-  The code can then be run by typing
   obj/amns_driver
-  The backend can be chosen by specifying one of "mdsplus", "hdf5" or
   "ascii" on the command line when running
   obj/amns_driver
   (default is "mdsplus").
-  The
   amns_driver
   program is driven by the file
   amns_driver.data
   whose format is described in the file
   amns_driver.format
   .
-  To maintain the version information, a MySQL database was used for
   4.09a and 4.09b. The database is updated by amns_driver when new data
   is written, and the database is used by the user interface routines
   to determine which "run" (version) number should be used for each
   "shot" (species). From 4.10a onwards, the version data is stored in
   an AMNS CPO under shot 0, run 1.

   The current status of this database can be queried from the Gateway
   by doing (note that this is only for pre-4.10a versions):

   ::

      mysql -h solps-mdsplus.aug.ipp.mpg.de -u amnsro -p amns
      amnsro
      select * from versions;
      quit;

   (i.e. accessing the "amns" database on the server
   "solps-mdsplus.aug.ipp.mpg.de" as user "amnsro"; the password is
   "amnsro").

-  
-  
-  
-  

For New AMNS Data Providers
---------------------------

-  If you haven't already done so, you will need to join the project
   "amnsproto", following the instructions contained
   here
   . There will be a delay until the project manager adds you to the
   project, and gforge updates its tables.
-  You will need to create your private user database
   ::

      $EU-IMSCRIPTDIR/create_user_itm_dir amns 4.10b

   replacing the
   4.10b
   with the appropriate version.
-  Check out the AMNSPROTO repository
   ::

      svn co https://gforge6.eufus.eu/svn/amnsproto

   and then follow the instructions in the top level README

