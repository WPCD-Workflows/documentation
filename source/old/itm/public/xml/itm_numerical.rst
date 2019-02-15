.. toctree::
   :maxdepth: 2

   ../../../itm/public/xml/itm_python

.. _itm_numerical:

Numerical Tools
===============

Besides a long list of physics and infrastructure modules, the EU-IM-TF
also provides a variety of numerical tools like
interpolation/extrapolation routines, grid generation routines, and
coordinate system transformations. Most of these tools are new
developments which are currently summarized under task
`WP10-EU-IM-IMP12-ACT15 <#wp10_itm_imp12_act15>`__.

(UNDER CONSTRUCTION)

List of numerical tools, independent of the EU-IM datastructures

-  interpos
   (
   svn
   ,
   gforge
   ,
   external webpages
   )
   Provide an easy, flexible and precise routine for interpolation and
   calculation of derivatives and integrals on a new mesh. Allows for
   extrapolation as well. Includes smoothing based on cubic spline with
   tension, minimizing second derivatives.

-  dierckx
   (
   svn
   ,
   gforge
   ,
   external webpages
   )
   DIERCKX is a package of Fortran subroutines for calculating smoothing
   splines for various kinds of data and geometries, with automatic knot
   selection [Paul Dierckx, Curve and Surface Fitting with Splines,
   Oxford University Press, 1993].

-  l3interp
   (
   svn
   ,
   gforge
   )
   1D interpolation 3rd order Lagrange interpolation library, including
   derivatives.

-  bsplines
   (
   gforge
   )
   Generalized splines of any order on irregular grids for interpolation
   and solving PDEs with Finite Element Methods

-  Trimesh
   (
   svn
   ,
   gforge
   )
   (Under construction). Reads a scalar field from the equilibrium data
   and generates a field-aligned mesh using Delaunay triangulation.

List of numerical tools that dependens of the EU-IM datastructures

-  EU-IM toolbox
   (
   svn
   ,
   gforge
   )
   Including check_equilibrium, cubint and equilibrium_augmenter (also
   wrapper to l3interp).

-  grid tools
   (
   svn
   ,
   gforge
   )
   Tools for handling the grid-cpo.

-  FIFE
   (
   svn
   ,
   gforge
   )
   FIeld and Flux Evaluation, using data from CPO equilibrium, also
   extrapolating into vacuum region.

-  equilibriumfit
   (
   svn
   ,
   gforge
   )
   Fill in missing information into equilibrium CPO.

List of generic computational tools

-  CPO tools
   (
   svn
   )
   Library with various tools for handling CPO: copy_structures,
   deallocate_structures, diff_structures, euitm_printcpo,
   is_set_structures, printcpo, printcpoargs, read_structures,
   size_of_structures, write_structures error_analysis

-  Fortran Assertion Module
   (
   EU-IM webpages
   ,
   svn
   )
   Handling assertion and error handling. E.g. for asserting the
   validity of input.

-  Code parameters
   (
   EU-IM webpages
   ,
   gforge
   )
   An F95 library for parsing XML coded code parameters (to help
   incooparating xml-code parameters into Fortran codes).

-  muxdemux
   (
   gforge
   )
   Kepler actors used to extract/import a single signal (or a set of
   signals) from/into a CPO

-  visit_visu
   (
   gforge
   )
   Visualization of CPO fields through a VisIt plug-in

