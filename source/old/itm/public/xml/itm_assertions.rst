.. _F90AssertionsModule:

Fortran Assertion Module
========================

Overview: Assertions as a software development tool
---------------------------------------------------

The motivation for the ITM Fortran 90 assertion module is to enable and
promote `defensive
programming <http://en.wikipedia.org/wiki/Defensive_programming>`__ in
Fortran codes and ultimately help to reduce development time and improve
software quality.

The basic premise of defensive programming is to trust nobody,
especially not yourself. When the defensive programmer finds that while
writing some code he is making implicit assumptions or takes something
non-trivial for granted "because it just can't fail", he actively tests
that what he assumes is really the case. Such a test is called an
`assertion <http://en.wikipedia.org/wiki/Assertion_%28computing%29>`__.

Assertions
An assertion is a logical yes/no test placed in the code by the
developer to state that a condition is assumed to be satisfied. A failed
assertion means that something unexpected happened, and the only
sensible option is to stop execution of the code. An assertion therefore
serves to

-  document assumptions made by the programmer and
-  trigger early termination of the code when facing fatal errors to
   simplify debugging.

Assertions vs. error handling
Assertions are not the same thing as error handling. Error handling
addresses situations which are expected and are treated within the
normal control flow of the program (although the error handling might
just consist of stopping the program). Assertions on the other hand are
not meant to be a part of the normal control flow of the code - they are
just a development tool. After removing all assertions the code should
still execute as intended. Assertions are in fact often automatically
removed from production code to avoid any performance penalties they
introduce.

The ITM Fortran assertion module
--------------------------------

Many languages (e.g. Java, C, Python, Matlab,...) provide standard ways
to test assertions. For Fortran this is not the case, but this can
easily be fixed by substituting an implementation of the required
functions. The ITM assertions module contained in itm_assert module
provides such an implementation. The source code can be found
`here <https://gforge6.eufus.eu/svn/itmshared/branches/itm_assert/>`__,
or just do

::

   svn export https://gforge6.eufus.eu/svn/itmshared/branches/itm_assert

For integration into other projects use of the svn:externals mechanism
is advised. The itm_types module located at

::

   https://gforge6.eufus.eu/svn/itmshared/trunk/src/itm_types

is also required.

Basic usage

::

   use itm_assert
   ...
   call assert( logical_expression )

If logical_expression evaluates to false, the program is stopped with a
generic error message. You can supply a specific fail message as an
optional argument:

::

   call assert( logical_expression, "Message written to stdout when the assertion fails" )

Fail message prefixes To provide better diagnostic messages, a prefix
for the assertion fail messages can be set:

::

   call assertSetMsgPrefix( "subroutine foo" )

It is subsequently prepended to all assertion fail messages. To remove
it again do

::

   call assertSetMsgPrefix()

Delayed termination Sometimes one does not want to stop immediately when
encountering an error but at some later point in the code. This can be
useful when assertions are grouped together to test a number of
individual assumptions. Evaluating all of them might then reveal more
details about the cause of the error.

Delayed stopping is supported in two ways. The first is to use optional
arguments to the assert subroutine. This is of course also possible
together with the optional assertion fail message.

::

   call assert( expression1, doStop = .false. )
   ...
   call assert( expression2, "Assertion fail message", doStop = .false. )
   ...

A failed assertion will then not cause a termination of the program.
This can be triggered later by calling assertStopOnFailed:

::

   call assertStopOnFailed()  ! will stop the code if a previous assertion failed

The second method to enable delayed termination is to temporarily change
the default behaviour of the assertion module using the subroutine
assertSetStopMode:

::

   call assertSetStopMode( .false. )
   ...
   call assert( expression1 )
   ...
   call assert( expression2, "Assertion fail message" )
   ...
   call assertStopOnFailed()
   call assertSetStopMode() ! when called with no argument, restores the default behaviour (= immediate stop on fail)

The subroutine assertSetStopMode() again takes an optional fail message

::

   call assertStopOnFailed("Fail message if any previous assertion failed")

and its behaviour can again be modified to not terminate the program
using an optional doStop argument

::

   ! don't stop, even if a previous assertion failed
   call assertStopOnFailed( "Fail message if any previous assertion failed", doStop = .false. )

If assertStopOnFailed is called with doStop = .false. the program will
not terminate even in the presence of failed assertions. Furthermore the
counter for failed assertions is reset, i.e. further calls to
assertStopOnFailed (even with doStop = .true.) will not terminate the
program, unless another assertion failed in the meantime.

