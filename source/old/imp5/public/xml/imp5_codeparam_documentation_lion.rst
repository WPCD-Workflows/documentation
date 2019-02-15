.. _imp5_code_parameter_documentation_lion:

lion
====

This documentation is generated from the XML schema, the xsd-file, for
the code parameters.

Namespace:

Code parameter tree
-------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Restrictions                  |
+===========================+==========+===============================+
| COCOS_IN                  | integer  | Expected Cocos number in the  |
|                           |          | input CPOs                    |
+---------------------------+----------+-------------------------------+
| COCOS_OUT                 | integer  | Requested Cocos number for    |
|                           |          | the output CPOs               |
+---------------------------+----------+-------------------------------+
| ACHARG                    | FloatLis | The charge of each ion        |
|                           | t        | species, given in atomic      |
|                           |          | units. The length of this     |
|                           |          | vector should be NRSPEC       |
+---------------------------+----------+-------------------------------+
| AD                        | FloatLis | Coefficient for polynomial    |
|                           | t        | density profile               |
+---------------------------+----------+-------------------------------+
| AHEIGT                    | float    | HEIGHT OF 2-D PLOTS           |
+---------------------------+----------+-------------------------------+
| ALARG                     | float    | WIDTH OF 2-D PLOTS            |
+---------------------------+----------+-------------------------------+
| AMASS                     | FloatLis | The mass of each ion species, |
|                           | t        | given in atomic units. The    |
|                           |          | length of this vector should  |
|                           |          | be NRSPEC                     |
+---------------------------+----------+-------------------------------+
| AMASSE                    | float    | ATOMIC MASS OF ELECTRON       |
+---------------------------+----------+-------------------------------+
| ANGLET                    | FloatLis | Toroidal cuts, in degrees.    |
|                           | t        |                               |
+---------------------------+----------+-------------------------------+
| ANTRAD                    | float    | ANTRAD-1.=DISTANCE            |
|                           |          | ANTENNA-PLASMA                |
+---------------------------+----------+-------------------------------+
| ANTRADMAX                 | float    |                               |
+---------------------------+----------+-------------------------------+
| ANTUP                     | float    | UPPER RIGHT POSITION OF       |
|                           |          | TOP/BOTTOM ANTENNA            |
+---------------------------+----------+-------------------------------+
| ANU                       | float    | COLLISIONAL DAMPING NU/OMEGA  |
+---------------------------+----------+-------------------------------+
| ARSIZE                    | float    | SIZE OF ARROWS                |
+---------------------------+----------+-------------------------------+
| ASPCT                     | float    | INVERSE ASPECT RATIO FOR      |
|                           |          | SOLOVEV EQUILIBRIU            |
+---------------------------+----------+-------------------------------+
| ASYMB                     | float    | SIZE OF SYMBOLS               |
+---------------------------+----------+-------------------------------+
| ATE                       | FloatLis |                               |
|                           | t        |                               |
+---------------------------+----------+-------------------------------+
| ATI                       | FloatLis |                               |
|                           | t        |                               |
+---------------------------+----------+-------------------------------+
| ATIP                      | FloatLis |                               |
|                           | t        |                               |
+---------------------------+----------+-------------------------------+
| BNOT                      | float    | MAGNETIC FIELD AT MAGNETIC    |
|                           |          | AXIS (TESLA)                  |
+---------------------------+----------+-------------------------------+
| CEN0                      | FloatLis | DENSITIES FOR CONST BETA SCAN |
|                           | t        | OF DKE STAB                   |
+---------------------------+----------+-------------------------------+
| CENDEN                    | FloatLis | DENSITIES OF ION SPECIES AT   |
|                           | t        | MAGN.AXIS (M-3)               |
+---------------------------+----------+-------------------------------+
| CENTE                     | float    | ELECTRON TEMPERATURE AT       |
|                           |          | MAGNETIC AXIS                 |
+---------------------------+----------+-------------------------------+
| CENTI                     | FloatLis | ION TEMPERATURES AT MAGN.AXIS |
|                           | t        | (EV)                          |
+---------------------------+----------+-------------------------------+
| CENTIP                    | FloatLis | PERP.ION TEMPERATURES AT      |
|                           | t        | MAGN. AXIS (EV)               |
+---------------------------+----------+-------------------------------+
| CEOMCI                    | FloatLis | NORMALIZED ION CYCLOTRON      |
|                           | t        | FREQUENCIES                   |
+---------------------------+----------+-------------------------------+
| CPSRF                     | float    | PSI AT PLASMA SURFACE         |
+---------------------------+----------+-------------------------------+
| CURASY                    | FloatLis | AMPLITUDE OF SIN ANTENNA      |
|                           | t        | CURRENT (HELICAL)             |
+---------------------------+----------+-------------------------------+
| CURSYM                    | FloatLis | AMPLITUDE OF ANTENNA CURRENT  |
|                           | t        |                               |
+---------------------------+----------+-------------------------------+
| DELTA                     | float    | PHENOMENOLOGICAL DAMPING      |
+---------------------------+----------+-------------------------------+
| DELTAF                    | float    | FREQUENCY INCREMENT FOR       |
|                           |          | FREQUENCY TRACE               |
+---------------------------+----------+-------------------------------+
| ELLIPT                    | float    | ELLIPTICITY SQUARED FOR       |
|                           |          | SOLOVEV EQUILIBRIUM           |
+---------------------------+----------+-------------------------------+
| EPSMAC                    | float    | ROUND-OFF ERROR OF COMPUTER   |
+---------------------------+----------+-------------------------------+
| EQALFD                    | float    | PROFILE PARAMETER OF TOTAL    |
|                           |          | MASS DENSITY                  |
+---------------------------+----------+-------------------------------+
| EQDENS                    | float    | PROFILE PARAMETER OF TOTAL    |
|                           |          | MASS DENSITY                  |
+---------------------------+----------+-------------------------------+
| EQFAST                    | float    | PROFILE PARAMETER OF FAST     |
|                           |          | PARTICLE DENSITY              |
+---------------------------+----------+-------------------------------+
| EQKAPD                    | float    | PROFILE PARAMETER OF TOTAL    |
|                           |          | MASS DENSITY                  |
+---------------------------+----------+-------------------------------+
| EQKAPF                    | FloatLis | PROFILE PARAMETER OF FAST     |
|                           | t        | PARTICLE DENSITY              |
+---------------------------+----------+-------------------------------+
| EQKAPT                    | FloatLis | Parameter describing the ion  |
|                           | t        | temperature profile;          |
|                           |          | TI(PARALLEL) = CENTI(I) \*    |
|                           |          | (1.-EQTI(I)*S*S) \**EQKAPT(I) |
+---------------------------+----------+-------------------------------+
| EQKPTE                    | float    | PROFILE PARAMETER OF ELECTRON |
|                           |          | TEMPERATURE                   |
+---------------------------+----------+-------------------------------+
| EQTE                      | float    | PROFILE PARAMETER OF ELECTRON |
|                           |          | TEMPERATURE                   |
+---------------------------+----------+-------------------------------+
| EQTI                      | FloatLis | Parameter describing the ion  |
|                           | t        | temperature profiles;         |
|                           |          | TI(PARALLEL) = CENTI(I) \*    |
|                           |          | (1.-EQTI(I)*S*S) \**EQKAPT(I) |
+---------------------------+----------+-------------------------------+
| FEEDUP                    | float    | POSITION OF UPPER RIGHT FEED  |
|                           |          | OF T/B ANTENNA                |
+---------------------------+----------+-------------------------------+
| FRAC                      | FloatLis | MASS FRACTION OF ION SPECIES  |
|                           | t        |                               |
+---------------------------+----------+-------------------------------+
| FRCEN                     | FloatLis | CENTER OF ION DENSITY PROFILE |
|                           | t        |                               |
+---------------------------+----------+-------------------------------+
| FRDEL                     | FloatLis | WIDTH OF ION DENSITY PROFILE  |
|                           | t        |                               |
+---------------------------+----------+-------------------------------+
| FREQCY                    | float    | FREQUENCY OF GENERATOR (HZ)   |
+---------------------------+----------+-------------------------------+
| OMEGA                     | float    | NORMALIZED FREQUENCY          |
|                           |          | (*RMAJOR/ALFV.SPEED)          |
+---------------------------+----------+-------------------------------+
| QIAXE                     | float    | 1./Q(AXIS) FOR SOLOVEV        |
|                           |          | EQUILIBRIUM                   |
+---------------------------+----------+-------------------------------+
| RMAJOR                    | float    | MAJOR RADIUS (M)              |
+---------------------------+----------+-------------------------------+
| SAMIN                     | float    | INSIDE EDGE OF ANTENNA INSIDE |
|                           |          | PLASMA (S)                    |
+---------------------------+----------+-------------------------------+
| SAMAX                     | float    | OUTSIDE EDGE OF ANTENNA       |
|                           |          | INSIDE PLASMA (S)             |
+---------------------------+----------+-------------------------------+
| SIGMA                     | float    | NORM FACTOR FOR V-THEMAL      |
|                           |          | (IONS)                        |
+---------------------------+----------+-------------------------------+
| THANT                     | FloatLis | THANT(J) are angles given in  |
|                           | t        | degrees, with values between  |
|                           |          | 0 and 360. THANT(J) are       |
|                           |          | measured from the magnetic    |
|                           |          | axis horizontal.              |
+---------------------------+----------+-------------------------------+
| THANTW                    | float    | THETA OF SADDLE COILS         |
|                           |          | TOROIDAL SECTIONS             |
+---------------------------+----------+-------------------------------+
| TIME_ITM                  | FloatLis | Time for slicing ITM CPO data |
|                           | t        | (s).                          |
+---------------------------+----------+-------------------------------+
| VBIRTH                    | float    | THE BIRTH VELOCITY OF FAST    |
|                           |          | PARTICLES [M/S]               |
+---------------------------+----------+-------------------------------+
| WALRAD                    | float    | DISTANCE WALL-MAGNETIC AXIS   |
|                           |          | IN UNITS OF THE MINOR RADIUS  |
|                           |          | IN THE Z=0 PLANE.             |
+---------------------------+----------+-------------------------------+
| WNTDEL                    | float    | THE TOROIDAL WAVENUMBER       |
|                           |          | INCREMENT FOR TOROIDAL WN     |
|                           |          | SCANS                         |
+---------------------------+----------+-------------------------------+
| WNTORO                    | float    | THE TOROIDAL WAVE NUMBER.     |
+---------------------------+----------+-------------------------------+
| LENGTH                    | integer  | Number of elements of a       |
|                           |          | matrix block                  |
+---------------------------+----------+-------------------------------+
| MANCMP                    | integer  | Number of poloidal wave       |
|                           |          | numbers for helical antennas  |
+---------------------------+----------+-------------------------------+
| MEQ                       | integer  | Equilibrium quantities        |
|                           |          | (i,jchi),js=1,npsi+1 ;        |
|                           |          | EQ(i,jchi,js)                 |
+---------------------------+----------+-------------------------------+
| MFL                       | integer  | Lower m value for fourier     |
|                           |          | analysis                      |
+---------------------------+----------+-------------------------------+
| MPOLWN                    | IntegerL | Poloidal wave numbers for     |
|                           | ist      | helical antenna               |
+---------------------------+----------+-------------------------------+
| NANTSHEET                 | integer  | Number of antenna current     |
|                           |          | sheets. For NANTSHEET>1, the  |
|                           |          | "power at antenna" might be   |
|                           |          | wrong ... and hopefully the   |
|                           |          | "power at plasma surface" is  |
|                           |          | right. The current sheets are |
|                           |          | placed equidistantly between  |
|                           |          | ANTRAD and ANTRADMAX. The     |
|                           |          | current distribution as       |
|                           |          | function of theta is          |
|                           |          | identical for all sheets.     |
+---------------------------+----------+-------------------------------+
| NANTYP                    | integer  | The variable 'nantyp' selects |
|                           |          | the type of antenna. (A)      |
|                           |          | NANTYP=-1: "Helical volume    |
|                           |          | antenna". Volume antenna      |
|                           |          | currents in the plasma        |
|                           |          | between s=SAMIN and s=SAMAX,  |
|                           |          | directed along psi=const      |
|                           |          | surfaces, defined by: "j_a =  |
|                           |          | grad psi x grad sigma", with  |
|                           |          | sigma(s,chi,phi) = H(s-SAMIN) |
|                           |          | \* H(SAMAX-s) \* (            |
|                           |          | sum[j=1..MANCMP] {            |
|                           |          | CURSYM(j)*cos(MPOLWN(j)*chi)  |
|                           |          | +                             |
|                           |          | CURASY(j)*sin(MPOLWN(j)*chi)  |
|                           |          | } ) \* exp{i*WNTORO*phi}.     |
|                           |          | Note that in this case there  |
|                           |          | is no antenna in the vacuum   |
|                           |          | region: the vacuum            |
|                           |          | contribution to the right-    |
|                           |          | hand side is put to zero by   |
|                           |          | setting SAUTR(j) to zero. (B) |
|                           |          | NANTYP = 1 ==== "Helical      |
|                           |          | antenna". current sheet at a  |
|                           |          | constant distance of the      |
|                           |          | plasma surface. The currents  |
|                           |          | are harmonic functions of the |
|                           |          | poloidal angle theta, with    |
|                           |          | poloidal wavenumbers given by |
|                           |          | 'MPOLWN(J)': SAUTR(THETA) =   |
|                           |          | SUM(J=1 TO MANCMP) OF         |
|                           |          | CURSYM(J)*COS(MPOLWN(J)*THETA |
|                           |          | )                             |
|                           |          | +                             |
|                           |          | I*CURASY(J)*SIN(MPOLWN(J)*THE |
|                           |          | TA).                          |
|                           |          | There are no feeders. (C)     |
|                           |          | NANTYP = 2 ==== LFS or HFS    |
|                           |          | antenna. Specified by the     |
|                           |          | input parameters THANT(J),    |
|                           |          | J=1,4 and CURSYM(1). THANT(J) |
|                           |          | ARE ANGLES GIVEN IN DEGREES,  |
|                           |          | WITH VALUES BETWEEN 0 AND     |
|                           |          | 360. THANT(J) ARE MEASURED    |
|                           |          | FROM THE MAGNETIC AXIS        |
|                           |          | HORIZONTAL. THE LFS OR HFS    |
|                           |          | ANTENNA IS A CURRENT SHEET    |
|                           |          | WHICH, BETWEEN THETA =        |
|                           |          | THANT(2) AND THANT(3), IS AT  |
|                           |          | A CONSTANT DISTANCE OF THE    |
|                           |          | PLASMA SURFACE AND CARRIES    |
|                           |          | CONSTANT PURE POLOIDAL        |
|                           |          | CURRENTS : SAUTR(THETA) =     |
|                           |          | CURSYM(1) BETWEEN THETA =     |
|                           |          | THANT(1) AND THETA = THANT(2) |
|                           |          | AND THETA = THANT(3) AND      |
|                           |          | THETA = THANT(4) ARE THE      |
|                           |          | FEEDERS, WHERE THE DISTANCE   |
|                           |          | FROM THE PLASMA SURFACE       |
|                           |          | INCREASES SMOOTHLY UP TO THE  |
|                           |          | WALL SURFACE. THE LFS ANTENNA |
|                           |          | EXTENDS ACROSS THE THETA=0    |
|                           |          | LINE. THEREFORE THANT(3) <    |
|                           |          | THANT(4) < THANT(1) <         |
|                           |          | THANT(2). THE HFS ANTENNA     |
|                           |          | CANNOT CROSS THE THETA=0      |
|                           |          | LINE. THEREFORE THANT(1) <    |
|                           |          | THANT(2) < THANT(3) <         |
|                           |          | THANT(4). THE SELECTION OF    |
|                           |          | EITHER LFS OR HFS ANTENNA     |
|                           |          | AUTOMATIC :                   |
|                           |          | THANT(3).LT.THANT(2) SELECTS  |
|                           |          | LFS ANTENNA                   |
|                           |          | THANT(2).GT.THANT(3) SELECTS  |
|                           |          | HFS ANTENNA NOTE THAT WE MUST |
|                           |          | HAVE THANT(1) < THANT(2) AND  |
|                           |          | THANT(3) < THANT(4). (D)      |
|                           |          | NANTYP = 3 ==== TOP/BOTTOM    |
|                           |          | ANTENNA. THE ANTENNA SURFACE  |
|                           |          | IS UP/ DOWN SYMMETRIC, AT     |
|                           |          | CONSTANT DISTANCE OF THE      |
|                           |          | PLASMA SURFACE BETWEEN THETA  |
|                           |          | = ANTUP AND THETA = PI -      |
|                           |          | ANTUP. THE CURRENTS ARE       |
|                           |          | DEFINED AS FOR NANTYP = 1.    |
|                           |          | (E) NANTYP = 4 ==== SADDLE    |
|                           |          | COIL ANTENNA. THE ANTENNA     |
|                           |          | SURFACE IS THE SAME AS FOR    |
|                           |          | THE HELICAL ANTENNA: CURRENT  |
|                           |          | SHEET AT A DISTANCE ANTRAD-1  |
|                           |          | OF THE PLASMA SURFACE. THE    |
|                           |          | CURRENT = CURSYM(1) IN        |
|                           |          | [THANT(1),THANT(2)] AND IN    |
|                           |          | [THANT(3),THANT(4)], SMOOTHLY |
|                           |          | DECAYING TO ZERO NEAR         |
|                           |          | THANT(J).                     |
+---------------------------+----------+-------------------------------+
| NANT_ITM                  | integer  | 0 (default), 1 if uses        |
|                           |          | antennas_in and               |
|                           |          | antennas_tools to define the  |
|                           |          | antenna geometry              |
+---------------------------+----------+-------------------------------+
| NBCASE                    | integer  | Number of cases for the       |
|                           |          | constant beta scan            |
+---------------------------+----------+-------------------------------+
| NBTYPE                    | integer  | TYPE OF CONSTANT BETA SCAN: 1 |
|                           |          | == n_i(o) IS VARIED (CEN0()), |
|                           |          | T_i(o) and T_e(o) as          |
|                           |          | 1/n_i(o), Bo is kept          |
|                           |          | constant. ==> v_A(o) is       |
|                           |          | varied 2 == n_i(o) IS VARIED  |
|                           |          | (CEN0()), Bo as sqrt(n_i(o)), |
|                           |          | ==> v_A(o) constant T_i(o)    |
|                           |          | and T_e(o) are kept constant  |
|                           |          | 'NLTTMP': .F. ==> SWITCH OFF  |
|                           |          | TTMP BY PUTTING B_PARALLEL TO |
|                           |          | 0 IN DKE POWER EXPRESSIONS.   |
+---------------------------+----------+-------------------------------+
| NCHI                      | integer  | Number of poloidal intervals  |
|                           |          | all around (please note that  |
|                           |          | in LION this becomes variable |
|                           |          | NPOL, and that NCHI is        |
|                           |          | defined in lion as the number |
|                           |          | of poloidal intervals in the  |
|                           |          | upper half-plane)             |
+---------------------------+----------+-------------------------------+
| NCOLMN                    | integer  | Rank of a matrix block        |
+---------------------------+----------+-------------------------------+
| NCONTR                    | integer  | Number of contour lines       |
+---------------------------+----------+-------------------------------+
| NCUT                      | integer  | Number of toroidal cuts for   |
|                           |          | plots                         |
+---------------------------+----------+-------------------------------+
| NDA                       | integer  | Matrix a I/O channel          |
+---------------------------+----------+-------------------------------+
| NDARG                     | integer  | Argument for polynomial       |
|                           |          | density profile               |
+---------------------------+----------+-------------------------------+
| NDDEG                     | integer  | Degree of polynomial density  |
|                           |          | profile                       |
+---------------------------+----------+-------------------------------+
| NDENS                     | integer  | Selects type of density       |
|                           |          | profile                       |
+---------------------------+----------+-------------------------------+
| NDES                      | integer  | R,Z coordinates and normals   |
|                           |          | i/o channel                   |
+---------------------------+----------+-------------------------------+
| NDLT                      | integer  | Decomposed matrix L,D,U I/O   |
|                           |          | channel                       |
+---------------------------+----------+-------------------------------+
| NDS                       | integer  | Solution vector               |
+---------------------------+----------+-------------------------------+
| NELDTTMP                  | integer  | Type of model for Electron    |
|                           |          | Landau and TTMP damping 1 ==> |
|                           |          | Additional damping term in    |
|                           |          | epsilon_{perp,perp}, with     |
|                           |          | k_perp from Fast Wave         |
|                           |          | dispersion relation; see      |
|                           |          | WEPSEL in subroutine QUAEQU 2 |
|                           |          | ==> Additional damping term   |
|                           |          | propto B_parallel, consistent |
|                           |          | in the weak variational form; |
|                           |          | see WEPSTTMP in subroutine    |
|                           |          | QUAEQU, CONST1,2,3, etc.      |
|                           |          | Factor 1/2 for combined ELD   |
|                           |          | and TTMP of fast waves        |
+---------------------------+----------+-------------------------------+
| NELDTTMPCOR               | integer  | Correction (perturbative) to  |
|                           |          | electron Landau and TTMP      |
|                           |          | damping diagnostics 0         |
|                           |          | (default): do not correct 1 : |
|                           |          | do the correction; option     |
|                           |          | valid only for NELDTTMP=1;    |
|                           |          | WARNING: the powers will not  |
|                           |          | be consistent                 |
+---------------------------+----------+-------------------------------+
| NFAKAP                    | integer  | Number of fast particle       |
|                           |          | density profiles              |
+---------------------------+----------+-------------------------------+
| NHARM                     | integer  | Maximum absolute value of the |
|                           |          | harmonic number used in       |
|                           |          | constructing the warm plasma  |
|                           |          | dielectric tensor, i.e. the   |
|                           |          | tensor includes components    |
|                           |          | for harmonic numbers from     |
|                           |          | -NHARM to +NHARM.             |
+---------------------------+----------+-------------------------------+
| NPLTYP                    | integer  | 2-D GRAPHICAL PLOTS SELECTED  |
|                           |          | IN NLPL05(4): - IF NPLTYP = 1 |
|                           |          | (DEFAULT): PREPARES PLOT      |
|                           |          | FILES FOR USE WITH THE        |
|                           |          | GRAPHICAL PACKAGE BASPL:      |
|                           |          | WRITES A FILE coords (TAPE18) |
|                           |          | OF (R,Z) COORDINATES OF MESH  |
|                           |          | CELLS CENTERS AND A FILE      |
|                           |          | fields (TAPE19) OF (R,Z)      |
|                           |          | COMPONENTS OF E, POWER        |
|                           |          | ABSORPTION DENSITY, NORMAL    |
|                           |          | AND BINORMAL COMPONENTS OF E, |
|                           |          | NORMAL, BINORMAL AND PARALLEL |
|                           |          | COMPONEMTS OF B. THE PLOTS    |
|                           |          | ARE THEN DONE WITH THE        |
|                           |          | GRAPHICAL PACKAGE BASPL. IT   |
|                           |          | ALLOWS TO MAKE COLOR PLOTS,   |
|                           |          | ARROW PLOTS, CONTOUR PLOTS,   |
|                           |          | ... INTERACTIVELY. - IF       |
|                           |          | NPLTYP = 2 : PLOT FILE FOR    |
|                           |          | USE WITH THE GRAPHICAL        |
|                           |          | PACKAGE explorer: WRITES A    |
|                           |          | FILE corfields (TAPE19)       |
|                           |          | CONTAINING COORDINATES AND    |
|                           |          | FIELDS.                       |
+---------------------------+----------+-------------------------------+
| NPOL                      | integer  | Total number of chi intervals |
+---------------------------+----------+-------------------------------+
| NPRNT                     | integer  | Line-printer output           |
+---------------------------+----------+-------------------------------+
| NPSI                      | integer  | Number of s intervals         |
+---------------------------+----------+-------------------------------+
| NREAD                     | integer  | -documentation missing-       |
+---------------------------+----------+-------------------------------+
| NRSPEC                    | integer  | Number of ion species         |
+---------------------------+----------+-------------------------------+
| NRUN                      | integer  | The number of runs for        |
|                           |          | frequency traces              |
+---------------------------+----------+-------------------------------+
| NSADDL                    | integer  | SELECTS THE TYPE OF SADDLE    |
|                           |          | COIL PHASING IN THE POLOIDAL  |
|                           |          | PLANE. THIS IS DISCARDED      |
|                           |          | UNLESS NANTYP = 4. NSADDL = 0 |
|                           |          | === ONLY 1 SADDLE COIL        |
|                           |          | ANTENNA IS CONNECTED: BETWEEN |
|                           |          | THANT(1) AND THANT(2). NSADDL |
|                           |          | = 1 === 2 SADDLE COILS ARE    |
|                           |          | CONNECTED. THE CONNECTION IS  |
|                           |          | DONE IN OPPOSITE DIRECTIONS   |
|                           |          | FOR THE 2 COILS, THUS         |
|                           |          | DEFINING A PREDOMINANTLY      |
|                           |          | 'M=1' ANTENNA CURRENT         |
|                           |          | COMPONENT: (+-) PHASING.      |
|                           |          | NSADDL = 2 === 2 SADDLE COILS |
|                           |          | ARE CONNECTED. THE CONNECTION |
|                           |          | IS DONE IN THE SAME DIRECTION |
|                           |          | FOR THE 2 COILS, THUS         |
|                           |          | DEFINING A PREDOMINANTLY      |
|                           |          | 'M=2' ANTENNA CURRENT         |
|                           |          | COMPONENT: (++) PHASING. THIS |
|                           |          | IS THE DEFAULT VALUE.         |
+---------------------------+----------+-------------------------------+
| NSAVE                     | integer  | NAMELIST I/O CHANNEL          |
+---------------------------+----------+-------------------------------+
| NSOURC                    | integer  | NAMELIST I/O CHANNEL          |
+---------------------------+----------+-------------------------------+
| NTEMP                     | integer  | 'EQTI()', EQKAPT()', 'NTEMP': |
|                           |          | SPECIFY THE ION PARALLEL AND  |
|                           |          | PERPENDICULAR TEMPERATURE     |
|                           |          | PROFILES [EV] : NTEMP = -2    |
|                           |          | ==> PROPORTIONAL TO           |
|                           |          | SQRT(EQUILIBRIUM_PRESSURE)    |
|                           |          | TI(PARALLEL) = CENTI(I) \*    |
|                           |          | SQRT (P/P_AXIS) NTEMP = -1    |
|                           |          | ==> POLYNOMIAL FUNCTION OF    |
|                           |          | S**2 IF NDARG = 1 S IF NDARG  |
|                           |          | = 2 TE/TI()/TIP() =           |
|                           |          | CENTE/CENTI()/CENTIP() \* (1. |
|                           |          | + SUM(J=1,NDDEG)              |
|                           |          | {ATE/ATI/ATIP(J)*ARG**J})     |
|                           |          | NTEMP # -1 OR -2 ==>          |
|                           |          | TI(PARALLEL) = CENTI(I) \*    |
|                           |          | (1.-EQTI(I)*S*S) \**EQKAPT(I) |
|                           |          | (SUBROUTINE TEMPI) NTEMP = -2 |
|                           |          | ==> PROPORTIONAL TO           |
|                           |          | SQRT(EQUILIBRIUM_PRESSURE)    |
|                           |          | TI(PERP) = CENTIP(I) \* SQRT  |
|                           |          | (P/P_AXIS) NTEMP=-1 ==>       |
|                           |          | POLYNOMIAL (SEE ABOVE) NTEMP  |
|                           |          | # -2 ==> TI(PERP) = CENTIP(I) |
|                           |          | \* (1.-EQTI(I)*S*S)           |
|                           |          | \**EQKAPT(I) (SUBROUTINE      |
|                           |          | TEMPRP)                       |
+---------------------------+----------+-------------------------------+
| NTORSP                    | integer  | The number of toroidal WN's   |
|                           |          | for toroidal WN scans         |
+---------------------------+----------+-------------------------------+
| NUMBER                    | integer  | Run number                    |
+---------------------------+----------+-------------------------------+
| NVERBOSE                  | integer  | Select verbosity of output to |
|                           |          | STDOUT                        |
+---------------------------+----------+-------------------------------+
| NVAC                      | integer  | VACUUM QUANTITIES I/O CHANNEL |
+---------------------------+----------+-------------------------------+
| NLCOLD                    | boolean  | Switch off electron Landau    |
|                           |          | and TTMP damping of fast      |
|                           |          | wave: If .TRUE. then no       |
|                           |          | additionnal term in           |
|                           |          | EPSILON_PERPPERP If .FALSE.   |
|                           |          | then additionnal damping term |
|                           |          | in EPSILON_PERPPERP. Note     |
|                           |          | that the alfven wave electron |
|                           |          | landau damping rate is        |
|                           |          | evaluated as a diagnostic of  |
|                           |          | the obtained solution         |
|                           |          | irrespectively of the value   |
|                           |          | of NLCOLE.                    |
+---------------------------+----------+-------------------------------+
| NLCOLE                    | boolean  | Switch off electron Landau    |
|                           |          | and TTMP damping of fast      |
|                           |          | wave. If .TRUE. then no       |
|                           |          | additionnal term in           |
|                           |          | EPSILON_PERPPERP If .FALSE.   |
|                           |          | then additionnal damping term |
|                           |          | in EPSILON_PERPPERP. Note     |
|                           |          | that the alfven wave electron |
|                           |          | landau damping rate is        |
|                           |          | evaluated as a diagnostic of  |
|                           |          | the obtained solution         |
|                           |          | irrespectively of the value   |
|                           |          | of NLCOLE.                    |
+---------------------------+----------+-------------------------------+
| NLDIP                     | boolean  | Selects monopole or dipole    |
|                           |          | antenna. the dipole option    |
|                           |          | has not been programmed yet.  |
|                           |          | DEFAULT: FALSE , i.e.         |
|                           |          | monopole.                     |
+---------------------------+----------+-------------------------------+
| NLDISO                    | boolean  | Switch computation and        |
|                           |          | diagnostics of the solution.  |
|                           |          | If NLDISO=.TRUE. then the     |
|                           |          | solution is computed          |
|                           |          | everywhere. Diagnostics are   |
|                           |          | performed, printed and/or     |
|                           |          | plotted according to NLOTP5() |
|                           |          | and NLPLO5() (see below).     |
|                           |          | With this option (which is    |
|                           |          | the default) running the LION |
|                           |          | code requires scratch disk    |
|                           |          | space for matrix storage: 96  |
|                           |          | \* NPSI \* NPOL**2 (bytes) If |
|                           |          | NLDISO=.FALSE. then the       |
|                           |          | solution is computed only at  |
|                           |          | the plasma-vacuum interface.  |
|                           |          | The only diagnostic is the    |
|                           |          | total power, which is         |
|                           |          | permanent output. It is       |
|                           |          | correct as long as there is   |
|                           |          | no source inside the plasma.  |
|                           |          | No other diagnostics are      |
|                           |          | perfomed, irrespectively of   |
|                           |          | NLOTP5() and NLPLO5(). With   |
|                           |          | this option the lion code     |
|                           |          | does not use disk space for   |
|                           |          | matrix storage, therefore the |
|                           |          | turnaround time is reduced.   |
+---------------------------+----------+-------------------------------+
| NLPHAS                    | boolean  | Switch poloidal phase         |
|                           |          | extraction                    |
+---------------------------+----------+-------------------------------+
| NLFAST                    | boolean  | If TRUE, then introduce fast  |
|                           |          | particles                     |
+---------------------------+----------+-------------------------------+
| NLOTP0                    | boolean  | General switch for            |
|                           |          | line-printer output and       |
|                           |          | graphics                      |
+---------------------------+----------+-------------------------------+
| NLOTP1                    | BooleanL | LINE-PRINTER OUTPUT FOR       |
|                           | ist      | EQUILIBRIUM QUANTITIES        |
|                           |          | (LION1); LENGTH 5.            |
+---------------------------+----------+-------------------------------+
| NLOTP2                    | BooleanL | LINE-PRINTER OUTPUT FOR       |
|                           | ist      | VACUUM QUANTITIES (LION2).    |
|                           |          | (1) : GEOMETRICAL QUANTITIES  |
|                           |          | AT PLASMA SURFACE. (2) :      |
|                           |          | POSITIONS OF PLASMA SURFACE,  |
|                           |          | ANTENNA AND WALL. (3) :       |
|                           |          | ANTENNA CURRENT POTENTIAL VS  |
|                           |          | CHI AND THETA. (4) :          |
|                           |          | NON-HERMICITY OF VACUUM       |
|                           |          | MATRIX. (5) :                 |
+---------------------------+----------+-------------------------------+
| NLOTP3                    | BooleanL | LINE-PRINTER OUTPUT FOR       |
|                           | ist      | MATRIX CONSTRUCTION (LION3).  |
|                           |          | LENGTH 2.                     |
+---------------------------+----------+-------------------------------+
| NLOTP4                    | BooleanL | LINE-PRINTER OUTPUT FOR       |
|                           | ist      | MATRIX SOLVER (LION4). (1) :  |
|                           |          | NAMELIST (2) : OHM-VECTOR (3) |
|                           |          | : SOLUTION AT PLASMA BOUNDARY |
|                           |          | (4) : (5) :                   |
+---------------------------+----------+-------------------------------+
| NLOTP5                    | BooleanL | LINE-PRINTER OUTPUT FOR       |
|                           | ist      | SOLUTION DIAGNOSTICS (LION5). |
|                           |          | (1) : NAMELIST (2) : RADIAL   |
|                           |          | POWER ABSORPTIONS AND OTHER   |
|                           |          | DIAGNOSTICS (3) : EXTENDED    |
|                           |          | OUTPUT OF RADIAL DIAGNOSTICS  |
|                           |          | (4) : 2-D POWER ABSORPTION    |
|                           |          | DENSITY (5) : 2-D POWER       |
|                           |          | ABSORBED IN EACH CELL (6) :   |
|                           |          | 2-D NORMAL COMPONENT OF       |
|                           |          | POYNTING (7) : 2-D PERP       |
|                           |          | COMPONENT OF POYNTING (8) :   |
|                           |          | 2-D PARALLEL COMPONENT OF     |
|                           |          | POYNTING (9) : (10) : 2-D     |
|                           |          | REAL PART OF E-NORMAL (11) :  |
|                           |          | 2-D REAL PART OF E-PERP (12)  |
|                           |          | : 2-D IMAGINARY PART OF       |
|                           |          | E-NORMAL (13) : 2-D IMAGINARY |
|                           |          | PART OF E-PERP (14) : 2-D     |
|                           |          | POLARAZATION NORM OF E-PLUS   |
|                           |          | SQUARED (15) : 2-D            |
|                           |          | POLARIZATION NORM OF E-MINUS  |
|                           |          | SQUARED (16) : ELECTRIC FIELD |
|                           |          | ON OUTER EQUATORIAL PLANE     |
|                           |          | (CHI=0) (17) : (18) :         |
|                           |          | POLOIDAL FOURIER COMPONENTS   |
|                           |          | OF E-NORMAL IN THETA FOR M =  |
|                           |          | 'MFL', MFL+1, ..,             |
|                           |          | MFU(=MFL+MD2FP1-1) (19) :     |
|                           |          | POLOIDAL FOURIER COMPONENTS   |
|                           |          | OF E-PERP IN THETA (20) :     |
|                           |          | POLOIDAL FOURIER COMPONENTS   |
|                           |          | OF E-NORMAL IN CHI (21) :     |
|                           |          | POLOIDAL FOURIER COMPONENTS   |
|                           |          | OF E-PERP IN CHI (22) : 2-D   |
|                           |          | EPSILON SUB-N-N - N**2 / R**2 |
|                           |          | (23) : 2-D IMAGINARY PART OF  |
|                           |          | EPSILON SUB N-N (24) : 2-D    |
|                           |          | OMEGA - OMEGACI (25) : SHEAR  |
|                           |          | ALFVEN FREQUENCIES            |
|                           |          | (NEGLECTING TOROIDAL          |
|                           |          | COUPLING; FOR SINGLE SPECIES  |
|                           |          | PLASMA ONLY), FOR M = 'MFL',  |
|                           |          | MFL+1, .., MFU(=MFL+MD2FP1-1) |
|                           |          | (26) : DENSITY, MINOR AND     |
|                           |          | MAJOR RADIUS, IN NORMALISED   |
|                           |          | AND S.I. UNITS, ON THE OUTER  |
|                           |          | EQUATORIAL PLANE (CHI=0).     |
|                           |          | (31) : POLOIDAL FOURIER       |
|                           |          | COMPONENTS OF B_N IN THETA    |
|                           |          | FOR M = 'MFL', MFL+1, ..,     |
|                           |          | MFU(=MFL+MD2FP1-1) (32) :     |
|                           |          | POLOIDAL FOURIER COMPONENTS   |
|                           |          | OF B_B IN THETA (33) :        |
|                           |          | POLOIDAL FOURIER COMPONENTS   |
|                           |          | OF B_PAR IN THETA (34) :      |
|                           |          | POLOIDAL FOURIER COMPONENTS   |
|                           |          | OF B_N IN CHI (35) : POLOIDAL |
|                           |          | FOURIER COMPONENTS OF B_B IN  |
|                           |          | CHI (36) : POLOIDAL FOURIER   |
|                           |          | COMPONENTS OF B_PAR IN CHI    |
|                           |          | THE 2-D TABLES GIVE THE       |
|                           |          | VALUES ON THE CENTERS OF THE  |
|                           |          | CELLS OF THE (S,CHI) MESH. A  |
|                           |          | LINE IN THE TABLE CORRESPONDS |
|                           |          | TO A PSI = CONST SURFACE. IT  |
|                           |          | GOES FROM CHI=0 TO CHI=PI IN  |
|                           |          | THE UPPER HALF-PLANE AND FROM |
|                           |          | CHI=PI TO CHI=2*PI IN THE     |
|                           |          | LOWER HALF-PLANE. THE VALUES  |
|                           |          | ARE NORMALIZED TO THEIR       |
|                           |          | MAXIMUM VALUE. THE FIRST AND  |
|                           |          | THE LAST LINES OF THE TABLES  |
|                           |          | GIVE THE POLOIDAL NUMBERING   |
|                           |          | OF THE CELLS. THE FIRST       |
|                           |          | COLUMN GIVES THE RADIAL       |
|                           |          | NUMBERING OF THE CELLS. ALL   |
|                           |          | OUTPUT IS IN CODE-NORMALIZED  |
|                           |          | UNITS UNLESS SPECIFIED.       |
+---------------------------+----------+-------------------------------+
| NLPLO5                    | BooleanL | GRAPHICAL OUTPUT FOR LION5    |
|                           | ist      | (1) : GENERAL SWITCH FOR      |
|                           |          | GRAPHICAL PLOTS (2) : RADIAL  |
|                           |          | POWER ABSORPTION AND FLUX (3) |
|                           |          | : FAST ION BETA_CRITICAL AND  |
|                           |          | P_DK(S). WRITES TABLES ON     |
|                           |          | TAPE26 AND TAPE27 => MATLAB   |
|                           |          | (plotfast.m AND               |
|                           |          | plotpdks(.,.).m) (4) : 2-D    |
|                           |          | GRAPHICAL PLOTS : - IF NPLTYP |
|                           |          | = 1 (DEFAULT): PREPARES PLOT  |
|                           |          | FILES FOR USE WITH THE        |
|                           |          | GRAPHICAL PACKAGE BASPL:      |
|                           |          | WRITES A FILE coords (TAPE18) |
|                           |          | OF (R,Z) COORDINATES OF MESH  |
|                           |          | CELLS CENTERS AND A FILE      |
|                           |          | fields (TAPE19) OF (R,Z)      |
|                           |          | COMPONENTS OF E, POWER        |
|                           |          | ABSORPTION DENSITY, NORMAL    |
|                           |          | AND BINORMAL COMPONENTS OF E, |
|                           |          | NORMAL, BINORMAL AND PARALLEL |
|                           |          | COMPONEMTS OF B. THE PLOTS    |
|                           |          | ARE THEN DONE WITH THE        |
|                           |          | GRAPHICAL PACKAGE BASPL. IT   |
|                           |          | ALLOWS TO MAKE COLOR PLOTS,   |
|                           |          | ARROW PLOTS, CONTOUR PLOTS,   |
|                           |          | ... INTERACTIVELY. - IF       |
|                           |          | NPLTYP = 2 : PLOT FILE FOR    |
|                           |          | USE WITH THE GRAPHICAL        |
|                           |          | PACKAGE explorer: WRITES A    |
|                           |          | FILE corfields (TAPE19)       |
|                           |          | CONTAINING COORDINATES AND    |
|                           |          | FIELDS. (5) : POLOIDAL        |
|                           |          | FOURIER COMPONENTS (CABS) OF  |
|                           |          | E_n, E_b, B_n, B_b AND B_//.  |
|                           |          | WRITES A TABLE ON TAPE25 =>   |
|                           |          | => MATLAB (plotfour.m).       |
+---------------------------+----------+-------------------------------+
| NLTTMP                    | boolean  | Switch on/off TTMP by putting |
|                           |          | B_parallel to 0 in DKE power  |
|                           |          | expressions.                  |
+---------------------------+----------+-------------------------------+
| NITMOPT                   | integer  | Uses ITM database: 0          |
|                           |          | (default) = no, 1 =reads from |
|                           |          | ITM, 10=writes on ITM,        |
|                           |          | 11=reads and writes, 22=LION  |
|                           |          | run as module within Kepler   |
+---------------------------+----------+-------------------------------+
| NITMRUN                   | IntegerL | ITM run number                |
|                           | ist      |                               |
+---------------------------+----------+-------------------------------+
| NITMSHOT                  | IntegerL | ITM shot number               |
|                           | ist      |                               |
+---------------------------+----------+-------------------------------+

Locally defined types
---------------------

+---------------------------+----------+-------------------------------+
| Name                      | Type     | Descriptions                  |
+===========================+==========+===============================+
| IntegerList               | integer  |                               |
+---------------------------+----------+-------------------------------+
| FloatList                 | float    |                               |
+---------------------------+----------+-------------------------------+
| BooleanList               | boolean  |                               |
+---------------------------+----------+-------------------------------+

17:07:16Z dpc $
