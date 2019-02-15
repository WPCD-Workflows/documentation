.. toctree::
   :maxdepth: 2

   ../../../isip/public/xml/ual_user_guide

.. _isip_ual:

Universal Access Layer (UAL)
============================

Introduction
------------

The UAL (Universal Access Layer) is a multi-language library that allows
exchanging Consistent Physical Objects (CPOs) between various modules,
and to write to an EU-IM database. The documentation here is provided for
rather experienced users who want to practice the UAL in their test
programs. Regular KEPLER users do not need to know anything about the
UAL. KEPLER manages transparently the UAL calls, which are embedded in
the physics code wrappers. No UAL calls should be made inside physics
modules. Prior using the UAL, the environment must be configured. It is
recommended to use the ``EU-IMv1`` script for this, which simultanesouly
sets i) the database environment (to the private database of the user)
ii) the UAL libraries environment iii) the Kepler environment.

.. code-block:: console

       source $EU-IMSCRIPTDIR/EU-IMv1 KEPLERFOLDER
       MACHINENAME DATAVERSION

e.g.:

.. code-block:: console

       source $EU-IMSCRIPTDIR/EU-IMv1 kepler tore_supra 4.08a

This scripts does not prevent you from using databases from other users
or the public one, you must then use the UAL function ``euitm_open_env``
in your program to do so. The EU-IMv1 script uses the two following
scripts: to set the database environment variables (mandatory prior UAL
usage), use:

.. code-block:: console

   source $EU-IMSCRIPTDIR/set_itm_data_env USERNAME
    MACHINENAME DATAVERSION

e.g.:

.. code-block:: console

   source $EU-IMSCRIPTDIR/set_itm_data_env myname jet 4.08a

Then to set the path to the right UAL libraries, use:

.. code-block:: console

   source $EU-IMSCRIPTDIR/set_itm_env DATAVERSION

e.g.:

.. code-block:: console

   source $EU-IMSCRIPTDIR/set_itm_env 4.08a

UAL libraries are installed in /afs/efda-itm.eu/isip/project/switm/ual.
The source code is stored in a subversion repository in
/afs/edfa-itm.eu/isip/project/portal/gforge/storage/svnroot/ual. To
check out a subversion working copy of the repository, storing it in
subdirectory *ual*, do

.. code-block:: console

   svn co https://gforge6.eufus.eu/svn/ual

UAL User Guide
--------------

Click on the following link for the `UAL User
Guide <../imports/isip_UAL_User_Guide.pdf>`__

