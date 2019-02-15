.. _isip_databases:

Databases
=========

EU-IM data entries are defined by the following information : (user,
machine, shot, run). "user" is either "public" (public EU-IM database) or
any Gateway username, allowing the creation of private EU-IM databases.

In order to run a KEPLER workflow, you must first create your private
database(s). A private database is created for a given machine (tokamak
name) and data structure version, by the following command:

::

   $EU-IMSCRIPTDIR/create_user_itm_dir TokamakName \
    DataVersion 

Example (creates a tree for tokamak name test, allowed for testing
purposes):

::

   $EU-IMSCRIPTDIR/create_user_itm_dir test 4.08a 

The database is created under ~my_username/public/itmdb/itm_trees. Since
it is located in your public directory, all Gateway users can read from
it.

Standard tokamak names are : asdex_upgrade, jet, mast, tore_supra, ...
Nonetheless, any arbitrary machine name is allowed by the system for
testing purposes (e.g. test). It is however strongly recommended to use
the standard machine names when using real experimental data.

Before using KEPLER or the UAL, you must specify on which database you
wish to work, using the following command :

::

   source $EU-IMSCRIPTDIR/set_itm_data_env public|user TokamakName DataVersion 

Example (set the environment variables to work to the previously created
directory):

::

   source $EU-IMSCRIPTDIR/set_itm_data_env my_username test 4.08a

Note that with this command, you can read any EU-IM database on the
Gateway, including the public database (replace my_username by
"public").

The public database is located at /pfs/itmdb/itm_trees/public/. Its
content is summarised in `EU-IM Public
Database <../imports/isip_PublicContent.pdf>`__, which contains also the
location of the various files, the list of standard machine names ...

For the moment, the EU-IM software (KEPLER, UAL) are able to work only on
one database at a time. Reading is allowed from all databases (by using
the set_itm_data_env command above). However, if you wish to write also
some results during the workflow, you can write only to your private
database. Therefore, if you wish to use data entries from other users in
your workflow, you need first to copy them in your own directory.

For example, to copy the test example from the public database
(user=public, machine=test, shot=1, run=1) to your directory, type:

::

   cp /pfs/itmdb/itm_trees/public/test/4.08a/mdsplus/0/euitm_10001.* \
      ~my_username/public/itmdb/itm_trees/test/4.08a/mdsplus/0/.

This data entry can then be used as (user=my_username, machine=test,
shot=1, run=1). It is not recommended to change the shot or run number
when copying data entries like this. More flexible tools for working on
multiple databases simultaneously will be provided in the near future.

Machine descriptions are stored in shot 0 of each tokamak. Different
versions (valid e.g. for different shot ranges) can be stored, using
different run numbers. To copy the Tore Supra machine description (run
1) to your local folder, type (NB you must first create your private
tore_supra 4.08a database):

::

   cp /pfs/itmdb/itm_trees/public/tore_supra/4.08a/mdsplus/0/euitm_001.* \
      ~my_username/public/itmdb/itm_trees/tore_supra/4.08a/mdsplus/0/.

To copy the Tore Supra experimental data set for shot 39736, run 1,
type:

::

   cp /pfs/itmdb/itm_trees/public/tore_supra/4.08a/mdsplus/0/euitm_397360001.* \
      ~my_username/public/itmdb/itm_trees/tore_supra/4.08a/mdsplus/0/.

Note for advanced users : an EU-IM data entry consists in three file,
euitm_SSSSSSRRRR.\* where SSSSSS is the shot number (truncated, e.g.
shot=1 is SSSSSS=1) and RRRR the run number (exception : if shot = 0,
SSSSSSRRRR = (R)RRR, e.g. shot 0 run 1 is euitm_001.*). In the example
above, it is assumed that one is using the default storage method MDS+
(otherwise, for HDF5, replace in the path the "mdsplus" folder name by
"hdf5"), and that the run number is below 9999 (otherwise, replace the
"0" folder name by "1" for run numbers between 10000 and 19999, ...).

exp2EU-IM
-------

`Experimental Data
Overview <../imports/isip_ExperimentalDataEU-IM_v3.pdf>`__

