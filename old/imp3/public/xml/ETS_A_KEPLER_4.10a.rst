.. toctree::
   :maxdepth: 2

   ../../../imp3/public/xml/ETS_A_4.10a_run_config

.. _ETS_A_KEPLER_4.10a:

ETS_A 4.10a
===========

*ETS_A workflow in KEPLER*:

-  uses as actors and composite actors from other IMPs, thus for the
   most recent versions of them please check with relevant project
-  complex, but clearly structured workflow, which offers user friendly
   interface for configuring the simulation
-  allows for easy modifications (
   connecting new modules, or reconnecting the parts of the workflow
   ) through the easy graphical interface
-  provides users with all updates through the version control system
-  still actively developing tool

The list and status of available physics models for the ETS_A can be
found
`here <https://www.eufus.eu/documentation/EU-IM/html/ets_status.html>`__.

*Contact person:\ *\ `Denis
Kalupin <mailto:denis.kalupin@euro-fusion.org?subject=ETS%20in%20KEPLER>`__\ *\ (Skype:
dkalupin)*

Obtaining the ETS
-----------------

Copy the ETS workflow to your space:

.. code-block:: console

   >svn co https://gforge6.eufus.eu/svn/keplerworkflows/trunk/4.10a/imp3/ets $EU-IMSCRATCH/ETS_WORKFLOWS

Compile ETS actors:

.. code-block:: console

   >cd $EU-IMSCRATCH/ETS_WORKFLOWS
   >make import_ets

Updating the ETS
----------------

If you have already a copy of the ETS you do not need to check it out
again!!!

If you like to update everything (WORKFLOW + ACTORS + VISUALIZATION +
INPUT DATA)

.. code-block:: console

   >cd $EU-IMSCRATCH/ETS_WORKFLOWS
   >svn update
   >make import_ets

To update ETS actors go inside your ETS_ACTORS:

.. code-block:: console

   >cd $EU-IMSCRATCH/ETS_WORKFLOWS
   >svn update
   >make import_actors

To update the workflow go inside your ETS_WORKFLOWS:

.. code-block:: console

   >cd $EU-IMSCRATCH/ETS_WORKFLOWS
   >svn update

To update visualization scripts go inside your $KEPLER/kplots:

.. code-block:: console

   >svn update

This is ALL you need to do for updates!

Executing the ETS
-----------------

Open ETS workflow in Kepler:

.. code-block:: console

   >kepler.sh $EU-IMSCRATCH/ETS_WORKFLOWS/ETS_WORKFLOW.xml

- on the top of the workflow, change the parameter "user" to your
user_ID.

You can run the workflow!!!
