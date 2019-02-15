.. _isip_newcomer_guide_intern:

The Newcomer's ITM platform User Guide
======================================

Welcome to the EFDA-ITM Project and thank you for choosing to cooperate!

This guide is intended for a new user to his/her first access to ITM
platform and therefore provides the basic instructions for a code
developer, which might also serve as reference for everyday use to the
expert user. Special cases or instructions for curious users or for
those who want to develop infrastructure tools can be found on the
documents linked.

Getting Started
---------------

If you have not yet done it, please contact the `ITM Contact Person at
your Research Unit <#itm_contact_list_2010>`__.

To get an access to the ITM web Site Intranet
`(Portal) <https://portal.efda-itm.eu/portal/>`__, with news about every
project, tool and code documentation, specific mail lists and the
collaborative work instruments, ask a login and a password to your
`Project Leader <#itm_contact_list_2010>`__.

To get an access to `Gateway <http://www.efda-itm.eu/>`__, EFDA-ITM
dedicated Linux cluster for code developing, download, fill and sign the
`Gateway User
Agreement <../../../itm/public/imports/gateway/GatewayUserAgreement_ITM.pdf>`__
and send it by fax to the `Task Force
Leader. <http://www.efda-itm.eu>`__ The GUA was written as a cooperation
among the `Gateway User Board <http://www.efda-itm.eu>`__ (composed by a
leader from every project representing his/her users, determines the
policy for Gateway administration), EURATOM legal office and the HRU's
and protect the intellectual property of your work as well as it allows
you to use software under license installed in Gateway (ITM policy still
remains completely toward `open
source <http://opensource.org/docs/osd>`__). Without signing the GUA it
is not possible to have access to Gateway and to most of information on
these pages. The TFL will contact your representative inside GUB
authorising him/her to give you a login and a password and he/she will
communicate it to you by subscribing you to the mail list of your
project (that makes no traffic: one mail every month on the average).

Let's work!
-----------

Having a look to the
`iter <http://solps-mdsplus.aug.ipp.mpg.de:8080/ITM>`__ a code must
follow to finally become a part of the integrated tokamak modeling we
can summarise the simplest activities you can do in ITM platform as:

-  code porting and developing: for this you need to know the `Gateway
   Development Environment <#gate>`__

-  specific data visualisation and creation of a simulation -> beside
   the usual visualisation libraries, installed on Gateway, ISIP has
   developed the specific tool `ISE <#ise>`__

-  validation of a code against other codes and experimental data -> to
   correctly exchange data all the codes must have the same I/O
   structure and format -> `Data Structure <#ds>`__

-  exchanging data between a code and another -> again `Data
   Structure <#ds>`__

-  link codes to form a unique workflow ->`kepler <#kep>`__ and
   `fc2k <#fc2k>`__

-  code developing and maintenance with your colleagues maybe living
   elsewhere -> `gforge <#gf>`__ and `svn <#svn>`__

-  code preparation to be delivered to other users -> `gforge <#gf>`__

.. _gate:

How to use Gateway
~~~~~~~~~~~~~~~~~~

Information about Gateway can be gather at the `Gateway web
site <http://www.efda-itm.eu/>`__ where you can also download the
`Gateway User Guide <http://www.efda-itm.eu/docs/docs5.php>`__.

You can access Gateway via ssh and sftp in the standard way.

You can enter it via `NX from
Nomachine <http://www.nomachine.com/index.php>`__, a remote desktop
application which allows you to use features as graphical interfaces to
applications (indispensable to user most of the ISIP tools) or graphical
output from postprocessing software or multi terminals.... To do this
follow this `Euforia
instructions <http://scilla.man.poznan.pl:8080/confluence/display/euforia/NX+setup>`__,
namely:

-get the NX client for your local OS from `NX download
page <http://www.nomachine.com/download.php>`__ and install it

-start NX Connection Wizard and follow the configuration steps

.. _ds:

Data Structure
~~~~~~~~~~~~~~

.. _kep:

Kepler
~~~~~~

FC2K
~~~~

ISE
~~~

.. _gf:

gforge
~~~~~~

SVN
~~~

In case of trouble...
---------------------

$
