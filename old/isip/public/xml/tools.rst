.. _isip_tools:

Tools
=====

MDSplus
-------

Default private databases are MDSplus. Before using MDSplus tools to
access them you must define an environment variable:

::

   setenv euitm_path $HOME/public/itmdb/itm_trees/test/4.08a/mdsplus/0

Now you can use ``mdstcl``, ``jTraverser`` and ``jScope`` to access the
data.

To access MDSplus data using jTraverser, select *file > open*, then
Tree: euitm, Shot: <the number following euitm\_ in the database file
name>.

