.. _isip_timeline:

Timeline
========

This ISIP timeline for 2010 was prepared by F. Imbeaux and G. Manduchi.
In 2009, we have for the first time assembled a complete version of the
platform, from reading experimental data, actor generation and
management, to robust workflows including time evolution. In 2010, ISIP
needs to expand the functionality of these tools and upgrade them in a
coordinated way with the needs of the IMPs. Milestone for 2010 (expected
for July) : full set of tools operational including visualisation tools,
link to the simulation catalogue and operability of Kepler actors on
GRID & HPC We propose the following timeline :

-  March:

   -  Deliver the second version of Kepler (in EU-IM numbering) : new
      features : improved « expression » actors, semantic type checking,
      Matlab actor
      ->DONE
   -  Debugging procedure in Kepler
      ->DONE
   -  Batch and MPI modes for EU-IM Kepler actors (
      FC2K
      )
      ->DONE
   -  Deliver
      ISE
      ->DONE

-  April:

   -  Deliver data structure 4.08a, with many additions from IMPs (new
      CPOs
      )
      ->DONE
   -  Collect requirements of IMPs on Visit
   -  Finalised tool for visualisation (Matplotlib)

-  May:

   -  Add Visit Kepler Actor (composite version) to the public Kepler
      distribution
   -  Finalised release of the EU-IM control toolbox (link between Scicos
      and Kepler)
   -  Evaluate strategy for parallel I/O for the
      UAL

-  June:

   -  Deliver requirements for simulation catalogue querying tool
   -  Implement the possibility of arrays of structures in the UAL and
      data structure
   -  Technical meeting with the Kepler team
   -  Deliver web service actor and grid/HPC actor generators : WS2K and
      HPC2K

-  July:

   -  Add automated generation of "remote" UAL to the UAL distribution
   -  New data structure version with Visit representation tags
   -  Deliver "newcomer EU-IM platform User Guide"
   -  Implement full link with database through the UAL in workflows :
      UALinit, UALcollector communicate with the simulation catalogue
      (technically : change CPO definition for Kepler, change in FC2K)
   -  Memory caching activated in Kepler workflows (running on a single
      node) (technically : changes on UAL, UALinit, UALcollector)

-  September:

   -  Improved code parameter edition forms in ISE/Kepler

-  October:

   -  EU-IM control toolbox : deliver link between Simulink and Kepler
   -  Memory caching in Kepler workflows (memory shared by multiple
      nodes on the
      Gateway
      )

-  November:

   -  Launch a full EU-IM workflow on GRID
   -  Deliver simulation catalogue querying tool
   -  Merge HPC2K, WS2K and FC2K into a unified tool
   -  Visit for visualisation of time dependence

