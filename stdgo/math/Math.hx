package stdgo.math;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package math provides basic constants and mathematical functions.
    //
    // This package does not guarantee bit-identical results across architectures.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
private var __gamP = (new GoArray<GoFloat64>((0.00016011952247675185 : GoFloat64), (0.0011913514700658638 : GoFloat64), (0.010421379756176158 : GoFloat64), (0.04763678004571372 : GoFloat64), (0.20744822764843598 : GoFloat64), (0.4942148268014971 : GoFloat64), (1 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var __gamQ = (new GoArray<GoFloat64>((-2.3158187332412014e-05 : GoFloat64), (0.0005396055804933034 : GoFloat64), (-0.004456419138517973 : GoFloat64), (0.011813978522206043 : GoFloat64), (0.035823639860549865 : GoFloat64), (-0.23459179571824335 : GoFloat64), (0.0714304917030273 : GoFloat64), (1 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var __gamS = (new GoArray<GoFloat64>((0.0007873113957930937 : GoFloat64), (-0.00022954996161337813 : GoFloat64), (-0.0026813261780578124 : GoFloat64), (0.0034722222160545866 : GoFloat64), (0.08333333333334822 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in [inf, 8]=1/[0,0.125]
    
    
**/
private var _p0R8 = (new GoArray<GoFloat64>((0 : GoFloat64), (-0.07031249999999004 : GoFloat64), (-8.081670412753498 : GoFloat64), (-257.06310567970485 : GoFloat64), (-2485.216410094288 : GoFloat64), (-5253.043804907295 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _p0S8 = (new GoArray<GoFloat64>((116.53436461966818 : GoFloat64), (3833.7447536412183 : GoFloat64), (40597.857264847255 : GoFloat64), (116752.97256437592 : GoFloat64), (47627.728414673096 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in [8,4.5454]=1/[0.125,0.22001]
    
    
**/
private var _p0R5 = (new GoArray<GoFloat64>((-1.141254646918945e-11 : GoFloat64), (-0.07031249408735993 : GoFloat64), (-4.159610644705878 : GoFloat64), (-67.67476522651673 : GoFloat64), (-331.23129964917297 : GoFloat64), (-346.4333883656049 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _p0S5 = (new GoArray<GoFloat64>((60.753938269230034 : GoFloat64), (1051.2523059570458 : GoFloat64), (5978.970943338558 : GoFloat64), (9625.445143577745 : GoFloat64), (2406.058159229391 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in [4.547,2.8571]=1/[0.2199,0.35001]
    
    
**/
private var _p0R3 = (new GoArray<GoFloat64>((-2.547046017719519e-09 : GoFloat64), (-0.07031196163814817 : GoFloat64), (-2.409032215495296 : GoFloat64), (-21.96597747348831 : GoFloat64), (-58.07917047017376 : GoFloat64), (-31.44794705948885 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _p0S3 = (new GoArray<GoFloat64>((35.85603380552097 : GoFloat64), (361.51398305030386 : GoFloat64), (1193.6078379211153 : GoFloat64), (1127.9967985690741 : GoFloat64), (173.58093081333575 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in [2.8570,2]=1/[0.3499,0.5]
    
    
**/
private var _p0R2 = (new GoArray<GoFloat64>((-8.875343330325264e-08 : GoFloat64), (-0.07030309954836247 : GoFloat64), (-1.4507384678095299 : GoFloat64), (-7.635696138235278 : GoFloat64), (-11.193166886035675 : GoFloat64), (-3.2336457935133534 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _p0S2 = (new GoArray<GoFloat64>((22.22029975320888 : GoFloat64), (136.2067942182152 : GoFloat64), (270.4702786580835 : GoFloat64), (153.87539420832033 : GoFloat64), (14.65761769482562 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in [inf, 8]=1/[0,0.125]
    
    
**/
private var _q0R8 = (new GoArray<GoFloat64>((0 : GoFloat64), (0.0732421874999935 : GoFloat64), (11.76820646822527 : GoFloat64), (557.6733802564019 : GoFloat64), (8859.197207564686 : GoFloat64), (37014.62677768878 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _q0S8 = (new GoArray<GoFloat64>((163.77602689568982 : GoFloat64), (8098.344946564498 : GoFloat64), (142538.29141912048 : GoFloat64), (803309.2571195144 : GoFloat64), (840501.5798190605 : GoFloat64), (-343899.2935378666 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in [8,4.5454]=1/[0.125,0.22001]
    
    
**/
private var _q0R5 = (new GoArray<GoFloat64>((1.8408596359451553e-11 : GoFloat64), (0.07324217666126848 : GoFloat64), (5.8356350896205695 : GoFloat64), (135.11157728644983 : GoFloat64), (1027.243765961641 : GoFloat64), (1989.9778586460538 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _q0S5 = (new GoArray<GoFloat64>((82.77661022365378 : GoFloat64), (2077.81416421393 : GoFloat64), (18847.28877857181 : GoFloat64), (56751.11228949473 : GoFloat64), (35976.75384251145 : GoFloat64), (-5354.342756019448 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in [4.547,2.8571]=1/[0.2199,0.35001]
    
    
**/
private var _q0R3 = (new GoArray<GoFloat64>((4.377410140897386e-09 : GoFloat64), (0.07324111800429114 : GoFloat64), (3.344231375161707 : GoFloat64), (42.621844074541265 : GoFloat64), (170.8080913405656 : GoFloat64), (166.73394869665117 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _q0S3 = (new GoArray<GoFloat64>((48.75887297245872 : GoFloat64), (709.689221056606 : GoFloat64), (3704.1482262011136 : GoFloat64), (6460.425167525689 : GoFloat64), (2516.3336892036896 : GoFloat64), (-149.2474518361564 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in [2.8570,2]=1/[0.3499,0.5]
    
    
**/
private var _q0R2 = (new GoArray<GoFloat64>((1.5044444488698327e-07 : GoFloat64), (0.07322342659630793 : GoFloat64), (1.99819174093816 : GoFloat64), (14.495602934788574 : GoFloat64), (31.666231750478154 : GoFloat64), (16.252707571092927 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _q0S2 = (new GoArray<GoFloat64>((30.36558483552192 : GoFloat64), (269.34811860804984 : GoFloat64), (844.7837575953201 : GoFloat64), (882.9358451124886 : GoFloat64), (212.66638851179883 : GoFloat64), (-5.3109549388266695 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in [inf, 8]=1/[0,0.125]
    
    
**/
private var _p1R8 = (new GoArray<GoFloat64>((0 : GoFloat64), (0.11718749999998865 : GoFloat64), (13.239480659307358 : GoFloat64), (412.05185430737856 : GoFloat64), (3874.7453891396053 : GoFloat64), (7914.479540318917 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _p1S8 = (new GoArray<GoFloat64>((114.20737037567841 : GoFloat64), (3650.9308342085346 : GoFloat64), (36956.206026903346 : GoFloat64), (97602.79359349508 : GoFloat64), (30804.27206278888 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in [8,4.5454] = 1/[0.125,0.22001]
    
    
**/
private var _p1R5 = (new GoArray<GoFloat64>((1.3199051955624352e-11 : GoFloat64), (0.1171874931906141 : GoFloat64), (6.802751278684329 : GoFloat64), (108.30818299018911 : GoFloat64), (517.6361395331998 : GoFloat64), (528.7152013633375 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _p1S5 = (new GoArray<GoFloat64>((59.28059872211313 : GoFloat64), (991.4014187336144 : GoFloat64), (5353.26695291488 : GoFloat64), (7844.690317495512 : GoFloat64), (1504.0468881036106 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in[4.5453,2.8571] = 1/[0.2199,0.35001]
    
    
**/
private var _p1R3 = (new GoArray<GoFloat64>((3.025039161373736e-09 : GoFloat64), (0.11718686556725359 : GoFloat64), (3.9329775003331564 : GoFloat64), (35.11940355916369 : GoFloat64), (91.05501107507813 : GoFloat64), (48.55906851973649 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _p1S3 = (new GoArray<GoFloat64>((34.79130950012515 : GoFloat64), (336.76245874782575 : GoFloat64), (1046.8713997577513 : GoFloat64), (890.8113463982564 : GoFloat64), (103.78793243963928 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in [2.8570,2] = 1/[0.3499,0.5]
    
    
**/
private var _p1R2 = (new GoArray<GoFloat64>((1.0771083010687374e-07 : GoFloat64), (0.11717621946268335 : GoFloat64), (2.368514966676088 : GoFloat64), (12.242610914826123 : GoFloat64), (17.693971127168773 : GoFloat64), (5.073523125888185 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _p1S2 = (new GoArray<GoFloat64>((21.43648593638214 : GoFloat64), (125.29022716840275 : GoFloat64), (232.2764690571628 : GoFloat64), (117.6793732871471 : GoFloat64), (8.364638933716183 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in [inf, 8] = 1/[0,0.125]
    
    
**/
private var _q1R8 = (new GoArray<GoFloat64>((0 : GoFloat64), (-0.10253906249999271 : GoFloat64), (-16.271753454459 : GoFloat64), (-759.6017225139501 : GoFloat64), (-11849.806670242959 : GoFloat64), (-48438.512428575035 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _q1S8 = (new GoArray<GoFloat64>((161.3953697007229 : GoFloat64), (7825.385999233485 : GoFloat64), (133875.33628724958 : GoFloat64), (719657.7236832409 : GoFloat64), (666601.2326177764 : GoFloat64), (-294490.26430383464 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in [8,4.5454] = 1/[0.125,0.22001]
    
    
**/
private var _q1R5 = (new GoArray<GoFloat64>((-2.089799311417641e-11 : GoFloat64), (-0.10253905024137543 : GoFloat64), (-8.05644828123936 : GoFloat64), (-183.66960747488838 : GoFloat64), (-1373.1937606550816 : GoFloat64), (-2612.4444045321566 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _q1S5 = (new GoArray<GoFloat64>((81.27655013843358 : GoFloat64), (1991.7987346048596 : GoFloat64), (17468.48519249089 : GoFloat64), (49851.42709103523 : GoFloat64), (27948.075163891812 : GoFloat64), (-4719.183547951285 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in [4.5454,2.8571] = 1/[0.2199,0.35001] ???
    
    
**/
private var _q1R3 = (new GoArray<GoFloat64>((-5.078312264617666e-09 : GoFloat64), (-0.10253782982083709 : GoFloat64), (-4.610115811394734 : GoFloat64), (-57.847221656278364 : GoFloat64), (-228.2445407376317 : GoFloat64), (-219.21012847890933 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _q1S3 = (new GoArray<GoFloat64>((47.66515503237295 : GoFloat64), (673.8651126766997 : GoFloat64), (3380.1528667952634 : GoFloat64), (5547.729097207228 : GoFloat64), (1903.119193388108 : GoFloat64), (-135.20119144430734 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // for x in [2.8570,2] = 1/[0.3499,0.5]
    
    
**/
private var _q1R2 = (new GoArray<GoFloat64>((-1.7838172751095887e-07 : GoFloat64), (-0.10251704260798555 : GoFloat64), (-2.7522056827818746 : GoFloat64), (-19.663616264370372 : GoFloat64), (-42.32531333728305 : GoFloat64), (-21.371921170370406 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _q1S2 = (new GoArray<GoFloat64>((29.533362906052385 : GoFloat64), (252.98154998219053 : GoFloat64), (757.5028348686454 : GoFloat64), (739.3932053204672 : GoFloat64), (155.94900333666612 : GoFloat64), (-4.959498988226282 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var __lgamA = (new GoArray<GoFloat64>(
(0.07721566490153287 : GoFloat64),
(0.3224670334241136 : GoFloat64),
(0.06735230105312927 : GoFloat64),
(0.020580808432516733 : GoFloat64),
(0.007385550860814029 : GoFloat64),
(0.0028905138367341563 : GoFloat64),
(0.0011927076318336207 : GoFloat64),
(0.0005100697921535113 : GoFloat64),
(0.00022086279071390839 : GoFloat64),
(0.00010801156724758394 : GoFloat64),
(2.5214456545125733e-05 : GoFloat64),
(4.4864094961891516e-05 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var __lgamR = (new GoArray<GoFloat64>((1 : GoFloat64), (1.3920053346762105 : GoFloat64), (0.7219355475671381 : GoFloat64), (0.17193386563280308 : GoFloat64), (0.01864591917156529 : GoFloat64), (0.0007779424963818936 : GoFloat64), (7.326684307446256e-06 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var __lgamS = (new GoArray<GoFloat64>((-0.07721566490153287 : GoFloat64), (0.21498241596060885 : GoFloat64), (0.325778796408931 : GoFloat64), (0.14635047265246445 : GoFloat64), (0.02664227030336386 : GoFloat64), (0.0018402845140733772 : GoFloat64), (3.194753265841009e-05 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var __lgamT = (new GoArray<GoFloat64>(
(0.48383612272381005 : GoFloat64),
(-0.1475877229945939 : GoFloat64),
(0.06462494023913339 : GoFloat64),
(-0.032788541075985965 : GoFloat64),
(0.01797067508118204 : GoFloat64),
(-0.010314224129834144 : GoFloat64),
(0.006100538702462913 : GoFloat64),
(-0.0036845201678113826 : GoFloat64),
(0.0022596478090061247 : GoFloat64),
(-0.0014034646998923284 : GoFloat64),
(0.000881081882437654 : GoFloat64),
(-0.0005385953053567405 : GoFloat64),
(0.00031563207090362595 : GoFloat64),
(-0.00031275416837512086 : GoFloat64),
(0.0003355291926355191 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var __lgamU = (new GoArray<GoFloat64>((-0.07721566490153287 : GoFloat64), (0.6328270640250934 : GoFloat64), (1.4549225013723477 : GoFloat64), (0.9777175279633727 : GoFloat64), (0.22896372806469245 : GoFloat64), (0.013381091853678766 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var __lgamV = (new GoArray<GoFloat64>((1 : GoFloat64), (2.4559779371304113 : GoFloat64), (2.128489763798934 : GoFloat64), (0.7692851504566728 : GoFloat64), (0.10422264559336913 : GoFloat64), (0.003217092422824239 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var __lgamW = (new GoArray<GoFloat64>((0.4189385332046727 : GoFloat64), (0.08333333333333297 : GoFloat64), (-0.0027777777772877554 : GoFloat64), (0.0007936505586430196 : GoFloat64), (-0.00059518755745034 : GoFloat64), (0.0008363399189962821 : GoFloat64), (-0.0016309293409657527 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // pow10tab stores the pre-computed values 10**i for i < 32.
    
    
**/
private var _pow10tab = (new GoArray<GoFloat64>(
(1 : GoFloat64),
(10 : GoFloat64),
(100 : GoFloat64),
(1000 : GoFloat64),
(10000 : GoFloat64),
(100000 : GoFloat64),
(1e+06 : GoFloat64),
(1e+07 : GoFloat64),
(1e+08 : GoFloat64),
(1e+09 : GoFloat64),
(1e+10 : GoFloat64),
(1e+11 : GoFloat64),
(1e+12 : GoFloat64),
(1e+13 : GoFloat64),
(1e+14 : GoFloat64),
(1e+15 : GoFloat64),
(1e+16 : GoFloat64),
(1e+17 : GoFloat64),
(1e+18 : GoFloat64),
(1e+19 : GoFloat64),
(1e+20 : GoFloat64),
(1e+21 : GoFloat64),
(1e+22 : GoFloat64),
(1e+23 : GoFloat64),
(1e+24 : GoFloat64),
(1e+25 : GoFloat64),
(1e+26 : GoFloat64),
(1e+27 : GoFloat64),
(1e+28 : GoFloat64),
(1e+29 : GoFloat64),
(1e+30 : GoFloat64),
(1e+31 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // pow10postab32 stores the pre-computed value for 10**(i*32) at index i.
    
    
**/
private var _pow10postab32 = (new GoArray<GoFloat64>((1 : GoFloat64), (1e+32 : GoFloat64), (1e+64 : GoFloat64), (1e+96 : GoFloat64), (1e+128 : GoFloat64), (1e+160 : GoFloat64), (1e+192 : GoFloat64), (1e+224 : GoFloat64), (1e+256 : GoFloat64), (1e+288 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // pow10negtab32 stores the pre-computed value for 10**(-i*32) at index i.
    
    
**/
private var _pow10negtab32 = (new GoArray<GoFloat64>(
(1 : GoFloat64),
(1e-32 : GoFloat64),
(1e-64 : GoFloat64),
(1e-96 : GoFloat64),
(1e-128 : GoFloat64),
(1e-160 : GoFloat64),
(1e-192 : GoFloat64),
(1e-224 : GoFloat64),
(1e-256 : GoFloat64),
(1e-288 : GoFloat64),
(1e-320 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // sin coefficients
    
    
**/
private var __sin = (new GoArray<GoFloat64>((1.5896230157654656e-10 : GoFloat64), (-2.5050747762857807e-08 : GoFloat64), (2.7557313621385722e-06 : GoFloat64), (-0.0001984126982958954 : GoFloat64), (0.008333333333322118 : GoFloat64), (-0.1666666666666663 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // cos coefficients
    
    
**/
private var __cos = (new GoArray<GoFloat64>((-1.1358536521387682e-11 : GoFloat64), (2.087570084197473e-09 : GoFloat64), (-2.755731417929674e-07 : GoFloat64), (2.4801587288851704e-05 : GoFloat64), (-0.0013888888888873056 : GoFloat64), (0.041666666666666595 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // tan coefficients
    
    
**/
private var __tanP = (new GoArray<GoFloat64>((-13093.693918138379 : GoFloat64), (1.1535166483858742e+06 : GoFloat64), (-1.7956525197648488e+07 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var __tanQ = (new GoArray<GoFloat64>((1 : GoFloat64), (13681.296347069296 : GoFloat64), (-1.3208923444021097e+06 : GoFloat64), (2.500838018233579e+07 : GoFloat64), (-5.3869575592945464e+07 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _tanhP = (new GoArray<GoFloat64>((-0.9643991794250523 : GoFloat64), (-99.28772310019185 : GoFloat64), (-1614.6876844170845 : GoFloat64)) : GoArray<GoFloat64>);
/**
    
    
    
**/
private var _tanhQ = (new GoArray<GoFloat64>((112.81167849163293 : GoFloat64), (2235.4883906010045 : GoFloat64), (4844.063053251255 : GoFloat64)) : GoArray<GoFloat64>);
/**
    // mPi4 is the binary digits of 4/pi as a uint64 array,
    // that is, 4/pi = Sum mPi4[i]*2^(-64*i)
    // 19 64-bit digits and the leading one bit give 1217 bits
    // of precision to handle the largest possible float64 exponent.
    
    
**/
private var _mPi4 = (new GoArray<GoUInt64>(
(1i64 : GoUInt64),
(5040379952546458195i64 : GoUInt64),
(-554312585572664447i64 : GoUInt64),
(-5276763892624187261i64 : GoUInt64),
(-242412250269775165i64 : GoUInt64),
(7946843935494350272i64 : GoUInt64),
(905889640498799673i64 : GoUInt64),
(-271387810574676355i64 : GoUInt64),
(-3385462365541201655i64 : GoUInt64),
(-3226582509936509822i64 : GoUInt64),
(8296664548579374057i64 : GoUInt64),
(4109744767560208502i64 : GoUInt64),
(4607516669194743839i64 : GoUInt64),
(-2423460969061230018i64 : GoUInt64),
(-2707510419574615186i64 : GoUInt64),
(-7022098299024845734i64 : GoUInt64),
(-1562901285013036298i64 : GoUInt64),
(8795094592981902804i64 : GoUInt64),
(-2884908082597807600i64 : GoUInt64),
(-6051042886442100905i64 : GoUInt64)) : GoArray<GoUInt64>);
/**
    // Export internal functions for testing.
    
    
**/
var expGo = _exp;
/**
    
    
    
**/
var exp2Go = _exp2;
/**
    
    
    
**/
var hypotGo = _hypot;
/**
    
    
    
**/
var sqrtGo = _sqrt;
/**
    
    
    
**/
var trigReduce = _trigReduce;
/**
    
    
    
**/
private final _uvnan = (9221120237041090561i64 : GoUInt64);
/**
    
    
    
**/
private final _uvinf = (9218868437227405312i64 : GoUInt64);
/**
    
    
    
**/
private final _uvneginf = (-4503599627370496i64 : GoUInt64);
/**
    
    
    
**/
private final _uvone = (4607182418800017408i64 : GoUInt64);
/**
    
    
    
**/
private final _mask = (2047i64 : GoUInt64);
/**
    
    
    
**/
private final _shift = (52i64 : GoUInt64);
/**
    
    
    
**/
private final _bias = (1023i64 : GoUInt64);
/**
    
    
    
**/
private final _signMask = (-9223372036854775808i64 : GoUInt64);
/**
    
    
    
**/
private final _fracMask = (4503599627370495i64 : GoUInt64);
/**
    // Mathematical constants.
    
    // https://oeis.org/A001113
**/
final e = (2.718281828459045 : GoFloat64);
/**
    // Mathematical constants.
    
    // https://oeis.org/A000796
**/
final pi = (3.141592653589793 : GoFloat64);
/**
    // Mathematical constants.
    
    // https://oeis.org/A001622
**/
final phi = (1.618033988749895 : GoFloat64);
/**
    // Mathematical constants.
    
    // https://oeis.org/A002193
**/
final sqrt2 = (1.4142135623730951 : GoFloat64);
/**
    // Mathematical constants.
    
    // https://oeis.org/A019774
**/
final sqrtE = (1.6487212707001282 : GoFloat64);
/**
    // Mathematical constants.
    
    // https://oeis.org/A002161
**/
final sqrtPi = (1.772453850905516 : GoFloat64);
/**
    // Mathematical constants.
    
    // https://oeis.org/A139339
**/
final sqrtPhi = (1.272019649514069 : GoFloat64);
/**
    // Mathematical constants.
    
    // https://oeis.org/A002162
**/
final ln2 = (0.6931471805599453 : GoFloat64);
/**
    // Mathematical constants.
    
    
**/
final log2E = (1.4426950408889634 : GoFloat64);
/**
    // Mathematical constants.
    
    // https://oeis.org/A002392
**/
final ln10 = (2.302585092994046 : GoFloat64);
/**
    // Mathematical constants.
    
    
**/
final log10E = (0.4342944819032518 : GoFloat64);
/**
    // Floating-point limit values.
    // Max is the largest finite value representable by the type.
    // SmallestNonzero is the smallest positive, non-zero value representable by the type.
    
    // 3.40282346638528859811704183484516925440e+38
**/
final maxFloat32 = (3.4028234663852886e+38 : GoFloat64);
/**
    // Floating-point limit values.
    // Max is the largest finite value representable by the type.
    // SmallestNonzero is the smallest positive, non-zero value representable by the type.
    
    // 1.401298464324817070923729583289916131280e-45
**/
final smallestNonzeroFloat32 = (1.401298464324817e-45 : GoFloat64);
/**
    // Floating-point limit values.
    // Max is the largest finite value representable by the type.
    // SmallestNonzero is the smallest positive, non-zero value representable by the type.
    
    // 1.79769313486231570814527423731704356798070e+308
**/
final maxFloat64 = (1.7976931348623157e+308 : GoFloat64);
/**
    // Floating-point limit values.
    // Max is the largest finite value representable by the type.
    // SmallestNonzero is the smallest positive, non-zero value representable by the type.
    
    // 4.9406564584124654417656879286822137236505980e-324
**/
final smallestNonzeroFloat64 = (5e-324 : GoFloat64);
/**
    // Integer limit values.
    
    // 32 or 64
**/
private final _intSize = (32i64 : GoUInt64);
/**
    // Integer limit values.
    
    // MaxInt32 or MaxInt64 depending on intSize.
**/
final maxInt = (2147483647i64 : GoUInt64);
/**
    // Integer limit values.
    
    // MinInt32 or MinInt64 depending on intSize.
**/
final minInt = (0i64 : GoUInt64);
/**
    // Integer limit values.
    
    // 127
**/
final maxInt8 = (127i64 : GoUInt64);
/**
    // Integer limit values.
    
    // -128
**/
final minInt8 = (0i64 : GoUInt64);
/**
    // Integer limit values.
    
    // 32767
**/
final maxInt16 = (32767i64 : GoUInt64);
/**
    // Integer limit values.
    
    // -32768
**/
final minInt16 = (0i64 : GoUInt64);
/**
    // Integer limit values.
    
    // 2147483647
**/
final maxInt32 = (2147483647i64 : GoUInt64);
/**
    // Integer limit values.
    
    // -2147483648
**/
final minInt32 = (0i64 : GoUInt64);
/**
    // Integer limit values.
    
    // 9223372036854775807
**/
final maxInt64 = (9223372036854775807i64 : GoUInt64);
/**
    // Integer limit values.
    
    // -9223372036854775808
**/
final minInt64 = (0i64 : GoUInt64);
/**
    // Integer limit values.
    
    // MaxUint32 or MaxUint64 depending on intSize.
**/
final maxUint = (4294967295i64 : GoUInt64);
/**
    // Integer limit values.
    
    // 255
**/
final maxUint8 = (255i64 : GoUInt64);
/**
    // Integer limit values.
    
    // 65535
**/
final maxUint16 = (65535i64 : GoUInt64);
/**
    // Integer limit values.
    
    // 4294967295
**/
final maxUint32 = (4294967295i64 : GoUInt64);
/**
    // Integer limit values.
    
    // 18446744073709551615
**/
final maxUint64 = (-1i64 : GoUInt64);
/**
    
    
    
**/
private final _haveArchMax = false;
/**
    
    
    
**/
private final _haveArchMin = false;
/**
    
    
    // 0x3FEB0AC160000000
**/
private final _erx = (0.8450629115104675 : GoFloat64);
/**
    // Coefficients for approximation to  erf in [0, 0.84375]
    
    // 0x3FC06EBA8214DB69
**/
private final _efx = (0.1283791670955126 : GoFloat64);
/**
    
    
    // 0x3FF06EBA8214DB69
**/
private final _efx8 = (1.0270333367641007 : GoFloat64);
/**
    
    
    // 0x3FC06EBA8214DB68
**/
private final _pp0 = (0.12837916709551256 : GoFloat64);
/**
    
    
    // 0xBFD4CD7D691CB913
**/
private final _pp1 = (-0.3250421072470015 : GoFloat64);
/**
    
    
    // 0xBF9D2A51DBD7194F
**/
private final _pp2 = (-0.02848174957559851 : GoFloat64);
/**
    
    
    // 0xBF77A291236668E4
**/
private final _pp3 = (-0.005770270296489442 : GoFloat64);
/**
    
    
    // 0xBEF8EAD6120016AC
**/
private final _pp4 = (-2.3763016656650163e-05 : GoFloat64);
/**
    
    
    // 0x3FD97779CDDADC09
**/
private final _qq1 = (0.39791722395915535 : GoFloat64);
/**
    
    
    // 0x3FB0A54C5536CEBA
**/
private final _qq2 = (0.0650222499887673 : GoFloat64);
/**
    
    
    // 0x3F74D022C4D36B0F
**/
private final _qq3 = (0.005081306281875766 : GoFloat64);
/**
    
    
    // 0x3F215DC9221C1A10
**/
private final _qq4 = (0.00013249473800432164 : GoFloat64);
/**
    
    
    // 0xBED09C4342A26120
**/
private final _qq5 = (-3.960228278775368e-06 : GoFloat64);
/**
    // Coefficients for approximation to  erf  in [0.84375, 1.25]
    
    // 0xBF6359B8BEF77538
**/
private final _pa0 = (-0.0023621185607526594 : GoFloat64);
/**
    
    
    // 0x3FDA8D00AD92B34D
**/
private final _pa1 = (0.41485611868374833 : GoFloat64);
/**
    
    
    // 0xBFD7D240FBB8C3F1
**/
private final _pa2 = (-0.3722078760357013 : GoFloat64);
/**
    
    
    // 0x3FD45FCA805120E4
**/
private final _pa3 = (0.31834661990116175 : GoFloat64);
/**
    
    
    // 0xBFBC63983D3E28EC
**/
private final _pa4 = (-0.11089469428239668 : GoFloat64);
/**
    
    
    // 0x3FA22A36599795EB
**/
private final _pa5 = (0.035478304325618236 : GoFloat64);
/**
    
    
    // 0xBF61BF380A96073F
**/
private final _pa6 = (-0.002166375594868791 : GoFloat64);
/**
    
    
    // 0x3FBB3E6618EEE323
**/
private final _qa1 = (0.10642088040084423 : GoFloat64);
/**
    
    
    // 0x3FE14AF092EB6F33
**/
private final _qa2 = (0.540397917702171 : GoFloat64);
/**
    
    
    // 0x3FB2635CD99FE9A7
**/
private final _qa3 = (0.07182865441419627 : GoFloat64);
/**
    
    
    // 0x3FC02660E763351F
**/
private final _qa4 = (0.12617121980876164 : GoFloat64);
/**
    
    
    // 0x3F8BEDC26B51DD1C
**/
private final _qa5 = (0.01363708391202905 : GoFloat64);
/**
    
    
    // 0x3F888B545735151D
**/
private final _qa6 = (0.011984499846799107 : GoFloat64);
/**
    // Coefficients for approximation to  erfc in [1.25, 1/0.35]
    
    // 0xBF843412600D6435
**/
private final _ra0 = (-0.009864944034847148 : GoFloat64);
/**
    
    
    // 0xBFE63416E4BA7360
**/
private final _ra1 = (-0.6938585727071818 : GoFloat64);
/**
    
    
    // 0xC0251E0441B0E726
**/
private final _ra2 = (-10.558626225323291 : GoFloat64);
/**
    
    
    // 0xC04F300AE4CBA38D
**/
private final _ra3 = (-62.375332450326006 : GoFloat64);
/**
    
    
    // 0xC0644CB184282266
**/
private final _ra4 = (-162.39666946257347 : GoFloat64);
/**
    
    
    // 0xC067135CEBCCABB2
**/
private final _ra5 = (-184.60509290671104 : GoFloat64);
/**
    
    
    // 0xC054526557E4D2F2
**/
private final _ra6 = (-81.2874355063066 : GoFloat64);
/**
    
    
    // 0xC023A0EFC69AC25C
**/
private final _ra7 = (-9.814329344169145 : GoFloat64);
/**
    
    
    // 0x4033A6B9BD707687
**/
private final _sa1 = (19.651271667439257 : GoFloat64);
/**
    
    
    // 0x4061350C526AE721
**/
private final _sa2 = (137.65775414351904 : GoFloat64);
/**
    
    
    // 0x407B290DD58A1A71
**/
private final _sa3 = (434.56587747522923 : GoFloat64);
/**
    
    
    // 0x40842B1921EC2868
**/
private final _sa4 = (645.3872717332679 : GoFloat64);
/**
    
    
    // 0x407AD02157700314
**/
private final _sa5 = (429.00814002756783 : GoFloat64);
/**
    
    
    // 0x405B28A3EE48AE2C
**/
private final _sa6 = (108.63500554177944 : GoFloat64);
/**
    
    
    // 0x401A47EF8E484A93
**/
private final _sa7 = (6.570249770319282 : GoFloat64);
/**
    
    
    // 0xBFAEEFF2EE749A62
**/
private final _sa8 = (-0.0604244152148581 : GoFloat64);
/**
    // Coefficients for approximation to  erfc in [1/.35, 28]
    
    // 0xBF84341239E86F4A
**/
private final _rb0 = (-0.0098649429247001 : GoFloat64);
/**
    
    
    // 0xBFE993BA70C285DE
**/
private final _rb1 = (-0.799283237680523 : GoFloat64);
/**
    
    
    // 0xC031C209555F995A
**/
private final _rb2 = (-17.757954917754752 : GoFloat64);
/**
    
    
    // 0xC064145D43C5ED98
**/
private final _rb3 = (-160.63638485582192 : GoFloat64);
/**
    
    
    // 0xC083EC881375F228
**/
private final _rb4 = (-637.5664433683896 : GoFloat64);
/**
    
    
    // 0xC09004616A2E5992
**/
private final _rb5 = (-1025.0951316110772 : GoFloat64);
/**
    
    
    // 0xC07E384E9BDC383F
**/
private final _rb6 = (-483.5191916086514 : GoFloat64);
/**
    
    
    // 0x403E568B261D5190
**/
private final _sb1 = (30.33806074348246 : GoFloat64);
/**
    
    
    // 0x40745CAE221B9F0A
**/
private final _sb2 = (325.7925129965739 : GoFloat64);
/**
    
    
    // 0x409802EB189D5118
**/
private final _sb3 = (1536.729586084437 : GoFloat64);
/**
    
    
    // 0x40A8FFB7688C246A
**/
private final _sb4 = (3199.8582195085955 : GoFloat64);
/**
    
    
    // 0x40A3F219CEDF3BE6
**/
private final _sb5 = (2553.0504064331644 : GoFloat64);
/**
    
    
    // 0x407DA874E79FE763
**/
private final _sb6 = (474.52854120695537 : GoFloat64);
/**
    
    
    // 0xC03670E242712D62
**/
private final _sb7 = (-22.44095244658582 : GoFloat64);
/**
    // Coefficients for approximation to erf in |x| <= 0.85
    
    
**/
private final _a0 = (1.1975323115670913 : GoFloat64);
/**
    
    
    
**/
private final _a1 = (47.07268811238398 : GoFloat64);
/**
    
    
    
**/
private final _a2 = (697.062665343896 : GoFloat64);
/**
    
    
    
**/
private final _a3 = (4854.886889384388 : GoFloat64);
/**
    
    
    
**/
private final _a4 = (16235.862515167575 : GoFloat64);
/**
    
    
    
**/
private final _a5 = (23782.041382114385 : GoFloat64);
/**
    
    
    
**/
private final _a6 = (11819.493347062295 : GoFloat64);
/**
    
    
    
**/
private final _a7 = (887.0940696254552 : GoFloat64);
/**
    
    
    
**/
private final _b0 = (1 : GoFloat64);
/**
    
    
    
**/
private final _b1 = (42.31333070160091 : GoFloat64);
/**
    
    
    
**/
private final _b2 = (687.1870074920579 : GoFloat64);
/**
    
    
    
**/
private final _b3 = (5394.196021424751 : GoFloat64);
/**
    
    
    
**/
private final _b4 = (21213.794301586597 : GoFloat64);
/**
    
    
    
**/
private final _b5 = (39307.89580009271 : GoFloat64);
/**
    
    
    
**/
private final _b6 = (28729.085735721943 : GoFloat64);
/**
    
    
    
**/
private final _b7 = (5226.495278852854 : GoFloat64);
/**
    // Coefficients for approximation to erf in 0.85 < |x| <= 1-2*exp(-25)
    
    
**/
private final _c0 = (1.4234371107496835 : GoFloat64);
/**
    
    
    
**/
private final _c1 = (4.630337846156546 : GoFloat64);
/**
    
    
    
**/
private final _c2 = (5.769497221460691 : GoFloat64);
/**
    
    
    
**/
private final _c3 = (3.6478483247632045 : GoFloat64);
/**
    
    
    
**/
private final _c4 = (1.2704582524523684 : GoFloat64);
/**
    
    
    
**/
private final _c5 = (0.2417807251774506 : GoFloat64);
/**
    
    
    
**/
private final _c6 = (0.022723844989269184 : GoFloat64);
/**
    
    
    
**/
private final _c7 = (0.0007745450142783414 : GoFloat64);
/**
    
    
    
**/
private final _d0 = (1.4142135623730951 : GoFloat64);
/**
    
    
    
**/
private final _d1 = (2.9036514445419948 : GoFloat64);
/**
    
    
    
**/
private final _d2 = (2.3707661626024534 : GoFloat64);
/**
    
    
    
**/
private final _d3 = (0.9754783200178743 : GoFloat64);
/**
    
    
    
**/
private final _d4 = (0.2094506521051275 : GoFloat64);
/**
    
    
    
**/
private final _d5 = (0.021494160384252878 : GoFloat64);
/**
    
    
    
**/
private final _d6 = (0.0007744145906515771 : GoFloat64);
/**
    
    
    
**/
private final _d7 = (1.4859850019840355e-09 : GoFloat64);
/**
    // Coefficients for approximation to erf in 1-2*exp(-25) < |x| < 1
    
    
**/
private final _e0 = (6.657904643501103 : GoFloat64);
/**
    
    
    
**/
private final _e1 = (5.463784911164114 : GoFloat64);
/**
    
    
    
**/
private final _e2 = (1.7848265399172913 : GoFloat64);
/**
    
    
    
**/
private final _e3 = (0.29656057182850487 : GoFloat64);
/**
    
    
    
**/
private final _e4 = (0.026532189526576124 : GoFloat64);
/**
    
    
    
**/
private final _e5 = (0.0012426609473880784 : GoFloat64);
/**
    
    
    
**/
private final _e6 = (2.7115555687434876e-05 : GoFloat64);
/**
    
    
    
**/
private final _e7 = (2.0103343992922881e-07 : GoFloat64);
/**
    
    
    
**/
private final _f0 = (1.4142135623730951 : GoFloat64);
/**
    
    
    
**/
private final _f1 = (0.8482908416595164 : GoFloat64);
/**
    
    
    
**/
private final _f2 = (0.19364809469506591 : GoFloat64);
/**
    
    
    
**/
private final _f3 = (0.02103693768272069 : GoFloat64);
/**
    
    
    
**/
private final _f4 = (0.0011128009970788597 : GoFloat64);
/**
    
    
    
**/
private final _f5 = (2.6110884050805935e-05 : GoFloat64);
/**
    
    
    
**/
private final _f6 = (2.010321207683943e-07 : GoFloat64);
/**
    
    
    
**/
private final _f7 = (2.8910246058729655e-15 : GoFloat64);
/**
    
    
    
**/
private final _haveArchExp2 = false;
/**
    
    
    
**/
private final _haveArchExp = false;
/**
    
    
    
**/
final reduceThreshold = (536870912i64 : GoUInt64);
/**
    
    
    
**/
private final _haveArchFloor = true;
/**
    
    
    
**/
private final _haveArchCeil = true;
/**
    
    
    
**/
private final _haveArchTrunc = true;
/**
    
    
    
**/
private final _haveArchHypot = false;
/**
    
    
    
**/
private final _haveArchLog = false;
/**
    
    
    
**/
private final _haveArchModf = false;
/**
    
    
    
**/
private final _haveArchAcos = false;
/**
    
    
    
**/
private final _haveArchAcosh = false;
/**
    
    
    
**/
private final _haveArchAsin = false;
/**
    
    
    
**/
private final _haveArchAsinh = false;
/**
    
    
    
**/
private final _haveArchAtan = false;
/**
    
    
    
**/
private final _haveArchAtan2 = false;
/**
    
    
    
**/
private final _haveArchAtanh = false;
/**
    
    
    
**/
private final _haveArchCbrt = false;
/**
    
    
    
**/
private final _haveArchCos = false;
/**
    
    
    
**/
private final _haveArchCosh = false;
/**
    
    
    
**/
private final _haveArchErf = false;
/**
    
    
    
**/
private final _haveArchErfc = false;
/**
    
    
    
**/
private final _haveArchExpm1 = false;
/**
    
    
    
**/
private final _haveArchFrexp = false;
/**
    
    
    
**/
private final _haveArchLdexp = false;
/**
    
    
    
**/
private final _haveArchLog10 = false;
/**
    
    
    
**/
private final _haveArchLog2 = false;
/**
    
    
    
**/
private final _haveArchLog1p = false;
/**
    
    
    
**/
private final _haveArchMod = false;
/**
    
    
    
**/
private final _haveArchPow = false;
/**
    
    
    
**/
private final _haveArchRemainder = false;
/**
    
    
    
**/
private final _haveArchSin = false;
/**
    
    
    
**/
private final _haveArchSinh = false;
/**
    
    
    
**/
private final _haveArchTan = false;
/**
    
    
    
**/
private final _haveArchTanh = false;
/**
    // reduceThreshold is the maximum value of x where the reduction using Pi/4
    // in 3 float64 parts still gives accurate results. This threshold
    // is set by y*C being representable as a float64 without error
    // where y is given by y = floor(x * (4 / Pi)) and C is the leading partial
    // terms of 4/Pi. Since the leading terms (PI4A and PI4B in sin.go) have 30
    // and 32 trailing zero bits, y should have less than 30 significant bits.
    //
    //	y < 1<<30  -> floor(x*4/Pi) < 1<<30 -> x < (1<<30 - 1) * Pi/4
    //
    // So, conservatively we can take x < 1<<29.
    // Above this threshold Payne-Hanek range reduction must be used.
    
    
**/
private final _reduceThreshold = (536870912i64 : GoUInt64);
/**
    // Abs returns the absolute value of x.
    //
    // Special cases are:
    //
    //	Abs(±Inf) = +Inf
    //	Abs(NaN) = NaN
**/
function abs(_x:GoFloat64):GoFloat64 return std.Math.abs(_x.toBasic());
/**
    // Acosh returns the inverse hyperbolic cosine of x.
    //
    // Special cases are:
    //
    //	Acosh(+Inf) = +Inf
    //	Acosh(x) = NaN if x < 1
    //	Acosh(NaN) = NaN
**/
function acosh(_x:GoFloat64):GoFloat64 {
        if (false) {
            return _archAcosh(_x);
        };
        return _acosh(_x);
    }
private function _acosh(_x:GoFloat64):GoFloat64 {
        {};
        if ((_x < (1 : GoFloat64)) || isNaN(_x)) {
            return naN();
        } else if (_x == (1 : GoFloat64)) {
            return (0 : GoFloat64);
        } else if (_x >= (2.68435456e+08 : GoFloat64)) {
            return log(_x) + (0.6931471805599453 : GoFloat64);
        } else if (_x > (2 : GoFloat64)) {
            return log(((2 : GoFloat64) * _x) - ((1 : GoFloat64) / (_x + sqrt((_x * _x) - (1 : GoFloat64)))));
        };
        var _t:GoFloat64 = _x - (1 : GoFloat64);
        return log1p(_t + sqrt(((2 : GoFloat64) * _t) + (_t * _t)));
    }
/**
    // Asin returns the arcsine, in radians, of x.
    //
    // Special cases are:
    //
    //	Asin(±0) = ±0
    //	Asin(x) = NaN if x < -1 or x > 1
**/
function asin(_x:GoFloat64):GoFloat64 return std.Math.asin(_x.toBasic());
private function _asin(_x:GoFloat64):GoFloat64 {
        if (_x == (0 : GoFloat64)) {
            return _x;
        };
        var _sign:Bool = false;
        if (_x < (0 : GoFloat64)) {
            _x = -_x;
            _sign = true;
        };
        if (_x > (1 : GoFloat64)) {
            return naN();
        };
        var _temp:GoFloat64 = sqrt((1 : GoFloat64) - (_x * _x));
        if (_x > (0.7 : GoFloat64)) {
            _temp = (1.5707963267948966 : GoFloat64) - _satan(_temp / _x);
        } else {
            _temp = _satan(_x / _temp);
        };
        if (_sign) {
            _temp = -_temp;
        };
        return _temp;
    }
/**
    // Acos returns the arccosine, in radians, of x.
    //
    // Special case is:
    //
    //	Acos(x) = NaN if x < -1 or x > 1
**/
function acos(_x:GoFloat64):GoFloat64 return std.Math.acos(_x.toBasic());
private function _acos(_x:GoFloat64):GoFloat64 {
        return (1.5707963267948966 : GoFloat64) - asin(_x);
    }
/**
    // Asinh returns the inverse hyperbolic sine of x.
    //
    // Special cases are:
    //
    //	Asinh(±0) = ±0
    //	Asinh(±Inf) = ±Inf
    //	Asinh(NaN) = NaN
**/
function asinh(_x:GoFloat64):GoFloat64 {
        if (false) {
            return _archAsinh(_x);
        };
        return _asinh(_x);
    }
private function _asinh(_x:GoFloat64):GoFloat64 {
        {};
        if (isNaN(_x) || isInf(_x, (0 : GoInt))) {
            return _x;
        };
        var _sign:Bool = false;
        if (_x < (0 : GoFloat64)) {
            _x = -_x;
            _sign = true;
        };
        var _temp:GoFloat64 = (0 : GoFloat64);
        if (_x > (2.68435456e+08 : GoFloat64)) {
            _temp = log(_x) + (0.6931471805599453 : GoFloat64);
        } else if (_x > (2 : GoFloat64)) {
            _temp = log(((2 : GoFloat64) * _x) + ((1 : GoFloat64) / (sqrt((_x * _x) + (1 : GoFloat64)) + _x)));
        } else if (_x < (3.725290298461914e-09 : GoFloat64)) {
            _temp = _x;
        } else {
            _temp = log1p(_x + ((_x * _x) / ((1 : GoFloat64) + sqrt((1 : GoFloat64) + (_x * _x)))));
        };
        if (_sign) {
            _temp = -_temp;
        };
        return _temp;
    }
/**
    // xatan evaluates a series valid in the range [0, 0.66].
**/
private function _xatan(_x:GoFloat64):GoFloat64 {
        {};
        var _z:GoFloat64 = _x * _x;
        _z = (_z * (((((((((-0.8750608600031904 : GoFloat64) * _z) + (-16.157537187333652 : GoFloat64)) * _z) + (-75.00855792314705 : GoFloat64)) * _z) + (-122.88666844901361 : GoFloat64)) * _z) + (-64.85021904942025 : GoFloat64))) / (((((((((_z + (24.858464901423062 : GoFloat64)) * _z) + (165.02700983169885 : GoFloat64)) * _z) + (432.88106049129027 : GoFloat64)) * _z) + (485.3903996359137 : GoFloat64)) * _z) + (194.5506571482614 : GoFloat64));
        _z = (_x * _z) + _x;
        return _z;
    }
/**
    // satan reduces its argument (known to be positive)
    // to the range [0, 0.66] and calls xatan.
**/
private function _satan(_x:GoFloat64):GoFloat64 {
        {};
        if (_x <= (0.66 : GoFloat64)) {
            return _xatan(_x);
        };
        if (_x > (2.414213562373095 : GoFloat64)) {
            return ((1.5707963267948966 : GoFloat64) - _xatan((1 : GoFloat64) / _x)) + (6.123233995736766e-17 : GoFloat64);
        };
        return ((0.7853981633974483 : GoFloat64) + _xatan((_x - (1 : GoFloat64)) / (_x + (1 : GoFloat64)))) + (3.061616997868383e-17 : GoFloat64);
    }
/**
    // Atan returns the arctangent, in radians, of x.
    //
    // Special cases are:
    //
    //	Atan(±0) = ±0
    //	Atan(±Inf) = ±Pi/2
**/
function atan(_x:GoFloat64):GoFloat64 return std.Math.atan(_x.toBasic());
private function _atan(_x:GoFloat64):GoFloat64 {
        if (_x == (0 : GoFloat64)) {
            return _x;
        };
        if (_x > (0 : GoFloat64)) {
            return _satan(_x);
        };
        return -_satan(-_x);
    }
/**
    // Atan2 returns the arc tangent of y/x, using
    // the signs of the two to determine the quadrant
    // of the return value.
    //
    // Special cases are (in order):
    //
    //	Atan2(y, NaN) = NaN
    //	Atan2(NaN, x) = NaN
    //	Atan2(+0, x>=0) = +0
    //	Atan2(-0, x>=0) = -0
    //	Atan2(+0, x<=-0) = +Pi
    //	Atan2(-0, x<=-0) = -Pi
    //	Atan2(y>0, 0) = +Pi/2
    //	Atan2(y<0, 0) = -Pi/2
    //	Atan2(+Inf, +Inf) = +Pi/4
    //	Atan2(-Inf, +Inf) = -Pi/4
    //	Atan2(+Inf, -Inf) = 3Pi/4
    //	Atan2(-Inf, -Inf) = -3Pi/4
    //	Atan2(y, +Inf) = 0
    //	Atan2(y>0, -Inf) = +Pi
    //	Atan2(y<0, -Inf) = -Pi
    //	Atan2(+Inf, x) = +Pi/2
    //	Atan2(-Inf, x) = -Pi/2
**/
function atan2(_y:GoFloat64, _x:GoFloat64):GoFloat64 return std.Math.atan2(_y.toBasic(), _x.toBasic());
private function _atan2(_y:GoFloat64, _x:GoFloat64):GoFloat64 {
        if (isNaN(_y) || isNaN(_x)) {
            return naN();
        } else if (_y == (0 : GoFloat64)) {
            if ((_x >= (0 : GoFloat64)) && !signbit(_x)) {
                return copysign((0 : GoFloat64), _y);
            };
            return copysign((3.141592653589793 : GoFloat64), _y);
        } else if (_x == (0 : GoFloat64)) {
            return copysign((1.5707963267948966 : GoFloat64), _y);
        } else if (isInf(_x, (0 : GoInt))) {
            if (isInf(_x, (1 : GoInt))) {
                if (isInf(_y, (0 : GoInt))) {
                    return copysign((0.7853981633974483 : GoFloat64), _y);
                } else {
                    return copysign((0 : GoFloat64), _y);
                };
            };
            if (isInf(_y, (0 : GoInt))) {
                return copysign((2.356194490192345 : GoFloat64), _y);
            } else {
                return copysign((3.141592653589793 : GoFloat64), _y);
            };
        } else if (isInf(_y, (0 : GoInt))) {
            return copysign((1.5707963267948966 : GoFloat64), _y);
        };
        var _q:GoFloat64 = atan(_y / _x);
        if (_x < (0 : GoFloat64)) {
            if (_q <= (0 : GoFloat64)) {
                return _q + (3.141592653589793 : GoFloat64);
            };
            return _q - (3.141592653589793 : GoFloat64);
        };
        return _q;
    }
/**
    // Atanh returns the inverse hyperbolic tangent of x.
    //
    // Special cases are:
    //
    //	Atanh(1) = +Inf
    //	Atanh(±0) = ±0
    //	Atanh(-1) = -Inf
    //	Atanh(x) = NaN if x < -1 or x > 1
    //	Atanh(NaN) = NaN
**/
function atanh(_x:GoFloat64):GoFloat64 {
        if (false) {
            return _archAtanh(_x);
        };
        return _atanh(_x);
    }
private function _atanh(_x:GoFloat64):GoFloat64 {
        {};
        if (((_x < (-1 : GoFloat64)) || (_x > (1 : GoFloat64))) || isNaN(_x)) {
            return naN();
        } else if (_x == (1 : GoFloat64)) {
            return inf((1 : GoInt));
        } else if (_x == (-1 : GoFloat64)) {
            return inf((-1 : GoInt));
        };
        var _sign:Bool = false;
        if (_x < (0 : GoFloat64)) {
            _x = -_x;
            _sign = true;
        };
        var _temp:GoFloat64 = (0 : GoFloat64);
        if (_x < (3.725290298461914e-09 : GoFloat64)) {
            _temp = _x;
        } else if (_x < (0.5 : GoFloat64)) {
            _temp = _x + _x;
            _temp = (0.5 : GoFloat64) * log1p(_temp + ((_temp * _x) / ((1 : GoFloat64) - _x)));
        } else {
            _temp = (0.5 : GoFloat64) * log1p((_x + _x) / ((1 : GoFloat64) - _x));
        };
        if (_sign) {
            _temp = -_temp;
        };
        return _temp;
    }
/**
    // Inf returns positive infinity if sign >= 0, negative infinity if sign < 0.
**/
function inf(_sign:GoInt):GoFloat64 {
        if (_sign >= 0) return std.Math.POSITIVE_INFINITY;
        return std.Math.NEGATIVE_INFINITY;
    }
/**
    // NaN returns an IEEE 754 “not-a-number” value.
**/
function naN():GoFloat64 return std.Math.NaN;
/**
    // IsNaN reports whether f is an IEEE 754 “not-a-number” value.
**/
function isNaN(_f:GoFloat64):Bool return std.Math.isNaN(_f.toBasic());
/**
    // IsInf reports whether f is an infinity, according to sign.
    // If sign > 0, IsInf reports whether f is positive infinity.
    // If sign < 0, IsInf reports whether f is negative infinity.
    // If sign == 0, IsInf reports whether f is either infinity.
**/
function isInf(_f:GoFloat64, _sign:GoInt):Bool return _sign.toBasic() >= 0 && _f == std.Math.POSITIVE_INFINITY || _sign.toBasic() <= 0 && _f == std.Math.NEGATIVE_INFINITY;
/**
    // normalize returns a normal number y and exponent exp
    // satisfying x == y × 2**exp. It assumes x is finite and non-zero.
**/
private function _normalize(_x:GoFloat64):{ var _0 : GoFloat64; var _1 : GoInt; } {
        var _y:GoFloat64 = (0 : GoFloat64), _exp:GoInt = (0 : GoInt);
        {};
        if (abs(_x) < (2.2250738585072014e-308 : GoFloat64)) {
            return { _0 : _x * (4.503599627370496e+15 : GoFloat64), _1 : (-52 : GoInt) };
        };
        return { _0 : _x, _1 : (0 : GoInt) };
    }
/**
    // Cbrt returns the cube root of x.
    //
    // Special cases are:
    //
    //	Cbrt(±0) = ±0
    //	Cbrt(±Inf) = ±Inf
    //	Cbrt(NaN) = NaN
**/
function cbrt(_x:GoFloat64):GoFloat64 {
        if (false) {
            return _archCbrt(_x);
        };
        return _cbrt(_x);
    }
private function _cbrt(_x:GoFloat64):GoFloat64 {
        {};
        if (((_x == (0 : GoFloat64)) || isNaN(_x)) || isInf(_x, (0 : GoInt))) {
            return _x;
        };
        var _sign:Bool = false;
        if (_x < (0 : GoFloat64)) {
            _x = -_x;
            _sign = true;
        };
        var _t:GoFloat64 = float64frombits((float64bits(_x) / (3i64 : GoUInt64)) + (3071306043645493248i64 : GoUInt64));
        if (_x < (2.2250738585072014e-308 : GoFloat64)) {
            _t = (1.8014398509481984e+16 : GoFloat64);
            _t = _t * (_x);
            _t = float64frombits((float64bits(_t) / (3i64 : GoUInt64)) + (2990241250352824320i64 : GoUInt64));
        };
        var _r:GoFloat64 = (_t * _t) / _x;
        var _s:GoFloat64 = (0.5428571428571428 : GoFloat64) + (_r * _t);
        _t = _t * ((0.35714285714285715 : GoFloat64) + ((1.6071428571428572 : GoFloat64) / ((_s + (1.4142857142857144 : GoFloat64)) + ((-0.7053061224489796 : GoFloat64) / _s))));
        _t = float64frombits((float64bits(_t) & (-1073741824i64 : GoUInt64)) + (1073741824i64 : GoUInt64));
        _s = _t * _t;
        _r = _x / _s;
        var _w:GoFloat64 = _t + _t;
        _r = (_r - _t) / (_w + _r);
        _t = _t + (_t * _r);
        if (_sign) {
            _t = -_t;
        };
        return _t;
    }
/**
    // Copysign returns a value with the magnitude of f
    // and the sign of sign.
**/
function copysign(_f:GoFloat64, _sign:GoFloat64):GoFloat64 {
        {};
        return float64frombits((float64bits(_f) & ((-9223372036854775808i64 : GoUInt64) ^ (-1i32 : GoInt))) | (float64bits(_sign) & (-9223372036854775808i64 : GoUInt64)));
    }
/**
    // Dim returns the maximum of x-y or 0.
    //
    // Special cases are:
    //
    //	Dim(+Inf, +Inf) = NaN
    //	Dim(-Inf, -Inf) = NaN
    //	Dim(x, NaN) = Dim(NaN, x) = NaN
**/
function dim(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
        var _v:GoFloat64 = _x - _y;
        if (_v <= (0 : GoFloat64)) {
            return (0 : GoFloat64);
        };
        return _v;
    }
/**
    // Max returns the larger of x or y.
    //
    // Special cases are:
    //
    //	Max(x, +Inf) = Max(+Inf, x) = +Inf
    //	Max(x, NaN) = Max(NaN, x) = NaN
    //	Max(+0, ±0) = Max(±0, +0) = +0
    //	Max(-0, -0) = -0
**/
function max(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
        if (_x > 0 && !std.Math.isFinite(_x.toBasic()) || _y > 0 && !std.Math.isFinite(_y.toBasic())) return inf(1);
        if (_x == 0.0 && !signbit(_x) && !isNaN(_y) || _y == 0.0 && !signbit(_y) && !isNaN(_x)) return 0.0;
        if (isNaN(_x) || isNaN(_y)) return naN();
        return std.Math.max(_x.toBasic(), _y.toBasic());
    }
private function _max(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
        if (isInf(_x, (1 : GoInt)) || isInf(_y, (1 : GoInt))) {
            return inf((1 : GoInt));
        } else if (isNaN(_x) || isNaN(_y)) {
            return naN();
        } else if ((_x == (0 : GoFloat64)) && (_x == _y)) {
            if (signbit(_x)) {
                return _y;
            };
            return _x;
        };
        if (_x > _y) {
            return _x;
        };
        return _y;
    }
/**
    // Min returns the smaller of x or y.
    //
    // Special cases are:
    //
    //	Min(x, -Inf) = Min(-Inf, x) = -Inf
    //	Min(x, NaN) = Min(NaN, x) = NaN
    //	Min(-0, ±0) = Min(±0, -0) = -0
**/
function min(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
        if (_x < 0 && !std.Math.isFinite(_x.toBasic()) || _y < 0 && !std.Math.isFinite(_y.toBasic())) return inf(-1);
        if (_x == 0.0 && signbit(_x) && !isNaN(_y) || _y == 0.0 && signbit(_y) && !isNaN(_x)) return negZero();
        if (isNaN(_x) || isNaN(_y)) return naN();
        return std.Math.min(_x.toBasic(), _y.toBasic());
    }
private function _min(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
        if (isInf(_x, (-1 : GoInt)) || isInf(_y, (-1 : GoInt))) {
            return inf((-1 : GoInt));
        } else if (isNaN(_x) || isNaN(_y)) {
            return naN();
        } else if ((_x == (0 : GoFloat64)) && (_x == _y)) {
            if (signbit(_x)) {
                return _x;
            };
            return _y;
        };
        if (_x < _y) {
            return _x;
        };
        return _y;
    }
private function _archMax(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archMin(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
/**
    // Erf returns the error function of x.
    //
    // Special cases are:
    //
    //	Erf(+Inf) = 1
    //	Erf(-Inf) = -1
    //	Erf(NaN) = NaN
**/
function erf(_x:GoFloat64):GoFloat64 {
        if (false) {
            return _archErf(_x);
        };
        return _erf(_x);
    }
private function _erf(_x:GoFloat64):GoFloat64 {
        {};
        if (isNaN(_x)) {
            return naN();
        } else if (isInf(_x, (1 : GoInt))) {
            return (1 : GoFloat64);
        } else if (isInf(_x, (-1 : GoInt))) {
            return (-1 : GoFloat64);
        };
        var _sign:Bool = false;
        if (_x < (0 : GoFloat64)) {
            _x = -_x;
            _sign = true;
        };
        if (_x < (0.84375 : GoFloat64)) {
            var _temp:GoFloat64 = (0 : GoFloat64);
            if (_x < (3.725290298461914e-09 : GoFloat64)) {
                if (_x < (2.848094538889218e-306 : GoFloat64)) {
                    _temp = (0.125 : GoFloat64) * (((8 : GoFloat64) * _x) + ((1.0270333367641007 : GoFloat64) * _x));
                } else {
                    _temp = _x + ((0.1283791670955126 : GoFloat64) * _x);
                };
            } else {
                var _z:GoFloat64 = _x * _x;
                var _r:GoFloat64 = (0.12837916709551256 : GoFloat64) + (_z * ((-0.3250421072470015 : GoFloat64) + (_z * ((-0.02848174957559851 : GoFloat64) + (_z * ((-0.005770270296489442 : GoFloat64) + (_z * (-2.3763016656650163e-05 : GoFloat64))))))));
                var _s:GoFloat64 = (1 : GoFloat64) + (_z * ((0.39791722395915535 : GoFloat64) + (_z * ((0.0650222499887673 : GoFloat64) + (_z * ((0.005081306281875766 : GoFloat64) + (_z * ((0.00013249473800432164 : GoFloat64) + (_z * (-3.960228278775368e-06 : GoFloat64))))))))));
                var _y:GoFloat64 = _r / _s;
                _temp = _x + (_x * _y);
            };
            if (_sign) {
                return -_temp;
            };
            return _temp;
        };
        if (_x < (1.25 : GoFloat64)) {
            var _s:GoFloat64 = _x - (1 : GoFloat64);
            var p:GoFloat64 = (-0.0023621185607526594 : GoFloat64) + (_s * ((0.41485611868374833 : GoFloat64) + (_s * ((-0.3722078760357013 : GoFloat64) + (_s * ((0.31834661990116175 : GoFloat64) + (_s * ((-0.11089469428239668 : GoFloat64) + (_s * ((0.035478304325618236 : GoFloat64) + (_s * (-0.002166375594868791 : GoFloat64))))))))))));
            var q:GoFloat64 = (1 : GoFloat64) + (_s * ((0.10642088040084423 : GoFloat64) + (_s * ((0.540397917702171 : GoFloat64) + (_s * ((0.07182865441419627 : GoFloat64) + (_s * ((0.12617121980876164 : GoFloat64) + (_s * ((0.01363708391202905 : GoFloat64) + (_s * (0.011984499846799107 : GoFloat64))))))))))));
            if (_sign) {
                return (-0.8450629115104675 : GoFloat64) - (p / q);
            };
            return (0.8450629115104675 : GoFloat64) + (p / q);
        };
        if (_x >= (6 : GoFloat64)) {
            if (_sign) {
                return (-1 : GoFloat64);
            };
            return (1 : GoFloat64);
        };
        var _s:GoFloat64 = (1 : GoFloat64) / (_x * _x);
        var __0:GoFloat64 = (0 : GoFloat64), __1:GoFloat64 = (0 : GoFloat64), s:GoFloat64 = __1, r:GoFloat64 = __0;
        if (_x < (2.857142857142857 : GoFloat64)) {
            r = (-0.009864944034847148 : GoFloat64) + (_s * ((-0.6938585727071818 : GoFloat64) + (_s * ((-10.558626225323291 : GoFloat64) + (_s * ((-62.375332450326006 : GoFloat64) + (_s * ((-162.39666946257347 : GoFloat64) + (_s * ((-184.60509290671104 : GoFloat64) + (_s * ((-81.2874355063066 : GoFloat64) + (_s * (-9.814329344169145 : GoFloat64))))))))))))));
            s = (1 : GoFloat64) + (_s * ((19.651271667439257 : GoFloat64) + (_s * ((137.65775414351904 : GoFloat64) + (_s * ((434.56587747522923 : GoFloat64) + (_s * ((645.3872717332679 : GoFloat64) + (_s * ((429.00814002756783 : GoFloat64) + (_s * ((108.63500554177944 : GoFloat64) + (_s * ((6.570249770319282 : GoFloat64) + (_s * (-0.0604244152148581 : GoFloat64))))))))))))))));
        } else {
            r = (-0.0098649429247001 : GoFloat64) + (_s * ((-0.799283237680523 : GoFloat64) + (_s * ((-17.757954917754752 : GoFloat64) + (_s * ((-160.63638485582192 : GoFloat64) + (_s * ((-637.5664433683896 : GoFloat64) + (_s * ((-1025.0951316110772 : GoFloat64) + (_s * (-483.5191916086514 : GoFloat64))))))))))));
            s = (1 : GoFloat64) + (_s * ((30.33806074348246 : GoFloat64) + (_s * ((325.7925129965739 : GoFloat64) + (_s * ((1536.729586084437 : GoFloat64) + (_s * ((3199.8582195085955 : GoFloat64) + (_s * ((2553.0504064331644 : GoFloat64) + (_s * ((474.52854120695537 : GoFloat64) + (_s * (-22.44095244658582 : GoFloat64))))))))))))));
        };
        var _z:GoFloat64 = float64frombits(float64bits(_x) & (-4294967296i64 : GoUInt64));
        var _r:GoFloat64 = exp((-_z * _z) - (0.5625 : GoFloat64)) * exp(((_z - _x) * (_z + _x)) + (r / s));
        if (_sign) {
            return (_r / _x) - (1 : GoFloat64);
        };
        return (1 : GoFloat64) - (_r / _x);
    }
/**
    // Erfc returns the complementary error function of x.
    //
    // Special cases are:
    //
    //	Erfc(+Inf) = 0
    //	Erfc(-Inf) = 2
    //	Erfc(NaN) = NaN
**/
function erfc(_x:GoFloat64):GoFloat64 {
        if (false) {
            return _archErfc(_x);
        };
        return _erfc(_x);
    }
private function _erfc(_x:GoFloat64):GoFloat64 {
        {};
        if (isNaN(_x)) {
            return naN();
        } else if (isInf(_x, (1 : GoInt))) {
            return (0 : GoFloat64);
        } else if (isInf(_x, (-1 : GoInt))) {
            return (2 : GoFloat64);
        };
        var _sign:Bool = false;
        if (_x < (0 : GoFloat64)) {
            _x = -_x;
            _sign = true;
        };
        if (_x < (0.84375 : GoFloat64)) {
            var _temp:GoFloat64 = (0 : GoFloat64);
            if (_x < (1.3877787807814457e-17 : GoFloat64)) {
                _temp = _x;
            } else {
                var _z:GoFloat64 = _x * _x;
                var _r:GoFloat64 = (0.12837916709551256 : GoFloat64) + (_z * ((-0.3250421072470015 : GoFloat64) + (_z * ((-0.02848174957559851 : GoFloat64) + (_z * ((-0.005770270296489442 : GoFloat64) + (_z * (-2.3763016656650163e-05 : GoFloat64))))))));
                var _s:GoFloat64 = (1 : GoFloat64) + (_z * ((0.39791722395915535 : GoFloat64) + (_z * ((0.0650222499887673 : GoFloat64) + (_z * ((0.005081306281875766 : GoFloat64) + (_z * ((0.00013249473800432164 : GoFloat64) + (_z * (-3.960228278775368e-06 : GoFloat64))))))))));
                var _y:GoFloat64 = _r / _s;
                if (_x < (0.25 : GoFloat64)) {
                    _temp = _x + (_x * _y);
                } else {
                    _temp = (0.5 : GoFloat64) + ((_x * _y) + (_x - (0.5 : GoFloat64)));
                };
            };
            if (_sign) {
                return (1 : GoFloat64) + _temp;
            };
            return (1 : GoFloat64) - _temp;
        };
        if (_x < (1.25 : GoFloat64)) {
            var _s:GoFloat64 = _x - (1 : GoFloat64);
            var p:GoFloat64 = (-0.0023621185607526594 : GoFloat64) + (_s * ((0.41485611868374833 : GoFloat64) + (_s * ((-0.3722078760357013 : GoFloat64) + (_s * ((0.31834661990116175 : GoFloat64) + (_s * ((-0.11089469428239668 : GoFloat64) + (_s * ((0.035478304325618236 : GoFloat64) + (_s * (-0.002166375594868791 : GoFloat64))))))))))));
            var q:GoFloat64 = (1 : GoFloat64) + (_s * ((0.10642088040084423 : GoFloat64) + (_s * ((0.540397917702171 : GoFloat64) + (_s * ((0.07182865441419627 : GoFloat64) + (_s * ((0.12617121980876164 : GoFloat64) + (_s * ((0.01363708391202905 : GoFloat64) + (_s * (0.011984499846799107 : GoFloat64))))))))))));
            if (_sign) {
                return (1.8450629115104675 : GoFloat64) + (p / q);
            };
            return (0.15493708848953247 : GoFloat64) - (p / q);
        };
        if (_x < (28 : GoFloat64)) {
            var _s:GoFloat64 = (1 : GoFloat64) / (_x * _x);
            var __0:GoFloat64 = (0 : GoFloat64), __1:GoFloat64 = (0 : GoFloat64), s:GoFloat64 = __1, r:GoFloat64 = __0;
            if (_x < (2.857142857142857 : GoFloat64)) {
                r = (-0.009864944034847148 : GoFloat64) + (_s * ((-0.6938585727071818 : GoFloat64) + (_s * ((-10.558626225323291 : GoFloat64) + (_s * ((-62.375332450326006 : GoFloat64) + (_s * ((-162.39666946257347 : GoFloat64) + (_s * ((-184.60509290671104 : GoFloat64) + (_s * ((-81.2874355063066 : GoFloat64) + (_s * (-9.814329344169145 : GoFloat64))))))))))))));
                s = (1 : GoFloat64) + (_s * ((19.651271667439257 : GoFloat64) + (_s * ((137.65775414351904 : GoFloat64) + (_s * ((434.56587747522923 : GoFloat64) + (_s * ((645.3872717332679 : GoFloat64) + (_s * ((429.00814002756783 : GoFloat64) + (_s * ((108.63500554177944 : GoFloat64) + (_s * ((6.570249770319282 : GoFloat64) + (_s * (-0.0604244152148581 : GoFloat64))))))))))))))));
            } else {
                if (_sign && (_x > (6 : GoFloat64))) {
                    return (2 : GoFloat64);
                };
                r = (-0.0098649429247001 : GoFloat64) + (_s * ((-0.799283237680523 : GoFloat64) + (_s * ((-17.757954917754752 : GoFloat64) + (_s * ((-160.63638485582192 : GoFloat64) + (_s * ((-637.5664433683896 : GoFloat64) + (_s * ((-1025.0951316110772 : GoFloat64) + (_s * (-483.5191916086514 : GoFloat64))))))))))));
                s = (1 : GoFloat64) + (_s * ((30.33806074348246 : GoFloat64) + (_s * ((325.7925129965739 : GoFloat64) + (_s * ((1536.729586084437 : GoFloat64) + (_s * ((3199.8582195085955 : GoFloat64) + (_s * ((2553.0504064331644 : GoFloat64) + (_s * ((474.52854120695537 : GoFloat64) + (_s * (-22.44095244658582 : GoFloat64))))))))))))));
            };
            var _z:GoFloat64 = float64frombits(float64bits(_x) & (-4294967296i64 : GoUInt64));
            var _r:GoFloat64 = exp((-_z * _z) - (0.5625 : GoFloat64)) * exp(((_z - _x) * (_z + _x)) + (r / s));
            if (_sign) {
                return (2 : GoFloat64) - (_r / _x);
            };
            return _r / _x;
        };
        if (_sign) {
            return (2 : GoFloat64);
        };
        return (0 : GoFloat64);
    }
/**
    // Erfinv returns the inverse error function of x.
    //
    // Special cases are:
    //
    //	Erfinv(1) = +Inf
    //	Erfinv(-1) = -Inf
    //	Erfinv(x) = NaN if x < -1 or x > 1
    //	Erfinv(NaN) = NaN
**/
function erfinv(_x:GoFloat64):GoFloat64 {
        if ((isNaN(_x) || (_x <= (-1 : GoFloat64))) || (_x >= (1 : GoFloat64))) {
            if ((_x == (-1 : GoFloat64)) || (_x == (1 : GoFloat64))) {
                return inf((_x : GoInt));
            };
            return naN();
        };
        var _sign:Bool = false;
        if (_x < (0 : GoFloat64)) {
            _x = -_x;
            _sign = true;
        };
        var _ans:GoFloat64 = (0 : GoFloat64);
        if (_x <= (0.85 : GoFloat64)) {
            var _r:GoFloat64 = (0.180625 : GoFloat64) - (((0.25 : GoFloat64) * _x) * _x);
            var _z1:GoFloat64 = ((((((((((((((887.0940696254552 : GoFloat64) * _r) + (11819.493347062295 : GoFloat64)) * _r) + (23782.041382114385 : GoFloat64)) * _r) + (16235.862515167575 : GoFloat64)) * _r) + (4854.886889384388 : GoFloat64)) * _r) + (697.062665343896 : GoFloat64)) * _r) + (47.07268811238398 : GoFloat64)) * _r) + (1.1975323115670913 : GoFloat64);
            var _z2:GoFloat64 = ((((((((((((((5226.495278852854 : GoFloat64) * _r) + (28729.085735721943 : GoFloat64)) * _r) + (39307.89580009271 : GoFloat64)) * _r) + (21213.794301586597 : GoFloat64)) * _r) + (5394.196021424751 : GoFloat64)) * _r) + (687.1870074920579 : GoFloat64)) * _r) + (42.31333070160091 : GoFloat64)) * _r) + (1 : GoFloat64);
            _ans = (_x * _z1) / _z2;
        } else {
            var __0:GoFloat64 = (0 : GoFloat64), __1:GoFloat64 = (0 : GoFloat64), _z2:GoFloat64 = __1, _z1:GoFloat64 = __0;
            var _r:GoFloat64 = sqrt((0.6931471805599453 : GoFloat64) - log((1 : GoFloat64) - _x));
            if (_r <= (5 : GoFloat64)) {
                _r = _r - (1.6 : GoFloat64);
                _z1 = ((((((((((((((0.0007745450142783414 : GoFloat64) * _r) + (0.022723844989269184 : GoFloat64)) * _r) + (0.2417807251774506 : GoFloat64)) * _r) + (1.2704582524523684 : GoFloat64)) * _r) + (3.6478483247632045 : GoFloat64)) * _r) + (5.769497221460691 : GoFloat64)) * _r) + (4.630337846156546 : GoFloat64)) * _r) + (1.4234371107496835 : GoFloat64);
                _z2 = ((((((((((((((1.4859850019840355e-09 : GoFloat64) * _r) + (0.0007744145906515771 : GoFloat64)) * _r) + (0.021494160384252878 : GoFloat64)) * _r) + (0.2094506521051275 : GoFloat64)) * _r) + (0.9754783200178743 : GoFloat64)) * _r) + (2.3707661626024534 : GoFloat64)) * _r) + (2.9036514445419948 : GoFloat64)) * _r) + (1.4142135623730951 : GoFloat64);
            } else {
                _r = _r - (5 : GoFloat64);
                _z1 = ((((((((((((((2.0103343992922881e-07 : GoFloat64) * _r) + (2.7115555687434876e-05 : GoFloat64)) * _r) + (0.0012426609473880784 : GoFloat64)) * _r) + (0.026532189526576124 : GoFloat64)) * _r) + (0.29656057182850487 : GoFloat64)) * _r) + (1.7848265399172913 : GoFloat64)) * _r) + (5.463784911164114 : GoFloat64)) * _r) + (6.657904643501103 : GoFloat64);
                _z2 = ((((((((((((((2.8910246058729655e-15 : GoFloat64) * _r) + (2.010321207683943e-07 : GoFloat64)) * _r) + (2.6110884050805935e-05 : GoFloat64)) * _r) + (0.0011128009970788597 : GoFloat64)) * _r) + (0.02103693768272069 : GoFloat64)) * _r) + (0.19364809469506591 : GoFloat64)) * _r) + (0.8482908416595164 : GoFloat64)) * _r) + (1.4142135623730951 : GoFloat64);
            };
            _ans = _z1 / _z2;
        };
        if (_sign) {
            return -_ans;
        };
        return _ans;
    }
/**
    // Erfcinv returns the inverse of Erfc(x).
    //
    // Special cases are:
    //
    //	Erfcinv(0) = +Inf
    //	Erfcinv(2) = -Inf
    //	Erfcinv(x) = NaN if x < 0 or x > 2
    //	Erfcinv(NaN) = NaN
**/
function erfcinv(_x:GoFloat64):GoFloat64 {
        return erfinv((1 : GoFloat64) - _x);
    }
/**
    // Exp returns e**x, the base-e exponential of x.
    //
    // Special cases are:
    //
    //	Exp(+Inf) = +Inf
    //	Exp(NaN) = NaN
    //
    // Very large values overflow to 0 or +Inf.
    // Very small values underflow to 1.
**/
function exp(_x:GoFloat64):GoFloat64 return std.Math.exp(_x.toBasic());
private function _exp(_x:GoFloat64):GoFloat64 {
        {};
        if (isNaN(_x) || isInf(_x, (1 : GoInt))) {
            return _x;
        } else if (isInf(_x, (-1 : GoInt))) {
            return (0 : GoFloat64);
        } else if (_x > (709.782712893384 : GoFloat64)) {
            return inf((1 : GoInt));
        } else if (_x < (-745.1332191019411 : GoFloat64)) {
            return (0 : GoFloat64);
        } else if (((-3.725290298461914e-09 : GoFloat64) < _x) && (_x < (3.725290298461914e-09 : GoFloat64))) {
            return (1 : GoFloat64) + _x;
        };
        var _k:GoInt = (0 : GoInt);
        if (_x < (0 : GoFloat64)) {
            _k = (((1.4426950408889634 : GoFloat64) * _x) - (0.5 : GoFloat64) : GoInt);
        } else if (_x > (0 : GoFloat64)) {
            _k = (((1.4426950408889634 : GoFloat64) * _x) + (0.5 : GoFloat64) : GoInt);
        };
        var _hi:GoFloat64 = _x - ((_k : GoFloat64) * (0.6931471803691238 : GoFloat64));
        var _lo:GoFloat64 = (_k : GoFloat64) * (1.9082149292705877e-10 : GoFloat64);
        return _expmulti(_hi, _lo, _k);
    }
/**
    // Exp2 returns 2**x, the base-2 exponential of x.
    //
    // Special cases are the same as Exp.
**/
function exp2(_x:GoFloat64):GoFloat64 {
        if (false) {
            return _archExp2(_x);
        };
        return _exp2(_x);
    }
private function _exp2(_x:GoFloat64):GoFloat64 {
        {};
        if (isNaN(_x) || isInf(_x, (1 : GoInt))) {
            return _x;
        } else if (isInf(_x, (-1 : GoInt))) {
            return (0 : GoFloat64);
        } else if (_x > (1023.9999999999999 : GoFloat64)) {
            return inf((1 : GoInt));
        } else if (_x < (-1074 : GoFloat64)) {
            return (0 : GoFloat64);
        };
        var _k:GoInt = (0 : GoInt);
        if (_x > (0 : GoFloat64)) {
            _k = (_x + (0.5 : GoFloat64) : GoInt);
        } else if (_x < (0 : GoFloat64)) {
            _k = (_x - (0.5 : GoFloat64) : GoInt);
        };
        var _t:GoFloat64 = _x - (_k : GoFloat64);
        var _hi:GoFloat64 = _t * (0.6931471803691238 : GoFloat64);
        var _lo:GoFloat64 = -_t * (1.9082149292705877e-10 : GoFloat64);
        return _expmulti(_hi, _lo, _k);
    }
/**
    // exp1 returns e**r × 2**k where r = hi - lo and |r| ≤ ln(2)/2.
**/
private function _expmulti(_hi:GoFloat64, _lo:GoFloat64, _k:GoInt):GoFloat64 {
        {};
        var _r:GoFloat64 = _hi - _lo;
        var _t:GoFloat64 = _r * _r;
        var _c:GoFloat64 = _r - (_t * ((0.16666666666666666 : GoFloat64) + (_t * ((-0.0027777777777015593 : GoFloat64) + (_t * ((6.613756321437934e-05 : GoFloat64) + (_t * ((-1.6533902205465252e-06 : GoFloat64) + (_t * (4.1381367970572385e-08 : GoFloat64))))))))));
        var _y:GoFloat64 = (1 : GoFloat64) - ((_lo - ((_r * _c) / ((2 : GoFloat64) - _c))) - _hi);
        return ldexp(_y, _k);
    }
private function _archExp2(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archExp(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
/**
    // Expm1 returns e**x - 1, the base-e exponential of x minus 1.
    // It is more accurate than Exp(x) - 1 when x is near zero.
    //
    // Special cases are:
    //
    //	Expm1(+Inf) = +Inf
    //	Expm1(-Inf) = -1
    //	Expm1(NaN) = NaN
    //
    // Very large values overflow to -1 or +Inf.
**/
function expm1(_x:GoFloat64):GoFloat64 {
        if (false) {
            return _archExpm1(_x);
        };
        return _expm1(_x);
    }
private function _expm1(_x:GoFloat64):GoFloat64 {
        {};
        if (isInf(_x, (1 : GoInt)) || isNaN(_x)) {
            return _x;
        } else if (isInf(_x, (-1 : GoInt))) {
            return (-1 : GoFloat64);
        };
        var _absx:GoFloat64 = _x;
        var _sign:Bool = false;
        if (_x < (0 : GoFloat64)) {
            _absx = -_absx;
            _sign = true;
        };
        if (_absx >= (38.816242111356935 : GoFloat64)) {
            if (_sign) {
                return (-1 : GoFloat64);
            };
            if (_absx >= (709.782712893384 : GoFloat64)) {
                return inf((1 : GoInt));
            };
        };
        var _c:GoFloat64 = (0 : GoFloat64);
        var _k:GoInt = (0 : GoInt);
        if (_absx > (0.34657359027997264 : GoFloat64)) {
            var __0:GoFloat64 = (0 : GoFloat64), __1:GoFloat64 = (0 : GoFloat64), _lo:GoFloat64 = __1, _hi:GoFloat64 = __0;
            if (_absx < (1.0397207708399179 : GoFloat64)) {
                if (!_sign) {
                    _hi = _x - (0.6931471803691238 : GoFloat64);
                    _lo = (1.9082149292705877e-10 : GoFloat64);
                    _k = (1 : GoInt);
                } else {
                    _hi = _x + (0.6931471803691238 : GoFloat64);
                    _lo = (-1.9082149292705877e-10 : GoFloat64);
                    _k = (-1 : GoInt);
                };
            } else {
                if (!_sign) {
                    _k = (((1.4426950408889634 : GoFloat64) * _x) + (0.5 : GoFloat64) : GoInt);
                } else {
                    _k = (((1.4426950408889634 : GoFloat64) * _x) - (0.5 : GoFloat64) : GoInt);
                };
                var _t:GoFloat64 = (_k : GoFloat64);
                _hi = _x - (_t * (0.6931471803691238 : GoFloat64));
                _lo = _t * (1.9082149292705877e-10 : GoFloat64);
            };
            _x = _hi - _lo;
            _c = (_hi - _x) - _lo;
        } else if (_absx < (5.551115123125783e-17 : GoFloat64)) {
            return _x;
        } else {
            _k = (0 : GoInt);
        };
        var _hfx:GoFloat64 = (0.5 : GoFloat64) * _x;
        var _hxs:GoFloat64 = _x * _hfx;
        var _r1:GoFloat64 = (1 : GoFloat64) + (_hxs * ((-0.03333333333333313 : GoFloat64) + (_hxs * ((0.0015873015872548146 : GoFloat64) + (_hxs * ((-7.93650757867488e-05 : GoFloat64) + (_hxs * ((4.008217827329362e-06 : GoFloat64) + (_hxs * (-2.0109921818362437e-07 : GoFloat64))))))))));
        var _t:GoFloat64 = (3 : GoFloat64) - (_r1 * _hfx);
        var _e:GoFloat64 = _hxs * ((_r1 - _t) / ((6 : GoFloat64) - (_x * _t)));
        if (_k == ((0 : GoInt))) {
            return _x - ((_x * _e) - _hxs);
        };
        _e = ((_x * (_e - _c)) - _c);
        _e = _e - (_hxs);
        if (_k == ((-1 : GoInt))) {
            return ((0.5 : GoFloat64) * (_x - _e)) - (0.5 : GoFloat64);
        } else if (_k == ((1 : GoInt))) {
            if (_x < (-0.25 : GoFloat64)) {
                return (-2 : GoFloat64) * (_e - (_x + (0.5 : GoFloat64)));
            };
            return (1 : GoFloat64) + ((2 : GoFloat64) * (_x - _e));
        } else if ((_k <= (-2 : GoInt)) || (_k > (56 : GoInt))) {
            var _y:GoFloat64 = (1 : GoFloat64) - (_e - _x);
            _y = float64frombits(float64bits(_y) + ((_k : GoUInt64) << (52i64 : GoUInt64)));
            return _y - (1 : GoFloat64);
        };
        if (_k < (20 : GoInt)) {
            var _t:GoFloat64 = float64frombits((4607182418800017408i64 : GoUInt64) - ((9007199254740992i64 : GoUInt64) >> (_k : GoUInt)));
            var _y:GoFloat64 = _t - (_e - _x);
            _y = float64frombits(float64bits(_y) + ((_k : GoUInt64) << (52i64 : GoUInt64)));
            return _y;
        };
        _t = float64frombits(((1023 : GoInt) - _k : GoUInt64) << (52i64 : GoUInt64));
        var _y:GoFloat64 = _x - (_e + _t);
        _y++;
        _y = float64frombits(float64bits(_y) + ((_k : GoUInt64) << (52i64 : GoUInt64)));
        return _y;
    }
/**
    // Floor returns the greatest integer value less than or equal to x.
    //
    // Special cases are:
    //
    //	Floor(±0) = ±0
    //	Floor(±Inf) = ±Inf
    //	Floor(NaN) = NaN
**/
function floor(_x:GoFloat64):GoFloat64 {
        if (!std.Math.isFinite(_x.toBasic()) || std.Math.isNaN(_x.toBasic())) return _x;
        return std.Math.ffloor(_x.toBasic());
    }
private function _floor(_x:GoFloat64):GoFloat64 {
        if (((_x == (0 : GoFloat64)) || isNaN(_x)) || isInf(_x, (0 : GoInt))) {
            return _x;
        };
        if (_x < (0 : GoFloat64)) {
            var __tmp__ = modf(-_x), _d:GoFloat64 = __tmp__._0, _fract:GoFloat64 = __tmp__._1;
            if (_fract != (0 : GoFloat64)) {
                _d = _d + (1 : GoFloat64);
            };
            return -_d;
        };
        var __tmp__ = modf(_x), _d:GoFloat64 = __tmp__._0, __0:GoFloat64 = __tmp__._1;
        return _d;
    }
/**
    // Ceil returns the least integer value greater than or equal to x.
    //
    // Special cases are:
    //
    //	Ceil(±0) = ±0
    //	Ceil(±Inf) = ±Inf
    //	Ceil(NaN) = NaN
**/
function ceil(_x:GoFloat64):GoFloat64 {
        if (!std.Math.isFinite(_x.toBasic()) || std.Math.isNaN(_x.toBasic())) return _x;
        if (_x == 0.0 && signbit(_x)) return negZero();
        if (_x > -1.0 && _x < 0.0) {
            return negZero();
        };
        return std.Math.ceil(_x.toBasic());
    }
private function _ceil(_x:GoFloat64):GoFloat64 {
        return -floor(-_x);
    }
/**
    // Trunc returns the integer value of x.
    //
    // Special cases are:
    //
    //	Trunc(±0) = ±0
    //	Trunc(±Inf) = ±Inf
    //	Trunc(NaN) = NaN
**/
function trunc(_x:GoFloat64):GoFloat64 return _x > 0 ? floor(_x) : ceil(_x);
private function _trunc(_x:GoFloat64):GoFloat64 {
        if (((_x == (0 : GoFloat64)) || isNaN(_x)) || isInf(_x, (0 : GoInt))) {
            return _x;
        };
        var __tmp__ = modf(_x), _d:GoFloat64 = __tmp__._0, __0:GoFloat64 = __tmp__._1;
        return _d;
    }
/**
    // Round returns the nearest integer, rounding half away from zero.
    //
    // Special cases are:
    //
    //	Round(±0) = ±0
    //	Round(±Inf) = ±Inf
    //	Round(NaN) = NaN
**/
function round(_x:GoFloat64):GoFloat64 {
        var _bits:GoUInt64 = float64bits(_x);
        var _e:GoUInt = (_bits >> (52i64 : GoUInt64) : GoUInt) & (2047u32 : GoUInt);
        if (_e < (1023u32 : GoUInt)) {
            _bits = _bits & ((-9223372036854775808i64 : GoUInt64));
            if (_e == ((1022u32 : GoUInt))) {
                _bits = _bits | ((4607182418800017408i64 : GoUInt64));
            };
        } else if (_e < (1075u32 : GoUInt)) {
            {};
            _e = _e - ((1023u32 : GoUInt));
            _bits = _bits + ((2251799813685248i64 : GoUInt64) >> _e);
            _bits = _bits & (((4503599627370495i64 : GoUInt64) >> _e) ^ (-1i32 : GoInt));
        };
        return float64frombits(_bits);
    }
/**
    // RoundToEven returns the nearest integer, rounding ties to even.
    //
    // Special cases are:
    //
    //	RoundToEven(±0) = ±0
    //	RoundToEven(±Inf) = ±Inf
    //	RoundToEven(NaN) = NaN
**/
function roundToEven(_x:GoFloat64):GoFloat64 {
        var _bits:GoUInt64 = float64bits(_x);
        var _e:GoUInt = (_bits >> (52i64 : GoUInt64) : GoUInt) & (2047u32 : GoUInt);
        if (_e >= (1023u32 : GoUInt)) {
            {};
            _e = _e - ((1023u32 : GoUInt));
            _bits = _bits + (((2251799813685247i64 : GoUInt64) + ((_bits >> ((52u32 : GoUInt) - _e)) & (1i64 : GoUInt64))) >> _e);
            _bits = _bits & (((4503599627370495i64 : GoUInt64) >> _e) ^ (-1i32 : GoInt));
        } else if ((_e == (1022u32 : GoUInt)) && ((_bits & (4503599627370495i64 : GoUInt64)) != (0i64 : GoUInt64))) {
            _bits = (_bits & (-9223372036854775808i64 : GoUInt64)) | (4607182418800017408i64 : GoUInt64);
        } else {
            _bits = _bits & ((-9223372036854775808i64 : GoUInt64));
        };
        return float64frombits(_bits);
    }
inline private function _archFloor(_x:GoFloat64):GoFloat64 return floor(_x);
inline private function _archCeil(_x:GoFloat64):GoFloat64 return ceil(_x);
inline private function _archTrunc(_x:GoFloat64):GoFloat64 return trunc(_x);
private function _zero(_x:GoUInt64):GoUInt64 {
        if (_x == ((0i64 : GoUInt64))) {
            return (1i64 : GoUInt64);
        };
        return (0i64 : GoUInt64);
    }
private function _nonzero(_x:GoUInt64):GoUInt64 {
        if (_x != ((0i64 : GoUInt64))) {
            return (1i64 : GoUInt64);
        };
        return (0i64 : GoUInt64);
    }
private function _shl(_u1:GoUInt64, _u2:GoUInt64, _n:GoUInt):{ var _0 : GoUInt64; var _1 : GoUInt64; } {
        var _r1:GoUInt64 = (0 : GoUInt64), _r2:GoUInt64 = (0 : GoUInt64);
        _r1 = ((_u1 << _n) | (_u2 >> ((64u32 : GoUInt) - _n))) | (_u2 << (_n - (64u32 : GoUInt)));
        _r2 = _u2 << _n;
        return { _0 : _r1, _1 : _r2 };
    }
private function _shr(_u1:GoUInt64, _u2:GoUInt64, _n:GoUInt):{ var _0 : GoUInt64; var _1 : GoUInt64; } {
        var _r1:GoUInt64 = (0 : GoUInt64), _r2:GoUInt64 = (0 : GoUInt64);
        _r2 = ((_u2 >> _n) | (_u1 << ((64u32 : GoUInt) - _n))) | (_u1 >> (_n - (64u32 : GoUInt)));
        _r1 = _u1 >> _n;
        return { _0 : _r1, _1 : _r2 };
    }
/**
    // shrcompress compresses the bottom n+1 bits of the two-word
    // value into a single bit. the result is equal to the value
    // shifted to the right by n, except the result's 0th bit is
    // set to the bitwise OR of the bottom n+1 bits.
**/
private function _shrcompress(_u1:GoUInt64, _u2:GoUInt64, _n:GoUInt):{ var _0 : GoUInt64; var _1 : GoUInt64; } {
        var _r1:GoUInt64 = (0 : GoUInt64), _r2:GoUInt64 = (0 : GoUInt64);
        if (_n == ((0u32 : GoUInt))) {
            return { _0 : _u1, _1 : _u2 };
        } else if (_n == ((64u32 : GoUInt))) {
            return { _0 : (0i64 : GoUInt64), _1 : _u1 | _nonzero(_u2) };
        } else if (_n >= (128u32 : GoUInt)) {
            return { _0 : (0i64 : GoUInt64), _1 : _nonzero(_u1 | _u2) };
        } else if (_n < (64u32 : GoUInt)) {
            {
                var __tmp__ = _shr(_u1, _u2, _n);
                _r1 = __tmp__._0;
                _r2 = __tmp__._1;
            };
            _r2 = _r2 | (_nonzero(_u2 & (((1i64 : GoUInt64) << _n) - (1i64 : GoUInt64))));
        } else if (_n < (128u32 : GoUInt)) {
            {
                var __tmp__ = _shr(_u1, _u2, _n);
                _r1 = __tmp__._0;
                _r2 = __tmp__._1;
            };
            _r2 = _r2 | (_nonzero((_u1 & (((1i64 : GoUInt64) << (_n - (64u32 : GoUInt))) - (1i64 : GoUInt64))) | _u2));
        };
        return { _0 : _r1, _1 : _r2 };
    }
private function _lz(_u1:GoUInt64, _u2:GoUInt64):GoInt32 {
        var _l:GoInt32 = (0 : GoInt32);
        _l = (stdgo.math.bits.Bits.leadingZeros64(_u1) : GoInt32);
        if (_l == ((64 : GoInt32))) {
            _l = _l + ((stdgo.math.bits.Bits.leadingZeros64(_u2) : GoInt32));
        };
        return _l;
    }
/**
    // split splits b into sign, biased exponent, and mantissa.
    // It adds the implicit 1 bit to the mantissa for normal values,
    // and normalizes subnormal values.
**/
private function _split(_b:GoUInt64):{ var _0 : GoUInt32; var _1 : GoInt32; var _2 : GoUInt64; } {
        var _sign:GoUInt32 = (0 : GoUInt32), _exp:GoInt32 = (0 : GoInt32), _mantissa:GoUInt64 = (0 : GoUInt64);
        _sign = (_b >> (63i64 : GoUInt64) : GoUInt32);
        _exp = (_b >> (52i64 : GoUInt64) : GoInt32) & (2047 : GoInt32);
        _mantissa = _b & (4503599627370495i64 : GoUInt64);
        if (_exp == ((0 : GoInt32))) {
            var _shift:GoUInt = (stdgo.math.bits.Bits.leadingZeros64(_mantissa) - (11 : GoInt) : GoUInt);
            _mantissa = _mantissa << (_shift);
            _exp = (1 : GoInt32) - (_shift : GoInt32);
        } else {
            _mantissa = _mantissa | ((4503599627370496i64 : GoUInt64));
        };
        return { _0 : _sign, _1 : _exp, _2 : _mantissa };
    }
/**
    // FMA returns x * y + z, computed with only one rounding.
    // (That is, FMA returns the fused multiply-add of x, y, and z.)
**/
function fma(_x:GoFloat64, _y:GoFloat64, _z:GoFloat64):GoFloat64 {
        var __0:GoUInt64 = float64bits(_x), __1:GoUInt64 = float64bits(_y), __2:GoUInt64 = float64bits(_z), _bz:GoUInt64 = __2, _by:GoUInt64 = __1, _bx:GoUInt64 = __0;
        if (((((_x == (0 : GoFloat64)) || (_y == (0 : GoFloat64))) || (_z == (0 : GoFloat64))) || ((_bx & (9218868437227405312i64 : GoUInt64)) == (9218868437227405312i64 : GoUInt64))) || ((_by & (9218868437227405312i64 : GoUInt64)) == (9218868437227405312i64 : GoUInt64))) {
            return (_x * _y) + _z;
        };
        if (_bz & (9218868437227405312i64 : GoUInt64) == ((9218868437227405312i64 : GoUInt64))) {
            return _z;
        };
        var __tmp__ = _split(_bx), _xs:GoUInt32 = __tmp__._0, _xe:GoInt32 = __tmp__._1, _xm:GoUInt64 = __tmp__._2;
        var __tmp__ = _split(_by), _ys:GoUInt32 = __tmp__._0, _ye:GoInt32 = __tmp__._1, _ym:GoUInt64 = __tmp__._2;
        var __tmp__ = _split(_bz), _zs:GoUInt32 = __tmp__._0, _ze:GoInt32 = __tmp__._1, _zm:GoUInt64 = __tmp__._2;
        var _pe:GoInt32 = ((_xe + _ye) - (1023 : GoInt32)) + (1 : GoInt32);
        var __tmp__ = stdgo.math.bits.Bits.mul64(_xm << (10i64 : GoUInt64), _ym << (11i64 : GoUInt64)), _pm1:GoUInt64 = __tmp__._0, _pm2:GoUInt64 = __tmp__._1;
        var __0:GoUInt64 = _zm << (10i64 : GoUInt64), __1:GoUInt64 = (0i64 : GoUInt64), _zm2:GoUInt64 = __1, _zm1:GoUInt64 = __0;
        var _ps:GoUInt32 = _xs ^ _ys;
        var _is62zero:GoUInt = (((-1 ^ _pm1) >> (62i64 : GoUInt64)) & (1i64 : GoUInt64) : GoUInt);
        {
            var __tmp__ = _shl(_pm1, _pm2, _is62zero);
            _pm1 = __tmp__._0;
            _pm2 = __tmp__._1;
        };
        _pe = _pe - ((_is62zero : GoInt32));
        if ((_pe < _ze) || ((_pe == _ze) && (_pm1 < _zm1))) {
            {
                final __tmp__0 = _zs;
                final __tmp__1 = _ze;
                final __tmp__2 = _zm1;
                final __tmp__3 = _zm2;
                final __tmp__4 = _ps;
                final __tmp__5 = _pe;
                final __tmp__6 = _pm1;
                final __tmp__7 = _pm2;
                _ps = __tmp__0;
                _pe = __tmp__1;
                _pm1 = __tmp__2;
                _pm2 = __tmp__3;
                _zs = __tmp__4;
                _ze = __tmp__5;
                _zm1 = __tmp__6;
                _zm2 = __tmp__7;
            };
        };
        {
            var __tmp__ = _shrcompress(_zm1, _zm2, (_pe - _ze : GoUInt));
            _zm1 = __tmp__._0;
            _zm2 = __tmp__._1;
        };
        var __0:GoUInt64 = (0 : GoUInt64), __1:GoUInt64 = (0 : GoUInt64), _c:GoUInt64 = __1, _m:GoUInt64 = __0;
        if (_ps == (_zs)) {
            {
                var __tmp__ = stdgo.math.bits.Bits.add64(_pm2, _zm2, (0i64 : GoUInt64));
                _pm2 = __tmp__._0;
                _c = __tmp__._1;
            };
            {
                var __tmp__ = stdgo.math.bits.Bits.add64(_pm1, _zm1, _c);
                _pm1 = __tmp__._0;
            };
            _pe = _pe - (((-1 ^ _pm1) >> (63i64 : GoUInt64) : GoInt32));
            {
                var __tmp__ = _shrcompress(_pm1, _pm2, ((64i64 : GoUInt64) + (_pm1 >> (63i64 : GoUInt64)) : GoUInt));
                _pm1 = __tmp__._0;
                _m = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = stdgo.math.bits.Bits.sub64(_pm2, _zm2, (0i64 : GoUInt64));
                _pm2 = __tmp__._0;
                _c = __tmp__._1;
            };
            {
                var __tmp__ = stdgo.math.bits.Bits.sub64(_pm1, _zm1, _c);
                _pm1 = __tmp__._0;
            };
            var _nz:GoInt32 = _lz(_pm1, _pm2);
            _pe = _pe - (_nz);
            {
                var __tmp__ = _shl(_pm1, _pm2, (_nz - (1 : GoInt32) : GoUInt));
                _m = __tmp__._0;
                _pm2 = __tmp__._1;
            };
            _m = _m | (_nonzero(_pm2));
        };
        if ((_pe > (2045 : GoInt32)) || ((_pe == (2045 : GoInt32)) && (((_m + (512i64 : GoUInt64)) >> (63i64 : GoUInt64)) == (1i64 : GoUInt64)))) {
            return float64frombits(((_ps : GoUInt64) << (63i64 : GoUInt64)) | (9218868437227405312i64 : GoUInt64));
        };
        if (_pe < (0 : GoInt32)) {
            var _n:GoUInt = (-_pe : GoUInt);
            _m = (_m >> _n) | _nonzero(_m & (((1i64 : GoUInt64) << _n) - (1i64 : GoUInt64)));
            _pe = (0 : GoInt32);
        };
        _m = ((_m + (512i64 : GoUInt64)) >> (10i64 : GoUInt64)) & (-1 ^ _zero((_m & (1023i64 : GoUInt64)) ^ (512i64 : GoUInt64)));
        _pe = _pe & (-(_nonzero(_m) : GoInt32));
        return float64frombits((((_ps : GoUInt64) << (63i64 : GoUInt64)) + ((_pe : GoUInt64) << (52i64 : GoUInt64))) + _m);
    }
/**
    // Frexp breaks f into a normalized fraction
    // and an integral power of two.
    // It returns frac and exp satisfying f == frac × 2**exp,
    // with the absolute value of frac in the interval [½, 1).
    //
    // Special cases are:
    //
    //	Frexp(±0) = ±0, 0
    //	Frexp(±Inf) = ±Inf, 0
    //	Frexp(NaN) = NaN, 0
**/
function frexp(_f:GoFloat64):{ var _0 : GoFloat64; var _1 : GoInt; } {
        var _frac:GoFloat64 = (0 : GoFloat64), _exp:GoInt = (0 : GoInt);
        if (false) {
            return _archFrexp(_f);
        };
        return _frexp(_f);
    }
private function _frexp(_f:GoFloat64):{ var _0 : GoFloat64; var _1 : GoInt; } {
        var _frac:GoFloat64 = (0 : GoFloat64), _exp:GoInt = (0 : GoInt);
        if (_f == (0 : GoFloat64)) {
            return { _0 : _f, _1 : (0 : GoInt) };
        } else if (isInf(_f, (0 : GoInt)) || isNaN(_f)) {
            return { _0 : _f, _1 : (0 : GoInt) };
        };
        {
            var __tmp__ = _normalize(_f);
            _f = __tmp__._0;
            _exp = __tmp__._1;
        };
        var _x:GoUInt64 = float64bits(_f);
        _exp = _exp + ((((_x >> (52i64 : GoUInt64)) & (2047i64 : GoUInt64) : GoInt) - (1023 : GoInt)) + (1 : GoInt));
        _x = _x & ((9218868437227405312i64 : GoUInt64) ^ (-1i32 : GoInt));
        _x = _x | ((4602678819172646912i64 : GoUInt64));
        _frac = float64frombits(_x);
        return { _0 : _frac, _1 : _exp };
    }
/**
    // Gamma function computed by Stirling's formula.
    // The pair of results must be multiplied together to get the actual answer.
    // The multiplication is left to the caller so that, if careful, the caller can avoid
    // infinity for 172 <= x <= 180.
    // The polynomial is valid for 33 <= x <= 172; larger values are only used
    // in reciprocal and produce denormalized floats. The lower precision there
    // masks any imprecision in the polynomial.
**/
private function _stirling(_x:GoFloat64):{ var _0 : GoFloat64; var _1 : GoFloat64; } {
        if (_x > (200 : GoFloat64)) {
            return { _0 : inf((1 : GoInt)), _1 : (1 : GoFloat64) };
        };
        {};
        var _w:GoFloat64 = (1 : GoFloat64) / _x;
        _w = (1 : GoFloat64) + (_w * ((((((((__gamS[(0 : GoInt)] * _w) + __gamS[(1 : GoInt)]) * _w) + __gamS[(2 : GoInt)]) * _w) + __gamS[(3 : GoInt)]) * _w) + __gamS[(4 : GoInt)]));
        var _y1:GoFloat64 = exp(_x);
        var _y2:GoFloat64 = (1 : GoFloat64);
        if (_x > (143.01608 : GoFloat64)) {
            var _v:GoFloat64 = pow(_x, ((0.5 : GoFloat64) * _x) - (0.25 : GoFloat64));
            {
                final __tmp__0 = _v;
                final __tmp__1 = _v / _y1;
                _y1 = __tmp__0;
                _y2 = __tmp__1;
            };
        } else {
            _y1 = pow(_x, _x - (0.5 : GoFloat64)) / _y1;
        };
        return { _0 : _y1, _1 : ((2.5066282746310007 : GoFloat64) * _w) * _y2 };
    }
/**
    // Gamma returns the Gamma function of x.
    //
    // Special cases are:
    //
    //	Gamma(+Inf) = +Inf
    //	Gamma(+0) = +Inf
    //	Gamma(-0) = -Inf
    //	Gamma(x) = NaN for integer x < 0
    //	Gamma(-Inf) = NaN
    //	Gamma(NaN) = NaN
**/
function gamma(_x:GoFloat64):GoFloat64 {
        stdgo.internal.Macro.controlFlow({
            {};
            if ((_isNegInt(_x) || isInf(_x, (-1 : GoInt))) || isNaN(_x)) {
                return naN();
            } else if (isInf(_x, (1 : GoInt))) {
                return inf((1 : GoInt));
            } else if (_x == (0 : GoFloat64)) {
                if (signbit(_x)) {
                    return inf((-1 : GoInt));
                };
                return inf((1 : GoInt));
            };
            var _q:GoFloat64 = abs(_x);
            var _p:GoFloat64 = floor(_q);
            if (_q > (33 : GoFloat64)) {
                if (_x >= (0 : GoFloat64)) {
                    var __tmp__ = _stirling(_x), _y1:GoFloat64 = __tmp__._0, _y2:GoFloat64 = __tmp__._1;
                    return _y1 * _y2;
                };
                var _signgam:GoInt = (1 : GoInt);
                {
                    var _ip:GoInt64 = (_p : GoInt64);
                    if (_ip & (1i64 : GoInt64) == ((0i64 : GoInt64))) {
                        _signgam = (-1 : GoInt);
                    };
                };
                var _z:GoFloat64 = _q - _p;
                if (_z > (0.5 : GoFloat64)) {
                    _p = _p + (1 : GoFloat64);
                    _z = _q - _p;
                };
                _z = _q * sin((3.141592653589793 : GoFloat64) * _z);
                if (_z == (0 : GoFloat64)) {
                    return inf(_signgam);
                };
                var __tmp__ = _stirling(_q), _sq1:GoFloat64 = __tmp__._0, _sq2:GoFloat64 = __tmp__._1;
                var _absz:GoFloat64 = abs(_z);
                var _d:GoFloat64 = (_absz * _sq1) * _sq2;
                if (isInf(_d, (0 : GoInt))) {
                    _z = (((3.141592653589793 : GoFloat64) / _absz) / _sq1) / _sq2;
                } else {
                    _z = (3.141592653589793 : GoFloat64) / _d;
                };
                return (_signgam : GoFloat64) * _z;
            };
            var _z:GoFloat64 = (1 : GoFloat64);
            while (_x >= (3 : GoFloat64)) {
                _x = _x - (1 : GoFloat64);
                _z = _z * _x;
            };
            while (_x < (0 : GoFloat64)) {
                if (_x > (-1e-09 : GoFloat64)) {
                    @:goto "small";
                };
                _z = _z / _x;
                _x = _x + (1 : GoFloat64);
            };
            while (_x < (2 : GoFloat64)) {
                if (_x < (1e-09 : GoFloat64)) {
                    @:goto "small";
                };
                _z = _z / _x;
                _x = _x + (1 : GoFloat64);
            };
            if (_x == (2 : GoFloat64)) {
                return _z;
            };
            _x = _x - (2 : GoFloat64);
            _p = (((((((((((_x * __gamP[(0 : GoInt)]) + __gamP[(1 : GoInt)]) * _x) + __gamP[(2 : GoInt)]) * _x) + __gamP[(3 : GoInt)]) * _x) + __gamP[(4 : GoInt)]) * _x) + __gamP[(5 : GoInt)]) * _x) + __gamP[(6 : GoInt)];
            _q = (((((((((((((_x * __gamQ[(0 : GoInt)]) + __gamQ[(1 : GoInt)]) * _x) + __gamQ[(2 : GoInt)]) * _x) + __gamQ[(3 : GoInt)]) * _x) + __gamQ[(4 : GoInt)]) * _x) + __gamQ[(5 : GoInt)]) * _x) + __gamQ[(6 : GoInt)]) * _x) + __gamQ[(7 : GoInt)];
            return (_z * _p) / _q;
            @:label("small") if (_x == (0 : GoFloat64)) {
                return inf((1 : GoInt));
            };
            return _z / (((1 : GoFloat64) + ((0.5772156649015329 : GoFloat64) * _x)) * _x);
        });
        throw "controlFlow did not return";
    }
private function _isNegInt(_x:GoFloat64):Bool {
        if (_x < (0 : GoFloat64)) {
            var __tmp__ = modf(_x), __0:GoFloat64 = __tmp__._0, _xf:GoFloat64 = __tmp__._1;
            return _xf == (0 : GoFloat64);
        };
        return false;
    }
/**
    // Hypot returns Sqrt(p*p + q*q), taking care to avoid
    // unnecessary overflow and underflow.
    //
    // Special cases are:
    //
    //	Hypot(±Inf, q) = +Inf
    //	Hypot(p, ±Inf) = +Inf
    //	Hypot(NaN, q) = NaN
    //	Hypot(p, NaN) = NaN
**/
function hypot(_p:GoFloat64, _q:GoFloat64):GoFloat64 {
        if (false) {
            return _archHypot(_p, _q);
        };
        return _hypot(_p, _q);
    }
private function _hypot(_p:GoFloat64, _q:GoFloat64):GoFloat64 {
        {
            final __tmp__0 = abs(_p);
            final __tmp__1 = abs(_q);
            _p = __tmp__0;
            _q = __tmp__1;
        };
        if (isInf(_p, (1 : GoInt)) || isInf(_q, (1 : GoInt))) {
            return inf((1 : GoInt));
        } else if (isNaN(_p) || isNaN(_q)) {
            return naN();
        };
        if (_p < _q) {
            {
                final __tmp__0 = _q;
                final __tmp__1 = _p;
                _p = __tmp__0;
                _q = __tmp__1;
            };
        };
        if (_p == (0 : GoFloat64)) {
            return (0 : GoFloat64);
        };
        _q = _q / _p;
        return _p * sqrt((1 : GoFloat64) + (_q * _q));
    }
private function _archHypot(_p:GoFloat64, _q:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
/**
    // J0 returns the order-zero Bessel function of the first kind.
    //
    // Special cases are:
    //
    //	J0(±Inf) = 0
    //	J0(0) = 1
    //	J0(NaN) = NaN
**/
function j0(_x:GoFloat64):GoFloat64 {
        {};
        if (isNaN(_x)) {
            return _x;
        } else if (isInf(_x, (0 : GoInt))) {
            return (0 : GoFloat64);
        } else if (_x == (0 : GoFloat64)) {
            return (1 : GoFloat64);
        };
        _x = abs(_x);
        if (_x >= (2 : GoFloat64)) {
            var __tmp__ = sincos(_x), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
            var _ss:GoFloat64 = _s - _c;
            var _cc:GoFloat64 = _s + _c;
            if (_x < (8.988465674311579e+307 : GoFloat64)) {
                var _z:GoFloat64 = -cos(_x + _x);
                if ((_s * _c) < (0 : GoFloat64)) {
                    _cc = _z / _ss;
                } else {
                    _ss = _z / _cc;
                };
            };
            var _z:GoFloat64 = (0 : GoFloat64);
            if (_x > (6.80564733841877e+38 : GoFloat64)) {
                _z = ((0.5641895835477563 : GoFloat64) * _cc) / sqrt(_x);
            } else {
                var _u:GoFloat64 = _pzero(_x);
                var _v:GoFloat64 = _qzero(_x);
                _z = ((0.5641895835477563 : GoFloat64) * ((_u * _cc) - (_v * _ss))) / sqrt(_x);
            };
            return _z;
        };
        if (_x < (0.0001220703125 : GoFloat64)) {
            if (_x < (7.450580596923828e-09 : GoFloat64)) {
                return (1 : GoFloat64);
            };
            return (1 : GoFloat64) - (((0.25 : GoFloat64) * _x) * _x);
        };
        var _z:GoFloat64 = _x * _x;
        var _r:GoFloat64 = _z * ((0.015624999999999995 : GoFloat64) + (_z * ((-0.00018997929423885472 : GoFloat64) + (_z * ((1.8295404953270067e-06 : GoFloat64) + (_z * (-4.618326885321032e-09 : GoFloat64)))))));
        var _s:GoFloat64 = (1 : GoFloat64) + (_z * ((0.015619102946489001 : GoFloat64) + (_z * ((0.00011692678466333745 : GoFloat64) + (_z * ((5.135465502073181e-07 : GoFloat64) + (_z * (1.1661400333379e-09 : GoFloat64))))))));
        if (_x < (1 : GoFloat64)) {
            return (1 : GoFloat64) + (_z * ((-0.25 : GoFloat64) + (_r / _s)));
        };
        var _u:GoFloat64 = (0.5 : GoFloat64) * _x;
        return (((1 : GoFloat64) + _u) * ((1 : GoFloat64) - _u)) + (_z * (_r / _s));
    }
/**
    // Y0 returns the order-zero Bessel function of the second kind.
    //
    // Special cases are:
    //
    //	Y0(+Inf) = 0
    //	Y0(0) = -Inf
    //	Y0(x < 0) = NaN
    //	Y0(NaN) = NaN
**/
function y0(_x:GoFloat64):GoFloat64 {
        {};
        if ((_x < (0 : GoFloat64)) || isNaN(_x)) {
            return naN();
        } else if (isInf(_x, (1 : GoInt))) {
            return (0 : GoFloat64);
        } else if (_x == (0 : GoFloat64)) {
            return inf((-1 : GoInt));
        };
        if (_x >= (2 : GoFloat64)) {
            var __tmp__ = sincos(_x), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
            var _ss:GoFloat64 = _s - _c;
            var _cc:GoFloat64 = _s + _c;
            if (_x < (8.988465674311579e+307 : GoFloat64)) {
                var _z:GoFloat64 = -cos(_x + _x);
                if ((_s * _c) < (0 : GoFloat64)) {
                    _cc = _z / _ss;
                } else {
                    _ss = _z / _cc;
                };
            };
            var _z:GoFloat64 = (0 : GoFloat64);
            if (_x > (6.80564733841877e+38 : GoFloat64)) {
                _z = ((0.5641895835477563 : GoFloat64) * _ss) / sqrt(_x);
            } else {
                var _u:GoFloat64 = _pzero(_x);
                var _v:GoFloat64 = _qzero(_x);
                _z = ((0.5641895835477563 : GoFloat64) * ((_u * _ss) + (_v * _cc))) / sqrt(_x);
            };
            return _z;
        };
        if (_x <= (7.450580596923828e-09 : GoFloat64)) {
            return (-0.07380429510868723 : GoFloat64) + ((0.6366197723675814 : GoFloat64) * log(_x));
        };
        var _z:GoFloat64 = _x * _x;
        var _u:GoFloat64 = (-0.07380429510868723 : GoFloat64) + (_z * ((0.17666645250918112 : GoFloat64) + (_z * ((-0.01381856719455969 : GoFloat64) + (_z * ((0.00034745343209368365 : GoFloat64) + (_z * ((-3.8140705372436416e-06 : GoFloat64) + (_z * ((1.9559013703502292e-08 : GoFloat64) + (_z * (-3.982051941321034e-11 : GoFloat64))))))))))));
        var _v:GoFloat64 = (1 : GoFloat64) + (_z * ((0.01273048348341237 : GoFloat64) + (_z * ((7.600686273503533e-05 : GoFloat64) + (_z * ((2.591508518404578e-07 : GoFloat64) + (_z * (4.4111031133267547e-10 : GoFloat64))))))));
        return (_u / _v) + (((0.6366197723675814 : GoFloat64) * j0(_x)) * log(_x));
    }
private function _pzero(_x:GoFloat64):GoFloat64 {
        var _p:Ref<GoArray<GoFloat64>> = (null : Ref<GoArray<GoFloat64>>);
        var _q:Ref<GoArray<GoFloat64>> = (null : Ref<GoArray<GoFloat64>>);
        if (_x >= (8 : GoFloat64)) {
            _p = (Go.setRef(_p0R8) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_p0S8) : Ref<GoArray<GoFloat64>>);
        } else if (_x >= (4.5454 : GoFloat64)) {
            _p = (Go.setRef(_p0R5) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_p0S5) : Ref<GoArray<GoFloat64>>);
        } else if (_x >= (2.8571 : GoFloat64)) {
            _p = (Go.setRef(_p0R3) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_p0S3) : Ref<GoArray<GoFloat64>>);
        } else if (_x >= (2 : GoFloat64)) {
            _p = (Go.setRef(_p0R2) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_p0S2) : Ref<GoArray<GoFloat64>>);
        };
        var _z:GoFloat64 = (1 : GoFloat64) / (_x * _x);
        var _r:GoFloat64 = _p[(0 : GoInt)] + (_z * (_p[(1 : GoInt)] + (_z * (_p[(2 : GoInt)] + (_z * (_p[(3 : GoInt)] + (_z * (_p[(4 : GoInt)] + (_z * _p[(5 : GoInt)])))))))));
        var _s:GoFloat64 = (1 : GoFloat64) + (_z * (_q[(0 : GoInt)] + (_z * (_q[(1 : GoInt)] + (_z * (_q[(2 : GoInt)] + (_z * (_q[(3 : GoInt)] + (_z * _q[(4 : GoInt)])))))))));
        return (1 : GoFloat64) + (_r / _s);
    }
private function _qzero(_x:GoFloat64):GoFloat64 {
        var __0:Ref<GoArray<GoFloat64>> = (null : Ref<GoArray<GoFloat64>>), __1:Ref<GoArray<GoFloat64>> = (null : Ref<GoArray<GoFloat64>>), _q:Ref<GoArray<GoFloat64>> = __1, _p:Ref<GoArray<GoFloat64>> = __0;
        if (_x >= (8 : GoFloat64)) {
            _p = (Go.setRef(_q0R8) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_q0S8) : Ref<GoArray<GoFloat64>>);
        } else if (_x >= (4.5454 : GoFloat64)) {
            _p = (Go.setRef(_q0R5) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_q0S5) : Ref<GoArray<GoFloat64>>);
        } else if (_x >= (2.8571 : GoFloat64)) {
            _p = (Go.setRef(_q0R3) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_q0S3) : Ref<GoArray<GoFloat64>>);
        } else if (_x >= (2 : GoFloat64)) {
            _p = (Go.setRef(_q0R2) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_q0S2) : Ref<GoArray<GoFloat64>>);
        };
        var _z:GoFloat64 = (1 : GoFloat64) / (_x * _x);
        var _r:GoFloat64 = _p[(0 : GoInt)] + (_z * (_p[(1 : GoInt)] + (_z * (_p[(2 : GoInt)] + (_z * (_p[(3 : GoInt)] + (_z * (_p[(4 : GoInt)] + (_z * _p[(5 : GoInt)])))))))));
        var _s:GoFloat64 = (1 : GoFloat64) + (_z * (_q[(0 : GoInt)] + (_z * (_q[(1 : GoInt)] + (_z * (_q[(2 : GoInt)] + (_z * (_q[(3 : GoInt)] + (_z * (_q[(4 : GoInt)] + (_z * _q[(5 : GoInt)])))))))))));
        return ((-0.125 : GoFloat64) + (_r / _s)) / _x;
    }
/**
    // J1 returns the order-one Bessel function of the first kind.
    //
    // Special cases are:
    //
    //	J1(±Inf) = 0
    //	J1(NaN) = NaN
**/
function j1(_x:GoFloat64):GoFloat64 {
        {};
        if (isNaN(_x)) {
            return _x;
        } else if (isInf(_x, (0 : GoInt)) || (_x == (0 : GoFloat64))) {
            return (0 : GoFloat64);
        };
        var _sign:Bool = false;
        if (_x < (0 : GoFloat64)) {
            _x = -_x;
            _sign = true;
        };
        if (_x >= (2 : GoFloat64)) {
            var __tmp__ = sincos(_x), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
            var _ss:GoFloat64 = -_s - _c;
            var _cc:GoFloat64 = _s - _c;
            if (_x < (8.988465674311579e+307 : GoFloat64)) {
                var _z:GoFloat64 = cos(_x + _x);
                if ((_s * _c) > (0 : GoFloat64)) {
                    _cc = _z / _ss;
                } else {
                    _ss = _z / _cc;
                };
            };
            var _z:GoFloat64 = (0 : GoFloat64);
            if (_x > (6.80564733841877e+38 : GoFloat64)) {
                _z = ((0.5641895835477563 : GoFloat64) * _cc) / sqrt(_x);
            } else {
                var _u:GoFloat64 = _pone(_x);
                var _v:GoFloat64 = _qone(_x);
                _z = ((0.5641895835477563 : GoFloat64) * ((_u * _cc) - (_v * _ss))) / sqrt(_x);
            };
            if (_sign) {
                return -_z;
            };
            return _z;
        };
        if (_x < (7.450580596923828e-09 : GoFloat64)) {
            return (0.5 : GoFloat64) * _x;
        };
        var _z:GoFloat64 = _x * _x;
        var _r:GoFloat64 = _z * ((-0.0625 : GoFloat64) + (_z * ((0.001407056669551897 : GoFloat64) + (_z * ((-1.599556310840356e-05 : GoFloat64) + (_z * (4.9672799960958445e-08 : GoFloat64)))))));
        var _s:GoFloat64 = (1 : GoFloat64) + (_z * ((0.019153759953836346 : GoFloat64) + (_z * ((0.00018594678558863092 : GoFloat64) + (_z * ((1.1771846404262368e-06 : GoFloat64) + (_z * ((5.0463625707621704e-09 : GoFloat64) + (_z * (1.2354227442613791e-11 : GoFloat64))))))))));
        _r = _r * (_x);
        _z = ((0.5 : GoFloat64) * _x) + (_r / _s);
        if (_sign) {
            return -_z;
        };
        return _z;
    }
/**
    // Y1 returns the order-one Bessel function of the second kind.
    //
    // Special cases are:
    //
    //	Y1(+Inf) = 0
    //	Y1(0) = -Inf
    //	Y1(x < 0) = NaN
    //	Y1(NaN) = NaN
**/
function y1(_x:GoFloat64):GoFloat64 {
        {};
        if ((_x < (0 : GoFloat64)) || isNaN(_x)) {
            return naN();
        } else if (isInf(_x, (1 : GoInt))) {
            return (0 : GoFloat64);
        } else if (_x == (0 : GoFloat64)) {
            return inf((-1 : GoInt));
        };
        if (_x >= (2 : GoFloat64)) {
            var __tmp__ = sincos(_x), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
            var _ss:GoFloat64 = -_s - _c;
            var _cc:GoFloat64 = _s - _c;
            if (_x < (8.988465674311579e+307 : GoFloat64)) {
                var _z:GoFloat64 = cos(_x + _x);
                if ((_s * _c) > (0 : GoFloat64)) {
                    _cc = _z / _ss;
                } else {
                    _ss = _z / _cc;
                };
            };
            var _z:GoFloat64 = (0 : GoFloat64);
            if (_x > (6.80564733841877e+38 : GoFloat64)) {
                _z = ((0.5641895835477563 : GoFloat64) * _ss) / sqrt(_x);
            } else {
                var _u:GoFloat64 = _pone(_x);
                var _v:GoFloat64 = _qone(_x);
                _z = ((0.5641895835477563 : GoFloat64) * ((_u * _ss) + (_v * _cc))) / sqrt(_x);
            };
            return _z;
        };
        if (_x <= (5.551115123125783e-17 : GoFloat64)) {
            return (-0.6366197723675814 : GoFloat64) / _x;
        };
        var _z:GoFloat64 = _x * _x;
        var _u:GoFloat64 = (-0.19605709064623894 : GoFloat64) + (_z * ((0.05044387166398113 : GoFloat64) + (_z * ((-0.0019125689587576355 : GoFloat64) + (_z * ((2.352526005616105e-05 : GoFloat64) + (_z * (-9.190991580398789e-08 : GoFloat64))))))));
        var _v:GoFloat64 = (1 : GoFloat64) + (_z * ((0.01991673182366499 : GoFloat64) + (_z * ((0.00020255258102513517 : GoFloat64) + (_z * ((1.3560880109751623e-06 : GoFloat64) + (_z * ((6.227414523646215e-09 : GoFloat64) + (_z * (1.6655924620799208e-11 : GoFloat64))))))))));
        return (_x * (_u / _v)) + ((0.6366197723675814 : GoFloat64) * ((j1(_x) * log(_x)) - ((1 : GoFloat64) / _x)));
    }
private function _pone(_x:GoFloat64):GoFloat64 {
        var _p:Ref<GoArray<GoFloat64>> = (null : Ref<GoArray<GoFloat64>>);
        var _q:Ref<GoArray<GoFloat64>> = (null : Ref<GoArray<GoFloat64>>);
        if (_x >= (8 : GoFloat64)) {
            _p = (Go.setRef(_p1R8) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_p1S8) : Ref<GoArray<GoFloat64>>);
        } else if (_x >= (4.5454 : GoFloat64)) {
            _p = (Go.setRef(_p1R5) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_p1S5) : Ref<GoArray<GoFloat64>>);
        } else if (_x >= (2.8571 : GoFloat64)) {
            _p = (Go.setRef(_p1R3) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_p1S3) : Ref<GoArray<GoFloat64>>);
        } else if (_x >= (2 : GoFloat64)) {
            _p = (Go.setRef(_p1R2) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_p1S2) : Ref<GoArray<GoFloat64>>);
        };
        var _z:GoFloat64 = (1 : GoFloat64) / (_x * _x);
        var _r:GoFloat64 = _p[(0 : GoInt)] + (_z * (_p[(1 : GoInt)] + (_z * (_p[(2 : GoInt)] + (_z * (_p[(3 : GoInt)] + (_z * (_p[(4 : GoInt)] + (_z * _p[(5 : GoInt)])))))))));
        var _s:GoFloat64 = (1 : GoFloat64) + (_z * (_q[(0 : GoInt)] + (_z * (_q[(1 : GoInt)] + (_z * (_q[(2 : GoInt)] + (_z * (_q[(3 : GoInt)] + (_z * _q[(4 : GoInt)])))))))));
        return (1 : GoFloat64) + (_r / _s);
    }
private function _qone(_x:GoFloat64):GoFloat64 {
        var __0:Ref<GoArray<GoFloat64>> = (null : Ref<GoArray<GoFloat64>>), __1:Ref<GoArray<GoFloat64>> = (null : Ref<GoArray<GoFloat64>>), _q:Ref<GoArray<GoFloat64>> = __1, _p:Ref<GoArray<GoFloat64>> = __0;
        if (_x >= (8 : GoFloat64)) {
            _p = (Go.setRef(_q1R8) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_q1S8) : Ref<GoArray<GoFloat64>>);
        } else if (_x >= (4.5454 : GoFloat64)) {
            _p = (Go.setRef(_q1R5) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_q1S5) : Ref<GoArray<GoFloat64>>);
        } else if (_x >= (2.8571 : GoFloat64)) {
            _p = (Go.setRef(_q1R3) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_q1S3) : Ref<GoArray<GoFloat64>>);
        } else if (_x >= (2 : GoFloat64)) {
            _p = (Go.setRef(_q1R2) : Ref<GoArray<GoFloat64>>);
            _q = (Go.setRef(_q1S2) : Ref<GoArray<GoFloat64>>);
        };
        var _z:GoFloat64 = (1 : GoFloat64) / (_x * _x);
        var _r:GoFloat64 = _p[(0 : GoInt)] + (_z * (_p[(1 : GoInt)] + (_z * (_p[(2 : GoInt)] + (_z * (_p[(3 : GoInt)] + (_z * (_p[(4 : GoInt)] + (_z * _p[(5 : GoInt)])))))))));
        var _s:GoFloat64 = (1 : GoFloat64) + (_z * (_q[(0 : GoInt)] + (_z * (_q[(1 : GoInt)] + (_z * (_q[(2 : GoInt)] + (_z * (_q[(3 : GoInt)] + (_z * (_q[(4 : GoInt)] + (_z * _q[(5 : GoInt)])))))))))));
        return ((0.375 : GoFloat64) + (_r / _s)) / _x;
    }
/**
    // Jn returns the order-n Bessel function of the first kind.
    //
    // Special cases are:
    //
    //	Jn(n, ±Inf) = 0
    //	Jn(n, NaN) = NaN
**/
function jn(_n:GoInt, _x:GoFloat64):GoFloat64 {
        {};
        if (isNaN(_x)) {
            return _x;
        } else if (isInf(_x, (0 : GoInt))) {
            return (0 : GoFloat64);
        };
        if (_n == ((0 : GoInt))) {
            return j0(_x);
        };
        if (_x == (0 : GoFloat64)) {
            return (0 : GoFloat64);
        };
        if (_n < (0 : GoInt)) {
            {
                final __tmp__0 = -_n;
                final __tmp__1 = -_x;
                _n = __tmp__0;
                _x = __tmp__1;
            };
        };
        if (_n == ((1 : GoInt))) {
            return j1(_x);
        };
        var _sign:Bool = false;
        if (_x < (0 : GoFloat64)) {
            _x = -_x;
            if (_n & (1 : GoInt) == ((1 : GoInt))) {
                _sign = true;
            };
        };
        var _b:GoFloat64 = (0 : GoFloat64);
        if ((_n : GoFloat64) <= _x) {
            if (_x >= (8.148143905337944e+90 : GoFloat64)) {
                var _temp:GoFloat64 = (0 : GoFloat64);
                {
                    var __tmp__ = sincos(_x), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
                    {
                        final __value__ = _n & (3 : GoInt);
                        if (__value__ == ((0 : GoInt))) {
                            _temp = _c + _s;
                        } else if (__value__ == ((1 : GoInt))) {
                            _temp = -_c + _s;
                        } else if (__value__ == ((2 : GoInt))) {
                            _temp = -_c - _s;
                        } else if (__value__ == ((3 : GoInt))) {
                            _temp = _c - _s;
                        };
                    };
                };
                _b = ((0.5641895835477563 : GoFloat64) * _temp) / sqrt(_x);
            } else {
                _b = j1(_x);
                {
                    var __0:GoInt = (1 : GoInt), __1:GoFloat64 = j0(_x), _a:GoFloat64 = __1, _i:GoInt = __0;
                    Go.cfor(_i < _n, _i++, {
                        {
                            final __tmp__0 = _b;
                            final __tmp__1 = (_b * ((_i + _i : GoFloat64) / _x)) - _a;
                            _a = __tmp__0;
                            _b = __tmp__1;
                        };
                    });
                };
            };
        } else {
            if (_x < (1.862645149230957e-09 : GoFloat64)) {
                if (_n > (33 : GoInt)) {
                    _b = (0 : GoFloat64);
                } else {
                    var _temp:GoFloat64 = _x * (0.5 : GoFloat64);
                    _b = _temp;
                    var _a:GoFloat64 = (1 : GoFloat64);
                    {
                        var _i:GoInt = (2 : GoInt);
                        Go.cfor(_i <= _n, _i++, {
                            _a = _a * ((_i : GoFloat64));
                            _b = _b * (_temp);
                        });
                    };
                    _b = _b / (_a);
                };
            } else {
                var _w:GoFloat64 = (_n + _n : GoFloat64) / _x;
                var _h:GoFloat64 = (2 : GoFloat64) / _x;
                var _q0:GoFloat64 = _w;
                var _z:GoFloat64 = _w + _h;
                var _q1:GoFloat64 = (_w * _z) - (1 : GoFloat64);
                var _k:GoInt = (1 : GoInt);
                while (_q1 < (1e+09 : GoFloat64)) {
                    _k++;
                    _z = _z + (_h);
                    {
                        final __tmp__0 = _q1;
                        final __tmp__1 = (_z * _q1) - _q0;
                        _q0 = __tmp__0;
                        _q1 = __tmp__1;
                    };
                };
                var _m:GoInt = _n + _n;
                var _t:GoFloat64 = (0 : GoFloat64);
                {
                    var _i:GoInt = (2 : GoInt) * (_n + _k);
                    Go.cfor(_i >= _m, _i = _i - ((2 : GoInt)), {
                        _t = (1 : GoFloat64) / (((_i : GoFloat64) / _x) - _t);
                    });
                };
                var _a:GoFloat64 = _t;
                _b = (1 : GoFloat64);
                var _tmp:GoFloat64 = (_n : GoFloat64);
                var _v:GoFloat64 = (2 : GoFloat64) / _x;
                _tmp = _tmp * log(abs(_v * _tmp));
                if (_tmp < (709.782712893384 : GoFloat64)) {
                    {
                        var _i:GoInt = _n - (1 : GoInt);
                        Go.cfor(_i > (0 : GoInt), _i--, {
                            var _di:GoFloat64 = (_i + _i : GoFloat64);
                            {
                                final __tmp__0 = _b;
                                final __tmp__1 = ((_b * _di) / _x) - _a;
                                _a = __tmp__0;
                                _b = __tmp__1;
                            };
                        });
                    };
                } else {
                    {
                        var _i:GoInt = _n - (1 : GoInt);
                        Go.cfor(_i > (0 : GoInt), _i--, {
                            var _di:GoFloat64 = (_i + _i : GoFloat64);
                            {
                                final __tmp__0 = _b;
                                final __tmp__1 = ((_b * _di) / _x) - _a;
                                _a = __tmp__0;
                                _b = __tmp__1;
                            };
                            if (_b > (1e+100 : GoFloat64)) {
                                _a = _a / (_b);
                                _t = _t / (_b);
                                _b = (1 : GoFloat64);
                            };
                        });
                    };
                };
                _b = (_t * j0(_x)) / _b;
            };
        };
        if (_sign) {
            return -_b;
        };
        return _b;
    }
/**
    // Yn returns the order-n Bessel function of the second kind.
    //
    // Special cases are:
    //
    //	Yn(n, +Inf) = 0
    //	Yn(n ≥ 0, 0) = -Inf
    //	Yn(n < 0, 0) = +Inf if n is odd, -Inf if n is even
    //	Yn(n, x < 0) = NaN
    //	Yn(n, NaN) = NaN
**/
function yn(_n:GoInt, _x:GoFloat64):GoFloat64 {
        {};
        if ((_x < (0 : GoFloat64)) || isNaN(_x)) {
            return naN();
        } else if (isInf(_x, (1 : GoInt))) {
            return (0 : GoFloat64);
        };
        if (_n == ((0 : GoInt))) {
            return y0(_x);
        };
        if (_x == (0 : GoFloat64)) {
            if ((_n < (0 : GoInt)) && ((_n & (1 : GoInt)) == (1 : GoInt))) {
                return inf((1 : GoInt));
            };
            return inf((-1 : GoInt));
        };
        var _sign:Bool = false;
        if (_n < (0 : GoInt)) {
            _n = -_n;
            if (_n & (1 : GoInt) == ((1 : GoInt))) {
                _sign = true;
            };
        };
        if (_n == ((1 : GoInt))) {
            if (_sign) {
                return -y1(_x);
            };
            return y1(_x);
        };
        var _b:GoFloat64 = (0 : GoFloat64);
        if (_x >= (8.148143905337944e+90 : GoFloat64)) {
            var _temp:GoFloat64 = (0 : GoFloat64);
            {
                var __tmp__ = sincos(_x), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
                {
                    final __value__ = _n & (3 : GoInt);
                    if (__value__ == ((0 : GoInt))) {
                        _temp = _s - _c;
                    } else if (__value__ == ((1 : GoInt))) {
                        _temp = -_s - _c;
                    } else if (__value__ == ((2 : GoInt))) {
                        _temp = -_s + _c;
                    } else if (__value__ == ((3 : GoInt))) {
                        _temp = _s + _c;
                    };
                };
            };
            _b = ((0.5641895835477563 : GoFloat64) * _temp) / sqrt(_x);
        } else {
            var _a:GoFloat64 = y0(_x);
            _b = y1(_x);
            {
                var _i:GoInt = (1 : GoInt);
                Go.cfor((_i < _n) && !isInf(_b, (-1 : GoInt)), _i++, {
                    {
                        final __tmp__0 = _b;
                        final __tmp__1 = (((_i + _i : GoFloat64) / _x) * _b) - _a;
                        _a = __tmp__0;
                        _b = __tmp__1;
                    };
                });
            };
        };
        if (_sign) {
            return -_b;
        };
        return _b;
    }
/**
    // Ldexp is the inverse of Frexp.
    // It returns frac × 2**exp.
    //
    // Special cases are:
    //
    //	Ldexp(±0, exp) = ±0
    //	Ldexp(±Inf, exp) = ±Inf
    //	Ldexp(NaN, exp) = NaN
**/
function ldexp(_frac:GoFloat64, _exp:GoInt):GoFloat64 {
        if (false) {
            return _archLdexp(_frac, _exp);
        };
        return _ldexp(_frac, _exp);
    }
private function _ldexp(_frac:GoFloat64, _exp:GoInt):GoFloat64 {
        if (_frac == (0 : GoFloat64)) {
            return _frac;
        } else if (isInf(_frac, (0 : GoInt)) || isNaN(_frac)) {
            return _frac;
        };
        var __tmp__ = _normalize(_frac), _frac:GoFloat64 = __tmp__._0, _e:GoInt = __tmp__._1;
        _exp = _exp + (_e);
        var _x:GoUInt64 = float64bits(_frac);
        _exp = _exp + (((_x >> (52i64 : GoUInt64) : GoInt) & (2047 : GoInt)) - (1023 : GoInt));
        if (_exp < (-1075 : GoInt)) {
            return copysign((0 : GoFloat64), _frac);
        };
        if (_exp > (1023 : GoInt)) {
            if (_frac < (0 : GoFloat64)) {
                return inf((-1 : GoInt));
            };
            return inf((1 : GoInt));
        };
        var _m:GoFloat64 = (1 : GoFloat64);
        if (_exp < (-1022 : GoInt)) {
            _exp = _exp + ((53 : GoInt));
            _m = (1.1102230246251565e-16 : GoFloat64);
        };
        _x = _x & ((9218868437227405312i64 : GoUInt64) ^ (-1i32 : GoInt));
        _x = _x | ((_exp + (1023 : GoInt) : GoUInt64) << (52i64 : GoUInt64));
        return _m * float64frombits(_x);
    }
/**
    // Lgamma returns the natural logarithm and sign (-1 or +1) of Gamma(x).
    //
    // Special cases are:
    //
    //	Lgamma(+Inf) = +Inf
    //	Lgamma(0) = +Inf
    //	Lgamma(-integer) = +Inf
    //	Lgamma(-Inf) = -Inf
    //	Lgamma(NaN) = NaN
**/
function lgamma(_x:GoFloat64):{ var _0 : GoFloat64; var _1 : GoInt; } {
        var _lgamma:GoFloat64 = (0 : GoFloat64), _sign:GoInt = (0 : GoInt);
        {};
        _sign = (1 : GoInt);
        if (isNaN(_x)) {
            _lgamma = _x;
            return { _0 : _lgamma, _1 : _sign };
        } else if (isInf(_x, (0 : GoInt))) {
            _lgamma = _x;
            return { _0 : _lgamma, _1 : _sign };
        } else if (_x == (0 : GoFloat64)) {
            _lgamma = inf((1 : GoInt));
            return { _0 : _lgamma, _1 : _sign };
        };
        var _neg:Bool = false;
        if (_x < (0 : GoFloat64)) {
            _x = -_x;
            _neg = true;
        };
        if (_x < (8.470329472543003e-22 : GoFloat64)) {
            if (_neg) {
                _sign = (-1 : GoInt);
            };
            _lgamma = -log(_x);
            return { _0 : _lgamma, _1 : _sign };
        };
        var _nadj:GoFloat64 = (0 : GoFloat64);
        if (_neg) {
            if (_x >= (4.503599627370496e+15 : GoFloat64)) {
                _lgamma = inf((1 : GoInt));
                return { _0 : _lgamma, _1 : _sign };
            };
            var _t:GoFloat64 = _sinPi(_x);
            if (_t == (0 : GoFloat64)) {
                _lgamma = inf((1 : GoInt));
                return { _0 : _lgamma, _1 : _sign };
            };
            _nadj = log((3.141592653589793 : GoFloat64) / abs(_t * _x));
            if (_t < (0 : GoFloat64)) {
                _sign = (-1 : GoInt);
            };
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if ((_x == (1 : GoFloat64)) || (_x == (2 : GoFloat64))) {
                    _lgamma = (0 : GoFloat64);
                    return { _0 : _lgamma, _1 : _sign };
                    break;
                } else if (_x < (2 : GoFloat64)) {
                    var _y:GoFloat64 = (0 : GoFloat64);
                    var _i:GoInt = (0 : GoInt);
                    if (_x <= (0.9 : GoFloat64)) {
                        _lgamma = -log(_x);
                        if (_x >= (0.7316321449683623 : GoFloat64)) {
                            _y = (1 : GoFloat64) - _x;
                            _i = (0 : GoInt);
                        } else if (_x >= (0.19163214496836226 : GoFloat64)) {
                            _y = _x - (0.46163214496836225 : GoFloat64);
                            _i = (1 : GoInt);
                        } else {
                            _y = _x;
                            _i = (2 : GoInt);
                        };
                    } else {
                        _lgamma = (0 : GoFloat64);
                        if (_x >= (1.7316321449683623 : GoFloat64)) {
                            _y = (2 : GoFloat64) - _x;
                            _i = (0 : GoInt);
                        } else if (_x >= (1.1916321449683622 : GoFloat64)) {
                            _y = _x - (1.4616321449683622 : GoFloat64);
                            _i = (1 : GoInt);
                        } else {
                            _y = _x - (1 : GoFloat64);
                            _i = (2 : GoInt);
                        };
                    };
                    {
                        final __value__ = _i;
                        if (__value__ == ((0 : GoInt))) {
                            var _z:GoFloat64 = _y * _y;
                            var _p1:GoFloat64 = __lgamA[(0 : GoInt)] + (_z * (__lgamA[(2 : GoInt)] + (_z * (__lgamA[(4 : GoInt)] + (_z * (__lgamA[(6 : GoInt)] + (_z * (__lgamA[(8 : GoInt)] + (_z * __lgamA[(10 : GoInt)])))))))));
                            var _p2:GoFloat64 = _z * (__lgamA[(1 : GoInt)] + (_z * (__lgamA[(3 : GoInt)] + (_z * (__lgamA[(5 : GoInt)] + (_z * (__lgamA[(7 : GoInt)] + (_z * (__lgamA[(9 : GoInt)] + (_z * __lgamA[(11 : GoInt)]))))))))));
                            var _p:GoFloat64 = (_y * _p1) + _p2;
                            _lgamma = _lgamma + ((_p - ((0.5 : GoFloat64) * _y)));
                        } else if (__value__ == ((1 : GoInt))) {
                            var _z:GoFloat64 = _y * _y;
                            var _w:GoFloat64 = _z * _y;
                            var _p1:GoFloat64 = __lgamT[(0 : GoInt)] + (_w * (__lgamT[(3 : GoInt)] + (_w * (__lgamT[(6 : GoInt)] + (_w * (__lgamT[(9 : GoInt)] + (_w * __lgamT[(12 : GoInt)])))))));
                            var _p2:GoFloat64 = __lgamT[(1 : GoInt)] + (_w * (__lgamT[(4 : GoInt)] + (_w * (__lgamT[(7 : GoInt)] + (_w * (__lgamT[(10 : GoInt)] + (_w * __lgamT[(13 : GoInt)])))))));
                            var _p3:GoFloat64 = __lgamT[(2 : GoInt)] + (_w * (__lgamT[(5 : GoInt)] + (_w * (__lgamT[(8 : GoInt)] + (_w * (__lgamT[(11 : GoInt)] + (_w * __lgamT[(14 : GoInt)])))))));
                            var _p:GoFloat64 = (_z * _p1) - ((-3.638676997039505e-18 : GoFloat64) - (_w * (_p2 + (_y * _p3))));
                            _lgamma = _lgamma + (((-0.12148629053584961 : GoFloat64) + _p));
                        } else if (__value__ == ((2 : GoInt))) {
                            var _p1:GoFloat64 = _y * (__lgamU[(0 : GoInt)] + (_y * (__lgamU[(1 : GoInt)] + (_y * (__lgamU[(2 : GoInt)] + (_y * (__lgamU[(3 : GoInt)] + (_y * (__lgamU[(4 : GoInt)] + (_y * __lgamU[(5 : GoInt)]))))))))));
                            var _p2:GoFloat64 = (1 : GoFloat64) + (_y * (__lgamV[(1 : GoInt)] + (_y * (__lgamV[(2 : GoInt)] + (_y * (__lgamV[(3 : GoInt)] + (_y * (__lgamV[(4 : GoInt)] + (_y * __lgamV[(5 : GoInt)])))))))));
                            _lgamma = _lgamma + ((((-0.5 : GoFloat64) * _y) + (_p1 / _p2)));
                        };
                    };
                    break;
                } else if (_x < (8 : GoFloat64)) {
                    var _i:GoInt = (_x : GoInt);
                    var _y:GoFloat64 = _x - (_i : GoFloat64);
                    var _p:GoFloat64 = _y * (__lgamS[(0 : GoInt)] + (_y * (__lgamS[(1 : GoInt)] + (_y * (__lgamS[(2 : GoInt)] + (_y * (__lgamS[(3 : GoInt)] + (_y * (__lgamS[(4 : GoInt)] + (_y * (__lgamS[(5 : GoInt)] + (_y * __lgamS[(6 : GoInt)]))))))))))));
                    var _q:GoFloat64 = (1 : GoFloat64) + (_y * (__lgamR[(1 : GoInt)] + (_y * (__lgamR[(2 : GoInt)] + (_y * (__lgamR[(3 : GoInt)] + (_y * (__lgamR[(4 : GoInt)] + (_y * (__lgamR[(5 : GoInt)] + (_y * __lgamR[(6 : GoInt)])))))))))));
                    _lgamma = ((0.5 : GoFloat64) * _y) + (_p / _q);
                    var _z:GoFloat64 = (1 : GoFloat64);
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _i;
                                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (7 : GoInt)))) {
                                    _z = _z * ((_y + (6 : GoFloat64)));
                                    @:fallthrough {
                                        __switchIndex__ = 1;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (6 : GoInt)))) {
                                    _z = _z * ((_y + (5 : GoFloat64)));
                                    @:fallthrough {
                                        __switchIndex__ = 2;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (5 : GoInt)))) {
                                    _z = _z * ((_y + (4 : GoFloat64)));
                                    @:fallthrough {
                                        __switchIndex__ = 3;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (4 : GoInt)))) {
                                    _z = _z * ((_y + (3 : GoFloat64)));
                                    @:fallthrough {
                                        __switchIndex__ = 4;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (3 : GoInt)))) {
                                    _z = _z * ((_y + (2 : GoFloat64)));
                                    _lgamma = _lgamma + (log(_z));
                                    break;
                                    break;
                                };
                            };
                            break;
                        };
                    };
                    break;
                } else if (_x < (2.8823037615171174e+17 : GoFloat64)) {
                    var _t:GoFloat64 = log(_x);
                    var _z:GoFloat64 = (1 : GoFloat64) / _x;
                    var _y:GoFloat64 = _z * _z;
                    var _w:GoFloat64 = __lgamW[(0 : GoInt)] + (_z * (__lgamW[(1 : GoInt)] + (_y * (__lgamW[(2 : GoInt)] + (_y * (__lgamW[(3 : GoInt)] + (_y * (__lgamW[(4 : GoInt)] + (_y * (__lgamW[(5 : GoInt)] + (_y * __lgamW[(6 : GoInt)])))))))))));
                    _lgamma = ((_x - (0.5 : GoFloat64)) * (_t - (1 : GoFloat64))) + _w;
                    break;
                } else {
                    _lgamma = _x * (log(_x) - (1 : GoFloat64));
                };
                break;
            };
        };
        if (_neg) {
            _lgamma = _nadj - _lgamma;
        };
        return { _0 : _lgamma, _1 : _sign };
    }
/**
    // sinPi(x) is a helper function for negative x
**/
private function _sinPi(_x:GoFloat64):GoFloat64 {
        {};
        if (_x < (0.25 : GoFloat64)) {
            return -sin((3.141592653589793 : GoFloat64) * _x);
        };
        var _z:GoFloat64 = floor(_x);
        var _n:GoInt = (0 : GoInt);
        if (_z != (_x)) {
            _x = mod(_x, (2 : GoFloat64));
            _n = (_x * (4 : GoFloat64) : GoInt);
        } else {
            if (_x >= (9.007199254740992e+15 : GoFloat64)) {
                _x = (0 : GoFloat64);
                _n = (0 : GoInt);
            } else {
                if (_x < (4.503599627370496e+15 : GoFloat64)) {
                    _z = _x + (4.503599627370496e+15 : GoFloat64);
                };
                _n = ((1i64 : GoUInt64) & float64bits(_z) : GoInt);
                _x = (_n : GoFloat64);
                _n = _n << ((2i64 : GoUInt64));
            };
        };
        {
            final __value__ = _n;
            if (__value__ == ((0 : GoInt))) {
                _x = sin((3.141592653589793 : GoFloat64) * _x);
            } else if (__value__ == ((1 : GoInt)) || __value__ == ((2 : GoInt))) {
                _x = cos((3.141592653589793 : GoFloat64) * ((0.5 : GoFloat64) - _x));
            } else if (__value__ == ((3 : GoInt)) || __value__ == ((4 : GoInt))) {
                _x = sin((3.141592653589793 : GoFloat64) * ((1 : GoFloat64) - _x));
            } else if (__value__ == ((5 : GoInt)) || __value__ == ((6 : GoInt))) {
                _x = -cos((3.141592653589793 : GoFloat64) * (_x - (1.5 : GoFloat64)));
            } else {
                _x = sin((3.141592653589793 : GoFloat64) * (_x - (2 : GoFloat64)));
            };
        };
        return -_x;
    }
/**
    // Log returns the natural logarithm of x.
    //
    // Special cases are:
    //
    //	Log(+Inf) = +Inf
    //	Log(0) = -Inf
    //	Log(x < 0) = NaN
    //	Log(NaN) = NaN
**/
function log(_x:GoFloat64):GoFloat64 return std.Math.log(_x.toBasic());
private function _log(_x:GoFloat64):GoFloat64 {
        {};
        if (isNaN(_x) || isInf(_x, (1 : GoInt))) {
            return _x;
        } else if (_x < (0 : GoFloat64)) {
            return naN();
        } else if (_x == (0 : GoFloat64)) {
            return inf((-1 : GoInt));
        };
        var __tmp__ = frexp(_x), _f1:GoFloat64 = __tmp__._0, _ki:GoInt = __tmp__._1;
        if (_f1 < (0.7071067811865476 : GoFloat64)) {
            _f1 = _f1 * (2 : GoFloat64);
            _ki--;
        };
        var _f:GoFloat64 = _f1 - (1 : GoFloat64);
        var _k:GoFloat64 = (_ki : GoFloat64);
        var _s:GoFloat64 = _f / ((2 : GoFloat64) + _f);
        var _s2:GoFloat64 = _s * _s;
        var _s4:GoFloat64 = _s2 * _s2;
        var _t1:GoFloat64 = _s2 * ((0.6666666666666735 : GoFloat64) + (_s4 * ((0.2857142874366239 : GoFloat64) + (_s4 * ((0.1818357216161805 : GoFloat64) + (_s4 * (0.14798198605116586 : GoFloat64)))))));
        var _t2:GoFloat64 = _s4 * ((0.3999999999940942 : GoFloat64) + (_s4 * ((0.22222198432149784 : GoFloat64) + (_s4 * (0.15313837699209373 : GoFloat64)))));
        var r:GoFloat64 = _t1 + _t2;
        var _hfsq:GoFloat64 = ((0.5 : GoFloat64) * _f) * _f;
        return (_k * (0.6931471803691238 : GoFloat64)) - ((_hfsq - ((_s * (_hfsq + r)) + (_k * (1.9082149292705877e-10 : GoFloat64)))) - _f);
    }
/**
    // Log10 returns the decimal logarithm of x.
    // The special cases are the same as for Log.
**/
function log10(_x:GoFloat64):GoFloat64 {
        if (false) {
            return _archLog10(_x);
        };
        return _log10(_x);
    }
private function _log10(_x:GoFloat64):GoFloat64 {
        return log(_x) * (0.4342944819032518 : GoFloat64);
    }
/**
    // Log2 returns the binary logarithm of x.
    // The special cases are the same as for Log.
**/
function log2(_x:GoFloat64):GoFloat64 {
        if (false) {
            return _archLog2(_x);
        };
        return _log2(_x);
    }
private function _log2(_x:GoFloat64):GoFloat64 {
        var __tmp__ = frexp(_x), _frac:GoFloat64 = __tmp__._0, _exp:GoInt = __tmp__._1;
        if (_frac == (0.5 : GoFloat64)) {
            return (_exp - (1 : GoInt) : GoFloat64);
        };
        return (log(_frac) * (1.4426950408889634 : GoFloat64)) + (_exp : GoFloat64);
    }
/**
    // Log1p returns the natural logarithm of 1 plus its argument x.
    // It is more accurate than Log(1 + x) when x is near zero.
    //
    // Special cases are:
    //
    //	Log1p(+Inf) = +Inf
    //	Log1p(±0) = ±0
    //	Log1p(-1) = -Inf
    //	Log1p(x < -1) = NaN
    //	Log1p(NaN) = NaN
**/
function log1p(_x:GoFloat64):GoFloat64 {
        if (false) {
            return _archLog1p(_x);
        };
        return _log1p(_x);
    }
private function _log1p(_x:GoFloat64):GoFloat64 {
        {};
        if ((_x < (-1 : GoFloat64)) || isNaN(_x)) {
            return naN();
        } else if (_x == (-1 : GoFloat64)) {
            return inf((-1 : GoInt));
        } else if (isInf(_x, (1 : GoInt))) {
            return inf((1 : GoInt));
        };
        var _absx:GoFloat64 = abs(_x);
        var _f:GoFloat64 = (0 : GoFloat64);
        var _iu:GoUInt64 = (0 : GoUInt64);
        var _k:GoInt = (1 : GoInt);
        if (_absx < (0.41421356237309503 : GoFloat64)) {
            if (_absx < (1.862645149230957e-09 : GoFloat64)) {
                if (_absx < (5.551115123125783e-17 : GoFloat64)) {
                    return _x;
                };
                return _x - ((_x * _x) * (0.5 : GoFloat64));
            };
            if (_x > (-0.2928932188134525 : GoFloat64)) {
                _k = (0 : GoInt);
                _f = _x;
                _iu = (1i64 : GoUInt64);
            };
        };
        var _c:GoFloat64 = (0 : GoFloat64);
        if (_k != ((0 : GoInt))) {
            var _u:GoFloat64 = (0 : GoFloat64);
            if (_absx < (9.007199254740992e+15 : GoFloat64)) {
                _u = (1 : GoFloat64) + _x;
                _iu = float64bits(_u);
                _k = ((_iu >> (52i64 : GoUInt64)) - (1023i64 : GoUInt64) : GoInt);
                if (_k > (0 : GoInt)) {
                    _c = (1 : GoFloat64) - (_u - _x);
                } else {
                    _c = _x - (_u - (1 : GoFloat64));
                };
                _c = _c / (_u);
            } else {
                _u = _x;
                _iu = float64bits(_u);
                _k = ((_iu >> (52i64 : GoUInt64)) - (1023i64 : GoUInt64) : GoInt);
                _c = (0 : GoFloat64);
            };
            _iu = _iu & ((4503599627370495i64 : GoUInt64));
            if (_iu < (1865452045155277i64 : GoUInt64)) {
                _u = float64frombits(_iu | (4607182418800017408i64 : GoUInt64));
            } else {
                _k++;
                _u = float64frombits(_iu | (4602678819172646912i64 : GoUInt64));
                _iu = ((4503599627370496i64 : GoUInt64) - _iu) >> (2i64 : GoUInt64);
            };
            _f = _u - (1 : GoFloat64);
        };
        var _hfsq:GoFloat64 = ((0.5 : GoFloat64) * _f) * _f;
        var __0:GoFloat64 = (0 : GoFloat64), __1:GoFloat64 = (0 : GoFloat64), __2:GoFloat64 = (0 : GoFloat64), _z:GoFloat64 = __2, r:GoFloat64 = __1, _s:GoFloat64 = __0;
        if (_iu == ((0i64 : GoUInt64))) {
            if (_f == (0 : GoFloat64)) {
                if (_k == ((0 : GoInt))) {
                    return (0 : GoFloat64);
                };
                _c = _c + ((_k : GoFloat64) * (1.9082149292705877e-10 : GoFloat64));
                return ((_k : GoFloat64) * (0.6931471803691238 : GoFloat64)) + _c;
            };
            r = _hfsq * ((1 : GoFloat64) - ((0.6666666666666666 : GoFloat64) * _f));
            if (_k == ((0 : GoInt))) {
                return _f - r;
            };
            return ((_k : GoFloat64) * (0.6931471803691238 : GoFloat64)) - ((r - (((_k : GoFloat64) * (1.9082149292705877e-10 : GoFloat64)) + _c)) - _f);
        };
        _s = _f / ((2 : GoFloat64) + _f);
        _z = _s * _s;
        r = _z * ((0.6666666666666735 : GoFloat64) + (_z * ((0.3999999999940942 : GoFloat64) + (_z * ((0.2857142874366239 : GoFloat64) + (_z * ((0.22222198432149784 : GoFloat64) + (_z * ((0.1818357216161805 : GoFloat64) + (_z * ((0.15313837699209373 : GoFloat64) + (_z * (0.14798198605116586 : GoFloat64)))))))))))));
        if (_k == ((0 : GoInt))) {
            return _f - (_hfsq - (_s * (_hfsq + r)));
        };
        return ((_k : GoFloat64) * (0.6931471803691238 : GoFloat64)) - ((_hfsq - ((_s * (_hfsq + r)) + (((_k : GoFloat64) * (1.9082149292705877e-10 : GoFloat64)) + _c))) - _f);
    }
private function _archLog(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
/**
    // Logb returns the binary exponent of x.
    //
    // Special cases are:
    //
    //	Logb(±Inf) = +Inf
    //	Logb(0) = -Inf
    //	Logb(NaN) = NaN
**/
function logb(_x:GoFloat64):GoFloat64 {
        if (_x == (0 : GoFloat64)) {
            return inf((-1 : GoInt));
        } else if (isInf(_x, (0 : GoInt))) {
            return inf((1 : GoInt));
        } else if (isNaN(_x)) {
            return _x;
        };
        return (_ilogb(_x) : GoFloat64);
    }
/**
    // Ilogb returns the binary exponent of x as an integer.
    //
    // Special cases are:
    //
    //	Ilogb(±Inf) = MaxInt32
    //	Ilogb(0) = MinInt32
    //	Ilogb(NaN) = MaxInt32
**/
function ilogb(_x:GoFloat64):GoInt {
        if (_x == (0 : GoFloat64)) {
            return (-2147483648 : GoInt);
        } else if (isNaN(_x)) {
            return (2147483647 : GoInt);
        } else if (isInf(_x, (0 : GoInt))) {
            return (2147483647 : GoInt);
        };
        return _ilogb(_x);
    }
/**
    // ilogb returns the binary exponent of x. It assumes x is finite and
    // non-zero.
**/
private function _ilogb(_x:GoFloat64):GoInt {
        var __tmp__ = _normalize(_x), _x:GoFloat64 = __tmp__._0, _exp:GoInt = __tmp__._1;
        return (((float64bits(_x) >> (52i64 : GoUInt64)) & (2047i64 : GoUInt64) : GoInt) - (1023 : GoInt)) + _exp;
    }
/**
    // Mod returns the floating-point remainder of x/y.
    // The magnitude of the result is less than y and its
    // sign agrees with that of x.
    //
    // Special cases are:
    //
    //	Mod(±Inf, y) = NaN
    //	Mod(NaN, y) = NaN
    //	Mod(x, 0) = NaN
    //	Mod(x, ±Inf) = x
    //	Mod(x, NaN) = NaN
**/
function mod(_x:GoFloat64, _y:GoFloat64):GoFloat64 return _x.toBasic() % _y.toBasic();
private function _mod(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
        if ((((_y == (0 : GoFloat64)) || isInf(_x, (0 : GoInt))) || isNaN(_x)) || isNaN(_y)) {
            return naN();
        };
        _y = abs(_y);
        var __tmp__ = frexp(_y), _yfr:GoFloat64 = __tmp__._0, _yexp:GoInt = __tmp__._1;
        var _r:GoFloat64 = _x;
        if (_x < (0 : GoFloat64)) {
            _r = -_x;
        };
        while (_r >= _y) {
            var __tmp__ = frexp(_r), _rfr:GoFloat64 = __tmp__._0, _rexp:GoInt = __tmp__._1;
            if (_rfr < _yfr) {
                _rexp = _rexp - (1 : GoInt);
            };
            _r = _r - ldexp(_y, _rexp - _yexp);
        };
        if (_x < (0 : GoFloat64)) {
            _r = -_r;
        };
        return _r;
    }
/**
    // Modf returns integer and fractional floating-point numbers
    // that sum to f. Both values have the same sign as f.
    //
    // Special cases are:
    //
    //	Modf(±Inf) = ±Inf, NaN
    //	Modf(NaN) = NaN, NaN
**/
function modf(_f:GoFloat64):{ var _0 : GoFloat64; var _1 : GoFloat64; } {
        var _int:GoFloat64 = (0 : GoFloat64), _frac:GoFloat64 = (0 : GoFloat64);
        if (false) {
            return _archModf(_f);
        };
        return _modf(_f);
    }
private function _modf(_f:GoFloat64):{ var _0 : GoFloat64; var _1 : GoFloat64; } {
        var _int:GoFloat64 = (0 : GoFloat64), _frac:GoFloat64 = (0 : GoFloat64);
        if (_f < (1 : GoFloat64)) {
            if (_f < (0 : GoFloat64)) {
                {
                    var __tmp__ = modf(-_f);
                    _int = __tmp__._0;
                    _frac = __tmp__._1;
                };
                return { _0 : -_int, _1 : -_frac };
            } else if (_f == (0 : GoFloat64)) {
                return { _0 : _f, _1 : _f };
            };
            return { _0 : (0 : GoFloat64), _1 : _f };
        };
        var _x:GoUInt64 = float64bits(_f);
        var _e:GoUInt = ((_x >> (52i64 : GoUInt64) : GoUInt) & (2047u32 : GoUInt)) - (1023u32 : GoUInt);
        if (_e < (52u32 : GoUInt)) {
            _x = _x & ((((1i64 : GoUInt64) << ((52u32 : GoUInt) - _e)) - (1i64 : GoUInt64)) ^ (-1i32 : GoInt));
        };
        _int = float64frombits(_x);
        _frac = _f - _int;
        return { _0 : _int, _1 : _frac };
    }
private function _archModf(_f:GoFloat64):{ var _0 : GoFloat64; var _1 : GoFloat64; } {
        var _int:GoFloat64 = (0 : GoFloat64), _frac:GoFloat64 = (0 : GoFloat64);
        throw Go.toInterface(("not implemented" : GoString));
    }
/**
    // Nextafter32 returns the next representable float32 value after x towards y.
    //
    // Special cases are:
    //
    //	Nextafter32(x, x)   = x
    //	Nextafter32(NaN, y) = NaN
    //	Nextafter32(x, NaN) = NaN
**/
function nextafter32(_x:GoFloat32, _y:GoFloat32):GoFloat32 {
        var _r:GoFloat32 = (0 : GoFloat32);
        if (isNaN((_x : GoFloat64)) || isNaN((_y : GoFloat64))) {
            _r = (naN() : GoFloat32);
        } else if (_x == (_y)) {
            _r = _x;
        } else if (_x == (0 : GoFloat64)) {
            _r = (copysign((float32frombits((1u32 : GoUInt32)) : GoFloat64), (_y : GoFloat64)) : GoFloat32);
        } else if ((_y > _x) == ((_x > (0 : GoFloat64)))) {
            _r = float32frombits(float32bits(_x) + (1u32 : GoUInt32));
        } else {
            _r = float32frombits(float32bits(_x) - (1u32 : GoUInt32));
        };
        return _r;
    }
/**
    // Nextafter returns the next representable float64 value after x towards y.
    //
    // Special cases are:
    //
    //	Nextafter(x, x)   = x
    //	Nextafter(NaN, y) = NaN
    //	Nextafter(x, NaN) = NaN
**/
function nextafter(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
        var _r:GoFloat64 = (0 : GoFloat64);
        if (isNaN(_x) || isNaN(_y)) {
            _r = naN();
        } else if (_x == (_y)) {
            _r = _x;
        } else if (_x == (0 : GoFloat64)) {
            _r = copysign(float64frombits((1i64 : GoUInt64)), _y);
        } else if ((_y > _x) == ((_x > (0 : GoFloat64)))) {
            _r = float64frombits(float64bits(_x) + (1i64 : GoUInt64));
        } else {
            _r = float64frombits(float64bits(_x) - (1i64 : GoUInt64));
        };
        return _r;
    }
private function _isOddInt(_x:GoFloat64):Bool {
        var __tmp__ = modf(_x), _xi:GoFloat64 = __tmp__._0, _xf:GoFloat64 = __tmp__._1;
        return (_xf == (0 : GoFloat64)) && (((_xi : GoInt64) & (1i64 : GoInt64)) == (1i64 : GoInt64));
    }
/**
    // Pow returns x**y, the base-x exponential of y.
    //
    // Special cases are (in order):
    //
    //	Pow(x, ±0) = 1 for any x
    //	Pow(1, y) = 1 for any y
    //	Pow(x, 1) = x for any x
    //	Pow(NaN, y) = NaN
    //	Pow(x, NaN) = NaN
    //	Pow(±0, y) = ±Inf for y an odd integer < 0
    //	Pow(±0, -Inf) = +Inf
    //	Pow(±0, +Inf) = +0
    //	Pow(±0, y) = +Inf for finite y < 0 and not an odd integer
    //	Pow(±0, y) = ±0 for y an odd integer > 0
    //	Pow(±0, y) = +0 for finite y > 0 and not an odd integer
    //	Pow(-1, ±Inf) = 1
    //	Pow(x, +Inf) = +Inf for |x| > 1
    //	Pow(x, -Inf) = +0 for |x| > 1
    //	Pow(x, +Inf) = +0 for |x| < 1
    //	Pow(x, -Inf) = +Inf for |x| < 1
    //	Pow(+Inf, y) = +Inf for y > 0
    //	Pow(+Inf, y) = +0 for y < 0
    //	Pow(-Inf, y) = Pow(-0, -y)
    //	Pow(x, y) = NaN for finite x < 0 and finite non-integer y
**/
function pow(_x:GoFloat64, _y:GoFloat64):GoFloat64 return std.Math.pow(_x.toBasic(), _y.toBasic());
private function _pow(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
        if ((_y == (0 : GoFloat64)) || (_x == (1 : GoFloat64))) {
            return (1 : GoFloat64);
        } else if (_y == (1 : GoFloat64)) {
            return _x;
        } else if (isNaN(_x) || isNaN(_y)) {
            return naN();
        } else if (_x == (0 : GoFloat64)) {
            if (_y < (0 : GoFloat64)) {
                if (_isOddInt(_y)) {
                    return copysign(inf((1 : GoInt)), _x);
                };
                return inf((1 : GoInt));
            } else if (_y > (0 : GoFloat64)) {
                if (_isOddInt(_y)) {
                    return _x;
                };
                return (0 : GoFloat64);
            };
        } else if (isInf(_y, (0 : GoInt))) {
            if (_x == (-1 : GoFloat64)) {
                return (1 : GoFloat64);
            } else if ((abs(_x) < (1 : GoFloat64)) == (isInf(_y, (1 : GoInt)))) {
                return (0 : GoFloat64);
            } else {
                return inf((1 : GoInt));
            };
        } else if (isInf(_x, (0 : GoInt))) {
            if (isInf(_x, (-1 : GoInt))) {
                return pow((1 : GoFloat64) / _x, -_y);
            };
            if (_y < (0 : GoFloat64)) {
                return (0 : GoFloat64);
            } else if (_y > (0 : GoFloat64)) {
                return inf((1 : GoInt));
            };
        } else if (_y == (0.5 : GoFloat64)) {
            return sqrt(_x);
        } else if (_y == (-0.5 : GoFloat64)) {
            return (1 : GoFloat64) / sqrt(_x);
        };
        var __tmp__ = modf(abs(_y)), _yi:GoFloat64 = __tmp__._0, _yf:GoFloat64 = __tmp__._1;
        if ((_yf != (0 : GoFloat64)) && (_x < (0 : GoFloat64))) {
            return naN();
        };
        if (_yi >= (9.223372036854776e+18 : GoFloat64)) {
            if (_x == (-1 : GoFloat64)) {
                return (1 : GoFloat64);
            } else if ((abs(_x) < (1 : GoFloat64)) == ((_y > (0 : GoFloat64)))) {
                return (0 : GoFloat64);
            } else {
                return inf((1 : GoInt));
            };
        };
        var _a1:GoFloat64 = (1 : GoFloat64);
        var _ae:GoInt = (0 : GoInt);
        if (_yf != (0 : GoFloat64)) {
            if (_yf > (0.5 : GoFloat64)) {
                _yf--;
                _yi++;
            };
            _a1 = exp(_yf * log(_x));
        };
        var __tmp__ = frexp(_x), _x1:GoFloat64 = __tmp__._0, _xe:GoInt = __tmp__._1;
        {
            var _i:GoInt64 = (_yi : GoInt64);
            Go.cfor(_i != ((0i64 : GoInt64)), _i = _i >> ((1i64 : GoUInt64)), {
                if ((_xe < (-4096 : GoInt)) || ((4096 : GoInt) < _xe)) {
                    _ae = _ae + (_xe);
                    break;
                };
                if (_i & (1i64 : GoInt64) == ((1i64 : GoInt64))) {
                    _a1 = _a1 * (_x1);
                    _ae = _ae + (_xe);
                };
                _x1 = _x1 * (_x1);
                _xe = _xe << ((1i64 : GoUInt64));
                if (_x1 < (0.5 : GoFloat64)) {
                    _x1 = _x1 + (_x1);
                    _xe--;
                };
            });
        };
        if (_y < (0 : GoFloat64)) {
            _a1 = (1 : GoFloat64) / _a1;
            _ae = -_ae;
        };
        return ldexp(_a1, _ae);
    }
/**
    // Pow10 returns 10**n, the base-10 exponential of n.
    //
    // Special cases are:
    //
    //	Pow10(n) =    0 for n < -323
    //	Pow10(n) = +Inf for n > 308
**/
function pow10(_n:GoInt):GoFloat64 {
        if (((0 : GoInt) <= _n) && (_n <= (308 : GoInt))) {
            return _pow10postab32[((_n : GoUInt) / (32u32 : GoUInt) : GoInt)] * _pow10tab[((_n : GoUInt) % (32u32 : GoUInt) : GoInt)];
        };
        if (((-323 : GoInt) <= _n) && (_n <= (0 : GoInt))) {
            return _pow10negtab32[((-_n : GoUInt) / (32u32 : GoUInt) : GoInt)] / _pow10tab[((-_n : GoUInt) % (32u32 : GoUInt) : GoInt)];
        };
        if (_n > (0 : GoInt)) {
            return inf((1 : GoInt));
        };
        return (0 : GoFloat64);
    }
/**
    // Remainder returns the IEEE 754 floating-point remainder of x/y.
    //
    // Special cases are:
    //
    //	Remainder(±Inf, y) = NaN
    //	Remainder(NaN, y) = NaN
    //	Remainder(x, 0) = NaN
    //	Remainder(x, ±Inf) = x
    //	Remainder(x, NaN) = NaN
**/
function remainder(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
        if (false) {
            return _archRemainder(_x, _y);
        };
        return _remainder(_x, _y);
    }
private function _remainder(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
        {};
        if (((isNaN(_x) || isNaN(_y)) || isInf(_x, (0 : GoInt))) || (_y == (0 : GoFloat64))) {
            return naN();
        } else if (isInf(_y, (0 : GoInt))) {
            return _x;
        };
        var _sign:Bool = false;
        if (_x < (0 : GoFloat64)) {
            _x = -_x;
            _sign = true;
        };
        if (_y < (0 : GoFloat64)) {
            _y = -_y;
        };
        if (_x == (_y)) {
            if (_sign) {
                var _zero:GoFloat64 = (0 : GoFloat64);
                return -_zero;
            };
            return (0 : GoFloat64);
        };
        if (_y <= (8.988465674311579e+307 : GoFloat64)) {
            _x = mod(_x, _y + _y);
        };
        if (_y < (4.450147717014403e-308 : GoFloat64)) {
            if ((_x + _x) > _y) {
                _x = _x - (_y);
                if ((_x + _x) >= _y) {
                    _x = _x - (_y);
                };
            };
        } else {
            var _yHalf:GoFloat64 = (0.5 : GoFloat64) * _y;
            if (_x > _yHalf) {
                _x = _x - (_y);
                if (_x >= _yHalf) {
                    _x = _x - (_y);
                };
            };
        };
        if (_sign) {
            _x = -_x;
        };
        return _x;
    }
/**
    // Signbit reports whether x is negative or negative zero.
**/
function signbit(_x:GoFloat64):Bool {
        if (std.Math.isNaN(_x.toBasic())) return false;
        return float64bits(_x) & ((1 : GoUInt64) << (63 : GoUInt64)) != (0 : GoUInt64);
    }
/**
    // Cos returns the cosine of the radian argument x.
    //
    // Special cases are:
    //
    //	Cos(±Inf) = NaN
    //	Cos(NaN) = NaN
**/
function cos(_x:GoFloat64):GoFloat64 return std.Math.cos(_x.toBasic());
inline private function _cos(_x:GoFloat64):GoFloat64 return cos(_x);
/**
    // Sin returns the sine of the radian argument x.
    //
    // Special cases are:
    //
    //	Sin(±0) = ±0
    //	Sin(±Inf) = NaN
    //	Sin(NaN) = NaN
**/
function sin(_x:GoFloat64):GoFloat64 return std.Math.sin(_x.toBasic());
inline private function _sin(_x:GoFloat64):GoFloat64 return sin(_x);
/**
    // Sincos returns Sin(x), Cos(x).
    //
    // Special cases are:
    //
    //	Sincos(±0) = ±0, 1
    //	Sincos(±Inf) = NaN, NaN
    //	Sincos(NaN) = NaN, NaN
**/
function sincos(_x:GoFloat64):{ var _0 : GoFloat64; var _1 : GoFloat64; } {
        var _sin:GoFloat64 = (0 : GoFloat64), _cos:GoFloat64 = (0 : GoFloat64);
        {};
        if (_x == (0 : GoFloat64)) {
            return { _0 : _x, _1 : (1 : GoFloat64) };
        } else if (isNaN(_x) || isInf(_x, (0 : GoInt))) {
            return { _0 : naN(), _1 : naN() };
        };
        var __0:Bool = false, __1:Bool = false, _cosSign:Bool = __1, _sinSign:Bool = __0;
        if (_x < (0 : GoFloat64)) {
            _x = -_x;
            _sinSign = true;
        };
        var _j:GoUInt64 = (0 : GoUInt64);
        var __0:GoFloat64 = (0 : GoFloat64), __1:GoFloat64 = (0 : GoFloat64), _z:GoFloat64 = __1, _y:GoFloat64 = __0;
        if (_x >= (5.36870912e+08 : GoFloat64)) {
            {
                var __tmp__ = _trigReduce(_x);
                _j = __tmp__._0;
                _z = __tmp__._1;
            };
        } else {
            _j = (_x * (1.2732395447351628 : GoFloat64) : GoUInt64);
            _y = (_j : GoFloat64);
            if (_j & (1i64 : GoUInt64) == ((1i64 : GoUInt64))) {
                _j++;
                _y++;
            };
            _j = _j & ((7i64 : GoUInt64));
            _z = ((_x - (_y * (0.7853981256484985 : GoFloat64))) - (_y * (3.774894707930798e-08 : GoFloat64))) - (_y * (2.6951514290790595e-15 : GoFloat64));
        };
        if (_j > (3i64 : GoUInt64)) {
            _j = _j - ((4i64 : GoUInt64));
            {
                final __tmp__0 = !_sinSign;
                final __tmp__1 = !_cosSign;
                _sinSign = __tmp__0;
                _cosSign = __tmp__1;
            };
        };
        if (_j > (1i64 : GoUInt64)) {
            _cosSign = !_cosSign;
        };
        var _zz:GoFloat64 = _z * _z;
        _cos = ((1 : GoFloat64) - ((0.5 : GoFloat64) * _zz)) + ((_zz * _zz) * ((((((((((__cos[(0 : GoInt)] * _zz) + __cos[(1 : GoInt)]) * _zz) + __cos[(2 : GoInt)]) * _zz) + __cos[(3 : GoInt)]) * _zz) + __cos[(4 : GoInt)]) * _zz) + __cos[(5 : GoInt)]));
        _sin = _z + ((_z * _zz) * ((((((((((__sin[(0 : GoInt)] * _zz) + __sin[(1 : GoInt)]) * _zz) + __sin[(2 : GoInt)]) * _zz) + __sin[(3 : GoInt)]) * _zz) + __sin[(4 : GoInt)]) * _zz) + __sin[(5 : GoInt)]));
        if ((_j == (1i64 : GoUInt64)) || (_j == (2i64 : GoUInt64))) {
            {
                final __tmp__0 = _cos;
                final __tmp__1 = _sin;
                _sin = __tmp__0;
                _cos = __tmp__1;
            };
        };
        if (_cosSign) {
            _cos = -_cos;
        };
        if (_sinSign) {
            _sin = -_sin;
        };
        return { _0 : _sin, _1 : _cos };
    }
/**
    // Sinh returns the hyperbolic sine of x.
    //
    // Special cases are:
    //
    //	Sinh(±0) = ±0
    //	Sinh(±Inf) = ±Inf
    //	Sinh(NaN) = NaN
**/
function sinh(_x:GoFloat64):GoFloat64 {
        if (false) {
            return _archSinh(_x);
        };
        return _sinh(_x);
    }
private function _sinh(_x:GoFloat64):GoFloat64 {
        {};
        var _sign:Bool = false;
        if (_x < (0 : GoFloat64)) {
            _x = -_x;
            _sign = true;
        };
        var _temp:GoFloat64 = (0 : GoFloat64);
        if (_x > (21 : GoFloat64)) {
            _temp = exp(_x) * (0.5 : GoFloat64);
        } else if (_x > (0.5 : GoFloat64)) {
            var _ex:GoFloat64 = exp(_x);
            _temp = (_ex - ((1 : GoFloat64) / _ex)) * (0.5 : GoFloat64);
        } else {
            var _sq:GoFloat64 = _x * _x;
            _temp = (((((((-26.30563213397497 : GoFloat64) * _sq) + (-2894.211355989564 : GoFloat64)) * _sq) + (-89912.72022039509 : GoFloat64)) * _sq) + (-630767.3640497717 : GoFloat64)) * _x;
            _temp = _temp / (((((_sq + (-173.6789535582337 : GoFloat64)) * _sq) + (15215.17378790019 : GoFloat64)) * _sq) + (-630767.3640497717 : GoFloat64));
        };
        if (_sign) {
            _temp = -_temp;
        };
        return _temp;
    }
/**
    // Cosh returns the hyperbolic cosine of x.
    //
    // Special cases are:
    //
    //	Cosh(±0) = 1
    //	Cosh(±Inf) = +Inf
    //	Cosh(NaN) = NaN
**/
function cosh(_x:GoFloat64):GoFloat64 {
        if (false) {
            return _archCosh(_x);
        };
        return _cosh(_x);
    }
private function _cosh(_x:GoFloat64):GoFloat64 {
        _x = abs(_x);
        if (_x > (21 : GoFloat64)) {
            return exp(_x) * (0.5 : GoFloat64);
        };
        var _ex:GoFloat64 = exp(_x);
        return (_ex + ((1 : GoFloat64) / _ex)) * (0.5 : GoFloat64);
    }
/**
    // Sqrt returns the square root of x.
    //
    // Special cases are:
    //
    //	Sqrt(+Inf) = +Inf
    //	Sqrt(±0) = ±0
    //	Sqrt(x < 0) = NaN
    //	Sqrt(NaN) = NaN
**/
function sqrt(_x:GoFloat64):GoFloat64 return _sqrt(_x);
inline private function _sqrt(_x:GoFloat64):GoFloat64 return std.Math.sqrt(_x.toBasic());
private function _archAcos(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archAcosh(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archAsin(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archAsinh(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archAtan(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archAtan2(_y:GoFloat64, _x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archAtanh(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archCbrt(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archCos(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archCosh(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archErf(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archErfc(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archExpm1(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archFrexp(_x:GoFloat64):{ var _0 : GoFloat64; var _1 : GoInt; } {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archLdexp(_frac:GoFloat64, _exp:GoInt):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archLog10(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archLog2(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archLog1p(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archMod(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archPow(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archRemainder(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archSin(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archSinh(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archTan(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
private function _archTanh(_x:GoFloat64):GoFloat64 {
        throw Go.toInterface(("not implemented" : GoString));
    }
/**
    // Tan returns the tangent of the radian argument x.
    //
    // Special cases are:
    //
    //	Tan(±0) = ±0
    //	Tan(±Inf) = NaN
    //	Tan(NaN) = NaN
**/
function tan(_x:GoFloat64):GoFloat64 return std.Math.tan(_x.toBasic());
private function _tan(_x:GoFloat64):GoFloat64 {
        {};
        if ((_x == (0 : GoFloat64)) || isNaN(_x)) {
            return _x;
        } else if (isInf(_x, (0 : GoInt))) {
            return naN();
        };
        var _sign:Bool = false;
        if (_x < (0 : GoFloat64)) {
            _x = -_x;
            _sign = true;
        };
        var _j:GoUInt64 = (0 : GoUInt64);
        var __0:GoFloat64 = (0 : GoFloat64), __1:GoFloat64 = (0 : GoFloat64), _z:GoFloat64 = __1, _y:GoFloat64 = __0;
        if (_x >= (5.36870912e+08 : GoFloat64)) {
            {
                var __tmp__ = _trigReduce(_x);
                _j = __tmp__._0;
                _z = __tmp__._1;
            };
        } else {
            _j = (_x * (1.2732395447351628 : GoFloat64) : GoUInt64);
            _y = (_j : GoFloat64);
            if (_j & (1i64 : GoUInt64) == ((1i64 : GoUInt64))) {
                _j++;
                _y++;
            };
            _z = ((_x - (_y * (0.7853981256484985 : GoFloat64))) - (_y * (3.774894707930798e-08 : GoFloat64))) - (_y * (2.6951514290790595e-15 : GoFloat64));
        };
        var _zz:GoFloat64 = _z * _z;
        if (_zz > (1e-14 : GoFloat64)) {
            _y = _z + (_z * ((_zz * ((((__tanP[(0 : GoInt)] * _zz) + __tanP[(1 : GoInt)]) * _zz) + __tanP[(2 : GoInt)])) / (((((((_zz + __tanQ[(1 : GoInt)]) * _zz) + __tanQ[(2 : GoInt)]) * _zz) + __tanQ[(3 : GoInt)]) * _zz) + __tanQ[(4 : GoInt)])));
        } else {
            _y = _z;
        };
        if (_j & (2i64 : GoUInt64) == ((2i64 : GoUInt64))) {
            _y = (-1 : GoFloat64) / _y;
        };
        if (_sign) {
            _y = -_y;
        };
        return _y;
    }
/**
    // Tanh returns the hyperbolic tangent of x.
    //
    // Special cases are:
    //
    //	Tanh(±0) = ±0
    //	Tanh(±Inf) = ±1
    //	Tanh(NaN) = NaN
**/
function tanh(_x:GoFloat64):GoFloat64 {
        if (false) {
            return _archTanh(_x);
        };
        return _tanh(_x);
    }
private function _tanh(_x:GoFloat64):GoFloat64 {
        {};
        var _z:GoFloat64 = abs(_x);
        if (_z > (44.014845965556525 : GoFloat64)) {
            if (_x < (0 : GoFloat64)) {
                return (-1 : GoFloat64);
            };
            return (1 : GoFloat64);
        } else if (_z >= (0.625 : GoFloat64)) {
            var _s:GoFloat64 = exp((2 : GoFloat64) * _z);
            _z = (1 : GoFloat64) - ((2 : GoFloat64) / (_s + (1 : GoFloat64)));
            if (_x < (0 : GoFloat64)) {
                _z = -_z;
            };
        } else {
            if (_x == (0 : GoFloat64)) {
                return _x;
            };
            var _s:GoFloat64 = _x * _x;
            _z = _x + (((_x * _s) * ((((_tanhP[(0 : GoInt)] * _s) + _tanhP[(1 : GoInt)]) * _s) + _tanhP[(2 : GoInt)])) / (((((_s + _tanhQ[(0 : GoInt)]) * _s) + _tanhQ[(1 : GoInt)]) * _s) + _tanhQ[(2 : GoInt)]));
        };
        return _z;
    }
/**
    // trigReduce implements Payne-Hanek range reduction by Pi/4
    // for x > 0. It returns the integer part mod 8 (j) and
    // the fractional part (z) of x / (Pi/4).
    // The implementation is based on:
    // "ARGUMENT REDUCTION FOR HUGE ARGUMENTS: Good to the Last Bit"
    // K. C. Ng et al, March 24, 1992
    // The simulated multi-precision calculation of x*B uses 64-bit integer arithmetic.
**/
private function _trigReduce(_x:GoFloat64):{ var _0 : GoUInt64; var _1 : GoFloat64; } {
        var _j:GoUInt64 = (0 : GoUInt64), _z:GoFloat64 = (0 : GoFloat64);
        {};
        if (_x < (0.7853981633974483 : GoFloat64)) {
            return { _0 : (0i64 : GoUInt64), _1 : _x };
        };
        var _ix:GoUInt64 = float64bits(_x);
        var _exp:GoInt = (((_ix >> (52i64 : GoUInt64)) & (2047i64 : GoUInt64) : GoInt) - (1023 : GoInt)) - (52 : GoInt);
        _ix = _ix & ((9218868437227405312i64 : GoUInt64) ^ (-1i32 : GoInt));
        _ix = _ix | ((4503599627370496i64 : GoUInt64));
        var __0:GoUInt = (_exp + (61 : GoInt) : GoUInt) / (64u32 : GoUInt), __1:GoUInt = (_exp + (61 : GoInt) : GoUInt) % (64u32 : GoUInt), _bitshift:GoUInt = __1, _digit:GoUInt = __0;
        var _z0:GoUInt64 = (_mPi4[(_digit : GoInt)] << _bitshift) | (_mPi4[(_digit + (1u32 : GoUInt) : GoInt)] >> ((64u32 : GoUInt) - _bitshift));
        var _z1:GoUInt64 = (_mPi4[(_digit + (1u32 : GoUInt) : GoInt)] << _bitshift) | (_mPi4[(_digit + (2u32 : GoUInt) : GoInt)] >> ((64u32 : GoUInt) - _bitshift));
        var _z2:GoUInt64 = (_mPi4[(_digit + (2u32 : GoUInt) : GoInt)] << _bitshift) | (_mPi4[(_digit + (3u32 : GoUInt) : GoInt)] >> ((64u32 : GoUInt) - _bitshift));
        var __tmp__ = stdgo.math.bits.Bits.mul64(_z2, _ix), _z2hi:GoUInt64 = __tmp__._0, __0:GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.mul64(_z1, _ix), _z1hi:GoUInt64 = __tmp__._0, _z1lo:GoUInt64 = __tmp__._1;
        var _z0lo:GoUInt64 = _z0 * _ix;
        var __tmp__ = stdgo.math.bits.Bits.add64(_z1lo, _z2hi, (0i64 : GoUInt64)), _lo:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.add64(_z0lo, _z1hi, _c), _hi:GoUInt64 = __tmp__._0, __1:GoUInt64 = __tmp__._1;
        _j = _hi >> (61i64 : GoUInt64);
        _hi = (_hi << (3i64 : GoUInt64)) | (_lo >> (61i64 : GoUInt64));
        var _lz:GoUInt = (stdgo.math.bits.Bits.leadingZeros64(_hi) : GoUInt);
        var _e:GoUInt64 = ((1023u32 : GoUInt) - (_lz + (1u32 : GoUInt)) : GoUInt64);
        _hi = (_hi << (_lz + (1u32 : GoUInt))) | (_lo >> ((64u32 : GoUInt) - (_lz + (1u32 : GoUInt))));
        _hi = _hi >> ((12i64 : GoUInt64));
        _hi = _hi | (_e << (52i64 : GoUInt64));
        _z = float64frombits(_hi);
        if (_j & (1i64 : GoUInt64) == ((1i64 : GoUInt64))) {
            _j++;
            _j = _j & ((7i64 : GoUInt64));
            _z--;
        };
        return { _0 : _j, _1 : _z * (0.7853981633974483 : GoFloat64) };
    }
/**
    // Float32bits returns the IEEE 754 binary representation of f,
    // with the sign bit of f and the result in the same bit position.
    // Float32bits(Float32frombits(x)) == x.
**/
function float32bits(_f:GoFloat32):GoUInt32 {
        final bits = haxe.io.Bytes.alloc(4);
        bits.setFloat(0, _f.toBasic());
        return (bits.get(0)) | (bits.get(1) << 8) | (bits.get(2) << 16) | (bits.get(3) << 24);
    }
/**
    // Float32frombits returns the floating-point number corresponding
    // to the IEEE 754 binary representation b, with the sign bit of b
    // and the result in the same bit position.
    // Float32frombits(Float32bits(x)) == x.
**/
function float32frombits(_b:GoUInt32):GoFloat32 {
        final bits = haxe.io.Bytes.alloc(4);
        final v = _b.toBasic();
        bits.set(0, v & 0xff);
        bits.set(1, (v >> 8) & 0xff);
        bits.set(2, (v >> 16) & 0xff);
        bits.set(3, (v >> 24) & 0xff);
        return bits.getFloat(0);
    }
/**
    // Float64bits returns the IEEE 754 binary representation of f,
    // with the sign bit of f and the result in the same bit position,
    // and Float64bits(Float64frombits(x)) == x.
**/
function float64bits(_f:GoFloat64):GoUInt64 {
        final bits = haxe.io.Bytes.alloc(8);
        bits.setDouble(0, _f.toBasic());
        return haxe.Int64.make(bits.get(4) | (bits.get(5) << 8) | (bits.get(6) << 16) | (bits.get(7) << 24), bits.get(0) | (bits.get(1) << 8) | (bits.get(2) << 16) | (bits.get(3) << 24));
    }
/**
    // Float64frombits returns the floating-point number corresponding
    // to the IEEE 754 binary representation b, with the sign bit of b
    // and the result in the same bit position.
    // Float64frombits(Float64bits(x)) == x.
**/
function float64frombits(_b:GoUInt64):GoFloat64 {
        final bits = haxe.io.Bytes.alloc(8);
        final low = _b.toBasic().low;
        final high = _b.toBasic().high;
        bits.set(0, low & 0xff);
        bits.set(1, (low >> 8) & 0xff);
        bits.set(2, (low >> 16) & 0xff);
        bits.set(3, (low >> 24) & 0xff);
        bits.set(4, high & 0xff);
        bits.set(5, (high >> 8) & 0xff);
        bits.set(6, (high >> 16) & 0xff);
        bits.set(7, (high >> 24) & 0xff);
        return bits.getDouble(0);
    }
private function negZero() {
        return copysign(0.0, -1.0);
    }
