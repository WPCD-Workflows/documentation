.. _kepler:

======
Kepler
======


Introduction to Kepler - basics
===============================

`Kepler <https://kepler-project.org/>`__ is a workflow engine and design
platform for analyzing and modeling scientific data. Kepler provides a
graphical interface and a library of pre-defined components to enable users
to construct scientific workflows which can undertake a wide range of
functionality. It is primarily designed to access, analyse, and visualise
scientific data but can be used to construct whole programs or run
pre-existing simulation codes.

Kepler builds upon the mature Ptolemy II framework, developed at the
University of California, Berkeley. Kepler itself is developed and
maintained by the cross-project Kepler collaboration.

The main components in a Kepler workflow are actors, which are used in a
design (inherited from Ptolemy II) that separates workflow components
("actors") from workflow orchestration ("directors"), making components
more easily reusable. Workflows can work at very levels of granularity,
from low-level workflows (that explicitly move data around or start and
monitor remote jobs, for example) to high-level workflows that interlink
complex steps/actors. Actors can be reused to construct more complex
actors enabling complex functionality to be encapsulated in easy to use
packages. A wide range of actors are available for use and reuse.

Installing Kepler with Serpens add-on
-------------------------------------

You can download Kepler from the following page https://kepler-project.org/users/downloads

In order to install Kepler and Serpens related workflows you have to do
following:

.. code-block:: console
                
        cd ~
        wget http://scilla.man.poznan.pl/euforia/install/serpens-demo-workflows.zip -O serpens-demo-workflows.zip
        unzip serpens-demo-workflows.zip

Now you can start Kepler application and proceed to tutorial examples that can be find at the following page http://scilla.man.poznan.pl/confluence/display/euforia/01.+Introduction+to+Kepler+-+basics

Kepler IMAS actors
==================

.. Picture

+------------------+--------------------------------------------+
| **Imas actor**   |      **Deacription**                       |
+==================+============================================+
|UALSliceCollector | | Store one slice from input IDS into      |
|                  |   different run. This way, it is possible  |
|                  | | to collect intermediate results during   |
|                  |   workflow execution.                      |
+------------------+--------------------------------------------+
| UALPython        | | Allows to run external Python process and|
|                  |   pass input/output data between workflow  |
|                  | | and process itself. This actor is, most  |
|                  |   commonly, used for data visualization.   |
|                  | | User can pass Python script directly to  |
|                  |   the actor.                               |
+------------------+--------------------------------------------+
| UALMuxParam      | | Provides similar behavior to             |
|                  |   ualmux/UALMux, however, this actors has  |
|                  | | two additional ports:                    |
|                  | |  - fieldDescription - contains name of   |
|                  |    the filed that will be modified         |
|                  | |  - fieldValue - contains new value of    |
|                  |    the field                               | 
|                  | | Main difference between ualmux/          |      
|                  |   ualmuxparam                              |           
|                  |   actors lays in it's ability to be used   |               
|                  |   in                                       |  
|                  | | a loop that modify different field       |
|                  |   inside IDS.                              |
|                  | | You can simply provide different field   | 
|                  |   name                                     |
|                  |   for different loop's step.               |
+------------------+--------------------------------------------+
| UALMux           | | Provides a method for putting data inside|
|                  |   IDS inputs                               |
|                  | |  - inputIds/inputCpo - cpo we are going  |
|                  |    to modify                               |  
|                  | |  - inTime - time index at which data are |
|                  |    supposed to be updated                  |
|                  | |  - name of the field is specified as port|
|                  |    name                                    |
|                  | |  - new value of the field is passed as   | 
|                  |    value sent to the port                  | 
|                  | | outputs:                                 |
|                  | |  - outputIds/outputCpo - modified IDS    |
|                  | |  - outTime - actual time index (depend   |
|                  |    on approximation mode)                  |
+------------------+--------------------------------------------+
| UALInit          | | Initializes input pulse file, creates    |
|                  |   run work and provides ID S description   |
|                  | | for other actors                         |
|                  |   inputs:                                  | 
|                  | |  - user - name of the user for input     |
|                  |    data file (e.g. g2michal)               |
|                  | |  - machine - name of the machine for     |
|                  |    input data file (e.g. test/jet)         |
|                  | |  - shot - shot number                    |
|                  | |  - run - run number                      |
|                  | |  - runwork - temporary run number        |
|                  |    (place where output will be stored)     | 
|                  | | outputs:                                 |
|                  | |  - error - description of error in case  |
|                  |    there are problems while accessing      |
|                  |    input data                              |
|                  | |  - all IDSess requested by user (each    | 
|                  |    IDS is specified as output port         |
|                  |    name)	      	                        |
+------------------+--------------------------------------------+
| UALDemux         | | Allows to read data from given IDS -     |
|                  |   name of the field is specified as        |
|                  | | output port.                             |
+------------------+--------------------------------------------+
| UALCollector	   | | Stores input IDSess inside new run.      |
|                  |   This way, it is possible to copy data    |
|                  | | into different shot/run rather than      |
|                  |   inside run work.                         |
+------------------+--------------------------------------------+
| UALClose         | | Closes run work based on description     |
|                  |   passed via input IDS.                    |  
+------------------+--------------------------------------------+               
| SetBreakpoint    | | This actor allows to enforce "debug"     |
|                  |   mode for IMAS based actors. It sets      |
|                  | | global parameter "ITM_DEBUG" to either   |
|                  |   true or false. In case true is a value   |
|                  | | of "ITM_DEBUG" all FC2K generated actors |
|                  |   will start in debug mode.                |
+------------------+--------------------------------------------+
| RecordSet        | | Sets values inside record (take a look   |
|                  |   for short tutorial: RecordGet/RecordSet) |          
+------------------+--------------------------------------------+
| RecordGet        | | Gets values from the record (take a      |
|                  |   look here for short tutorial:            |
|                  | | RecordGet/RecordSet)                     |
+------------------+--------------------------------------------+
| IDSOccurence     | | Provides a method to create duplicate    |
|                  |   of IDS with new occurrence number.       | 
|                  | | This way, it is possible to store data   |
|                  |   before they get modified by user code.   |	
+------------------+--------------------------------------------+
| IDSFlush         | | Flushes data from workflow. Data from    |
|                  |   memory cache are stored inside database  |
+------------------+--------------------------------------------+
| IDSDiscard       | | Discards data inside workflow. Data will |
|                  |   be re-read into memory cache.            |
+------------------+--------------------------------------------+    
| IDSContentStd    | | Displays IDS data on console (better     |
|                  |   for huge data sets)                      |
+------------------+--------------------------------------------+
| IDSContent	   | | Displays IDS data                        |
+------------------+--------------------------------------------+

IMAS Kepler based configuration
===============================

Running Kepler using IMAS environment
-------------------------------------

Setting up environment
~~~~~~~~~~~~~~~~~~~~~~

Please do not forget to set JAVA memory settings:

.. code-block:: console
                
        export _JAVA_OPTIONS="-Xss20m -Xms8g -Xmx8g"

Backing up old files
~~~~~~~~~~~~~~~~~~~~
Before first configuration of Kepler, make sure to backup your old data files

.. code-block:: console
                
        cd ~
        mv .kepler .kepler~
        mv KeplerData KeplerData~
        mv .ptolemyII .ptolemyII~

        
Creating place to store your personal installations of Kepler
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

IMAS based installations are stored inside **$HOME/kepler** directory.

Before proceeding further, make sure to create **kepler** directory

.. code-block:: console
                
        # create directory inside $HOME
        cd ~
        mkdir kepler
        
Running Kepler (default release)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In order to start Kepler you have use helper scripts that will install and configure your personal copy of Kepler
   - load IMAS module

     .. code-block:: fortran
                     
             module load imas
             module load kepler
             # NOTE! It might be that you don't have Kepler copy inside your $HOME
             # in that case you need to install it kepler_install_light

   - Start Kepler
      
     .. code-block:: fortran
                     
             # run alias that will execute Kepler
             kepler
