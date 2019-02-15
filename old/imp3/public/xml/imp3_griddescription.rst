.. _imp3_griddescription:

General grid description
========================

Overview of concepts
--------------------

For examples explaning the concepts listed here in more detail, have a
look at
the examples page
.
Grid/Grid Description
~~~~~~~~~~~~~~~~~~~~~

*Associated data structure: complexgrid*

A *grid* describes a discretization of physical space. It consists out
of *grid objects* with varying dimension (e.g. nodes(0d), edges(1d),
faces(2d), cells(3d)). A grid is described as a collection of *spaces*,
and grid objects are in general defined implicitly by combining *space
objects* defined in these spaces. The dimension of the grid is given by
the sum of the dimensions of the spaces.

A grid description is the data describing a grid, collected in a data
structure. It is not a CPO, but usually a part (substructure) of a CPO.
An example for an CPO that uses the it is the edge CPO.

Grid space
~~~~~~~~~~

*Associated data structure: complexgrid_space.*

Similar to a grid, a *space* describes a discretization of physical
space. The difference is that in a space the geometrical shape of the
contained objects (which are called space objects (or sometimes
subobjects) in the context of the entire grid) is defined explicitly.

The dimension of a space is given by the list of its coordinate axes
(see grid_space.type_coord), which define the coordinate system in which
the grid node positions are given. The dimension of a space is commonly
lower than the dimension of the grid it is a part of.

Grid Object/Object Class/Grid Object Descriptor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Grid objects are the geometrical objects that define the discretization.
The shape of a grid object is not stored explicitly, but is given by
combining space objects from grid spaces (the shape of which is defined
explicitly).

A grid object is uniquely identified by its *object class* and its
*object index*. The tuple (class, index) is called the object
descriptor. The object class is a tuple (c1,c2,...,cs) identifying for
every space the dimensions of the space objects used to compose the
object. The index of an object is a tuple (i1,i2,...,is) identifying the
indices of the space objects in the individual spaces which are used to
compose the object. A shorthand notation for an object descriptor is
((c1,c2,...,cs), (i1,i2,...,is)).

A grid object has a dimension, which is simply the sum of the dimensions
of its space objects.

Space objects
~~~~~~~~~~~~~

A geometrical object the shape of which is explicitly defined in a grid
space. Grid objects are composed out of such space objects.

A space object of dimension 1 and higher is itself composed from other
space object, which are called its boundaries. Space objects of
dimension 0 (nodes) are an exception. Their position is stored
explicitly.

Explicit object list
~~~~~~~~~~~~~~~~~~~~

An explicit object list is an enumeration of grid objects. The ordering
of the objects is given directly by their position in the list. By
definition, all objects in the list must be of the same class.

A shorthand notation for object lists is ( o1, o2, ..., oN ), with oi
being the object descriptor of the i-th grid object.

Implicit object list
~~~~~~~~~~~~~~~~~~~~

Implicit object lists use the implicit order of grid objects to form an
efficient representation of (possibly large) sets of objects. They thus
avoid explicit enumeration of individual objects as done in the explicit
objects lists. Like explicit lists, they can only contain objects of a
single class.

The key element of implicit lists are *index sets*, which provide a
compact notation for lists of object index tuples. The notation for an
index set is (i1, i2, ..., iN). Instead of fixed numbers (as in an
object index tuple), every entry can be one of the following

-  An
   index list
   which explicitly lists indices. Shorthand notation: [x1, x2, ...
   ,xN].
-  An
   index range
   denoting a range of indices x1, ..., x2, including both x1 and x2.
   Shorthand notation: (x1, x2).
-  An
   undefined index
   denoting all possible index values for this index. Shorthand: 0 or
   GRID_UNDEFINED.

The shorthand notation for an implicit index list is then (c,i), where c
is an object class tuple and i is an index set.

Subgrid
~~~~~~~

A subgrid is an ordered list of grid objects of a common dimension. The
difference to object lists is that they can contain objects of different
object classes.

The subgrid concept is central to storing data on grids. To store data,
first a subgrid has to be defined. The objects in the grid have a fixed
order, which then allows to unambiguously store the data associated with
the objects in vectors.

Technically, a subgrid is an ordered list of object lists, of which
every individual list is either explicit or implicit. The ordering of
the objects in the subgrid is then directly given by the ordering of the
object lists and the ordering of the grid objects therein.

Indices an implicit object orderings
------------------------------------

All indices in the grid description are 1-based, i.e. 1 is the lowest
index. This is especially important for programming languages with
zero-based array indexing (e.g. C and Python), where proper care has to
be taken when accessing the grid description data structure. The index 0
denotes an undefined index. All implementations of the grid service
library define the constant GRID_UNDEFINED=0, which should be used in
the codes to improve clarity and readability.

For every grid object class, an implicit global ordering of the objects
of this class is defined by iterating over all indices, lowest space
first. Every object can therefore be addressed using its full index
tuple, or using its *global index* as defined by the implicit global
ordering. The grid service library provides routines for converting
between the two representations.

The same enumeration mechanism (iterate over all indices, lowest space
first) is used to derive local indices in implicit lists. This mechanism
allows efficient data storage by associating entries in vectors with
grid objects. It enables storage of large data sets with negligible
overhead for the grid handling.

$
