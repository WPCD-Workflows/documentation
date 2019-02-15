.. _ETS_A_4.10b_workflow_parameters:

WORKFLOW PARAMETERS
===================

General Parameters
------------------

-  USER
   - your userid
-  MACHINE
   - machine name (database name) for which comutations are done
-  SHOT_IN
   - input shot number
-  RUN_IN
   - input run number
-  SHOT_OUT
   - output shot number
-  RUN_OUT
   - output run number
-  NUMERICAL_SOLVER
   - choice of the numerics solving transport equations (RECOMENDED
   SELECTION: 3 or 4)

Space resolution
----------------

-  NRHO
   - number of radial points for transport equations
-  NPSI
   - number of points for equilibrium 1-D arrays
-  NEQ_DIM1
   - number of points for equilibrium 2-D arrays, first index
-  NEQ_DIM2
   - number of points for equilibrium 2-D arrays, second index
-  NEQ_MAX_NPOINTS
   - maximum number of points for equilibrium boundary

Time resolution
---------------

*Start and End time:*

-  TBEGIN
   - Computations start time
-  TEND
   - Computattions end time

*Time step:*

-  right click on the box
   BEFORE THE TIME EVOLUTION
-  select
   Configure actor
-  TAU
   :specify value of the time step in [s]
-  TAU_OUT
   : specify value of the output time interval in [s]
-  Commit
