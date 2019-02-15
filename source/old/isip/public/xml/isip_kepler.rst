.. _isip_kepler:

Kepler
======

Setup
-----

These are instructions for installing the Kepler release for data
version 4.10a

Install a private version of KEPLER for 4.10a on your account:

::

   cd ~
   rm -rf kepler .kepler
   tar xvf $SWITMDIR/kepler/4.10a/kepler.tar

Set the Kepler, UAL and database environment variables. Kepler will work
in your private database, under the machine TokamakName
(TokamakName=test is allowed for testing purposes).

::

   source $ITMSCRIPTDIR/ITMv1 KeplerFolder TokamakName DataVersion

KeplerFolder should be your private Kepler path relative to your home
directory. Simply "kepler" is recommended, unless you want to have
several private versions of Kepler in your directory. Example:

::

   source $ITMSCRIPTDIR/ITMv1 kepler test 4.10a

If this is not run on restart, kepler will open in the default
environment which is not what you want!

To have your environment set by default (
mandatory for new features such as debugging, use of batch jobs, ...
), it is recommended to set default envinronment variables by adding
this command in you .cshrc file as follows:
source $ITMSCRIPTDIR/ITMv1 KeplerFolder TokamakName DataVersion
>/dev/null
Prepare the input data (see `Databases <#isip_databases>`__ for
details). Create a "test" zone in your private ITM data tree if you
haven't already done it.

::

   $ITMSCRIPTDIR/create_user_itm_dir test 4.10a

This version of Kepler is provided with a few workflow examples, located
in the kepler/demos directory. To use them, you need to copy the example
input data set (shot 4, run 1) from the public database to your test
database.

::

   cp /pfs/itmdb/itm_trees/public/test/4.10a/mdsplus/0/euitm_40001.* \
      $HOME/public/itmdb/itm_trees/test/4.10a/mdsplus/0

Run KEPLER:

::

   kepler

Select File > Open File and open any of the example workflows in the
demos directory. Start for instance with staticexample.xml. Results will
be written to your private database.

::

   ls -gtr $HOME/public/itmdb/itm_trees/test/4.10a/mdsplus/0

Issues
------

1. If the kepler environment variables are not set as described
   above
   , kepler will open in the default environment which is probably not
   what you want. Kepler will probably complain about missing files.
   Check that $KEPLER points at your private version.
2. If Kepler refuses to run. it may be because you have last run it on a
   different
   gateway
   node. Delete .kepler and try again!
3. If Kepler dies, the core dump can be enormous - 1.6GB seen with an
   ITM test workflow. To find core files in your home directory tree do
   ::

      find ~/ -name 'core.*'

   and to check disk quota, do
   ::

      fs listquota

4. If you have selected the debug mode of an actor (
   configure actor
   ), Kepler will fire up
   totalview
   when running this actor. The process which starts
   totalview
   will do so in a new shell. Therefore, any
   .cshrc
   or
   .login
   file will be sourced again and environment variables (like
   TOKAMAKNAME
   or
   UAL
   ) will be reset to the values defined in these files (if you included
   for instance a source of the ITMv1 script). This may result in Kepler
   not being able to access the
   runwork
   data file anymore since this was stored at the original location in
   the data base.
   If running actors in debug mode, make sure that
   TOKAMAKNAME
   and
   UAL
   set in
   .cshrc
   and
   .login
   are what you expect them to be!

