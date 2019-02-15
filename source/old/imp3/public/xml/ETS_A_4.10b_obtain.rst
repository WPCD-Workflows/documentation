.. _ETS_A_4.10a_obtain:

Obtaining the ETS
=================

*Contact person:\ *\ `Denis
Kalupin <mailto:denis.kalupin@euro-fusion.org?subject=ETS%20in%20KEPLER>`__\ *\ (Skype:
dkalupin)*

Installing the ETS
------------------

The default ETS release is the `tag
4.10b10.3 <https://www.eufus.eu/documentation/ITM/html/ETS_A_4.10a_obtain.html#ETS_A_4.10a_obtain_3>`__

*\*Before installation make sure that:*

-  you have your private data base for the version of the
   UAL
   required by the workflow
-  you have the version of
   KEPLER
   required by the workflow installed. Quick start on kepler required
   for the ETS can be found
   here
-  inside the window, where you will be downloading the ETS the source
   command:
   ::

          >source $ITMSCRIPTDIR/ITMv1 Kepler_Version Data_Base_Name UAL_Version
            

   is executed.

*To install your local copy of the ETS workflow please do:*

::

   >svn co https://gforge6.eufus.eu/svn/keplerworkflows/tags/ets_4.10b10.3/ETS
   >cd ETS
   >make import_ets

Press the play button on the workflow. *The workflow shall run!* If it
does not, please use the
`contact <mailto:denis.kalupin@euro-fusion.org?subject=ETS%20in%20KEPLER>`__
from above.

Starting the workflow:
If you have the workflow already installed, there are there are several
ways tio execute it:

-  For execution via kepler GUI:
   ::

      >kepler.sh workflow_path/workflow_name.xml
          

-  For execution in none GUI mode:
   ::

      >kepler.sh -runwf -nogui -redirectgui $ITMHOME/some_dir_name workflow_path/workflow_name.xml
          

-  For execution in batch mode:
   it is essential to keep the workflow inside your $ITMWORK area

   it is essential to switch to scripts/R2.2 module

   ::

      >module switch scripts/R2.2
      >submit_batch_kepler.sh run_dircetory 1 $ITMWORK/workflow_path/workflow_name.xml $ITMSCRIPTDIR/batch_submission/ParallelKepler.bsub
          

ETS revisions
-------------

+--------+--------+--------+---------------------+---------------------+
| *Revis | *UAL   | *KEPLE | *Short Sumary:*     | *Comments:*         |
| ion    | versio | R      |                     |                     |
| Name:* | n:*    | versio |                     |                     |
|        |        | n:*    |                     |                     |
+========+========+========+=====================+=====================+
| 4.10b0 | 4.10b8 | any,   | Contains:Fixed      | Test 4.10b release, |
| .1     | _R2.1. | up to  | boundary            | restricted module   |
|        | 0      | 4.10b3 | equlibrium; Simple  | choice, restricted  |
|        |        | .5     | transport models;   | physics             |
|        |        |        | full HCD package;   | capabilities, work  |
|        |        |        | Impurity; Pellets;  | around of coredelta |
|        |        |        | Sawtooth            |                     |
+--------+--------+--------+---------------------+---------------------+
| 4.10b8 | 4.10b8 | centra | Contains:Fixed      | Test 4.10b release, |
| .1     | _R2.1. | l      | boundary            | restricted module   |
|        | 0      | instal | equlibrium; Simple  | choice, restricted  |
|        |        | lation | transport models;   | physics             |
|        |        | `4.10b | full HCD package;   | capabilities, work  |
|        |        | 3_cent | Impurity; Pellets;  | around of           |
|        |        | ral <h | Sawtooth; Scenario  | coredelta, produces |
|        |        | ttp:// |                     | scenario output on  |
|        |        | portal |                     | request             |
|        |        | .efda- |                     |                     |
|        |        | itm.eu |                     |                     |
|        |        | /twiki |                     |                     |
|        |        | /bin/v |                     |                     |
|        |        | iew/Ma |                     |                     |
|        |        | in/Ins |                     |                     |
|        |        | tallAN |                     |                     |
|        |        | ewVers |                     |                     |
|        |        | ionOfK |                     |                     |
|        |        | epler> |                     |                     |
|        |        | `__    |                     |                     |
|        |        | is     |                     |                     |
|        |        | prefer |                     |                     |
|        |        | red;   |                     |                     |
|        |        | local  |                     |                     |
|        |        | instal |                     |                     |
|        |        | lation |                     |                     |
|        |        | `4.10b |                     |                     |
|        |        | 3.6 <h |                     |                     |
|        |        | ttp:// |                     |                     |
|        |        | portal |                     |                     |
|        |        | .efda- |                     |                     |
|        |        | itm.eu |                     |                     |
|        |        | /twiki |                     |                     |
|        |        | /bin/v |                     |                     |
|        |        | iew/Ma |                     |                     |
|        |        | in/Ins |                     |                     |
|        |        | tallAN |                     |                     |
|        |        | ewVers |                     |                     |
|        |        | ionOfK |                     |                     |
|        |        | epler> |                     |                     |
|        |        | `__    |                     |                     |
|        |        | or     |                     |                     |
|        |        | above  |                     |                     |
+--------+--------+--------+---------------------+---------------------+
| 4.10b1 | 4.10b1 | centra | MODIFICATIONS       | UNDER CONSTRUCTION: |
| 0.1    | 0      | l      | COMPATIBLE WITH     | release at the Code |
|        |        | instal | 4.10b10 DATA        | Camp in Prague      |
|        |        | lation | STRUCTURE           |                     |
|        |        | `4.10b |                     |                     |
|        |        | 3_cent |                     |                     |
|        |        | ral <h |                     |                     |
|        |        | ttp:// |                     |                     |
|        |        | portal |                     |                     |
|        |        | .efda- |                     |                     |
|        |        | itm.eu |                     |                     |
|        |        | /twiki |                     |                     |
|        |        | /bin/v |                     |                     |
|        |        | iew/Ma |                     |                     |
|        |        | in/Ins |                     |                     |
|        |        | tallAN |                     |                     |
|        |        | ewVers |                     |                     |
|        |        | ionOfK |                     |                     |
|        |        | epler> |                     |                     |
|        |        | `__    |                     |                     |
|        |        | is     |                     |                     |
|        |        | prefer |                     |                     |
|        |        | red;   |                     |                     |
|        |        | local  |                     |                     |
|        |        | instal |                     |                     |
|        |        | lation |                     |                     |
|        |        | `4.10b |                     |                     |
|        |        | 3.6 <h |                     |                     |
|        |        | ttp:// |                     |                     |
|        |        | portal |                     |                     |
|        |        | .efda- |                     |                     |
|        |        | itm.eu |                     |                     |
|        |        | /twiki |                     |                     |
|        |        | /bin/v |                     |                     |
|        |        | iew/Ma |                     |                     |
|        |        | in/Ins |                     |                     |
|        |        | tallAN |                     |                     |
|        |        | ewVers |                     |                     |
|        |        | ionOfK |                     |                     |
|        |        | epler> |                     |                     |
|        |        | `__    |                     |                     |
|        |        | or     |                     |                     |
|        |        | above  |                     |                     |
+--------+--------+--------+---------------------+---------------------+
| 4.10b1 | 4.10b1 | centra | Added synchrotron   | UNDER CONSTRUCTION: |
| 0.2    | 0_bran | l      | radiation, some of  | release at the Code |
|        | ches.  | instal | neoclassical        | Camp in Prague      |
|        | R2.1.r | lation | actors,reworked     |                     |
|        | 1380   | `4.10b | combiners           |                     |
|        |        | 3_cent |                     |                     |
|        |        | ral <h |                     |                     |
|        |        | ttp:// |                     |                     |
|        |        | portal |                     |                     |
|        |        | .efda- |                     |                     |
|        |        | itm.eu |                     |                     |
|        |        | /twiki |                     |                     |
|        |        | /bin/v |                     |                     |
|        |        | iew/Ma |                     |                     |
|        |        | in/Ins |                     |                     |
|        |        | tallAN |                     |                     |
|        |        | ewVers |                     |                     |
|        |        | ionOfK |                     |                     |
|        |        | epler> |                     |                     |
|        |        | `__    |                     |                     |
|        |        | is     |                     |                     |
|        |        | prefer |                     |                     |
|        |        | red;   |                     |                     |
|        |        | local  |                     |                     |
|        |        | instal |                     |                     |
|        |        | lation |                     |                     |
|        |        | `4.10b |                     |                     |
|        |        | 3.6 <h |                     |                     |
|        |        | ttp:// |                     |                     |
|        |        | portal |                     |                     |
|        |        | .efda- |                     |                     |
|        |        | itm.eu |                     |                     |
|        |        | /twiki |                     |                     |
|        |        | /bin/v |                     |                     |
|        |        | iew/Ma |                     |                     |
|        |        | in/Ins |                     |                     |
|        |        | tallAN |                     |                     |
|        |        | ewVers |                     |                     |
|        |        | ionOfK |                     |                     |
|        |        | epler> |                     |                     |
|        |        | `__    |                     |                     |
|        |        | or     |                     |                     |
|        |        | above  |                     |                     |
+--------+--------+--------+---------------------+---------------------+
| 4.10b1 | 4.10b1 | centra | Added synchrotron   | compared to         |
| 0.3    | 0_bran | l      | radiation, some of  | previous shall      |
|        | ches.  | instal | neoclassical        | contain compeeted   |
|        | R2.1.r | lation | actors,reworked     | transport, new      |
|        | 1380   | `keple | combiners           | controller for      |
|        |        | r_rc   |                     | pellet and sawteeth |
|        |        | (2.4/R |                     | module              |
|        |        | 3.8/ke |                     |                     |
|        |        | pler   |                     |                     |
|        |        | or     |                     |                     |
|        |        | more   |                     |                     |
|        |        | recent |                     |                     |
|        |        | ) <htt |                     |                     |
|        |        | p://po |                     |                     |
|        |        | rtal.e |                     |                     |
|        |        | fda-it |                     |                     |
|        |        | m.eu/t |                     |                     |
|        |        | wiki/b |                     |                     |
|        |        | in/vie |                     |                     |
|        |        | w/Main |                     |                     |
|        |        | /Insta |                     |                     |
|        |        | llANew |                     |                     |
|        |        | Versio |                     |                     |
|        |        | nOfKep |                     |                     |
|        |        | ler>`_ |                     |                     |
|        |        | _      |                     |                     |
|        |        | is     |                     |                     |
|        |        | prefer |                     |                     |
|        |        | red    |                     |                     |
+--------+--------+--------+---------------------+---------------------+
|        |        |        |                     |                     |
+--------+--------+--------+---------------------+---------------------+
