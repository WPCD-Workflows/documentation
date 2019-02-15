.. _imp3_edgecpo_changes012011:

Change proposal for the edge cpo, beginning of 2011
===================================================

The changes outlined here are motivated by our first experiences made
when using the edge CPO to a) store grids and data (with the CARRE grid
generator and the SOLPS/B2 edge codes) and b) developing the grid
service library (general routines to handle grids and data stored on
them as well as general plotting routines).

The XSD scheme files containing the drafts of the data structure
definitions can be found in the IMP3 branch of the data structure
project. Direct access to the files via the SVN web interface is
possible here:
https://gforge6.eufus.eu/svn/datastructure/branches/imp3/. Visualization
of the data structures described by files are included below.

Grid data structure
-------------------

The changes to the grid data structure aim at 1) making it cleaner and
easier to use, 2) completing and fixing present features (mainly
geometry representation and metrics) and 3) adding the subgrid concept
to fix issues with storing data on the grids.

1. Making things easier to understand and cleaner.
   Most of the structural changes of the grid data type are done to
   clean up the gridspace structure by making better use of the new
   possibilities arrays-of-structures give us. This allows to remove the
   clumsy count fields (nobject, nobject_bou...), which can now be taken
   directly from array sizes. Object, node and space properties are
   collected in separate types. Besides theses structural changes, the
   actual data which is stored remains completely the same.

   Also, variable and type names have been changed to make them more
   expressive.

   Here is a visualization of the current grid data type:
2. Completing and fixing present features

   -  Geometry representation
      Instead of only having one node position array (node_value), a
      general field named geo is provided for nodes and
      higher-dimensional objects. For every object a matrix of geometric
      coefficients can be stored. The interpretation of the geo fields
      depends on the geotype flag in the space properties structure.

      In most cases, the geotype flag is undefined, and only the node
      geo field is used to store the position of every node. However,
      with this setup, grids with complex geometry descriptions are now
      possible. I specifically verified with one of the JOREK developers
      that storage of Bezier-FEM grids is possible. See also the
      comments on the data storage type below, and for detailed
      information the annotation strings in the XSD files.

   -  Metric coefficients
      I filled the metric structure in the grid type with fields for the
      basic metric coefficients (equivalent to the setup used in the
      equilibrium CPO). The coefficients are stored as general grid data
      on an arbitrary range of grid objects using the new
      subgrid/griddata concept (see below).

      One addition in the metric is the "measure" field, which holds the
      physical size (length, area, volume) for a physical object. The
      field in the metric type is meant to store this information for
      implicitly defined objects and uses the normal mechanism to store
      data on subgrids. An additional measure field is provided for
      explicitly defined objects in the space description.

3. Subgrids and general storage of grid data
   A central issue that came up was that the current approach to store
   data (using the gridlink/pointer/value fields) is not powerful
   enough. This is now fixed with the subgrid concept. In the grid
   structure, an arbitrary number of subgrids can be defined which
   select lists of objects of a common dimension. For details on the
   definition of a subgrid, have a look at the `grid data structure
   glossary <imp3_griddescription.html>`__. and the `grid data structure
   examples <imp3_gridexamples.html>`__.

   To store data, only the corresponding subgrid has to be selected and
   the data has to be written in the object order defined by the
   subgrid. For this purpose, two dedicated structures are used:
   gridscalar and gridvector.

   CPOs using the general grid description should be defined using
   gridscalar as type for the individual signals/data. This enables the
   use of general read/write and plotting routines.

   Note that gridscalar actually has three data fields: scalar, vector
   and matrix. The intention is to allow complex data representations
   with many degrees of freedom per element (e.g. FEM, DG or high-order
   FVM schemes). Only one of the three fields should be used at any
   time. Also note that this is not intended to be used for
   multidimensional data (e.g. species-dependent fields).
   Multidimensional data should fields should be accounted for directly
   in the CPO signal design.

   The gridvector type is intended for n-dimensional vector data, with
   possibly explicit alignment of the components along coordinate
   directions. For every vector component the alignment can be specified
   in the align and alignid fields (align using integer constants,
   alignid using human-readable identifiers).

Edge CPO: fluid part
--------------------

The changes to the edge CPO data structure are mainly to introduce the
subgrid/griddata storage scheme and unify the types a bit.

-  Change all names from grid\_ to fluid_...
-  Introduce unified types: fluid_scalar and fluid_vector
-  Instead of including the species index in the data fields,
   species-dependent quantities are now arrays of structures of type
   fluidscalar.
-  All data is finally stored as type griddata, as explained above where
   the subgrid concept is explained.

The type fluid_scalar defines the central quantities value, flux,
transcoeff (transport coefficient) and source. Each of these is an array
of structures, to enable storage und multiple subgrids if required. For
value and flux, additional bnd\* are provided to indicate separate
storage of boundary values. For vector quantities (e.g. velocities), a
separate fluid_vector type is provided which can be used to define
alignment similar to the gridvector type.

Edge CPO: kinetic part
----------------------

An initial version of the kinetic part of the edge CPO was added.
Currently it contains simple the distribution function plus fluxes. The
grid definition is shared with the fluid part. The subgrid concept
allows to store both high-dimensional kinetic and low-dimensional fluid
data on the same grid.

Open issues
-----------

The following issues are still open and have to be discussed/decided:

1. Technical issues
   : is the CPO possible technically in this form? Are there namespace
   conflicts that have to be resolved?. Currently the "Time-dependent"
   markers are missing, where do they have to be placed? Are the units
   ok like as they are at them moment (i.e. at the top level of the
   fluid and kinetic type)?
2. Missing fluid fields
   : are there any fields missing that are required to progress with
   current/immediately upcoming work?
3. Kinetic part of the edge CPO
   : are there any additional fields required?.

g2dpc $
