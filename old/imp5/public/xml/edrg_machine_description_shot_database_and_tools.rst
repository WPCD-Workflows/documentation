.. _edrg_machine_description_shot_database_and_tools:

The machine description shot database
=====================================

This section describes a solution for how to automate the reading of
machine description CPOs in Kepler. At some point ISIP will come with an
elegant solution, but the EU-IM needs something right now (written
20130315!). Here one proposal is presented that has been implemented in
Kepler.

The basis of the present solution is a new "Machine Description Shot
Database" that is stored in the svn-repository

::

   https://gforge6.eufus.eu/svn/itmshared/branches/machineDescriptionDatabase/

The actual data is stored in an xml-file:

::

   xml/machineDescriptionDatabase.xml

formatted accoring to the schema:

::

   xml/machineDescriptionDatabase.xsd

To types of tools have so far been developed to extract data from the
database; an xslt-translation sheeth

::

   xsl/machineDescriptionDatabase.xsl

and a python code based on xml-dom

::

   xsl/*.py

The python code is built to translate from a tokamak-name and a
tokamak-shot number to a UAL database element, described by the
shot/run/user. This python code can then be used in the PythonActor in
Kepler find the correct machine description files.

.. _edrg_machine_description_shot_database_composite_actor:

Composite actor for reading MD-shots
------------------------------------

A composite actor has been developed that uses the database and a
tokamak-shot and a tokamak-name, to read machine descriptions. The actor
can be found in the machineDescriptionDatabase-repository

::

   https://gforge6.eufus.eu/svn/itmshared/branches/machineDescriptionDatabase/

in the workflow xml-file

::

   WORKFLOW/readFromMachineDescriptionDataBase.xml

Walk through the "Composite actor for reading MD-shots"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The workflow is an "as simple as possible" example of how to use the
composite actor. Here the input parameters are defined and the composite
actor is called. The returned data is then printed, see figure below.

Opening up the composite actor we find the PythonActor that generates
the UAL-database info user/shot/run. The data is then forwarded to
another composite actor Select UAL run, which also takes the input
BACKUP_UALuser, BACKUP_UALshot and BACKUP_UALrun. The actor checks that
the output from the Python is a valid run-number. If not, then return
the BACKUP_UAL... data. Once the user/shot/run is decided these values
are passed to the UALinit that reads the machine description CPOs from
the UAL. See figures below.

Figure below shows the structure of the
Select UAL run
composite actor.
2019-01-31 11:00:19Z g2dpc $
