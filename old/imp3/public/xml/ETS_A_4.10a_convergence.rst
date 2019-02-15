.. _ETS_A_4.10a_convergence:

CONVERGENCE LOOP
================

ETS updates input from different physics actors in a sequence, which is
finished by solving the transport equations. Ther are possible
none-linear couplings between different parts of the system. These
nonelinearities are trited by the ETS using iterations. The decision to
step in time is made by the ETS based on the criteria that the maximum
relative deviation of main plasma profiles is lower than some predefined
tolerance. There is a number of settings and sitches in the ETS that are
used by the iterative scheme. To edit them do:

-  right click on the box ‘CONVERGENCE LOOP’
-  select ‘Configure actor’ to edit settings
-  choose your settings
-  Commit

Switches in the field *FREQUENCY OF CALLING THE PHYSICS ACTORS* define
how many times the the actors of a certain cathegory (equilibrium,
transport, etc.) should be called in a single time step. By selecting
*YES* all actors of this cathegory will be called every iteration By
selecting *NO* all actors of this cathegory will be called only ones in
a time step

Switches and parameters in the field *CONTROL PARAMETERS* define how
iterations are done

-  Tolerance
   - defines the maximum relative error of profiles change compared to
   previous iteration. If it is achieved the time steping is done.

For highly none-linear case the required precision can be achieved
faster by the iterative scheme if only fraction of the new solution is
mixed to the previous state. The following scheme is adopted by the ets
to reduce none-linearities in profiles, transport coefficients and
sources:

::

   Y = (Amix * Y+) + ((1-Amix)*Y-)

where Amix is the mixing fraction You can activate the mixing of
profiles, transport coefficient and sources by selecting the
corresponding *Mixing_fraction_...* to be between [0:1] You also can
activate the authomatic ajustment of this fraction by selecting:
*Ajust_Mixing_for_...* to *YES*
