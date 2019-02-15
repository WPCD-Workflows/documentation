.. toctree::
   :maxdepth: 2

   ../../../imp5/public/xml/imp5hcd_init_parameter_input
   ../../../imp5/public/xml/imp5hcd_composite_actor
   ../../../imp5/public/xml/imp5hcd_in_ets

.. _imp5_workflows:

Workflows
=========

IMP5 have developed a number of Kepler workflows.

Official workflows are stored under the GFORGE project
`KeplerWorkflows <https://gforge6.eufus.eu/project/keplerworkflows/>`__.
To export a local copy of the IMP5 workflows, version 4.08a, 4.08b or
4.09a, from the repository

.. code-block:: console

   svn co https://gforge6.eufus.eu/svn/keplerworkflows/trunk/4.08a/imp5

.. code-block:: console

   svn co https://gforge6.eufus.eu/svn/keplerworkflows/trunk/4.08b/imp5

.. code-block:: console

   svn co https://gforge6.eufus.eu/svn/keplerworkflows/trunk/4.09a/imp5

More internal workflows useful for the IMP5 can be stored on the Gateway
in the directory

.. code-block:: console

   /afs.eufus.eu/imp5/user/wwwimp5/public/EU-IM_test/workflows/

.. _imp5_workflow__imp5hcd:

The IMP5HCD-SA workflow
-----------------------

The IMP5HCD-SA (IMP5 Heating and Current Drive-Stand Alone) workflow is
used for developing and testing the `IMP5HCD Composite
Actor <#imp5_compositeactor_imp5hcd>`__. The workflow runs the IMP5HCD
Composite Actor for Heating and Current drive in a time loop using
Equlibrium and Coreprof CPOs from the UAL and the NBI and Antenna CPOs
provided by specialised CPO generators. Contact persons: `Thomas
Johnson <#contact_thomas_johnson>`__ (skype: tjohn74) and `Lorenzo
Figini <#contact_lorenzo_figini>`__

.. _imp5_workflow__imp5hcd_how_to_configure:

How to configure IMP5HCD
~~~~~~~~~~~~~~~~~~~~~~~~

To select shot and run numbers: double click on the Kepler-parameters
shot_in and run_in and type your shot and run numbers values.

To select the time interval for the simulations: double click on the
Kepler-parameters dt_in for the time step in seconds, tbegin_in for the
start time, and tend_in for the end time of the simulation.

In addition you can select the run numbers for the output generated in
each actor, runwork_in, and the run number to which the
UALsliceCollector stores the data, run_out

All other parameters are set through the composite actors. All paramters
that are specific to a single code are stored in the code-parameters

-  Code parameters typically describeds parameters defining the grid to
   be used, selects optional assumptions to be made, the amount of
   debugging information to print to screen, etc.
-  In addition there is a class of actors call CPO-generators that
   generates a CPO without any physics model, e.g. the actor
   nbisetup
   writes an nbi-CPO with a full description of the NBI-injector
   hardware and geometry. Many of these actors take their information
   from a list of code parameters.
-  To edit the code parameters you open the composite-actors one by one
   until you reach the actor you wish to change; you double click on the
   actor; select
   Code Parameters
   ).

Another type of parameters are supplied though local parameters inside
the composite actors, see the figure below. In IMP5HCD such input
parameters are store in two places; in the composite actors IMP5HCD and
Initial_IMP5_state (found inside H&CD INPUT). This input allow you to
select the heating schemes, physics codes and other workflow related
options, e.g. the output occurances (which should not be touched at the
moment as there are only a few occurances available and the current
setting is almost the only possible one when running inside ETS-A).

.. _imp5_workflow__imp5hcd_access_info:

Accessing the IMP5HCD-SA workflow
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The IMP5HCD-SA workflow can be found in the GFORGE repository
`KeplerWorkflows <https://gforge6.eufus.eu/project/keplerworkflows/>`__.
Here you find both the latest 4.10a version as well as the old 4.08a,
4.08b and 4.09a versions of the workflow, see trunk/4.08a/imp5,
trunk/4.08b/imp5, trunk/4.09a/imp5 and trunk/4.10a/imp5. For checking
out a local copy of the 4.10a version of the workflow:

.. code-block:: console

   svn co https://gforge6.eufus.eu/svn/keplerworkflows/trunk/4.10a/imp5/imp5hcd/  imp5hcd

Note that the actors used in the workflows has to be imported
seperately. Importing these actors is automaized using make:

.. code-block:: console

   make import_actors

To open the workflow:

.. code-block:: console

   kepler.sh imp5hcd_sa.xml

OBSOLETE: Note from the IMP5HCD training, Garching 20130307 can be found
`here <../imports/training_imp5hcd_20130307.pdf>`__.

.. _imp5_workflow__mars:

Workflow for MARS (MHD module of HYMAGYC)
-----------------------------------------

This workflow reads equilibrium and coreprof CPOs and solves the linear
MHD stability equations; some ouputs (mhd CPOs is still in a preliminary
version) are stored in mhd CPOs and then plotted using a python actor
(see figure below, which refers to a n=1 internal kink in a JET-like
equilibrium).

+-------------+-------------+--------------------+--------------------+
| Type        | Actors      | Input CPOs         | Output CPOs        |
+=============+=============+====================+====================+
| linear MHD  | ualinit     | equilibrium        | mhd                |
| module for  | marsgw408b  | coreprof           |                    |
| HYMAGYC     | ualpyactor  |                    |                    |
|             | ualcollecto |                    |                    |
|             | r           |                    |                    |
+-------------+-------------+--------------------+--------------------+

.. _imp5_workflow__benchmark:

Workflow for code-code Benchmarking
-----------------------------------

NOTE: this workflow was developed for 4.08b.

The IMP5 has developed a workflow for benchmarking wave codes generating
the waves as output. The default version runs the two EC wave code GRAY
and TORBEAM as shown below. The wprlflow runs the two codes in parallel
and then merges the waves output from the two codes into a single waves
CPO. Thus, the data from the two codes appear as
waves(1)%coherentwave(1) and waves(1)%coherentwave(2). Contact persons:
`Thomas Johnson <#contact_thomas_johnson>`__ (skype: tjohn74)

The waves_benchmark workflow can be found in the GFORGE repository
`KeplerWorkflows <https://gforge6.eufus.eu/project/keplerworkflows/>`__.
For checking out a local copy of the 4.08b version of the workflow:

.. code-block:: console

   svn co https://gforge6.eufus.eu/svn/keplerworkflows/trunk/4.08b/imp5/benchmark/

For more information, see the file README_waves_benchmark (stored in the
repository).

