.. toctree::
   :maxdepth: 2

   ../../../isip/public/xml/isip_fc2k_cpp

.. _isip_fc2k:

FC2K
====

FC2K is a tool for wrapping a Fortran or C++ source code into a Kepler
actor. Before using it, your physics code should be EU-IM-compliant (i.e.
use CPOs as input/output).

After running the EU-IMv1 script (to properly set up the environment
variables), FC2K can be run simply by typing fc2k in the Linux command
line.

``fc2k`` was developed by ISIP in Java/Pytho. The program source is
stored in the Gforge subversion repository fc2k. To check out a
subversion working copy of the repository, storing it in subdirectory
*fc2k*, do

.. code-block:: console

   svn co https://gforge6.eufus.eu/svn/fc2k

Executables etc are in $SWEU-IMDIR/ihm/fc2k/.

There are a few tools for managing actors, in $EU-IMSCRIPTDIR/ (put it in
your $PATH):

-  rmactor
   : remove an actor from your Kepler version ($KEPLER).
-  extract_actor
   : export an actor from $KEPLER.
-  import_actor
   ::

      cd $KEPLER
      ant buildkarlib

