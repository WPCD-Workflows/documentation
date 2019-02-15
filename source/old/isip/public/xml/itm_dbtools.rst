.. _itm_dbtools:

ITM Database tools
==================

ISIP supported tools
--------------------

-  cpocopy
   - copy CPOs from one database to another
-  cpodiff
   - compare CPOs

Tools maintained by IMPs
------------------------

-  cpotimes
-  printcpo

Available tools as of March 2012
--------------------------------

plotallcpos (O. Sauter)

-  Source is in ~sauter/public/matlab/. Run with
   ::

      ~sauter/public/matlab/plotallcpo

-  Features:

   -  GUI
   -  display available CPOs for the shot/run
   -  display all scalars for a CPO
   -  select one or more CPOs for plotting
   -  create 1d/2d plots for arbitrary combinations of CPO fields

list_shots
----------

List shots/runs in a database.

Usage:

::

   list_shots [-u username -t tokamakname -v dataversion -b backend] 

Sample usage:

::

   user@enea143 ~>list_shots
   17151 0,1,2,3 
   25528 0

Existing tools with this functionality
Edmondo Giovannozzi:

-  ~egiovan/etc/listshot
   First version of a listshot script: takes data version and tokamak
   name as parameters. Sample uses:
   ::

      listshot test

   Lists all
-  ~egiovan/etc/listshotv2
   Second version with more abstraction.

list_times
----------

List time slices stored for a given shot/run

Usage:

::

   list_times [-u username -t tokamakname -v dataversion -b backend] shot,run 

Sample usage:

::

   user@enea143 ~>list_times 17151,3
   0.0 0.1 0.2
   user@enea143 ~>list_times 99999,0
   user@enea143 ~>

