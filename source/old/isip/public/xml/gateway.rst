.. toctree::
   :maxdepth: 2

   ../../../isip/public/xml/isip_howtos_gateway

.. _isip_gateway:

Gateway
=======

`ENEA Gateway
Documentation: <http://www.efda-itm.eu/docs/documentation.php>`__ Read
this first!

`OpenAFS Home: <http://www.openafs.org>`__ Everything you want to know
about AFS.

`Gateway User's
Guide: <../imports/isip_EU-IM_gateway_users_guide_v3-1.pdf>`__ Older
gateway documentation.

Using SSH
---------

You can login to the Gateway directly with SSH:

.. code-block:: console

   ssh -X <user>@gateway.efda-itm.eu

-X is required if you want to run X applications over the connection.

Using SFTP
----------

Use SFTP to transfer files to/from the Gateway:

.. code-block:: console

   sftp <user>@gateway.efda-itm.eu

If sftp fails with 'Connection closed', or you get an error message like
'Received message too long (or "Bad packet length") 1416586337', your
shell startup script (eg ~/.cshrc, ~/.bashrc) on the Gateway system is
writing to standard output and confusing it. This is a known problem
with sftp. Note that .login is evidently not run when and sftp session
is started; standard output from that does not upset it. The solution is
to disable the output or wrap the offending script in a conditional
statement so it is only executed if the shell is interactive. For
example, with cshrc:

.. code-block:: console

   if ($?prompt) then
      <original contents>
   endif

For more see
`faq1 <http://www.tfn.net/~bsbaker/support/helplink/html/supp/supp-connect-use-sftp.html>`__
and `faq2 <http://www.snailbook.com/faq/sftp-corruption.auto.html>`__.
Thanks to Francesco Iannone for this information.

Using NX
--------

NX from `NoMachine <http://www.nomachine.com>`__ allows you to run a
remote X11 login session on the Gateway from your local machine. To use
it you must first download an NX client from NoMachine and install it
locally. The default installation location for the NX executable is
/usr/NX/bin/nxclient. When you run NX for the first time, after logging
in with your assigned user name and password, and providing a session
name, a configuration dialogue appears. Set the following values:

.. code-block:: console

   Host:    gateway.efda-itm.eu
   Port:    22
   Key:     default
   Network: WAN
   Desktop: Unix, KDE
   Display: Available area

Do not disable encryption in the Advanced tab.

When this is done, the Gateway window manager should appear each time
you run NX with the session name you provided.

Disk Quota
----------

Users' home directories are in the Andrew File System. To check your
disk quota do

.. code-block:: console

   fs listquota

Note that Kepler EU-IM workflow core dumps can be >1.6GB in size!!

