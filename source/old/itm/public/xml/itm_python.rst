.. _itm_python:

Python on the ITM platform
==========================

Python installation: overview
-----------------------------

The ITM platform includes a Python installation, with

-  a number of standard libraries for scientific computing (NumPy,
   SciPy, matplotlib, ...)
-  a UAL interface for reading and writing CPOs from/to the ITM database
-  ITM-specific libraries for handling CPOs, the general grid
   description and CPO-specific visualization tools

The following Python versions are available: 2.5.1, 2.6.7.

The current default Python version is 2.5.1.

Documentation, tutorials and training material
----------------------------------------------

To be added...
Switching between Python versions
---------------------------------

The "select_python" command is provided to allow users to quickly switch
between different Python versions. It takes care of correctly setting up
the Python environment, including all UAL data version specific Python
components (modules, scripts, ...).

Usage:

::

   source $ITMSCRIPTDIR/select_python [PYTHONVERSION] 

or, using an alias provided in the default ITM environment

::

   set_python [PYTHONVERSION] 

When running the command from a login script (e.g. your ~/.cshrc file),
the following is recommended:

::

   source $ITMSCRIPTDIR/select_python [PYTHONVERSION]  > /dev/null

-  PYTHONVERSION can be one of "2.5", "2.6" or "default" (the current
   default is 2.5).
-  If it is ommitted, any previously selected Python version is kept. If
   no Python version was previously selected, the default version is
   selected.
-  If an ITM data version was selected (by running the ITMv1 script),
   the Python environment is set up to include UAL-specific components.
   If no data version is currently selected, the UAL-specific components
   are not included in the environment.

Example: to automatically switch to Python 2.6 when logging in, add the
following line in your ~/.cshrc file:

::

   source $ITMSCRIPTDIR/select_python 2.6 > /dev/null

Known issues when switching between Python versions

-  Not all scripts and packages are available for all versions. Be aware
   of this when switching between versions.
-  ipython
   ipython keeps a local database to store settings in your home
   directory at ~/.ipython, the format of which might be incompatible
   between versions. If you get error messages when starting ipython,
   move your ipython directory (mv ~/.ipython ~/.ipython_old) or delete
   it.

-  matplotlib

   -  matplotlib keeps a local database to store settings in your home
      directory at ~/.matplotlib, the format of which might be
      incompatible between versions. If you get error messages when
      running a script that uses matplotlib, move your matplotlib
      directory (mv ~/.matplotlib ~/.matplotlib_old) or delete it.
   -  Different versions of matplotlib are installed for the different
      Python versions. This can lead to some plotting scripts not
      working properly. Typically matplotlib will give warnings when
      deprecated functions are used.

Details
select_python modifies the environment variables PATH, PYTHONPATH,
LD_LIBRARY_PATH and PYTHONVERSION. PYTHONVERSION is set to the currently
selected version.

Development tools
-----------------

-  Eclipse & PyDev plugin
   A fully integrated IDE, including a source debugger. It's available
   on the gateway ('eclipse' command).

   Documentation: `PyDev Website <http://pydev.org>`__, `PyDev
   Manual <http://pydev.org/manual.html>`__

Available Python modules
------------------------

-  SciPy
   `Documentation <http://docs.scipy.org/doc/>`__ (pick the right
   version)

   Python 2.5: version 0.7.0 Python 2.6: version 0.10.0

-  NumPy
   `Documentation <http://docs.scipy.org/doc/>`__ (pick the right
   version)

   Python 2.5: version 1.2.1 Python 2.6: version 1.6.1

-  matplotlib
   `Documentation (for the latest
   version) <http://matplotlib.sourceforge.net/contents.html#>`__

   If you need the documentation for 0.99.3, please contact ISIP.
   Python 2.5: version 0.99.3 Python 2.6: version 1.2.x

-  ipython

   Documentation
   (pick the right version)
   Python 2.5: version 0.8.4 Python 2.6: version 0.12

Installation details
--------------------

Directory layout

-  select_python script
   $ITMSCRIPTDIR/select_python

-  Python installations
   $SWITMDIR/python/python2.5.1 $SWITMDIR/python/python2.6.7

-  Standard packages
   (NumPy, SciPy, matplotlib, ...)
   /afs/.efda-itm.eu/project/switm/python/python_pk.2.5.1
   $SWITMDIR/python/python_pk.2.6/lib/python2.6/site-packages

-  ITM-specific packages
   (UAL, ...)

   -  Python UAL interface
      $SWITMDIR/ual/$DATAVERSION/python_pk.$PYTHONVERSION

   -  ITM Visualization Library
      $SWITMDIR/itmvis/$DATAVERSION/python_pk.$PYTHONVERSION

