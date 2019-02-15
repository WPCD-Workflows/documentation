.. _edrg_md_and_dm:

Machine Descriptions and Data Mappings
======================================

At the forefront of the EDRG activities, the consolidation of the
machine descriptions and data mappings for the experimental data on the
participating devices is of utmost importance.

Machine Descriptions
--------------------

Background
~~~~~~~~~~

The machine description (MD) of a device basically builds on the set of
engineering and diagnostic settings characterising any device. This
includes, for instance, the vessel/limiter description (for the moment
in R-Z domain only), the PF coils and circuiting and lines of sight of
diagnostics (an example for ITER is seen below evidencing the
vessel+limiter+pfsystems and magdiad CPOs).
In practice, all MD information is encapsulated in a XML file that
emanates from the MD tagged datastructure schemas. A MD instance of a
given device is then stored into the EU-IM db as shot 0 for that device
database.
At data structure version 4.09a, the list of CPOs with machine
description tags is indicated in the Figure below
MD content on dataversions
~~~~~~~~~~~~~~~~~~~~~~~~~~

+-----------------+-----------------+-----------------+-----------------+
| 4.07b           | 4.08a           | 4.08b           | 4.09a           |
+=================+=================+=================+=================+
| antennas,       | antennas,       | antennas,       | antennas,       |
| interfdiag,     | ecediag,        | ecediag,        | ecediag,        |
| ironmodel,      | interfdiag,     | interfdiag,     | fusiondiag,     |
| limiter,        | ironmodel,      | ironmodel,      | interfdiag,     |
| magdiag,        | limiter,        | limiter,        | ironmodel,      |
| msediag,        | magdiag,        | magdiag,        | langmuirdiag,   |
| pfsystems,      | msediag,        | msediag, nbi,   | limiter,        |
| polardiag,      | pfsystems,      | pfsystems,      | magdiag,        |
| toroidfield,    | polardiag,      | polardiag,      | msediag, nbi,   |
| vessel          | reference,      | toroidfield,    | pfsystems,      |
|                 | toroidfield,    | tsdiag, vessel  | polardiag,      |
|                 | tsdiag, vessel  |                 | toroidfield,    |
|                 |                 |                 | tsdiag, vessel  |
+-----------------+-----------------+-----------------+-----------------+

Tutorial and specific information on some CPOs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  A good introduction to the machine description concept is found in
   this
   User Guide
   .
-  Up to data version 4.07c, the geometry of lines of sight used in some
   diagnostics (interfdiag and polardiag) was characterized by two
   angles (poloidal and toroidal). A caveat was found, leading to the
   adoption of a new set of angles as described in this
   report
   . The pivot points became 3 (previously 2) to encompass slightly
   different entry/exit positions for the reflected beams.
-  From data version 4.09a, the limiter, nbi and antennas CPOs use
   arrays of structures data types. This enabled a more refined
   description of plasma facing components and the divertor region and
   both open and closed 'tile' elements. Each NBI and antenna unit is
   also a dedicated structure.
-  Detailed definitions are available for
   Flux loop position
   ,
   PFconnections
   ,
   Langmuir probes
   and
   Fusion CPO
   .

Data Mappings
-------------

Background
~~~~~~~~~~

In regard to the experimental data from a particular shot/device set,
the EU-IM had to develop its own tool to retrieve the data from the
experimental databases and populate the corresponding EU-IM db entry since
the latter rarely adopt the same datastructure ontology and different
methods/implementation for the databases might exist on different
devices. A XML file contains all the mapping essentials, e.g. download
method, local signal names, gains and offsets, time base and eventual
interpolation option to ensure that only one time base is set for each
CPO
that is built from multiple local signals. A java code (exp2EU-IM
developed under ISIP), with the MD and DM files as inputs, is then run
to connect to the local device database, retrieve the required
experimental data and populate the EU-IM db instance for that shot/device
and dataversion.
At data structure version 4.09a, the list of CPOs with data mappings
tags is indicated in the Figure below (experimental signals are colored
in orange; mappings to other CPOs, e.g. equilibrium or coreprof have
been set in order to assist the retrieval of simulated data from other
databases, e.g. JSP, JSPC)
DM content on dataversions
~~~~~~~~~~~~~~~~~~~~~~~~~~

+-----------------+-----------------+-----------------+-----------------+
| 4.07b           | 4.08a           | 4.08b           | 4.09a           |
+=================+=================+=================+=================+
| antennas,       | antennas,       | antennas,       | antennas,       |
| interfdiag,     | cxdiag,         | cxdiag,         | cxdiag,         |
| ironmodel,      | ecediag,        | ecediag,        | ecediag,        |
| magdiag,        | interfdiag,     | interfdiag,     | fusiondiag,     |
| msediag,        | ironmodel,      | ironmodel,      | interfdiag,     |
| pfsystems,      | magdiag,        | magdiag,        | ironmodel,      |
| polardiag,      | msediag, nbi,   | msediag, nbi,   | langmuirdiag,   |
| toroidfield     | pfsystems,      | pfsystems,      | magdiag,        |
|                 | polardiag,      | polardiag,      | msediag, nbi,   |
|                 | toroidfield,    | toroidfield,    | pfsystems,      |
|                 | tsdiag,         | tsdiag,         | polardiag,      |
|                 | coredelta,      | coredelta,      | toroidfield,    |
|                 | coreprof,       | coreprof,       | tsdiag,         |
|                 | coretransp,     | coretransp,     | coredelta,      |
|                 | distribution,   | distribution,   | coreprof,       |
|                 | distsource,     | distsource,     | coretransp,     |
|                 | equilibrium,    | equilibrium,    | distribution,   |
|                 | neoclassical,   | neoclassical,   | distsource,     |
|                 | sawteeth,       | sawteeth,       | equilibrium,    |
|                 | scenario, waves | scenario,       | neoclassical,   |
|                 |                 | turbulence,     | sawteeth,       |
|                 |                 | waves           | scenario,       |
|                 |                 |                 | turbulence,     |
|                 |                 |                 | waves           |
+-----------------+-----------------+-----------------+-----------------+

Tutorial on data mappings
~~~~~~~~~~~~~~~~~~~~~~~~~

-  A good starting point to understand the basics of the data mapping
   concept and how to fill it with the device dependent referecing of
   the experimental data is found in this
   User Guide
   .
-  A description on the data mapping concept and processing by exp2EU-IM
   (with usage tips) is found in this
   presentation
   .

For more updated information on the MD and DM activity please check the
`md_and_dm project <https://gforge6.eufus.eu/gf/project/md_and_dm/>`__ in
Gforge

