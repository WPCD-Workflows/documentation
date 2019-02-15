.. _isip_keplerworkflows:

KeplerWorkflows
===============

The keplerworflows project under GForge is used for exchanging Kepler
workflows among EU-IM users. Under this project, EU-IM developers should
store the XML file describing the Kepler workflow. The workflow should
not be dependent on any other file. To be reproducible, public EU-IM
workflows must use only EU-IM actors from the public
`kepleractors <#isip_kepleractors>`__ repository with a unique naming
convention.

Input datasets used by the workflow must be copied from the private to
the public EU-IM database (email to `Fréderic
Imbeaux <mailto:Frederic.Imbeaux@cea.fr>`__ for the moment).

Structure of the workflows repository
-------------------------------------

The keplerworkflows repository is under SVN under the Gforge project
KeplerWorkflows. It is recommended to use the tags directory for release
versions and trunk for development versions: only public versions of
trunk/datastructure_version/ should be tagged as
tags/datastructure_version/.

To check out the repository please do

::

   svn checkout https://gforge6.eufus.eu/svn/keplerworkflows target_dir

The workflow is organised in the following way:

::

       keplerworkflows/trunk/datastructure_version/IMP/physical_topic/workflowname
       

Currently the keplerworkflows repository has the following
subdirectories for the `UAL release
versions <#isip_data_structure_releases>`__:

::

   - 4.07b
   - 4.07c
   - 4.08a
   - 4.08b
   - 4.09a
       

Each UAL release version hosts the following subdirectories for the EU-IM
projects:

::

   - amns
   - edrg
   - isip
   - imp12
   - imp3
   - imp4
   - imp5
   - ism
       

Below these the following physics topics are currently defined:

::

       imp12:
        - fixed_boundary_equilibrium
        - free_boundary_equilibrium
        - linear_MHD
       

Procedure to put a workflow in the workflows repository
-------------------------------------------------------

The script
put_workflow
allows to commit a workflow (in fact, the xml file created by Kepler
when the workflow is saved) in the svn repository
https://gforge6.eufus.eu/svn/keplerworkflows.
Pre-requisites
~~~~~~~~~~~~~~

-  Have a copy of Kepler installed in your environment
-  Run the script
   EU-IMv1
   to specify the working kepler directory (private) and set the
   environment variables (for the UAL)
-  Go into a directory in which you have write permission

How to commit a workflow in the repository
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Copy into the current directory or locate the xml file describing the
workflow. This xml file is created by Kepler when you save a designed
workflow. The file does not have to be in your own directory. Only read
permission is needed.

Usage :

::

   put_workflow [options] –d svnpath [path/]workflowname
               

svnpath is mandatory after -d to point out the target location of the
workflow in the svn repository. path is only necessary if the xml file
of the workflow is not located in the current directory.

Example :

::

   put_workflow –d trunk/4.08b/isip/examples/loopexample ./loopexample/loopexample.xml
               

svnpath is isip/examples/loopexample path is ./loopexample workflowname
is loopexample.xml

The script put_workflow copies the workflow xml file into the folder
svnpath under the KeplerWorklows SVN repository.

NB :The subdirectory of trunk or tags corresponding to the data
structure version must match the current $DATAVERSION environment
variable

Additional options
~~~~~~~~~~~~~~~~~~

-  -h : display usage information
-  -c : create the target directory in the svn repository
   keplerworkflows
   if it does not exist
-  -m : message for svn import

.. _import_svn_actors:

Procedure to get a workflow from the workflows repository
---------------------------------------------------------

The script
import_svn_workflow
allows you to copy a workflow from the svn repository
https://gforge6.eufus.eu/svn/keplerworkflows in your workspace.
Pre-requisites
~~~~~~~~~~~~~~

-  Have a copy of Kepler installed in your environment
-  Run the script
   EU-IMv1
   to specify the working kepler directory (private) and set the
   environment variables (for the UAL)
-  Go into a directory in which you have write permission

How to import workflow from svn repository
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  You do not know the location of the workflow in the repository
   Usage:

   ::

      import_svn_workflow -R workflowname

   Example:

   ::

      import_svn_workflow –R loopexample.xml

   The script displays the location(s) of the workflow in the svn
   repository (in trunk or tags subdirectories) and the user can choose
   the item he wants to import.

-  You know the location of the workflow in the repository
   Usage:

   ::

      import_svn_workflow -d path_to_the_workflow_in_the_svn_repository workflowname

   Example:

   ::

      import_svn_workflow -d trunk/4.08b/isip/examples/loopexample  loopexample.xml

   path_to_the_workflow_in_the_svn_repository is
   trunk/4.08b/isip/examples/loopexample workflowname is loopexample.xml

-  Import the actors used by the workflow
   If the option -a is added to the previous command lines, the script
   import_svn_workflow also imports the actors used by the workflow, if
   they exist in the KeplerActors SVN repository.newline/> For each
   actor, the script import_svn_workflow launch the command

   ::

      import_actor -R actor_name

   and search in the Kepleractors SVN repository if the actor exists,
   and if exists, import it in the private copy of Kepler.

   For more details about the script import_actor, see the section `How
   to import an actor from svn repository <#import_svn_actors>`__.

NB :The subdirectory of trunk or tags corresponding to the data
structure version must match the current $DATAVERSION environment
variable

Additional options
~~~~~~~~~~~~~~~~~~

-  -h : display usage information
-  -a : import the actors used by the workflow from the svn repository
-  -f : ignored if -a not present; force import of an already present
   actor
-  -p : ignored if -a not present; partial import: copy files but do not
   compile Kepler"
-  -s : ignored if -a not present; skip import if the actor is already
   present

