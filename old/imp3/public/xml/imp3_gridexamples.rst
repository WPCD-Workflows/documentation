.. _imp3_gridexamples:

Example grids
=============

Example grid details
--------------------

This section describes a number of example grids and gives some examples
for specific constructs (object lists, subgrids).

Example Grid #1: 2d structured R,Z grid
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Note: the grids shown here are used in the unit tests of the grid
service library implementation, i.e. the automated testing framework.

A 2d grid in (R,Z) constructed by combining two structured
one-dimensional spaces. The spaces are defined as follows, they define
nodes and edges as subobjects. The whole grid then looks like this
(attention, slightly differing scales in R and Z): A couple of examples
for object descriptor are given. Some explanations:

((1,1) (4,2)) = a 2d object (2d cell or face), implicitly created by
combining the 1d object (edge) no. 4 from space 1 and the 1d object no.
2 from space 2. ((1,0) (2,4)) = a 1d object (edge), implicitly created
by combining 1d object (edge) from space 1 with the 0d object (node) no.
4 from space 2. ((0,0) (2,2)) = a 0d object (node), implicitly created
by combining 0d objects (nodes) no. 2 from space 1 and no. 2 from space
2.

Object classes
^^^^^^^^^^^^^^

This section shows the different object classes present in the grid. The
implicit numbering of the objects in a class is obtained by iterating
over all subobjects defining the objects, lowest space first.

Object class (1,1): 2d cells/faces. They have the following implicit
numbering:
Object class (1,0): 1d edges, aligned along the R axis ("r-aligned").
They have the following implicit numbering:
Object class (0,1): 1d edges, aligned along the Z axis ("z-aligned").
They have the following implicit numbering:
Object class (0,0): 0d nodes. They have the following implicit
numbering:
Example 2: B2 grid
~~~~~~~~~~~~~~~~~~

Object list examples
--------------------

Some examples for object lists, to explain the concept and show the
notation. All examples refer to the 2d structured R,Z example grid #1
given above.
Object descriptor A single object (= and object descriptor), for object
with object class (1,1), object index (4,2).

::

   ((1,1) (4,2))

Explicit object lists An explicit object list is simply an enumeration
of object descriptors. The ordering of the objects is given directly by
their position in the list. Note that by definition, all objects in the
list must be of the same class (An implementation of an explicit object
list should enforce this. If you need lists of objects with differing
class, have a look at subgrids).

An explicit list of 2d cells (faces), listing the four corner cells of
the grid in the order bottom-left, bottom-right, top-left, top-right:

::

   ( ((1,1) (1,1)),
     ((1,1) (5,1)),
     ((1,1) (1,4)),
     ((1,1) (5,4)) )

Implicit object lists Implicit object lists use the implicit order of
(sub)objects to form an efficient representation of (possibly large)
sets of objects. They thus avoid explicit enumeration of individual
objects as done in the explicit objects lists. The following examples
demonstrate the implicit list notation. Note: the implicit list notation
is used in the Python implementation of the grid service library in
exactly the form given here.

Selecting all indices An implicit object list of all r-aligned edges:

::

   ((1,0) (0,0))

Object and subobject indices in the grid description start counting from
1, i.e. object no. 1 is the first object. The index 0 is special and
denotes an undefined index. In this notation, it denotes all possible
indices.

An implicit object list of the (z-aligned) boundary edges on the left
boundary of the grid:

::

   ((0,1) (1,0))

The first entry of the index tuple denotes the first node in the
r-space, the second entry denotes all edges in the z space. The implicit
list denotes a total of 4 1d edges. Their implicit numbering is again
given by iterating over all defining objects, lowest space first. The
list therefore expands to

::

   ((0,1) (1,1))
   ((0,1) (1,2))
   ((0,1) (1,3))
   ((0,1) (1,4))

Selecting explicit lists of indices An implicit object list of the
(z-aligned) right and left boundary edges:

::

   ((0,1) ([1,6],0))

The first entry of the index tuple denotes a list of nodes in the
r-space, more specifically the first and the last (=6th) node. The
second entry denotes again all edges in the z space. The implicit list
then denotes a total of 8 1d edges in the following order:

::

   ((0,1) (1,1))
   ((0,1) (6,1))
   ((0,1) (1,2))
   ((0,1) (6,2))
   ((0,1) (1,3))
   ((0,1) (6,3))
   ((0,1) (1,4))
   ((0,1) (6,4))

Selecting ranges of indices An implicit object list of all 2d cells,
except the cells on the left and right boundary.

::

   ((1,1) ((2,4),0))

The first entry of the index tuple denotes a range of edges in the
r-space, more specifically the edges 2 to 4. The second entry of the
index tuple denotes all four edges in the z-space. The implicit list
then denotes a total of 12 2d cells in the following order:

::

   ((1,1) (2,1))
   ((1,1) (3,1))
   ((1,1) (4,1))
   ((1,1) (2,2))
   ((1,1) (3,2))
   ((1,1) (4,2))
   ((1,1) (2,3))
   ((1,1) (3,3))
   ((1,1) (4,3))
   ((1,1) (2,4))
   ((1,1) (3,4))
   ((1,1) (4,4))

All implementations of the grid service library define the constant
GRID_UNDEFINED=0 to specify an undefined index. Use of GRID_UNDEFINED
instead of 0 is advised to increase the readability of the code. The
following notations are therefore equivalent
((1,0) (0,0)) = ((1,0) (GRID_UNDEFINED,GRID_UNDEFINED))
((0,1) (1,0)) = ((0,1) (1,GRID_UNDEFINED))
Subgrid examples
----------------

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

Subgrid example The following subgrid consists of all boundary edges of
the 2d R,Z example grid #1, given as four implicit object lists.

::

   ((1,0) (0,1))    ! bottom edges
   ((0,1) (6,0))    ! right edges
   ((1,0) (0,5))    ! top edges
   ((0,1) (1,0))    ! left edges

Explicitly listing the objects in the order given by the subgrid gives:

::

   1:  ((1,0) (1,1))    ! bottom edges    
   2:  ((1,0) (2,1))   
   3:  ((1,0) (3,1))   
   4:  ((1,0) (4,1))   
   5:  ((1,0) (5,1))   
   6:  ((0,1) (6,1))    ! right edges
   7:  ((0,1) (6,2))
   8:  ((0,1) (6,3))
   9:  ((0,1) (6,4))
   10: ((1,0) (1,5))    ! top edges
   11: ((1,0) (2,5))
   12: ((1,0) (3,5))
   13: ((1,0) (4,5))
   14: ((1,0) (5,5))
   15: ((0,1) (1,1))    ! left edges
   16: ((0,1) (1,2))    
   17: ((0,1) (1,3))    
   18: ((0,1) (1,4))    

The number at the beginning of each line is the *local index* of the
object, where local means locally in the subgrid. Note that, again,
counting starts at 1.

