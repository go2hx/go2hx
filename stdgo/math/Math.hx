package stdgo.math;

import haxe.Int64;
import haxe.io.Bytes;
import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;

var __lgamR:GoArray<GoFloat64> = new GoArray<GoFloat64>(((1 : GoFloat64)), ((1.3920053346762105 : GoFloat64)), ((0.7219355475671381 : GoFloat64)),
	((0.17193386563280308 : GoFloat64)), ((0.01864591917156529 : GoFloat64)), ((0.0007779424963818936 : GoFloat64)),
	((7.326684307446256e-06 : GoFloat64))).copy();

var _q1R3:GoArray<GoFloat64> = new GoArray<GoFloat64>(-((5.078312264617666e-09 : GoUnTypedFloat)),
	-((0.10253782982083709 : GoUnTypedFloat)),
	-((4.610115811394734 : GoUnTypedFloat)),
	-((57.847221656278364 : GoUnTypedFloat)),
	-((228.2445407376317 : GoUnTypedFloat)),
	-((219.21012847890933 : GoUnTypedFloat))).copy();

final _b5:GoFloat64 = ((39307.89580009271 : GoUnTypedFloat));
final minInt64:GoUnTypedInt = -((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt));

var __lgamS:GoArray<GoFloat64> = new GoArray<GoFloat64>(-((0.07721566490153287 : GoUnTypedFloat)), ((0.21498241596060885 : GoFloat64)),
	((0.325778796408931 : GoFloat64)), ((0.14635047265246445 : GoFloat64)), ((0.02664227030336386 : GoFloat64)), ((0.0018402845140733772 : GoFloat64)),
	((3.194753265841009e-05 : GoFloat64))).copy();

final _b6:GoFloat64 = ((28729.085735721943 : GoUnTypedFloat));

var __lgamT:GoArray<GoFloat64> = new GoArray<GoFloat64>(((0.48383612272381005 : GoFloat64)),
	-((0.1475877229945939 : GoUnTypedFloat)),
	((0.06462494023913339 : GoFloat64)),
	-((0.032788541075985965 : GoUnTypedFloat)), ((0.01797067508118204 : GoFloat64)),
	-((0.010314224129834144 : GoUnTypedFloat)), ((0.006100538702462913 : GoFloat64)),
	-((0.0036845201678113826 : GoUnTypedFloat)),
	((0.0022596478090061247 : GoFloat64)),
	-((0.0014034646998923284 : GoUnTypedFloat)), ((0.000881081882437654 : GoFloat64)),
	-((0.0005385953053567405 : GoUnTypedFloat)), ((0.00031563207090362595 : GoFloat64)),
	-((0.00031275416837512086 : GoUnTypedFloat)),
	((0.0003355291926355191 : GoFloat64))).copy();

var _q1R5:GoArray<GoFloat64> = new GoArray<GoFloat64>(-((2.089799311417641e-11 : GoUnTypedFloat)),
	-((0.10253905024137543 : GoUnTypedFloat)),
	-((8.05644828123936 : GoUnTypedFloat)),
	-((183.66960747488838 : GoUnTypedFloat)),
	-((1373.1937606550816 : GoUnTypedFloat)),
	-((2612.4444045321566 : GoUnTypedFloat))).copy();

final _b7:GoFloat64 = ((5226.495278852854 : GoUnTypedFloat));
final _haveArchErf:Bool = false;

var __lgamU:GoArray<GoFloat64> = new GoArray<GoFloat64>(-((0.07721566490153287 : GoUnTypedFloat)), ((0.6328270640250934 : GoFloat64)),
	((1.4549225013723477 : GoFloat64)), ((0.9777175279633727 : GoFloat64)), ((0.22896372806469245 : GoFloat64)), ((0.013381091853678766 : GoFloat64))).copy();

var sqrtGo:GoFloat64->GoFloat64 = _sqrt;
final _signMask:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt));

var __lgamV:GoArray<GoFloat64> = new GoArray<GoFloat64>(((1 : GoFloat64)), ((2.4559779371304113 : GoFloat64)), ((2.128489763798934 : GoFloat64)),
	((0.7692851504566728 : GoFloat64)), ((0.10422264559336913 : GoFloat64)), ((0.003217092422824239 : GoFloat64))).copy();

final smallestNonzeroFloat64:GoUnTypedFloat = ((2.2250738585072014e-308 : GoUnTypedFloat)) * ((2.220446049250313e-16 : GoUnTypedFloat));

var __lgamW:GoArray<GoFloat64> = new GoArray<GoFloat64>(((0.4189385332046727 : GoFloat64)), ((0.08333333333333297 : GoFloat64)),
	-((0.0027777777772877554 : GoUnTypedFloat)), ((0.0007936505586430196 : GoFloat64)),
	-((0.00059518755745034 : GoUnTypedFloat)),
	((0.0008363399189962821 : GoFloat64)),
	-((0.0016309293409657527 : GoUnTypedFloat))).copy();

var _q1R8:GoArray<GoFloat64> = new GoArray<GoFloat64>(((0 : GoFloat64)),
	-((0.10253906249999271 : GoUnTypedFloat)),
	-((16.271753454459 : GoUnTypedFloat)),
	-((759.6017225139501 : GoUnTypedFloat)),
	-((11849.806670242959 : GoUnTypedFloat)),
	-((48438.512428575035 : GoUnTypedFloat))).copy();

var _p0S2:GoArray<GoFloat64> = new GoArray<GoFloat64>(((22.22029975320888 : GoFloat64)), ((136.2067942182152 : GoFloat64)), ((270.4702786580835 : GoFloat64)),
	((153.87539420832033 : GoFloat64)), ((14.65761769482562 : GoFloat64))).copy();

final _haveArchExp2:Bool = false;
final _haveArchPow:Bool = false;

var _p0S3:GoArray<GoFloat64> = new GoArray<GoFloat64>(((35.85603380552097 : GoFloat64)), ((361.51398305030386 : GoFloat64)),
	((1193.6078379211153 : GoFloat64)), ((1127.9967985690741 : GoFloat64)), ((173.58093081333575 : GoFloat64))).copy();

var expGo:GoFloat64->GoFloat64 = _exp;
final ln2:GoFloat64 = ((0.6931471805599453 : GoUnTypedFloat));

var _p0S5:GoArray<GoFloat64> = new GoArray<GoFloat64>(((60.753938269230034 : GoFloat64)), ((1051.2523059570458 : GoFloat64)),
	((5978.970943338558 : GoFloat64)), ((9625.445143577745 : GoFloat64)), ((2406.058159229391 : GoFloat64))).copy();

final _haveArchExp:Bool = false;
final _bias:GoInt64 = ((1023 : GoUnTypedInt));
final _intSize:GoUnTypedInt = ((32 : GoUnTypedInt)) << (-1 ^ ((((0 : GoUInt)) : GoUInt)) >> ((63 : GoUnTypedInt)));
final minInt:GoUnTypedInt = -((1 : GoUnTypedInt)) << (_intSize - ((1 : GoUnTypedInt)));
final _a0:GoFloat64 = ((1.1975323115670913 : GoUnTypedFloat));

var _pow10tab:GoArray<GoFloat64> = new GoArray<GoFloat64>(((1 : GoFloat64)), ((10 : GoFloat64)), ((100 : GoFloat64)), ((1000 : GoFloat64)),
	((10000 : GoFloat64)), ((100000 : GoFloat64)), ((1e+06 : GoFloat64)), ((1e+07 : GoFloat64)), ((1e+08 : GoFloat64)), ((1e+09 : GoFloat64)),
	((1e+10 : GoFloat64)), ((1e+11 : GoFloat64)), ((1e+12 : GoFloat64)), ((1e+13 : GoFloat64)), ((1e+14 : GoFloat64)), ((1e+15 : GoFloat64)),
	((1e+16 : GoFloat64)), ((1e+17 : GoFloat64)), ((1e+18 : GoFloat64)), ((1e+19 : GoFloat64)), ((1e+20 : GoFloat64)), ((1e+21 : GoFloat64)),
	((1e+22 : GoFloat64)), ((1e+23 : GoFloat64)), ((1e+24 : GoFloat64)), ((1e+25 : GoFloat64)), ((1e+26 : GoFloat64)), ((1e+27 : GoFloat64)),
	((1e+28 : GoFloat64)), ((1e+29 : GoFloat64)), ((1e+30 : GoFloat64)), ((1e+31 : GoFloat64))).copy();

final _reduceThreshold:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((29 : GoUnTypedInt));
final reduceThreshold:GoUnTypedInt = _reduceThreshold;
final _a1:GoFloat64 = ((47.07268811238398 : GoUnTypedFloat));
final _haveArchMax:Bool = false;

var _p0S8:GoArray<GoFloat64> = new GoArray<GoFloat64>(((116.53436461966818 : GoFloat64)), ((3833.7447536412183 : GoFloat64)),
	((40597.857264847255 : GoFloat64)), ((116752.97256437592 : GoFloat64)), ((47627.728414673096 : GoFloat64))).copy();

final _a2:GoFloat64 = ((697.062665343896 : GoUnTypedFloat));
final sqrt2:GoFloat64 = ((1.4142135623730951 : GoUnTypedFloat));
final _a3:GoFloat64 = ((4854.886889384388 : GoUnTypedFloat));
final _a4:GoFloat64 = ((16235.862515167575 : GoUnTypedFloat));

var _pow10postab32:GoArray<GoFloat64> = new GoArray<GoFloat64>(((1 : GoFloat64)), ((1e+32 : GoFloat64)), ((1e+64 : GoFloat64)), ((1e+96 : GoFloat64)),
	((1e+128 : GoFloat64)), ((1e+160 : GoFloat64)), ((1e+192 : GoFloat64)), ((1e+224 : GoFloat64)), ((1e+256 : GoFloat64)), ((1e+288 : GoFloat64))).copy();

final _a5:GoFloat64 = ((23782.041382114385 : GoUnTypedFloat));
final _sb1:GoFloat64 = ((30.33806074348246 : GoUnTypedFloat));
final _haveArchLog2:Bool = false;
final _a6:GoFloat64 = ((11819.493347062295 : GoUnTypedFloat));
final _sb2:GoFloat64 = ((325.7925129965739 : GoUnTypedFloat));
final _a7:GoFloat64 = ((887.0940696254552 : GoUnTypedFloat));
final _sb3:GoFloat64 = ((1536.729586084437 : GoUnTypedFloat));

var _pow10negtab32:GoArray<GoFloat64> = new GoArray<GoFloat64>(((1 : GoFloat64)), ((1e-32 : GoFloat64)), ((1e-64 : GoFloat64)), ((1e-96 : GoFloat64)),
	((1e-128 : GoFloat64)), ((1e-160 : GoFloat64)), ((1e-192 : GoFloat64)), ((1e-224 : GoFloat64)), ((1e-256 : GoFloat64)), ((1e-288 : GoFloat64)),
	((1e-320 : GoFloat64))).copy();

final _sb4:GoFloat64 = ((3199.8582195085955 : GoUnTypedFloat));
final maxUint32:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
final _shift:GoUnTypedInt = (((64 : GoUnTypedInt)) - ((11 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
final _sb5:GoFloat64 = ((2553.0504064331644 : GoUnTypedFloat));
final _f0:GoFloat64 = ((1.4142135623730951 : GoUnTypedFloat));
final maxInt16:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((15 : GoUnTypedInt))) - ((1 : GoUnTypedInt));

var _p0R2:GoArray<GoFloat64> = new GoArray<GoFloat64>(-((8.875343330325264e-08 : GoUnTypedFloat)),
	-((0.07030309954836247 : GoUnTypedFloat)),
	-((1.4507384678095299 : GoUnTypedFloat)),
	-((7.635696138235278 : GoUnTypedFloat)),
	-((11.193166886035675 : GoUnTypedFloat)),
	-((3.2336457935133534 : GoUnTypedFloat))).copy();

final _pp0:GoFloat64 = ((0.12837916709551256 : GoUnTypedFloat));
final _sb6:GoFloat64 = ((474.52854120695537 : GoUnTypedFloat));
final _f1:GoFloat64 = ((0.8482908416595164 : GoUnTypedFloat));

var _p0R3:GoArray<GoFloat64> = new GoArray<GoFloat64>(-((2.547046017719519e-09 : GoUnTypedFloat)),
	-((0.07031196163814817 : GoUnTypedFloat)),
	-((2.409032215495296 : GoUnTypedFloat)),
	-((21.96597747348831 : GoUnTypedFloat)),
	-((58.07917047017376 : GoUnTypedFloat)),
	-((31.44794705948885 : GoUnTypedFloat))).copy();

final _f2:GoFloat64 = ((0.19364809469506591 : GoUnTypedFloat));
final _pp1:GoFloat64 = -((0.3250421072470015 : GoUnTypedFloat));
final _sb7:GoFloat64 = -((22.44095244658582 : GoUnTypedFloat));
final ln10:GoFloat64 = ((2.302585092994046 : GoUnTypedFloat));
final _haveArchExpm1:Bool = false;
final _haveArchAtan2:Bool = false;
final _haveArchSqrt:Bool = true;
final _f3:GoFloat64 = ((0.02103693768272069 : GoUnTypedFloat));
final _pp2:GoFloat64 = -((0.02848174957559851 : GoUnTypedFloat));
final _haveArchAcosh:Bool = false;

var _p0R5:GoArray<GoFloat64> = new GoArray<GoFloat64>(-((1.141254646918945e-11 : GoUnTypedFloat)),
	-((0.07031249408735993 : GoUnTypedFloat)),
	-((4.159610644705878 : GoUnTypedFloat)),
	-((67.67476522651673 : GoUnTypedFloat)),
	-((331.23129964917297 : GoUnTypedFloat)),
	-((346.4333883656049 : GoUnTypedFloat))).copy();

final _f4:GoFloat64 = ((0.0011128009970788597 : GoUnTypedFloat));
final _pp3:GoFloat64 = -((0.005770270296489442 : GoUnTypedFloat));
final e:GoFloat64 = ((2.718281828459045 : GoUnTypedFloat));
final _f5:GoFloat64 = ((2.6110884050805935e-05 : GoUnTypedFloat));
final _pp4:GoFloat64 = -((2.3763016656650163e-05 : GoUnTypedFloat));
final maxInt:GoUnTypedInt = (((1 : GoUnTypedInt)) << (_intSize - ((1 : GoUnTypedInt)))) - ((1 : GoUnTypedInt));
final _f6:GoFloat64 = ((2.010321207683943e-07 : GoUnTypedFloat));

var _p0R8:GoArray<GoFloat64> = new GoArray<GoFloat64>(((0 : GoFloat64)),
	-((0.07031249999999004 : GoUnTypedFloat)),
	-((8.081670412753498 : GoUnTypedFloat)),
	-((257.06310567970485 : GoUnTypedFloat)),
	-((2485.216410094288 : GoUnTypedFloat)),
	-((5253.043804907295 : GoUnTypedFloat))).copy();

final _f7:GoFloat64 = ((2.8910246058729655e-15 : GoUnTypedFloat));
final maxInt64:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
final _uvnan:GoInt64 = (("9221120237041090561" : GoUnTypedInt));

var _q0S2:GoArray<GoFloat64> = new GoArray<GoFloat64>(((30.36558483552192 : GoFloat64)), ((269.34811860804984 : GoFloat64)),
	((844.7837575953201 : GoFloat64)), ((882.9358451124886 : GoFloat64)), ((212.66638851179883 : GoFloat64)), -((5.3109549388266695 : GoUnTypedFloat))).copy();

var _q0S3:GoArray<GoFloat64> = new GoArray<GoFloat64>(((48.75887297245872 : GoFloat64)), ((709.689221056606 : GoFloat64)), ((3704.1482262011136 : GoFloat64)),
	((6460.425167525689 : GoFloat64)), ((2516.3336892036896 : GoFloat64)), -((149.2474518361564 : GoUnTypedFloat))).copy();

final _haveArchCosh:Bool = false;
final _sa1:GoFloat64 = ((19.651271667439257 : GoUnTypedFloat));
final _haveArchTan:Bool = false;

var _q0S5:GoArray<GoFloat64> = new GoArray<GoFloat64>(((82.77661022365378 : GoFloat64)), ((2077.81416421393 : GoFloat64)), ((18847.28877857181 : GoFloat64)),
	((56751.11228949473 : GoFloat64)), ((35976.75384251145 : GoFloat64)), -((5354.342756019448 : GoUnTypedFloat))).copy();

final _haveArchCeil:Bool = true;
final _sa2:GoFloat64 = ((137.65775414351904 : GoUnTypedFloat));
final sqrtPi:GoFloat64 = ((1.772453850905516 : GoUnTypedFloat));

var __gamP:GoArray<GoFloat64> = new GoArray<GoFloat64>(((0.00016011952247675185 : GoFloat64)), ((0.0011913514700658638 : GoFloat64)),
	((0.010421379756176158 : GoFloat64)), ((0.04763678004571372 : GoFloat64)), ((0.20744822764843598 : GoFloat64)), ((0.4942148268014971 : GoFloat64)),
	((1 : GoFloat64))).copy();

final sqrtE:GoFloat64 = ((1.6487212707001282 : GoUnTypedFloat));
final _sa3:GoFloat64 = ((434.56587747522923 : GoUnTypedFloat));
final _uvone:GoInt64 = (("4607182418800017408" : GoUnTypedInt));
final _haveArchTanh:Bool = false;
final _haveArchMod:Bool = false;
final _haveArchLog1p:Bool = false;

var __gamQ:GoArray<GoFloat64> = new GoArray<GoFloat64>(-((2.3158187332412014e-05 : GoUnTypedFloat)), ((0.0005396055804933034 : GoFloat64)),
	-((0.004456419138517973 : GoUnTypedFloat)), ((0.011813978522206043 : GoFloat64)), ((0.035823639860549865 : GoFloat64)),
	-((0.23459179571824335 : GoUnTypedFloat)), ((0.0714304917030273 : GoFloat64)), ((1 : GoFloat64))).copy();

final _sa4:GoFloat64 = ((645.3872717332679 : GoUnTypedFloat));
final _qa1:GoFloat64 = ((0.10642088040084423 : GoUnTypedFloat));
final _haveArchRemainder:Bool = false;

var _q0S8:GoArray<GoFloat64> = new GoArray<GoFloat64>(((163.77602689568982 : GoFloat64)), ((8098.344946564498 : GoFloat64)),
	((142538.29141912048 : GoFloat64)), ((803309.2571195144 : GoFloat64)), ((840501.5798190605 : GoFloat64)), -((343899.2935378666 : GoUnTypedFloat))).copy();

final _sa5:GoFloat64 = ((429.00814002756783 : GoUnTypedFloat));
final _e0:GoFloat64 = ((6.657904643501103 : GoUnTypedFloat));
final _qa2:GoFloat64 = ((0.540397917702171 : GoUnTypedFloat));

var __gamS:GoArray<GoFloat64> = new GoArray<GoFloat64>(((0.0007873113957930937 : GoFloat64)), -((0.00022954996161337813 : GoUnTypedFloat)),
	-((0.0026813261780578124 : GoUnTypedFloat)), ((0.0034722222160545866 : GoFloat64)), ((0.08333333333334822 : GoFloat64))).copy();

final _sa6:GoFloat64 = ((108.63500554177944 : GoUnTypedFloat));
final _e1:GoFloat64 = ((5.463784911164114 : GoUnTypedFloat));
final _qa3:GoFloat64 = ((0.07182865441419627 : GoUnTypedFloat));
final _uvneginf:GoInt64 = (("18442240474082181120" : GoUnTypedInt));
final _haveArchCbrt:Bool = false;
final _sa7:GoFloat64 = ((6.570249770319282 : GoUnTypedFloat));
final _e2:GoFloat64 = ((1.7848265399172913 : GoUnTypedFloat));
final _qa4:GoFloat64 = ((0.12617121980876164 : GoUnTypedFloat));

var trigReduce:GoFloat64 -> {
	var _0:GoUInt64;
	var _1:GoFloat64;
} = _trigReduce;

final _sa8:GoFloat64 = -((0.0604244152148581 : GoUnTypedFloat));
final _e3:GoFloat64 = ((0.29656057182850487 : GoUnTypedFloat));
final _qa5:GoFloat64 = ((0.01363708391202905 : GoUnTypedFloat));
final _e4:GoFloat64 = ((0.026532189526576124 : GoUnTypedFloat));
final _qa6:GoFloat64 = ((0.011984499846799107 : GoUnTypedFloat));
final _haveArchSin:Bool = false;
final _e5:GoFloat64 = ((0.0012426609473880784 : GoUnTypedFloat));
final sqrtPhi:GoFloat64 = ((1.272019649514069 : GoUnTypedFloat));
final pi:GoFloat64 = ((3.141592653589793 : GoUnTypedFloat));
final _e6:GoFloat64 = ((2.7115555687434876e-05 : GoUnTypedFloat));

final maxFloat64:GoUnTypedFloat = ((8.98846567431158e+307 : GoUnTypedFloat)) * (((1 : GoUnTypedFloat))
	+ (((1 : GoUnTypedFloat)) - ((2.220446049250313e-16 : GoUnTypedFloat))));

final _haveArchAtan:Bool = false;
final _e7:GoFloat64 = ((2.0103343992922881e-07 : GoUnTypedFloat));

var _q0R2:GoArray<GoFloat64> = new GoArray<GoFloat64>(((1.5044444488698327e-07 : GoFloat64)), ((0.07322342659630793 : GoFloat64)),
	((1.99819174093816 : GoFloat64)), ((14.495602934788574 : GoFloat64)), ((31.666231750478154 : GoFloat64)), ((16.252707571092927 : GoFloat64))).copy();

final minInt32:GoUnTypedInt = -((1 : GoUnTypedInt)) << ((31 : GoUnTypedInt));
final _erx:GoFloat64 = ((0.8450629115104675 : GoUnTypedFloat));
final _uvinf:GoInt64 = (("9218868437227405312" : GoUnTypedInt));

var _q0R3:GoArray<GoFloat64> = new GoArray<GoFloat64>(((4.377410140897386e-09 : GoFloat64)), ((0.07324111800429114 : GoFloat64)),
	((3.344231375161707 : GoFloat64)), ((42.621844074541265 : GoFloat64)), ((170.8080913405656 : GoFloat64)), ((166.73394869665117 : GoFloat64))).copy();

var hypotGo:(GoFloat64, GoFloat64) -> GoFloat64 = _hypot;
final _haveArchAsinh:Bool = false;
final maxUint:GoUnTypedInt = (((1 : GoUnTypedInt)) << _intSize) - ((1 : GoUnTypedInt));

var _tanhP:GoArray<GoFloat64> = new GoArray<GoFloat64>(-((0.9643991794250523 : GoUnTypedFloat)),
	-((99.28772310019185 : GoUnTypedFloat)),
	-((1614.6876844170845 : GoUnTypedFloat))).copy();

var _p1S2:GoArray<GoFloat64> = new GoArray<GoFloat64>(((21.43648593638214 : GoFloat64)), ((125.29022716840275 : GoFloat64)),
	((232.2764690571628 : GoFloat64)), ((117.6793732871471 : GoFloat64)), ((8.364638933716183 : GoFloat64))).copy();

var _q0R5:GoArray<GoFloat64> = new GoArray<GoFloat64>(((1.8408596359451553e-11 : GoFloat64)), ((0.07324217666126848 : GoFloat64)),
	((5.8356350896205695 : GoFloat64)), ((135.11157728644983 : GoFloat64)), ((1027.243765961641 : GoFloat64)), ((1989.9778586460538 : GoFloat64))).copy();

var _tanhQ:GoArray<GoFloat64> = new GoArray<GoFloat64>(((112.81167849163293 : GoFloat64)), ((2235.4883906010045 : GoFloat64)),
	((4844.063053251255 : GoFloat64))).copy();

var _p1S3:GoArray<GoFloat64> = new GoArray<GoFloat64>(((34.79130950012515 : GoFloat64)), ((336.76245874782575 : GoFloat64)),
	((1046.8713997577513 : GoFloat64)), ((890.8113463982564 : GoFloat64)), ((103.78793243963928 : GoFloat64))).copy();

final _qq1:GoFloat64 = ((0.39791722395915535 : GoUnTypedFloat));
final smallestNonzeroFloat32:GoUnTypedFloat = ((1.1754943508222875e-38 : GoUnTypedFloat)) * ((1.1920928955078125e-07 : GoUnTypedFloat));
final _haveArchErfc:Bool = false;
final _qq2:GoFloat64 = ((0.0650222499887673 : GoUnTypedFloat));
final _haveArchLog10:Bool = false;

var _p1S5:GoArray<GoFloat64> = new GoArray<GoFloat64>(((59.28059872211313 : GoFloat64)), ((991.4014187336144 : GoFloat64)), ((5353.26695291488 : GoFloat64)),
	((7844.690317495512 : GoFloat64)), ((1504.0468881036106 : GoFloat64))).copy();

var _q0R8:GoArray<GoFloat64> = new GoArray<GoFloat64>(((0 : GoFloat64)), ((0.0732421874999935 : GoFloat64)), ((11.76820646822527 : GoFloat64)),
	((557.6733802564019 : GoFloat64)), ((8859.197207564686 : GoFloat64)), ((37014.62677768878 : GoFloat64))).copy();

final _d0:GoFloat64 = ((1.4142135623730951 : GoUnTypedFloat));
final _haveArchMin:Bool = false;
final _qq3:GoFloat64 = ((0.005081306281875766 : GoUnTypedFloat));
final _haveArchAsin:Bool = false;
final _d1:GoFloat64 = ((2.9036514445419948 : GoUnTypedFloat));
final _qq4:GoFloat64 = ((0.00013249473800432164 : GoUnTypedFloat));
final _d2:GoFloat64 = ((2.3707661626024534 : GoUnTypedFloat));
final _qq5:GoFloat64 = -((3.960228278775368e-06 : GoUnTypedFloat));

var _p1S8:GoArray<GoFloat64> = new GoArray<GoFloat64>(((114.20737037567841 : GoFloat64)), ((3650.9308342085346 : GoFloat64)),
	((36956.206026903346 : GoFloat64)), ((97602.79359349508 : GoFloat64)), ((30804.27206278888 : GoFloat64))).copy();

final _d3:GoFloat64 = ((0.9754783200178743 : GoUnTypedFloat));

var __sin:GoArray<GoFloat64> = new GoArray<GoFloat64>(((1.5896230157654656e-10 : GoFloat64)),
	-((2.5050747762857807e-08 : GoUnTypedFloat)),
	((2.7557313621385722e-06 : GoFloat64)),
	-((0.0001984126982958954 : GoUnTypedFloat)), ((0.008333333333322118 : GoFloat64)),
	-((0.1666666666666663 : GoUnTypedFloat))).copy();

final maxUint16:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((16 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
final _d4:GoFloat64 = ((0.2094506521051275 : GoUnTypedFloat));
final _efx8:GoFloat64 = ((1.0270333367641007 : GoUnTypedFloat));
final _efx:GoFloat64 = ((0.1283791670955126 : GoUnTypedFloat));
final _haveArchModf:Bool = false;
final _haveArchFloor:Bool = true;
final _d5:GoFloat64 = ((0.021494160384252878 : GoUnTypedFloat));

var __tanP:GoArray<GoFloat64> = new GoArray<GoFloat64>(-((13093.693918138379 : GoUnTypedFloat)), ((1.1535166483858742e+06 : GoFloat64)),
	-((1.7956525197648488e+07 : GoUnTypedFloat))).copy();

final _d6:GoFloat64 = ((0.0007744145906515771 : GoUnTypedFloat));

var __tanQ:GoArray<GoFloat64> = new GoArray<GoFloat64>(((1 : GoFloat64)), ((13681.296347069296 : GoFloat64)), -((1.3208923444021097e+06 : GoUnTypedFloat)),
	((2.500838018233579e+07 : GoFloat64)), -((5.3869575592945464e+07 : GoUnTypedFloat))).copy();

var exp2Go:GoFloat64->GoFloat64 = _exp2;
final _d7:GoFloat64 = ((1.4859850019840355e-09 : GoUnTypedFloat));
final _rb0:GoFloat64 = -((0.0098649429247001 : GoUnTypedFloat));
final _rb1:GoFloat64 = -((0.799283237680523 : GoUnTypedFloat));
final _rb2:GoFloat64 = -((17.757954917754752 : GoUnTypedFloat));

var _p1R2:GoArray<GoFloat64> = new GoArray<GoFloat64>(((1.0771083010687374e-07 : GoFloat64)), ((0.11717621946268335 : GoFloat64)),
	((2.368514966676088 : GoFloat64)), ((12.242610914826123 : GoFloat64)), ((17.693971127168773 : GoFloat64)), ((5.073523125888185 : GoFloat64))).copy();

final maxUint64:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((64 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
final _rb3:GoFloat64 = -((160.63638485582192 : GoUnTypedFloat));
final maxUint8:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((8 : GoUnTypedInt))) - ((1 : GoUnTypedInt));

var _p1R3:GoArray<GoFloat64> = new GoArray<GoFloat64>(((3.025039161373736e-09 : GoFloat64)), ((0.11718686556725359 : GoFloat64)),
	((3.9329775003331564 : GoFloat64)), ((35.11940355916369 : GoFloat64)), ((91.05501107507813 : GoFloat64)), ((48.55906851973649 : GoFloat64))).copy();

final _rb4:GoFloat64 = -((637.5664433683896 : GoUnTypedFloat));
final _rb5:GoFloat64 = -((1025.0951316110772 : GoUnTypedFloat));

var _p1R5:GoArray<GoFloat64> = new GoArray<GoFloat64>(((1.3199051955624352e-11 : GoFloat64)), ((0.1171874931906141 : GoFloat64)),
	((6.802751278684329 : GoFloat64)), ((108.30818299018911 : GoFloat64)), ((517.6361395331998 : GoFloat64)), ((528.7152013633375 : GoFloat64))).copy();

final _rb6:GoFloat64 = -((483.5191916086514 : GoUnTypedFloat));
final _c0:GoFloat64 = ((1.4234371107496835 : GoUnTypedFloat));
final _haveArchCos:Bool = false;
final phi:GoFloat64 = ((1.618033988749895 : GoUnTypedFloat));
final _c1:GoFloat64 = ((4.630337846156546 : GoUnTypedFloat));

var _mPi4:GoArray<GoUInt64> = new GoArray<GoUInt64>(((1 : GoUInt64)), (("5040379952546458195" : GoUInt64)), (("17892431488136887169" : GoUInt64)),
	(("13169980181085364355" : GoUInt64)), (("18204331823439776451" : GoUInt64)), (("7946843935494350272" : GoUInt64)), (("905889640498799673" : GoUInt64)),
	(("18175356263134875261" : GoUInt64)), (("15061281708168349961" : GoUInt64)), (("15220161563773041794" : GoUInt64)), (("8296664548579374057" : GoUInt64)),
	(("4109744767560208502" : GoUInt64)), (("4607516669194743839" : GoUInt64)), (("16023283104648321598" : GoUInt64)), (("15739233654134936430" : GoUInt64)),
	(("11424645774684705882" : GoUInt64)), (("16883842788696515318" : GoUInt64)), (("8795094592981902804" : GoUInt64)), (("15561835991111744016" : GoUInt64)),
	(("12395701187267450711" : GoUInt64))).copy();

var __lgamA:GoArray<GoFloat64> = new GoArray<GoFloat64>(((0.07721566490153287 : GoFloat64)), ((0.3224670334241136 : GoFloat64)),
	((0.06735230105312927 : GoFloat64)), ((0.020580808432516733 : GoFloat64)), ((0.007385550860814029 : GoFloat64)), ((0.0028905138367341563 : GoFloat64)),
	((0.0011927076318336207 : GoFloat64)), ((0.0005100697921535113 : GoFloat64)), ((0.00022086279071390839 : GoFloat64)),
	((0.00010801156724758394 : GoFloat64)), ((2.5214456545125733e-05 : GoFloat64)), ((4.4864094961891516e-05 : GoFloat64))).copy();

final _c2:GoFloat64 = ((5.769497221460691 : GoUnTypedFloat));
final log10E:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / ln10;

var _p1R8:GoArray<GoFloat64> = new GoArray<GoFloat64>(((0 : GoFloat64)), ((0.11718749999998865 : GoFloat64)), ((13.239480659307358 : GoFloat64)),
	((412.05185430737856 : GoFloat64)), ((3874.7453891396053 : GoFloat64)), ((7914.479540318917 : GoFloat64))).copy();

final _c3:GoFloat64 = ((3.6478483247632045 : GoUnTypedFloat));
final _haveArchFrexp:Bool = false;

var _q1S2:GoArray<GoFloat64> = new GoArray<GoFloat64>(((29.533362906052385 : GoFloat64)), ((252.98154998219053 : GoFloat64)),
	((757.5028348686454 : GoFloat64)), ((739.3932053204672 : GoFloat64)), ((155.94900333666612 : GoFloat64)), -((4.959498988226282 : GoUnTypedFloat))).copy();

final _c4:GoFloat64 = ((1.2704582524523684 : GoUnTypedFloat));

var _q1S3:GoArray<GoFloat64> = new GoArray<GoFloat64>(((47.66515503237295 : GoFloat64)), ((673.8651126766997 : GoFloat64)),
	((3380.1528667952634 : GoFloat64)), ((5547.729097207228 : GoFloat64)), ((1903.119193388108 : GoFloat64)), -((135.20119144430734 : GoUnTypedFloat))).copy();

final _fracMask:GoUnTypedInt = (((1 : GoUnTypedInt)) << _shift) - ((1 : GoUnTypedInt));
final _c5:GoFloat64 = ((0.2417807251774506 : GoUnTypedFloat));
final minInt8:GoUnTypedInt = -((1 : GoUnTypedInt)) << ((7 : GoUnTypedInt));
final maxInt32:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((31 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
final _c6:GoFloat64 = ((0.022723844989269184 : GoUnTypedFloat));

var _q1S5:GoArray<GoFloat64> = new GoArray<GoFloat64>(((81.27655013843358 : GoFloat64)), ((1991.7987346048596 : GoFloat64)),
	((17468.48519249089 : GoFloat64)), ((49851.42709103523 : GoFloat64)), ((27948.075163891812 : GoFloat64)), -((4719.183547951285 : GoUnTypedFloat))).copy();

final _c7:GoFloat64 = ((0.0007745450142783414 : GoUnTypedFloat));
final _ra0:GoFloat64 = -((0.009864944034847148 : GoUnTypedFloat));
final _ra1:GoFloat64 = -((0.6938585727071818 : GoUnTypedFloat));

var _q1S8:GoArray<GoFloat64> = new GoArray<GoFloat64>(((161.3953697007229 : GoFloat64)), ((7825.385999233485 : GoFloat64)),
	((133875.33628724958 : GoFloat64)), ((719657.7236832409 : GoFloat64)), ((666601.2326177764 : GoFloat64)), -((294490.26430383464 : GoUnTypedFloat))).copy();

final _haveArchHypot:Bool = false;
final _mask:GoInt64 = ((2047 : GoUnTypedInt));
final _ra2:GoFloat64 = -((10.558626225323291 : GoUnTypedFloat));
final _haveArchAcos:Bool = false;
final _ra3:GoFloat64 = -((62.375332450326006 : GoUnTypedFloat));
final _pa0:GoFloat64 = -((0.0023621185607526594 : GoUnTypedFloat));
final minInt16:GoUnTypedInt = -((1 : GoUnTypedInt)) << ((15 : GoUnTypedInt));
final _ra4:GoFloat64 = -((162.39666946257347 : GoUnTypedFloat));
final _pa1:GoFloat64 = ((0.41485611868374833 : GoUnTypedFloat));
final _haveArchLdexp:Bool = false;
final maxInt8:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((7 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
final _ra5:GoFloat64 = -((184.60509290671104 : GoUnTypedFloat));
final _pa2:GoFloat64 = -((0.3722078760357013 : GoUnTypedFloat));

var __cos:GoArray<GoFloat64> = new GoArray<GoFloat64>(-((1.1358536521387682e-11 : GoUnTypedFloat)), ((2.087570084197473e-09 : GoFloat64)),
	-((2.755731417929674e-07 : GoUnTypedFloat)), ((2.4801587288851704e-05 : GoFloat64)),
	-((0.0013888888888873056 : GoUnTypedFloat)),
	((0.041666666666666595 : GoFloat64))).copy();

final _ra6:GoFloat64 = -((81.2874355063066 : GoUnTypedFloat));
final _pa3:GoFloat64 = ((0.31834661990116175 : GoUnTypedFloat));
final _b0:GoFloat64 = ((1 : GoUnTypedFloat));
final _haveArchAtanh:Bool = false;
final _haveArchLog:Bool = false;
final _haveArchTrunc:Bool = true;
final _ra7:GoFloat64 = -((9.814329344169145 : GoUnTypedFloat));
final _pa4:GoFloat64 = -((0.11089469428239668 : GoUnTypedFloat));
final _b1:GoFloat64 = ((42.31333070160091 : GoUnTypedFloat));
final _pa5:GoFloat64 = ((0.035478304325618236 : GoUnTypedFloat));
final _b2:GoFloat64 = ((687.1870074920579 : GoUnTypedFloat));
final log2E:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / ln2;
final _haveArchSinh:Bool = false;
final _pa6:GoFloat64 = -((0.002166375594868791 : GoUnTypedFloat));
final _b3:GoFloat64 = ((5394.196021424751 : GoUnTypedFloat));

var _q1R2:GoArray<GoFloat64> = new GoArray<GoFloat64>(-((1.7838172751095887e-07 : GoUnTypedFloat)),
	-((0.10251704260798555 : GoUnTypedFloat)),
	-((2.7522056827818746 : GoUnTypedFloat)),
	-((19.663616264370372 : GoUnTypedFloat)),
	-((42.32531333728305 : GoUnTypedFloat)),
	-((21.371921170370406 : GoUnTypedFloat))).copy();

final _b4:GoFloat64 = ((21213.794301586597 : GoUnTypedFloat));

final maxFloat32:GoUnTypedFloat = ((1.7014118346046923e+38 : GoUnTypedFloat)) * (((1 : GoUnTypedFloat))
	+ (((1 : GoUnTypedFloat)) - ((1.1920928955078125e-07 : GoUnTypedFloat))));

/**
	// Abs returns the absolute value of x.
	//
	// Special cases are:
	//	Abs(±Inf) = +Inf
	//	Abs(NaN) = NaN
**/
function abs(_x:GoFloat64):GoFloat64 {
	return float64frombits(float64bits(_x) & ((((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) ^ ((-1 : GoUnTypedInt))));
}

/**
	// Acosh returns the inverse hyperbolic cosine of x.
	//
	// Special cases are:
	//	Acosh(+Inf) = +Inf
	//	Acosh(x) = NaN if x < 1
	//	Acosh(NaN) = NaN
**/
function acosh(_x:GoFloat64):GoFloat64 {
	if (_haveArchAcosh) {
		return _archAcosh(_x);
	};
	return _acosh(_x);
}

function _acosh(_x:GoFloat64):GoFloat64 {
	final large:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((28 : GoUnTypedInt));
	if ((_x < ((1 : GoFloat64))) || isNaN(_x)) {
		return naN();
	} else if (_x == ((1 : GoFloat64))) {
		return ((0 : GoFloat64));
	} else if (_x >= large) {
		return log(_x) + ln2;
	} else if (_x > ((2 : GoFloat64))) {
		return log((((2 : GoFloat64)) * _x) - (((1 : GoFloat64)) / (_x + sqrt((_x * _x) - ((1 : GoFloat64))))));
	};
	var _t:GoFloat64 = _x - ((1 : GoFloat64));
	return log1p(_t + sqrt((((2 : GoFloat64)) * _t) + (_t * _t)));
}

/**
	// Asin returns the arcsine, in radians, of x.
	//
	// Special cases are:
	//	Asin(±0) = ±0
	//	Asin(x) = NaN if x < -1 or x > 1
**/
function asin(_x:GoFloat64):GoFloat64 {
	if (_haveArchAsin) {
		return _archAsin(_x);
	};
	return _asin(_x);
}

function _asin(_x:GoFloat64):GoFloat64 {
	if (_x == ((0 : GoFloat64))) {
		return _x;
	};
	var _sign:Bool = false;
	if (_x < ((0 : GoFloat64))) {
		_x = -_x;
		_sign = true;
	};
	if (_x > ((1 : GoFloat64))) {
		return naN();
	};
	var _temp:GoFloat64 = sqrt(((1 : GoFloat64)) - (_x * _x));
	if (_x > ((0.7 : GoFloat64))) {
		_temp = (pi / ((2 : GoUnTypedFloat))) - _satan(_temp / _x);
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
	//	Acos(x) = NaN if x < -1 or x > 1
**/
function acos(_x:GoFloat64):GoFloat64 {
	if (_haveArchAcos) {
		return _archAcos(_x);
	};
	return _acos(_x);
}

function _acos(_x:GoFloat64):GoFloat64 {
	return (pi / ((2 : GoUnTypedFloat))) - asin(_x);
}

/**
	// Asinh returns the inverse hyperbolic sine of x.
	//
	// Special cases are:
	//	Asinh(±0) = ±0
	//	Asinh(±Inf) = ±Inf
	//	Asinh(NaN) = NaN
**/
function asinh(_x:GoFloat64):GoFloat64 {
	if (_haveArchAsinh) {
		return _archAsinh(_x);
	};
	return _asinh(_x);
}

function _asinh(_x:GoFloat64):GoFloat64 {
	final ln2:GoUnTypedFloat = ((0.6931471805599453 : GoUnTypedFloat)),
	nearZero:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((28 : GoUnTypedInt))),
	large:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((28 : GoUnTypedInt));
	if (isNaN(_x) || isInf(_x, ((0 : GoInt)))) {
		return _x;
	};
	var _sign:Bool = false;
	if (_x < ((0 : GoFloat64))) {
		_x = -_x;
		_sign = true;
	};
	var _temp:GoFloat64 = ((0 : GoFloat64));
	if (_x > large) {
		_temp = log(_x) + ln2;
	} else if (_x > ((2 : GoFloat64))) {
		_temp = log((((2 : GoFloat64)) * _x) + (((1 : GoFloat64)) / (sqrt((_x * _x) + ((1 : GoFloat64))) + _x)));
	} else if (_x < nearZero) {
		_temp = _x;
	} else {
		_temp = log1p(_x + ((_x * _x) / (((1 : GoFloat64)) + sqrt(((1 : GoFloat64)) + (_x * _x)))));
	};
	if (_sign) {
		_temp = -_temp;
	};
	return _temp;
}

/**
	// xatan evaluates a series valid in the range [0, 0.66].
**/
function _xatan(_x:GoFloat64):GoFloat64 {
	final p0:GoUnTypedFloat = -((0.8750608600031904 : GoUnTypedFloat)), p1:GoUnTypedFloat = -((16.157537187333652 : GoUnTypedFloat)),
	p2:GoUnTypedFloat = -((75.00855792314705 : GoUnTypedFloat)), p3:GoUnTypedFloat = -((122.88666844901361 : GoUnTypedFloat)),
	p4:GoUnTypedFloat = -((64.85021904942025 : GoUnTypedFloat)), q0:GoUnTypedFloat = ((24.858464901423062 : GoUnTypedFloat)),
	q1:GoUnTypedFloat = ((165.02700983169885 : GoUnTypedFloat)), q2:GoUnTypedFloat = ((432.88106049129027 : GoUnTypedFloat)),
	q3:GoUnTypedFloat = ((485.3903996359137 : GoUnTypedFloat)), q4:GoUnTypedFloat = ((194.5506571482614 : GoUnTypedFloat));
	var _z:GoFloat64 = _x * _x;
	_z = (_z * ((((((((p0 * _z) + p1) * _z) + p2) * _z) + p3) * _z) + p4)) / (((((((((_z + q0) * _z) + q1) * _z) + q2) * _z) + q3) * _z) + q4);
	_z = (_x * _z) + _x;
	return _z;
}

/**
	// satan reduces its argument (known to be positive)
	// to the range [0, 0.66] and calls xatan.
**/
function _satan(_x:GoFloat64):GoFloat64 {
	final morebits:GoUnTypedFloat = ((6.123233995736766e-17 : GoUnTypedFloat)), tan3pio8:GoUnTypedFloat = ((2.414213562373095 : GoUnTypedFloat));
	if (_x <= ((0.66 : GoFloat64))) {
		return _xatan(_x);
	};
	if (_x > tan3pio8) {
		return ((pi / ((2 : GoUnTypedFloat))) - _xatan(((1 : GoFloat64)) / _x)) + morebits;
	};
	return ((pi / ((4 : GoUnTypedFloat))) + _xatan((_x - ((1 : GoFloat64))) / (_x + ((1 : GoFloat64))))) + (((0.5 : GoUnTypedFloat)) * morebits);
}

/**
	// Atan returns the arctangent, in radians, of x.
	//
	// Special cases are:
	//      Atan(±0) = ±0
	//      Atan(±Inf) = ±Pi/2
**/
function atan(_x:GoFloat64):GoFloat64 {
	if (_haveArchAtan) {
		return _archAtan(_x);
	};
	return _atan(_x);
}

function _atan(_x:GoFloat64):GoFloat64 {
	if (_x == ((0 : GoFloat64))) {
		return _x;
	};
	if (_x > ((0 : GoFloat64))) {
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
function atan2(_y:GoFloat64, _x:GoFloat64):GoFloat64 {
	if (_haveArchAtan2) {
		return _archAtan2(_y, _x);
	};
	return _atan2(_y, _x);
}

function _atan2(_y:GoFloat64, _x:GoFloat64):GoFloat64 {
	if (isNaN(_y) || isNaN(_x)) {
		return naN();
	} else if (_y == ((0 : GoFloat64))) {
		if ((_x >= ((0 : GoFloat64))) && !signbit(_x)) {
			return copysign(((0 : GoFloat64)), _y);
		};
		return copysign(pi, _y);
	} else if (_x == ((0 : GoFloat64))) {
		return copysign(pi / ((2 : GoUnTypedFloat)), _y);
	} else if (isInf(_x, ((0 : GoInt)))) {
		if (isInf(_x, ((1 : GoInt)))) {
			if (isInf(_y, ((0 : GoInt)))) {
				return copysign(pi / ((4 : GoUnTypedFloat)), _y);
			} else {
				return copysign(((0 : GoFloat64)), _y);
			};
		};
		if (isInf(_y, ((0 : GoInt)))) {
			return copysign((((3 : GoUnTypedFloat)) * pi) / ((4 : GoUnTypedFloat)), _y);
		} else {
			return copysign(pi, _y);
		};
	} else if (isInf(_y, ((0 : GoInt)))) {
		return copysign(pi / ((2 : GoUnTypedFloat)), _y);
	};
	var _q:GoFloat64 = atan(_y / _x);
	if (_x < ((0 : GoFloat64))) {
		if (_q <= ((0 : GoFloat64))) {
			return _q + pi;
		};
		return _q - pi;
	};
	return _q;
}

/**
	// Atanh returns the inverse hyperbolic tangent of x.
	//
	// Special cases are:
	//	Atanh(1) = +Inf
	//	Atanh(±0) = ±0
	//	Atanh(-1) = -Inf
	//	Atanh(x) = NaN if x < -1 or x > 1
	//	Atanh(NaN) = NaN
**/
function atanh(_x:GoFloat64):GoFloat64 {
	if (_haveArchAtanh) {
		return _archAtanh(_x);
	};
	return _atanh(_x);
}

function _atanh(_x:GoFloat64):GoFloat64 {
	final nearZero:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((28 : GoUnTypedInt)));
	if (((_x < -((1 : GoUnTypedInt))) || (_x > ((1 : GoFloat64)))) || isNaN(_x)) {
		return naN();
	} else if (_x == ((1 : GoFloat64))) {
		return inf(((1 : GoInt)));
	} else if (_x == -((1 : GoUnTypedInt))) {
		return inf(-((1 : GoUnTypedInt)));
	};
	var _sign:Bool = false;
	if (_x < ((0 : GoFloat64))) {
		_x = -_x;
		_sign = true;
	};
	var _temp:GoFloat64 = ((0 : GoFloat64));
	if (_x < nearZero) {
		_temp = _x;
	} else if (_x < ((0.5 : GoFloat64))) {
		_temp = _x + _x;
		_temp = ((0.5 : GoFloat64)) * log1p(_temp + ((_temp * _x) / (((1 : GoFloat64)) - _x)));
	} else {
		_temp = ((0.5 : GoFloat64)) * log1p((_x + _x) / (((1 : GoFloat64)) - _x));
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
	var _v:GoUInt64 = ((0 : GoUInt64));
	if (_sign >= ((0 : GoInt))) {
		_v = _uvinf;
	} else {
		_v = _uvneginf;
	};
	return float64frombits(_v);
}

/**
	// NaN returns an IEEE 754 ``not-a-number'' value.
**/
function naN():GoFloat64 {
	return float64frombits(_uvnan);
}

/**
	// IsNaN reports whether f is an IEEE 754 ``not-a-number'' value.
**/
function isNaN(_f:GoFloat64):Bool {
	var _is:Bool = false;
	return _f != _f;
}

/**
	// IsInf reports whether f is an infinity, according to sign.
	// If sign > 0, IsInf reports whether f is positive infinity.
	// If sign < 0, IsInf reports whether f is negative infinity.
	// If sign == 0, IsInf reports whether f is either infinity.
**/
function isInf(_f:GoFloat64, _sign:GoInt):Bool {
	return ((_sign >= ((0 : GoInt))) && (_f > maxFloat64)) || ((_sign <= ((0 : GoInt))) && (_f < -maxFloat64));
}

/**
	// normalize returns a normal number y and exponent exp
	// satisfying x == y × 2**exp. It assumes x is finite and non-zero.
**/
function _normalize(_x:GoFloat64):{var _0:GoFloat64; var _1:GoInt;} {
	var _y:GoFloat64 = ((0 : GoFloat64)), _exp:GoInt = ((0 : GoInt));
	final smallestNormal:GoUnTypedFloat = ((2.2250738585072014e-308 : GoUnTypedFloat));
	if (abs(_x) < smallestNormal) {
		return {_0: _x * (((1 : GoUnTypedInt)) << ((52 : GoUnTypedInt))), _1: -((52 : GoUnTypedInt))};
	};
	return {_0: _x, _1: ((0 : GoInt))};
}

/**
	// Cbrt returns the cube root of x.
	//
	// Special cases are:
	//	Cbrt(±0) = ±0
	//	Cbrt(±Inf) = ±Inf
	//	Cbrt(NaN) = NaN
**/
function cbrt(_x:GoFloat64):GoFloat64 {
	if (_haveArchCbrt) {
		return _archCbrt(_x);
	};
	return _cbrt(_x);
}

function _cbrt(_x:GoFloat64):GoFloat64 {
	final b1:GoUnTypedInt = ((715094163 : GoUnTypedInt)), b2:GoUnTypedInt = ((696219795 : GoUnTypedInt)),
	c:GoUnTypedFloat = ((0.5428571428571428 : GoUnTypedFloat)), d:GoUnTypedFloat = -((0.7053061224489796 : GoUnTypedFloat)),
	e:GoUnTypedFloat = ((1.4142857142857144 : GoUnTypedFloat)), f:GoUnTypedFloat = ((1.6071428571428572 : GoUnTypedFloat)),
	g:GoUnTypedFloat = ((0.35714285714285715 : GoUnTypedFloat)), smallestNormal:GoUnTypedFloat = ((2.2250738585072014e-308 : GoUnTypedFloat));
	if (((_x == ((0 : GoFloat64))) || isNaN(_x)) || isInf(_x, ((0 : GoInt)))) {
		return _x;
	};
	var _sign:Bool = false;
	if (_x < ((0 : GoFloat64))) {
		_x = -_x;
		_sign = true;
	};
	var _t:GoFloat64 = float64frombits((float64bits(_x) / ((3 : GoUInt64))) + (b1 << ((32 : GoUnTypedInt))));
	if (_x < smallestNormal) {
		_t = (((((1 : GoUnTypedInt)) << ((54 : GoUnTypedInt))) : GoFloat64));
		_t = _t * (_x);
		_t = float64frombits((float64bits(_t) / ((3 : GoUInt64))) + (b2 << ((32 : GoUnTypedInt))));
	};
	var _r:GoFloat64 = (_t * _t) / _x;
	var _s:GoFloat64 = c + (_r * _t);
	_t = _t * (g + (f / ((_s + e) + (d / _s))));
	_t = float64frombits((float64bits(_t) & ((("68719476732" : GoUnTypedInt)) << ((28 : GoUnTypedInt)))) + (((1 : GoUnTypedInt)) << ((30 : GoUnTypedInt))));
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
	// Copysign returns a value with the magnitude
	// of x and the sign of y.
**/
function copysign(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	final _sign:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt));
	return float64frombits((float64bits(_x) & (_sign ^ ((-1 : GoUnTypedInt)))) | (float64bits(_y) & _sign));
}

/**
	// Dim returns the maximum of x-y or 0.
	//
	// Special cases are:
	//	Dim(+Inf, +Inf) = NaN
	//	Dim(-Inf, -Inf) = NaN
	//	Dim(x, NaN) = Dim(NaN, x) = NaN
**/
function dim(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	var _v:GoFloat64 = _x - _y;
	if (_v <= ((0 : GoFloat64))) {
		return ((0 : GoFloat64));
	};
	return _v;
}

/**
	// Max returns the larger of x or y.
	//
	// Special cases are:
	//	Max(x, +Inf) = Max(+Inf, x) = +Inf
	//	Max(x, NaN) = Max(NaN, x) = NaN
	//	Max(+0, ±0) = Max(±0, +0) = +0
	//	Max(-0, -0) = -0
**/
function max(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	if (_haveArchMax) {
		return _archMax(_x, _y);
	};
	return _max(_x, _y);
}

function _max(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	if (isInf(_x, ((1 : GoInt))) || isInf(_y, ((1 : GoInt)))) {
		return inf(((1 : GoInt)));
	} else if (isNaN(_x) || isNaN(_y)) {
		return naN();
	} else if ((_x == ((0 : GoFloat64))) && (_x == _y)) {
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
	//	Min(x, -Inf) = Min(-Inf, x) = -Inf
	//	Min(x, NaN) = Min(NaN, x) = NaN
	//	Min(-0, ±0) = Min(±0, -0) = -0
**/
function min(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	if (_haveArchMin) {
		return _archMin(_x, _y);
	};
	return _min(_x, _y);
}

function _min(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	if (isInf(_x, -((1 : GoUnTypedInt))) || isInf(_y, -((1 : GoUnTypedInt)))) {
		return inf(-((1 : GoUnTypedInt)));
	} else if (isNaN(_x) || isNaN(_y)) {
		return naN();
	} else if ((_x == ((0 : GoFloat64))) && (_x == _y)) {
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

function _archMax(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archMin(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

/**
	// Erf returns the error function of x.
	//
	// Special cases are:
	//	Erf(+Inf) = 1
	//	Erf(-Inf) = -1
	//	Erf(NaN) = NaN
**/
function erf(_x:GoFloat64):GoFloat64 {
	if (_haveArchErf) {
		return _archErf(_x);
	};
	return _erf(_x);
}

function _erf(_x:GoFloat64):GoFloat64 {
	final veryTiny:GoUnTypedFloat = ((2.848094538889218e-306 : GoUnTypedFloat)),
	small:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((28 : GoUnTypedInt)));
	if (isNaN(_x)) {
		return naN();
	} else if (isInf(_x, ((1 : GoInt)))) {
		return ((1 : GoFloat64));
	} else if (isInf(_x, -((1 : GoUnTypedInt)))) {
		return -((1 : GoUnTypedInt));
	};
	var _sign:Bool = false;
	if (_x < ((0 : GoFloat64))) {
		_x = -_x;
		_sign = true;
	};
	if (_x < ((0.84375 : GoFloat64))) {
		var _temp:GoFloat64 = ((0 : GoFloat64));
		if (_x < small) {
			if (_x < veryTiny) {
				_temp = ((0.125 : GoFloat64)) * ((((8 : GoFloat64)) * _x) + (_efx8 * _x));
			} else {
				_temp = _x + (_efx * _x);
			};
		} else {
			var _z:GoFloat64 = _x * _x;
			var _r:GoFloat64 = _pp0 + (_z * (_pp1 + (_z * (_pp2 + (_z * (_pp3 + (_z * _pp4)))))));
			var _s:GoFloat64 = ((1 : GoFloat64)) + (_z * (_qq1 + (_z * (_qq2 + (_z * (_qq3 + (_z * (_qq4 + (_z * _qq5)))))))));
			var _y:GoFloat64 = _r / _s;
			_temp = _x + (_x * _y);
		};
		if (_sign) {
			return -_temp;
		};
		return _temp;
	};
	if (_x < ((1.25 : GoFloat64))) {
		var _s:GoFloat64 = _x - ((1 : GoFloat64));
		var p:GoFloat64 = _pa0 + (_s * (_pa1 + (_s * (_pa2 + (_s * (_pa3 + (_s * (_pa4 + (_s * (_pa5 + (_s * _pa6)))))))))));
		var q:GoFloat64 = ((1 : GoFloat64)) + (_s * (_qa1 + (_s * (_qa2 + (_s * (_qa3 + (_s * (_qa4 + (_s * (_qa5 + (_s * _qa6)))))))))));
		if (_sign) {
			return -_erx - (p / q);
		};
		return _erx + (p / q);
	};
	if (_x >= ((6 : GoFloat64))) {
		if (_sign) {
			return -((1 : GoUnTypedInt));
		};
		return ((1 : GoFloat64));
	};
	var _s:GoFloat64 = ((1 : GoFloat64)) / (_x * _x);
	var r:GoFloat64 = ((0 : GoFloat64)), s:GoFloat64 = ((0 : GoFloat64));
	if (_x < (((1 : GoUnTypedFloat)) / ((0.35 : GoUnTypedFloat)))) {
		r = _ra0 + (_s * (_ra1 + (_s * (_ra2 + (_s * (_ra3 + (_s * (_ra4 + (_s * (_ra5 + (_s * (_ra6 + (_s * _ra7)))))))))))));
		s = ((1 : GoFloat64)) + (_s * (_sa1 + (_s * (_sa2 + (_s * (_sa3 + (_s * (_sa4 + (_s * (_sa5 + (_s * (_sa6 + (_s * (_sa7 + (_s * _sa8)))))))))))))));
	} else {
		r = _rb0 + (_s * (_rb1 + (_s * (_rb2 + (_s * (_rb3 + (_s * (_rb4 + (_s * (_rb5 + (_s * _rb6)))))))))));
		s = ((1 : GoFloat64)) + (_s * (_sb1 + (_s * (_sb2 + (_s * (_sb3 + (_s * (_sb4 + (_s * (_sb5 + (_s * (_sb6 + (_s * _sb7)))))))))))));
	};
	var _z:GoFloat64 = float64frombits(float64bits(_x) & (("18446744069414584320" : GoUInt64)));
	var _r:GoFloat64 = exp((-_z * _z) - ((0.5625 : GoFloat64))) * exp(((_z - _x) * (_z + _x)) + (r / s));
	if (_sign) {
		return (_r / _x) - ((1 : GoFloat64));
	};
	return ((1 : GoFloat64)) - (_r / _x);
}

/**
	// Erfc returns the complementary error function of x.
	//
	// Special cases are:
	//	Erfc(+Inf) = 0
	//	Erfc(-Inf) = 2
	//	Erfc(NaN) = NaN
**/
function erfc(_x:GoFloat64):GoFloat64 {
	if (_haveArchErfc) {
		return _archErfc(_x);
	};
	return _erfc(_x);
}

function _erfc(_x:GoFloat64):GoFloat64 {
	final tiny:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((56 : GoUnTypedInt)));
	if (isNaN(_x)) {
		return naN();
	} else if (isInf(_x, ((1 : GoInt)))) {
		return ((0 : GoFloat64));
	} else if (isInf(_x, -((1 : GoUnTypedInt)))) {
		return ((2 : GoFloat64));
	};
	var _sign:Bool = false;
	if (_x < ((0 : GoFloat64))) {
		_x = -_x;
		_sign = true;
	};
	if (_x < ((0.84375 : GoFloat64))) {
		var _temp:GoFloat64 = ((0 : GoFloat64));
		if (_x < tiny) {
			_temp = _x;
		} else {
			var _z:GoFloat64 = _x * _x;
			var _r:GoFloat64 = _pp0 + (_z * (_pp1 + (_z * (_pp2 + (_z * (_pp3 + (_z * _pp4)))))));
			var _s:GoFloat64 = ((1 : GoFloat64)) + (_z * (_qq1 + (_z * (_qq2 + (_z * (_qq3 + (_z * (_qq4 + (_z * _qq5)))))))));
			var _y:GoFloat64 = _r / _s;
			if (_x < ((0.25 : GoFloat64))) {
				_temp = _x + (_x * _y);
			} else {
				_temp = ((0.5 : GoFloat64)) + ((_x * _y) + (_x - ((0.5 : GoFloat64))));
			};
		};
		if (_sign) {
			return ((1 : GoFloat64)) + _temp;
		};
		return ((1 : GoFloat64)) - _temp;
	};
	if (_x < ((1.25 : GoFloat64))) {
		var _s:GoFloat64 = _x - ((1 : GoFloat64));
		var p:GoFloat64 = _pa0 + (_s * (_pa1 + (_s * (_pa2 + (_s * (_pa3 + (_s * (_pa4 + (_s * (_pa5 + (_s * _pa6)))))))))));
		var q:GoFloat64 = ((1 : GoFloat64)) + (_s * (_qa1 + (_s * (_qa2 + (_s * (_qa3 + (_s * (_qa4 + (_s * (_qa5 + (_s * _qa6)))))))))));
		if (_sign) {
			return (((1 : GoUnTypedFloat)) + _erx) + (p / q);
		};
		return (((1 : GoUnTypedFloat)) - _erx) - (p / q);
	};
	if (_x < ((28 : GoFloat64))) {
		var _s:GoFloat64 = ((1 : GoFloat64)) / (_x * _x);
		var r:GoFloat64 = ((0 : GoFloat64)), s:GoFloat64 = ((0 : GoFloat64));
		if (_x < (((1 : GoUnTypedFloat)) / ((0.35 : GoUnTypedFloat)))) {
			r = _ra0 + (_s * (_ra1 + (_s * (_ra2 + (_s * (_ra3 + (_s * (_ra4 + (_s * (_ra5 + (_s * (_ra6 + (_s * _ra7)))))))))))));
			s = ((1 : GoFloat64))
				+ (_s * (_sa1 + (_s * (_sa2 + (_s * (_sa3 + (_s * (_sa4 + (_s * (_sa5 + (_s * (_sa6 + (_s * (_sa7 + (_s * _sa8)))))))))))))));
		} else {
			if (_sign && (_x > ((6 : GoFloat64)))) {
				return ((2 : GoFloat64));
			};
			r = _rb0 + (_s * (_rb1 + (_s * (_rb2 + (_s * (_rb3 + (_s * (_rb4 + (_s * (_rb5 + (_s * _rb6)))))))))));
			s = ((1 : GoFloat64)) + (_s * (_sb1 + (_s * (_sb2 + (_s * (_sb3 + (_s * (_sb4 + (_s * (_sb5 + (_s * (_sb6 + (_s * _sb7)))))))))))));
		};
		var _z:GoFloat64 = float64frombits(float64bits(_x) & (("18446744069414584320" : GoUInt64)));
		var _r:GoFloat64 = exp((-_z * _z) - ((0.5625 : GoFloat64))) * exp(((_z - _x) * (_z + _x)) + (r / s));
		if (_sign) {
			return ((2 : GoFloat64)) - (_r / _x);
		};
		return _r / _x;
	};
	if (_sign) {
		return ((2 : GoFloat64));
	};
	return ((0 : GoFloat64));
}

/**
	// Erfinv returns the inverse error function of x.
	//
	// Special cases are:
	//	Erfinv(1) = +Inf
	//	Erfinv(-1) = -Inf
	//	Erfinv(x) = NaN if x < -1 or x > 1
	//	Erfinv(NaN) = NaN
**/
function erfinv(_x:GoFloat64):GoFloat64 {
	if ((isNaN(_x) || (_x <= -((1 : GoUnTypedInt)))) || (_x >= ((1 : GoFloat64)))) {
		if ((_x == -((1 : GoUnTypedInt))) || (_x == ((1 : GoFloat64)))) {
			return inf(((_x : GoInt)));
		};
		return naN();
	};
	var _sign:Bool = false;
	if (_x < ((0 : GoFloat64))) {
		_x = -_x;
		_sign = true;
	};
	var _ans:GoFloat64 = ((0 : GoFloat64));
	if (_x <= ((0.85 : GoFloat64))) {
		var _r:GoFloat64 = ((0.180625 : GoFloat64)) - ((((0.25 : GoFloat64)) * _x) * _x);
		var _z1:GoFloat64 = (((((((((((((_a7 * _r) + _a6) * _r) + _a5) * _r) + _a4) * _r) + _a3) * _r) + _a2) * _r) + _a1) * _r) + _a0;
		var _z2:GoFloat64 = (((((((((((((_b7 * _r) + _b6) * _r) + _b5) * _r) + _b4) * _r) + _b3) * _r) + _b2) * _r) + _b1) * _r) + _b0;
		_ans = (_x * _z1) / _z2;
	} else {
		var _z1:GoFloat64 = ((0 : GoFloat64)),
			_z2:GoFloat64 = ((0 : GoFloat64));
		var _r:GoFloat64 = sqrt(ln2 - log(((1 : GoFloat64)) - _x));
		if (_r <= ((5 : GoFloat64))) {
			_r = _r - (((1.6 : GoFloat64)));
			_z1 = (((((((((((((_c7 * _r) + _c6) * _r) + _c5) * _r) + _c4) * _r) + _c3) * _r) + _c2) * _r) + _c1) * _r) + _c0;
			_z2 = (((((((((((((_d7 * _r) + _d6) * _r) + _d5) * _r) + _d4) * _r) + _d3) * _r) + _d2) * _r) + _d1) * _r) + _d0;
		} else {
			_r = _r - (((5 : GoFloat64)));
			_z1 = (((((((((((((_e7 * _r) + _e6) * _r) + _e5) * _r) + _e4) * _r) + _e3) * _r) + _e2) * _r) + _e1) * _r) + _e0;
			_z2 = (((((((((((((_f7 * _r) + _f6) * _r) + _f5) * _r) + _f4) * _r) + _f3) * _r) + _f2) * _r) + _f1) * _r) + _f0;
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
	//	Erfcinv(0) = +Inf
	//	Erfcinv(2) = -Inf
	//	Erfcinv(x) = NaN if x < 0 or x > 2
	//	Erfcinv(NaN) = NaN
**/
function erfcinv(_x:GoFloat64):GoFloat64 {
	return erfinv(((1 : GoFloat64)) - _x);
}

/**
	// Exp returns e**x, the base-e exponential of x.
	//
	// Special cases are:
	//	Exp(+Inf) = +Inf
	//	Exp(NaN) = NaN
	// Very large values overflow to 0 or +Inf.
	// Very small values underflow to 1.
**/
function exp(_x:GoFloat64):GoFloat64 {
	if (_haveArchExp) {
		return _archExp(_x);
	};
	return _exp(_x);
}

function _exp(_x:GoFloat64):GoFloat64 {
	final ln2Hi:GoUnTypedFloat = ((0.6931471803691238 : GoUnTypedFloat)), ln2Lo:GoUnTypedFloat = ((1.9082149292705877e-10 : GoUnTypedFloat)),
	log2e:GoUnTypedFloat = ((1.4426950408889634 : GoUnTypedFloat)), overflow:GoUnTypedFloat = ((709.782712893384 : GoUnTypedFloat)),
	underflow:GoUnTypedFloat = -((745.1332191019411 : GoUnTypedFloat)),
	nearZero:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((28 : GoUnTypedInt)));
	if (isNaN(_x) || isInf(_x, ((1 : GoInt)))) {
		return _x;
	} else if (isInf(_x, -((1 : GoUnTypedInt)))) {
		return ((0 : GoFloat64));
	} else if (_x > overflow) {
		return inf(((1 : GoInt)));
	} else if (_x < underflow) {
		return ((0 : GoFloat64));
	} else if ((-nearZero < _x) && (_x < nearZero)) {
		return ((1 : GoFloat64)) + _x;
	};
	var _k:GoInt = ((0 : GoInt));
	if (_x < ((0 : GoFloat64))) {
		_k = ((((log2e * _x) - ((0.5 : GoFloat64))) : GoInt));
	} else if (_x > ((0 : GoFloat64))) {
		_k = ((((log2e * _x) + ((0.5 : GoFloat64))) : GoInt));
	};
	var _hi:GoFloat64 = _x - (((_k : GoFloat64)) * ln2Hi);
	var _lo:GoFloat64 = ((_k : GoFloat64)) * ln2Lo;
	return _expmulti(_hi, _lo, _k);
}

/**
	// Exp2 returns 2**x, the base-2 exponential of x.
	//
	// Special cases are the same as Exp.
**/
function exp2(_x:GoFloat64):GoFloat64 {
	if (_haveArchExp2) {
		return _archExp2(_x);
	};
	return _exp2(_x);
}

function _exp2(_x:GoFloat64):GoFloat64 {
	final ln2Hi:GoUnTypedFloat = ((0.6931471803691238 : GoUnTypedFloat)), ln2Lo:GoUnTypedFloat = ((1.9082149292705877e-10 : GoUnTypedFloat)),
	overflow:GoUnTypedFloat = ((1023.9999999999999 : GoUnTypedFloat)), underflow:GoUnTypedFloat = -((1074 : GoUnTypedFloat));
	if (isNaN(_x) || isInf(_x, ((1 : GoInt)))) {
		return _x;
	} else if (isInf(_x, -((1 : GoUnTypedInt)))) {
		return ((0 : GoFloat64));
	} else if (_x > overflow) {
		return inf(((1 : GoInt)));
	} else if (_x < underflow) {
		return ((0 : GoFloat64));
	};
	var _k:GoInt = ((0 : GoInt));
	if (_x > ((0 : GoFloat64))) {
		_k = (((_x + ((0.5 : GoFloat64))) : GoInt));
	} else if (_x < ((0 : GoFloat64))) {
		_k = (((_x - ((0.5 : GoFloat64))) : GoInt));
	};
	var _t:GoFloat64 = _x - ((_k : GoFloat64));
	var _hi:GoFloat64 = _t * ln2Hi;
	var _lo:GoFloat64 = -_t * ln2Lo;
	return _expmulti(_hi, _lo, _k);
}

/**
	// exp1 returns e**r × 2**k where r = hi - lo and |r| ≤ ln(2)/2.
**/
function _expmulti(_hi:GoFloat64, _lo:GoFloat64, _k:GoInt):GoFloat64 {
	final p1:GoUnTypedFloat = ((0.16666666666666666 : GoUnTypedFloat)), p2:GoUnTypedFloat = -((0.0027777777777015593 : GoUnTypedFloat)),
	p3:GoUnTypedFloat = ((6.613756321437934e-05 : GoUnTypedFloat)), p4:GoUnTypedFloat = -((1.6533902205465252e-06 : GoUnTypedFloat)),
	p5:GoUnTypedFloat = ((4.1381367970572385e-08 : GoUnTypedFloat));
	var _r:GoFloat64 = _hi - _lo;
	var _t:GoFloat64 = _r * _r;
	var _c:GoFloat64 = _r - (_t * (p1 + (_t * (p2 + (_t * (p3 + (_t * (p4 + (_t * p5)))))))));
	var _y:GoFloat64 = ((1 : GoFloat64)) - ((_lo - ((_r * _c) / (((2 : GoFloat64)) - _c))) - _hi);
	return ldexp(_y, _k);
}

function _archExp2(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archExp(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

/**
	// Expm1 returns e**x - 1, the base-e exponential of x minus 1.
	// It is more accurate than Exp(x) - 1 when x is near zero.
	//
	// Special cases are:
	//	Expm1(+Inf) = +Inf
	//	Expm1(-Inf) = -1
	//	Expm1(NaN) = NaN
	// Very large values overflow to -1 or +Inf.
**/
function expm1(_x:GoFloat64):GoFloat64 {
	if (_haveArchExpm1) {
		return _archExpm1(_x);
	};
	return _expm1(_x);
}

function _expm1(_x:GoFloat64):GoFloat64 {
	final othreshold:GoUnTypedFloat = ((709.782712893384 : GoUnTypedFloat)), ln2X56:GoUnTypedFloat = ((38.816242111356935 : GoUnTypedFloat)),
	ln2HalfX3:GoUnTypedFloat = ((1.0397207708399179 : GoUnTypedFloat)), ln2Half:GoUnTypedFloat = ((0.34657359027997264 : GoUnTypedFloat)),
	ln2Hi:GoUnTypedFloat = ((0.6931471803691238 : GoUnTypedFloat)), ln2Lo:GoUnTypedFloat = ((1.9082149292705877e-10 : GoUnTypedFloat)),
	invLn2:GoUnTypedFloat = ((1.4426950408889634 : GoUnTypedFloat)),
	tiny:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((54 : GoUnTypedInt))),
	q1:GoUnTypedFloat = -((0.03333333333333313 : GoUnTypedFloat)), q2:GoUnTypedFloat = ((0.0015873015872548146 : GoUnTypedFloat)),
	q3:GoUnTypedFloat = -((7.93650757867488e-05 : GoUnTypedFloat)), q4:GoUnTypedFloat = ((4.008217827329362e-06 : GoUnTypedFloat)),
	q5:GoUnTypedFloat = -((2.0109921818362437e-07 : GoUnTypedFloat));
	if (isInf(_x, ((1 : GoInt))) || isNaN(_x)) {
		return _x;
	} else if (isInf(_x, -((1 : GoUnTypedInt)))) {
		return -((1 : GoUnTypedInt));
	};
	var _absx:GoFloat64 = _x;
	var _sign:Bool = false;
	if (_x < ((0 : GoFloat64))) {
		_absx = -_absx;
		_sign = true;
	};
	if (_absx >= ln2X56) {
		if (_sign) {
			return -((1 : GoUnTypedInt));
		};
		if (_absx >= othreshold) {
			return inf(((1 : GoInt)));
		};
	};
	var _c:GoFloat64 = ((0 : GoFloat64));
	var _k:GoInt = ((0 : GoInt));
	if (_absx > ln2Half) {
		var _hi:GoFloat64 = ((0 : GoFloat64)),
			_lo:GoFloat64 = ((0 : GoFloat64));
		if (_absx < ln2HalfX3) {
			if (!_sign) {
				_hi = _x - ln2Hi;
				_lo = ln2Lo;
				_k = ((1 : GoInt));
			} else {
				_hi = _x + ln2Hi;
				_lo = -ln2Lo;
				_k = -((1 : GoUnTypedInt));
			};
		} else {
			if (!_sign) {
				_k = ((((invLn2 * _x) + ((0.5 : GoFloat64))) : GoInt));
			} else {
				_k = ((((invLn2 * _x) - ((0.5 : GoFloat64))) : GoInt));
			};
			var _t:GoFloat64 = ((_k : GoFloat64));
			_hi = _x - (_t * ln2Hi);
			_lo = _t * ln2Lo;
		};
		_x = _hi - _lo;
		_c = (_hi - _x) - _lo;
	} else if (_absx < tiny) {
		return _x;
	} else {
		_k = ((0 : GoInt));
	};
	var _hfx:GoFloat64 = ((0.5 : GoFloat64)) * _x;
	var _hxs:GoFloat64 = _x * _hfx;
	var _r1:GoFloat64 = ((1 : GoFloat64)) + (_hxs * (q1 + (_hxs * (q2 + (_hxs * (q3 + (_hxs * (q4 + (_hxs * q5)))))))));
	var _t:GoFloat64 = ((3 : GoFloat64)) - (_r1 * _hfx);
	var _e:GoFloat64 = _hxs * ((_r1 - _t) / (((6 : GoFloat64)) - (_x * _t)));
	if (_k == ((0 : GoInt))) {
		return _x - ((_x * _e) - _hxs);
	};
	_e = ((_x * (_e - _c)) - _c);
	_e = _e - (_hxs);
	if (_k == -((1 : GoUnTypedInt))) {
		return (((0.5 : GoFloat64)) * (_x - _e)) - ((0.5 : GoFloat64));
	} else if (_k == ((1 : GoInt))) {
		if (_x < -((0.25 : GoUnTypedFloat))) {
			return -((2 : GoUnTypedInt)) * (_e - (_x + ((0.5 : GoFloat64))));
		};
		return ((1 : GoFloat64)) + (((2 : GoFloat64)) * (_x - _e));
	} else if ((_k <= -((2 : GoUnTypedInt))) || (_k > ((56 : GoInt)))) {
		var _y:GoFloat64 = ((1 : GoFloat64)) - (_e - _x);
		_y = float64frombits(float64bits(_y) + (((_k : GoUInt64)) << ((52 : GoUnTypedInt))));
		return _y - ((1 : GoFloat64));
	};
	if (_k < ((20 : GoInt))) {
		var _t:GoFloat64 = float64frombits((("4607182418800017408" : GoUInt64)) - ((("9007199254740992" : GoUInt64)) >> ((_k : GoUInt))));
		var _y:GoFloat64 = _t - (_e - _x);
		_y = float64frombits(float64bits(_y) + (((_k : GoUInt64)) << ((52 : GoUnTypedInt))));
		return _y;
	};
	_t = float64frombits((((((1023 : GoInt)) - _k) : GoUInt64)) << ((52 : GoUnTypedInt)));
	var _y:GoFloat64 = _x - (_e + _t);
	_y++;
	_y = float64frombits(float64bits(_y) + (((_k : GoUInt64)) << ((52 : GoUnTypedInt))));
	return _y;
}

/**
	// Floor returns the greatest integer value less than or equal to x.
	//
	// Special cases are:
	//	Floor(±0) = ±0
	//	Floor(±Inf) = ±Inf
	//	Floor(NaN) = NaN
**/
function floor(_x:GoFloat64):GoFloat64 {
	if (_haveArchFloor) {
		return _archFloor(_x);
	};
	return _floor(_x);
}

function _floor(_x:GoFloat64):GoFloat64 {
	if (((_x == ((0 : GoFloat64))) || isNaN(_x)) || isInf(_x, ((0 : GoInt)))) {
		return _x;
	};
	if (_x < ((0 : GoFloat64))) {
		var __tmp__ = modf(-_x),
			_d:GoFloat64 = __tmp__._0,
			_fract:GoFloat64 = __tmp__._1;
		if (_fract != ((0 : GoFloat64))) {
			_d = _d + ((1 : GoFloat64));
		};
		return -_d;
	};
	var __tmp__ = modf(_x),
		_d:GoFloat64 = __tmp__._0,
		_:GoFloat64 = __tmp__._1;
	return _d;
}

function _ceil(_x:GoFloat64):GoFloat64 {
	return -floor(-_x);
}

/**
	// Trunc returns the integer value of x.
	//
	// Special cases are:
	//	Trunc(±0) = ±0
	//	Trunc(±Inf) = ±Inf
	//	Trunc(NaN) = NaN
**/
function trunc(_x:GoFloat64):GoFloat64 {
	if (_haveArchTrunc) {
		return _archTrunc(_x);
	};
	return _trunc(_x);
}

function _trunc(_x:GoFloat64):GoFloat64 {
	if (((_x == ((0 : GoFloat64))) || isNaN(_x)) || isInf(_x, ((0 : GoInt)))) {
		return _x;
	};
	var __tmp__ = modf(_x),
		_d:GoFloat64 = __tmp__._0,
		_:GoFloat64 = __tmp__._1;
	return _d;
}

/**
	// Round returns the nearest integer, rounding half away from zero.
	//
	// Special cases are:
	//	Round(±0) = ±0
	//	Round(±Inf) = ±Inf
	//	Round(NaN) = NaN
**/
function round(_x:GoFloat64):GoFloat64 {
	var _bits:GoUInt64 = float64bits(_x);
	var _e:GoUInt = (((_bits >> _shift) : GoUInt)) & _mask;
	if (_e < _bias) {
		_bits = _bits & (_signMask);
		if (_e == (_bias - ((1 : GoUnTypedInt)))) {
			_bits = _bits | (_uvone);
		};
	} else if (_e < (_bias + _shift)) {
		final _half:GoUnTypedInt = ((1 : GoUnTypedInt)) << (_shift - ((1 : GoUnTypedInt)));
		_e = _e - (_bias);
		_bits = _bits + (_half >> _e);
		_bits = _bits & ((_fracMask >> _e) ^ ((-1 : GoUnTypedInt)));
	};
	return float64frombits(_bits);
}

/**
	// RoundToEven returns the nearest integer, rounding ties to even.
	//
	// Special cases are:
	//	RoundToEven(±0) = ±0
	//	RoundToEven(±Inf) = ±Inf
	//	RoundToEven(NaN) = NaN
**/
function roundToEven(_x:GoFloat64):GoFloat64 {
	var _bits:GoUInt64 = float64bits(_x);
	var _e:GoUInt = (((_bits >> _shift) : GoUInt)) & _mask;
	if (_e >= _bias) {
		final _halfMinusULP:GoUnTypedInt = (((1 : GoUnTypedInt)) << (_shift - ((1 : GoUnTypedInt)))) - ((1 : GoUnTypedInt));
		_e = _e - (_bias);
		_bits = _bits + ((_halfMinusULP + ((_bits >> (_shift - _e)) & ((1 : GoUInt64)))) >> _e);
		_bits = _bits & ((_fracMask >> _e) ^ ((-1 : GoUnTypedInt)));
	} else if ((_e == (_bias - ((1 : GoUnTypedInt)))) && ((_bits & _fracMask) != ((0 : GoUInt64)))) {
		_bits = (_bits & _signMask) | _uvone;
	} else {
		_bits = _bits & (_signMask);
	};
	return float64frombits(_bits);
}

function _archFloor(_x:GoFloat64):GoFloat64
	throw "not implemeneted";

function _archCeil(_x:GoFloat64):GoFloat64
	throw "not implemeneted";

function _archTrunc(_x:GoFloat64):GoFloat64
	throw "not implemeneted";

function _zero(_x:GoUInt64):GoUInt64 {
	if (_x == ((0 : GoUInt64))) {
		return ((1 : GoUInt64));
	};
	return ((0 : GoUInt64));
}

function _nonzero(_x:GoUInt64):GoUInt64 {
	if (_x != ((0 : GoUInt64))) {
		return ((1 : GoUInt64));
	};
	return ((0 : GoUInt64));
}

function _shl(_u1:GoUInt64, _u2:GoUInt64, _n:GoUInt):{var _0:GoUInt64; var _1:GoUInt64;} {
	var _r1:GoUInt64 = ((0 : GoUInt64)), _r2:GoUInt64 = ((0 : GoUInt64));
	_r1 = ((_u1 << _n) | (_u2 >> (((64 : GoUInt)) - _n))) | (_u2 << (_n - ((64 : GoUInt))));
	_r2 = _u2 << _n;
	return {_0: _r1, _1: _r2};
}

function _shr(_u1:GoUInt64, _u2:GoUInt64, _n:GoUInt):{var _0:GoUInt64; var _1:GoUInt64;} {
	var _r1:GoUInt64 = ((0 : GoUInt64)), _r2:GoUInt64 = ((0 : GoUInt64));
	_r2 = ((_u2 >> _n) | (_u1 << (((64 : GoUInt)) - _n))) | (_u1 >> (_n - ((64 : GoUInt))));
	_r1 = _u1 >> _n;
	return {_0: _r1, _1: _r2};
}

/**
	// shrcompress compresses the bottom n+1 bits of the two-word
	// value into a single bit. the result is equal to the value
	// shifted to the right by n, except the result's 0th bit is
	// set to the bitwise OR of the bottom n+1 bits.
**/
function _shrcompress(_u1:GoUInt64, _u2:GoUInt64, _n:GoUInt):{var _0:GoUInt64; var _1:GoUInt64;} {
	var _r1:GoUInt64 = ((0 : GoUInt64)), _r2:GoUInt64 = ((0 : GoUInt64));
	if (_n == ((0 : GoUInt))) {
		return {_0: _u1, _1: _u2};
	} else if (_n == ((64 : GoUInt))) {
		return {_0: ((0 : GoUInt64)), _1: _u1 | _nonzero(_u2)};
	} else if (_n >= ((128 : GoUInt))) {
		return {_0: ((0 : GoUInt64)), _1: _nonzero(_u1 | _u2)};
	} else if (_n < ((64 : GoUInt))) {
		{
			var __tmp__ = _shr(_u1, _u2, _n);
			_r1 = __tmp__._0;
			_r2 = __tmp__._1;
		};
		_r2 = _r2 | (_nonzero(_u2 & ((((1 : GoUInt64)) << _n) - ((1 : GoUInt64)))));
	} else if (_n < ((128 : GoUInt))) {
		{
			var __tmp__ = _shr(_u1, _u2, _n);
			_r1 = __tmp__._0;
			_r2 = __tmp__._1;
		};
		_r2 = _r2 | (_nonzero((_u1 & ((((1 : GoUInt64)) << (_n - ((64 : GoUInt)))) - ((1 : GoUInt64)))) | _u2));
	};
	return {_0: _r1, _1: _r2};
}

function _lz(_u1:GoUInt64, _u2:GoUInt64):GoInt32 {
	var _l:GoInt32 = ((0 : GoInt32));
	_l = ((stdgo.math.bits.Bits.leadingZeros64(_u1) : GoInt32));
	if (_l == ((64 : GoInt32))) {
		_l = _l + (((stdgo.math.bits.Bits.leadingZeros64(_u2) : GoInt32)));
	};
	return _l;
}

/**
	// split splits b into sign, biased exponent, and mantissa.
	// It adds the implicit 1 bit to the mantissa for normal values,
	// and normalizes subnormal values.
**/
function _split(_b:GoUInt64):{var _0:GoUInt32; var _1:GoInt32; var _2:GoUInt64;} {
	var _sign:GoUInt32 = ((0 : GoUInt32)),
		_exp:GoInt32 = ((0 : GoInt32)),
		_mantissa:GoUInt64 = ((0 : GoUInt64));
	_sign = (((_b >> ((63 : GoUnTypedInt))) : GoUInt32));
	_exp = (((_b >> ((52 : GoUnTypedInt))) : GoInt32)) & _mask;
	_mantissa = _b & _fracMask;
	if (_exp == ((0 : GoInt32))) {
		var _shift:GoUInt = (((stdgo.math.bits.Bits.leadingZeros64(_mantissa) - ((11 : GoInt))) : GoUInt));
		_mantissa = _mantissa << (_shift);
		_exp = ((1 : GoInt32)) - ((_shift : GoInt32));
	} else {
		_mantissa = _mantissa | (((1 : GoUnTypedInt)) << ((52 : GoUnTypedInt)));
	};
	return {_0: _sign, _1: _exp, _2: _mantissa};
}

/**
	// FMA returns x * y + z, computed with only one rounding.
	// (That is, FMA returns the fused multiply-add of x, y, and z.)
**/
function fma(_x:GoFloat64, _y:GoFloat64, _z:GoFloat64):GoFloat64 {
	var _bx:GoUInt64 = float64bits(_x),
		_by:GoUInt64 = float64bits(_y),
		_bz:GoUInt64 = float64bits(_z);
	if (((((_x == ((0 : GoFloat64))) || (_y == ((0 : GoFloat64)))) || (_z == ((0 : GoFloat64)))) || ((_bx & _uvinf) == _uvinf))
		|| ((_by & _uvinf) == _uvinf)) {
		return (_x * _y) + _z;
	};
	if ((_bz & _uvinf) == _uvinf) {
		return _z;
	};
	var __tmp__ = _split(_bx),
		_xs:GoUInt32 = __tmp__._0,
		_xe:GoInt32 = __tmp__._1,
		_xm:GoUInt64 = __tmp__._2;
	var __tmp__ = _split(_by),
		_ys:GoUInt32 = __tmp__._0,
		_ye:GoInt32 = __tmp__._1,
		_ym:GoUInt64 = __tmp__._2;
	var __tmp__ = _split(_bz),
		_zs:GoUInt32 = __tmp__._0,
		_ze:GoInt32 = __tmp__._1,
		_zm:GoUInt64 = __tmp__._2;
	var _pe:GoInt32 = ((_xe + _ye) - _bias) + ((1 : GoInt32));
	var __tmp__ = stdgo.math.bits.Bits.mul64(_xm << ((10 : GoUnTypedInt)), _ym << ((11 : GoUnTypedInt))),
		_pm1:GoUInt64 = __tmp__._0,
		_pm2:GoUInt64 = __tmp__._1;
	var _zm1:GoUInt64 = _zm << ((10 : GoUnTypedInt)),
		_zm2:GoUInt64 = ((((0 : GoUInt64)) : GoUInt64));
	var _ps:GoUInt32 = _xs ^ _ys;
	var _is62zero:GoUInt = ((((-1 ^ _pm1 >> ((62 : GoUnTypedInt))) & ((1 : GoUInt64))) : GoUInt));
	{
		var __tmp__ = _shl(_pm1, _pm2, _is62zero);
		_pm1 = __tmp__._0;
		_pm2 = __tmp__._1;
	};
	_pe = _pe - (((_is62zero : GoInt32)));
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
		var __tmp__ = _shrcompress(_zm1, _zm2, (((_pe - _ze) : GoUInt)));
		_zm1 = __tmp__._0;
		_zm2 = __tmp__._1;
	};
	var _m:GoUInt64 = ((0 : GoUInt64)), _c:GoUInt64 = ((0 : GoUInt64));
	if (_ps == _zs) {
		{
			var __tmp__ = stdgo.math.bits.Bits.add64(_pm2, _zm2, ((0 : GoUInt64)));
			_pm2 = __tmp__._0;
			_c = __tmp__._1;
		};
		{
			var __tmp__ = stdgo.math.bits.Bits.add64(_pm1, _zm1, _c);
			_pm1 = __tmp__._0;
		};
		_pe = _pe - ((((-1 ^ _pm1 >> ((63 : GoUnTypedInt))) : GoInt32)));
		{
			var __tmp__ = _shrcompress(_pm1, _pm2, (((((64 : GoUInt64)) + (_pm1 >> ((63 : GoUnTypedInt)))) : GoUInt)));
			_pm1 = __tmp__._0;
			_m = __tmp__._1;
		};
	} else {
		{
			var __tmp__ = stdgo.math.bits.Bits.sub64(_pm2, _zm2, ((0 : GoUInt64)));
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
			var __tmp__ = _shl(_pm1, _pm2, (((_nz - ((1 : GoInt32))) : GoUInt)));
			_m = __tmp__._0;
			_pm2 = __tmp__._1;
		};
		_m = _m | (_nonzero(_pm2));
	};
	if ((_pe > (((1022 : GoUnTypedInt)) + _bias))
		|| ((_pe == (((1022 : GoUnTypedInt)) + _bias))
			&& (((_m + (((1 : GoUnTypedInt)) << ((9 : GoUnTypedInt)))) >> ((63 : GoUnTypedInt))) == ((1 : GoUInt64))))) {
		return float64frombits((((_ps : GoUInt64)) << ((63 : GoUnTypedInt))) | _uvinf);
	};
	if (_pe < ((0 : GoInt32))) {
		var _n:GoUInt = ((-_pe : GoUInt));
		_m = (_m >> _n) | _nonzero(_m & ((((1 : GoUInt64)) << _n) - ((1 : GoUInt64))));
		_pe = ((0 : GoInt32));
	};
	_m = ((_m + (((1 : GoUnTypedInt)) << ((9 : GoUnTypedInt)))) >> ((10 : GoUnTypedInt))) & -1 ^ _zero((_m & ((((1 : GoUnTypedInt)) << ((10 : GoUnTypedInt)))
		- ((1 : GoUnTypedInt)))) ^ (((1 : GoUnTypedInt)) << ((9 : GoUnTypedInt))));
	_pe = _pe & (-((_nonzero(_m) : GoInt32)));
	return float64frombits(((((_ps : GoUInt64)) << ((63 : GoUnTypedInt))) + (((_pe : GoUInt64)) << ((52 : GoUnTypedInt)))) + _m);
}

/**
	// Frexp breaks f into a normalized fraction
	// and an integral power of two.
	// It returns frac and exp satisfying f == frac × 2**exp,
	// with the absolute value of frac in the interval [½, 1).
	//
	// Special cases are:
	//	Frexp(±0) = ±0, 0
	//	Frexp(±Inf) = ±Inf, 0
	//	Frexp(NaN) = NaN, 0
**/
function frexp(_f:GoFloat64):{var _0:GoFloat64; var _1:GoInt;} {
	var _frac:GoFloat64 = ((0 : GoFloat64)), _exp:GoInt = ((0 : GoInt));
	if (_haveArchFrexp) {
		return _archFrexp(_f);
	};
	return _frexp(_f);
}

function _frexp(_f:GoFloat64):{var _0:GoFloat64; var _1:GoInt;} {
	var _frac:GoFloat64 = ((0 : GoFloat64)), _exp:GoInt = ((0 : GoInt));
	if (_f == ((0 : GoFloat64))) {
		return {_0: _f, _1: ((0 : GoInt))};
	} else if (isInf(_f, ((0 : GoInt))) || isNaN(_f)) {
		return {_0: _f, _1: ((0 : GoInt))};
	};
	{
		var __tmp__ = _normalize(_f);
		_f = __tmp__._0;
		_exp = __tmp__._1;
	};
	var _x:GoUInt64 = float64bits(_f);
	_exp = _exp + ((((((_x >> _shift) & _mask) : GoInt)) - _bias) + ((1 : GoInt)));
	_x = _x & ((_mask << _shift) ^ ((-1 : GoUnTypedInt)));
	_x = _x | ((-((1 : GoUnTypedInt)) + _bias) << _shift);
	_frac = float64frombits(_x);
	return {_0: _frac, _1: _exp};
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
function _stirling(_x:GoFloat64):{var _0:GoFloat64; var _1:GoFloat64;} {
	if (_x > ((200 : GoFloat64))) {
		return {_0: inf(((1 : GoInt))), _1: ((1 : GoFloat64))};
	};
	final sqrtTwoPi:GoUnTypedFloat = ((2.5066282746310007 : GoUnTypedFloat)), maxStirling:GoUnTypedFloat = ((143.01608 : GoUnTypedFloat));
	var _w:GoFloat64 = ((1 : GoFloat64)) / _x;
	_w = ((1 : GoFloat64))
		+ (_w * ((((((((__gamS[((0 : GoInt))] * _w) + __gamS[((1 : GoInt))]) * _w) + __gamS[((2 : GoInt))]) * _w) + __gamS[((3 : GoInt))]) * _w)
			+ __gamS[((4 : GoInt))]));
	var _y1:GoFloat64 = exp(_x);
	var _y2:GoFloat64 = ((1 : GoFloat64));
	if (_x > maxStirling) {
		var _v:GoFloat64 = pow(_x, (((0.5 : GoFloat64)) * _x) - ((0.25 : GoFloat64)));
		{
			final __tmp__0 = _v;
			final __tmp__1 = _v / _y1;
			_y1 = __tmp__0;
			_y2 = __tmp__1;
		};
	} else {
		_y1 = pow(_x, _x - ((0.5 : GoFloat64))) / _y1;
	};
	return {_0: _y1, _1: (sqrtTwoPi * _w) * _y2};
}

/**
	// Gamma returns the Gamma function of x.
	//
	// Special cases are:
	//	Gamma(+Inf) = +Inf
	//	Gamma(+0) = +Inf
	//	Gamma(-0) = -Inf
	//	Gamma(x) = NaN for integer x < 0
	//	Gamma(-Inf) = NaN
	//	Gamma(NaN) = NaN
**/
function gamma(_x:GoFloat64):GoFloat64 {
	return stdgo.internal.Macro.controlFlow({
		final euler:GoUnTypedFloat = ((0.5772156649015329 : GoUnTypedFloat));
		if ((_isNegInt(_x) || isInf(_x, -((1 : GoUnTypedInt)))) || isNaN(_x)) {
			return naN();
		} else if (isInf(_x, ((1 : GoInt)))) {
			return inf(((1 : GoInt)));
		} else if (_x == ((0 : GoFloat64))) {
			if (signbit(_x)) {
				return inf(-((1 : GoUnTypedInt)));
			};
			return inf(((1 : GoInt)));
		};
		var _q:GoFloat64 = abs(_x);
		var _p:GoFloat64 = floor(_q);
		if (_q > ((33 : GoFloat64))) {
			if (_x >= ((0 : GoFloat64))) {
				var __tmp__ = _stirling(_x),
					_y1:GoFloat64 = __tmp__._0,
					_y2:GoFloat64 = __tmp__._1;
				return _y1 * _y2;
			};
			var _signgam:GoInt = ((1 : GoInt));
			{
				var _ip:GoInt64 = ((_p : GoInt64));
				if ((_ip & ((1 : GoInt64))) == ((0 : GoInt64))) {
					_signgam = -((1 : GoUnTypedInt));
				};
			};
			var _z:GoFloat64 = _q - _p;
			if (_z > ((0.5 : GoFloat64))) {
				_p = _p + ((1 : GoFloat64));
				_z = _q - _p;
			};
			_z = _q * sin(pi * _z);
			if (_z == ((0 : GoFloat64))) {
				return inf(_signgam);
			};
			var __tmp__ = _stirling(_q),
				_sq1:GoFloat64 = __tmp__._0,
				_sq2:GoFloat64 = __tmp__._1;
			var _absz:GoFloat64 = abs(_z);
			var _d:GoFloat64 = (_absz * _sq1) * _sq2;
			if (isInf(_d, ((0 : GoInt)))) {
				_z = ((pi / _absz) / _sq1) / _sq2;
			} else {
				_z = pi / _d;
			};
			return ((_signgam : GoFloat64)) * _z;
		};
		var _z:GoFloat64 = ((1 : GoFloat64));
		while (_x >= ((3 : GoFloat64))) {
			_x = _x - ((1 : GoFloat64));
			_z = _z * _x;
		};
		while (_x < ((0 : GoFloat64))) {
			if (_x > -((1e-09 : GoUnTypedFloat))) {
				@:goto "small";
			};
			_z = _z / _x;
			_x = _x + ((1 : GoFloat64));
		};
		while (_x < ((2 : GoFloat64))) {
			if (_x < ((1e-09 : GoFloat64))) {
				@:goto "small";
			};
			_z = _z / _x;
			_x = _x + ((1 : GoFloat64));
		};
		if (_x == ((2 : GoFloat64))) {
			return _z;
		};
		_x = _x - ((2 : GoFloat64));
		_p = (((((((((((_x * __gamP[((0 : GoInt))]) + __gamP[((1 : GoInt))]) * _x) + __gamP[((2 : GoInt))]) * _x) + __gamP[((3 : GoInt))]) * _x)
			+ __gamP[((4 : GoInt))]) * _x)
			+ __gamP[((5 : GoInt))]) * _x)
			+ __gamP[((6 : GoInt))];
		_q = (((((((((((((_x * __gamQ[((0 : GoInt))]) + __gamQ[((1 : GoInt))]) * _x) + __gamQ[((2 : GoInt))]) * _x) + __gamQ[((3 : GoInt))]) * _x)
			+ __gamQ[((4 : GoInt))]) * _x)
			+ __gamQ[((5 : GoInt))]) * _x)
			+ __gamQ[((6 : GoInt))]) * _x)
			+ __gamQ[((7 : GoInt))];
		return (_z * _p) / _q;
		@:label("small") if (_x == ((0 : GoFloat64))) {
			return inf(((1 : GoInt)));
		};
		return _z / ((((1 : GoFloat64)) + (euler * _x)) * _x);
	});
}

function _isNegInt(_x:GoFloat64):Bool {
	if (_x < ((0 : GoFloat64))) {
		var __tmp__ = modf(_x),
			_:GoFloat64 = __tmp__._0,
			_xf:GoFloat64 = __tmp__._1;
		return _xf == ((0 : GoFloat64));
	};
	return false;
}

/**
	// Hypot returns Sqrt(p*p + q*q), taking care to avoid
	// unnecessary overflow and underflow.
	//
	// Special cases are:
	//	Hypot(±Inf, q) = +Inf
	//	Hypot(p, ±Inf) = +Inf
	//	Hypot(NaN, q) = NaN
	//	Hypot(p, NaN) = NaN
**/
function hypot(_p:GoFloat64, _q:GoFloat64):GoFloat64 {
	if (_haveArchHypot) {
		return _archHypot(_p, _q);
	};
	return _hypot(_p, _q);
}

function _hypot(_p:GoFloat64, _q:GoFloat64):GoFloat64 {
	if (isInf(_p, ((0 : GoInt))) || isInf(_q, ((0 : GoInt)))) {
		return inf(((1 : GoInt)));
	} else if (isNaN(_p) || isNaN(_q)) {
		return naN();
	};
	{
		final __tmp__0 = abs(_p);
		final __tmp__1 = abs(_q);
		_p = __tmp__0;
		_q = __tmp__1;
	};
	if (_p < _q) {
		{
			final __tmp__0 = _q;
			final __tmp__1 = _p;
			_p = __tmp__0;
			_q = __tmp__1;
		};
	};
	if (_p == ((0 : GoFloat64))) {
		return ((0 : GoFloat64));
	};
	_q = _q / _p;
	return _p * sqrt(((1 : GoFloat64)) + (_q * _q));
}

function _archHypot(_p:GoFloat64, _q:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

/**
	// J0 returns the order-zero Bessel function of the first kind.
	//
	// Special cases are:
	//	J0(±Inf) = 0
	//	J0(0) = 1
	//	J0(NaN) = NaN
**/
function j0(_x:GoFloat64):GoFloat64 {
	final huge:GoUnTypedFloat = ((1e+300 : GoUnTypedFloat)), twoM27:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((27 : GoUnTypedInt))),
	twoM13:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((13 : GoUnTypedInt))),
	two129:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((129 : GoUnTypedInt)), r02:GoUnTypedFloat = ((0.015624999999999995 : GoUnTypedFloat)),
	r03:GoUnTypedFloat = -((0.00018997929423885472 : GoUnTypedFloat)), r04:GoUnTypedFloat = ((1.8295404953270067e-06 : GoUnTypedFloat)),
	r05:GoUnTypedFloat = -((4.618326885321032e-09 : GoUnTypedFloat)), s01:GoUnTypedFloat = ((0.015619102946489001 : GoUnTypedFloat)),
	s02:GoUnTypedFloat = ((0.00011692678466333745 : GoUnTypedFloat)), s03:GoUnTypedFloat = ((5.135465502073181e-07 : GoUnTypedFloat)),
	s04:GoUnTypedFloat = ((1.1661400333379e-09 : GoUnTypedFloat));
	if (isNaN(_x)) {
		return _x;
	} else if (isInf(_x, ((0 : GoInt)))) {
		return ((0 : GoFloat64));
	} else if (_x == ((0 : GoFloat64))) {
		return ((1 : GoFloat64));
	};
	_x = abs(_x);
	if (_x >= ((2 : GoFloat64))) {
		var __tmp__ = sincos(_x),
			_s:GoFloat64 = __tmp__._0,
			_c:GoFloat64 = __tmp__._1;
		var _ss:GoFloat64 = _s - _c;
		var _cc:GoFloat64 = _s + _c;
		if (_x < (maxFloat64 / ((2 : GoUnTypedFloat)))) {
			var _z:GoFloat64 = -cos(_x + _x);
			if ((_s * _c) < ((0 : GoFloat64))) {
				_cc = _z / _ss;
			} else {
				_ss = _z / _cc;
			};
		};
		var _z:GoFloat64 = ((0 : GoFloat64));
		if (_x > two129) {
			_z = ((((1 : GoUnTypedFloat)) / sqrtPi) * _cc) / sqrt(_x);
		} else {
			var _u:GoFloat64 = _pzero(_x);
			var _v:GoFloat64 = _qzero(_x);
			_z = ((((1 : GoUnTypedFloat)) / sqrtPi) * ((_u * _cc) - (_v * _ss))) / sqrt(_x);
		};
		return _z;
	};
	if (_x < twoM13) {
		if (_x < twoM27) {
			return ((1 : GoFloat64));
		};
		return ((1 : GoFloat64)) - ((((0.25 : GoFloat64)) * _x) * _x);
	};
	var _z:GoFloat64 = _x * _x;
	var _r:GoFloat64 = _z * (r02 + (_z * (r03 + (_z * (r04 + (_z * r05))))));
	var _s:GoFloat64 = ((1 : GoFloat64)) + (_z * (s01 + (_z * (s02 + (_z * (s03 + (_z * s04)))))));
	if (_x < ((1 : GoFloat64))) {
		return ((1 : GoFloat64)) + (_z * (-((0.25 : GoUnTypedFloat)) + (_r / _s)));
	};
	var _u:GoFloat64 = ((0.5 : GoFloat64)) * _x;
	return ((((1 : GoFloat64)) + _u) * (((1 : GoFloat64)) - _u)) + (_z * (_r / _s));
}

/**
	// Y0 returns the order-zero Bessel function of the second kind.
	//
	// Special cases are:
	//	Y0(+Inf) = 0
	//	Y0(0) = -Inf
	//	Y0(x < 0) = NaN
	//	Y0(NaN) = NaN
**/
function y0(_x:GoFloat64):GoFloat64 {
	final twoM27:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((27 : GoUnTypedInt))),
	two129:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((129 : GoUnTypedInt)), u00:GoUnTypedFloat = -((0.07380429510868723 : GoUnTypedFloat)),
	u01:GoUnTypedFloat = ((0.17666645250918112 : GoUnTypedFloat)), u02:GoUnTypedFloat = -((0.01381856719455969 : GoUnTypedFloat)),
	u03:GoUnTypedFloat = ((0.00034745343209368365 : GoUnTypedFloat)), u04:GoUnTypedFloat = -((3.8140705372436416e-06 : GoUnTypedFloat)),
	u05:GoUnTypedFloat = ((1.9559013703502292e-08 : GoUnTypedFloat)), u06:GoUnTypedFloat = -((3.982051941321034e-11 : GoUnTypedFloat)),
	v01:GoUnTypedFloat = ((0.01273048348341237 : GoUnTypedFloat)), v02:GoUnTypedFloat = ((7.600686273503533e-05 : GoUnTypedFloat)),
	v03:GoUnTypedFloat = ((2.591508518404578e-07 : GoUnTypedFloat)), v04:GoUnTypedFloat = ((4.4111031133267547e-10 : GoUnTypedFloat));
	if ((_x < ((0 : GoFloat64))) || isNaN(_x)) {
		return naN();
	} else if (isInf(_x, ((1 : GoInt)))) {
		return ((0 : GoFloat64));
	} else if (_x == ((0 : GoFloat64))) {
		return inf(-((1 : GoUnTypedInt)));
	};
	if (_x >= ((2 : GoFloat64))) {
		var __tmp__ = sincos(_x),
			_s:GoFloat64 = __tmp__._0,
			_c:GoFloat64 = __tmp__._1;
		var _ss:GoFloat64 = _s - _c;
		var _cc:GoFloat64 = _s + _c;
		if (_x < (maxFloat64 / ((2 : GoUnTypedFloat)))) {
			var _z:GoFloat64 = -cos(_x + _x);
			if ((_s * _c) < ((0 : GoFloat64))) {
				_cc = _z / _ss;
			} else {
				_ss = _z / _cc;
			};
		};
		var _z:GoFloat64 = ((0 : GoFloat64));
		if (_x > two129) {
			_z = ((((1 : GoUnTypedFloat)) / sqrtPi) * _ss) / sqrt(_x);
		} else {
			var _u:GoFloat64 = _pzero(_x);
			var _v:GoFloat64 = _qzero(_x);
			_z = ((((1 : GoUnTypedFloat)) / sqrtPi) * ((_u * _ss) + (_v * _cc))) / sqrt(_x);
		};
		return _z;
	};
	if (_x <= twoM27) {
		return u00 + ((((2 : GoUnTypedFloat)) / pi) * log(_x));
	};
	var _z:GoFloat64 = _x * _x;
	var _u:GoFloat64 = u00 + (_z * (u01 + (_z * (u02 + (_z * (u03 + (_z * (u04 + (_z * (u05 + (_z * u06)))))))))));
	var _v:GoFloat64 = ((1 : GoFloat64)) + (_z * (v01 + (_z * (v02 + (_z * (v03 + (_z * v04)))))));
	return (_u / _v) + (((((2 : GoUnTypedFloat)) / pi) * j0(_x)) * log(_x));
}

function _pzero(_x:GoFloat64):GoFloat64 {
	var _p:Pointer<GoArray<GoFloat64>> = new Pointer<GoArray<GoFloat64>>().nil();
	var _q:Pointer<GoArray<GoFloat64>> = new Pointer<GoArray<GoFloat64>>().nil();
	if (_x >= ((8 : GoFloat64))) {
		_p = Go.pointer(_p0R8);
		_q = Go.pointer(_p0S8);
	} else if (_x >= ((4.5454 : GoFloat64))) {
		_p = Go.pointer(_p0R5);
		_q = Go.pointer(_p0S5);
	} else if (_x >= ((2.8571 : GoFloat64))) {
		_p = Go.pointer(_p0R3);
		_q = Go.pointer(_p0S3);
	} else if (_x >= ((2 : GoFloat64))) {
		_p = Go.pointer(_p0R2);
		_q = Go.pointer(_p0S2);
	};
	var _z:GoFloat64 = ((1 : GoFloat64)) / (_x * _x);
	var _r:GoFloat64 = _p.value[((0 : GoInt))]
		+ (_z * (_p.value[((1 : GoInt))]
			+ (_z * (_p.value[((2 : GoInt))] + (_z * (_p.value[((3 : GoInt))] + (_z * (_p.value[((4 : GoInt))] + (_z * _p.value[((5 : GoInt))])))))))));
	var _s:GoFloat64 = ((1 : GoFloat64))
		+ (_z * (_q.value[((0 : GoInt))]
			+ (_z * (_q.value[((1 : GoInt))] + (_z * (_q.value[((2 : GoInt))] + (_z * (_q.value[((3 : GoInt))] + (_z * _q.value[((4 : GoInt))])))))))));
	return ((1 : GoFloat64)) + (_r / _s);
}

function _qzero(_x:GoFloat64):GoFloat64 {
	var _p:Pointer<GoArray<GoFloat64>> = new Pointer<GoArray<GoFloat64>>().nil(),
		_q:Pointer<GoArray<GoFloat64>> = new Pointer<GoArray<GoFloat64>>().nil();
	if (_x >= ((8 : GoFloat64))) {
		_p = Go.pointer(_q0R8);
		_q = Go.pointer(_q0S8);
	} else if (_x >= ((4.5454 : GoFloat64))) {
		_p = Go.pointer(_q0R5);
		_q = Go.pointer(_q0S5);
	} else if (_x >= ((2.8571 : GoFloat64))) {
		_p = Go.pointer(_q0R3);
		_q = Go.pointer(_q0S3);
	} else if (_x >= ((2 : GoFloat64))) {
		_p = Go.pointer(_q0R2);
		_q = Go.pointer(_q0S2);
	};
	var _z:GoFloat64 = ((1 : GoFloat64)) / (_x * _x);
	var _r:GoFloat64 = _p.value[((0 : GoInt))]
		+ (_z * (_p.value[((1 : GoInt))]
			+ (_z * (_p.value[((2 : GoInt))] + (_z * (_p.value[((3 : GoInt))] + (_z * (_p.value[((4 : GoInt))] + (_z * _p.value[((5 : GoInt))])))))))));
	var _s:GoFloat64 = ((1 : GoFloat64))
		+ (_z * (_q.value[((0 : GoInt))]
			+ (_z * (_q.value[((1 : GoInt))]
				+ (_z * (_q.value[((2 : GoInt))] + (_z * (_q.value[((3 : GoInt))] + (_z * (_q.value[((4 : GoInt))] + (_z * _q.value[((5 : GoInt))])))))))))));
	return (-((0.125 : GoUnTypedFloat)) + (_r / _s)) / _x;
}

/**
	// J1 returns the order-one Bessel function of the first kind.
	//
	// Special cases are:
	//	J1(±Inf) = 0
	//	J1(NaN) = NaN
**/
function j1(_x:GoFloat64):GoFloat64 {
	final twoM27:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((27 : GoUnTypedInt))),
	two129:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((129 : GoUnTypedInt)), r00:GoUnTypedFloat = -((0.0625 : GoUnTypedFloat)),
	r01:GoUnTypedFloat = ((0.001407056669551897 : GoUnTypedFloat)), r02:GoUnTypedFloat = -((1.599556310840356e-05 : GoUnTypedFloat)),
	r03:GoUnTypedFloat = ((4.9672799960958445e-08 : GoUnTypedFloat)), s01:GoUnTypedFloat = ((0.019153759953836346 : GoUnTypedFloat)),
	s02:GoUnTypedFloat = ((0.00018594678558863092 : GoUnTypedFloat)), s03:GoUnTypedFloat = ((1.1771846404262368e-06 : GoUnTypedFloat)),
	s04:GoUnTypedFloat = ((5.0463625707621704e-09 : GoUnTypedFloat)), s05:GoUnTypedFloat = ((1.2354227442613791e-11 : GoUnTypedFloat));
	if (isNaN(_x)) {
		return _x;
	} else if (isInf(_x, ((0 : GoInt))) || (_x == ((0 : GoFloat64)))) {
		return ((0 : GoFloat64));
	};
	var _sign:Bool = false;
	if (_x < ((0 : GoFloat64))) {
		_x = -_x;
		_sign = true;
	};
	if (_x >= ((2 : GoFloat64))) {
		var __tmp__ = sincos(_x),
			_s:GoFloat64 = __tmp__._0,
			_c:GoFloat64 = __tmp__._1;
		var _ss:GoFloat64 = -_s - _c;
		var _cc:GoFloat64 = _s - _c;
		if (_x < (maxFloat64 / ((2 : GoUnTypedFloat)))) {
			var _z:GoFloat64 = cos(_x + _x);
			if ((_s * _c) > ((0 : GoFloat64))) {
				_cc = _z / _ss;
			} else {
				_ss = _z / _cc;
			};
		};
		var _z:GoFloat64 = ((0 : GoFloat64));
		if (_x > two129) {
			_z = ((((1 : GoUnTypedFloat)) / sqrtPi) * _cc) / sqrt(_x);
		} else {
			var _u:GoFloat64 = _pone(_x);
			var _v:GoFloat64 = _qone(_x);
			_z = ((((1 : GoUnTypedFloat)) / sqrtPi) * ((_u * _cc) - (_v * _ss))) / sqrt(_x);
		};
		if (_sign) {
			return -_z;
		};
		return _z;
	};
	if (_x < twoM27) {
		return ((0.5 : GoFloat64)) * _x;
	};
	var _z:GoFloat64 = _x * _x;
	var _r:GoFloat64 = _z * (r00 + (_z * (r01 + (_z * (r02 + (_z * r03))))));
	var _s:GoFloat64 = ((1 : GoFloat64)) + (_z * (s01 + (_z * (s02 + (_z * (s03 + (_z * (s04 + (_z * s05)))))))));
	_r = _r * (_x);
	_z = (((0.5 : GoFloat64)) * _x) + (_r / _s);
	if (_sign) {
		return -_z;
	};
	return _z;
}

/**
	// Y1 returns the order-one Bessel function of the second kind.
	//
	// Special cases are:
	//	Y1(+Inf) = 0
	//	Y1(0) = -Inf
	//	Y1(x < 0) = NaN
	//	Y1(NaN) = NaN
**/
function y1(_x:GoFloat64):GoFloat64 {
	final twoM54:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((54 : GoUnTypedInt))),
	two129:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((129 : GoUnTypedInt)), u00:GoUnTypedFloat = -((0.19605709064623894 : GoUnTypedFloat)),
	u01:GoUnTypedFloat = ((0.05044387166398113 : GoUnTypedFloat)), u02:GoUnTypedFloat = -((0.0019125689587576355 : GoUnTypedFloat)),
	u03:GoUnTypedFloat = ((2.352526005616105e-05 : GoUnTypedFloat)), u04:GoUnTypedFloat = -((9.190991580398789e-08 : GoUnTypedFloat)),
	v00:GoUnTypedFloat = ((0.01991673182366499 : GoUnTypedFloat)), v01:GoUnTypedFloat = ((0.00020255258102513517 : GoUnTypedFloat)),
	v02:GoUnTypedFloat = ((1.3560880109751623e-06 : GoUnTypedFloat)), v03:GoUnTypedFloat = ((6.227414523646215e-09 : GoUnTypedFloat)),
	v04:GoUnTypedFloat = ((1.6655924620799208e-11 : GoUnTypedFloat));
	if ((_x < ((0 : GoFloat64))) || isNaN(_x)) {
		return naN();
	} else if (isInf(_x, ((1 : GoInt)))) {
		return ((0 : GoFloat64));
	} else if (_x == ((0 : GoFloat64))) {
		return inf(-((1 : GoUnTypedInt)));
	};
	if (_x >= ((2 : GoFloat64))) {
		var __tmp__ = sincos(_x),
			_s:GoFloat64 = __tmp__._0,
			_c:GoFloat64 = __tmp__._1;
		var _ss:GoFloat64 = -_s - _c;
		var _cc:GoFloat64 = _s - _c;
		if (_x < (maxFloat64 / ((2 : GoUnTypedFloat)))) {
			var _z:GoFloat64 = cos(_x + _x);
			if ((_s * _c) > ((0 : GoFloat64))) {
				_cc = _z / _ss;
			} else {
				_ss = _z / _cc;
			};
		};
		var _z:GoFloat64 = ((0 : GoFloat64));
		if (_x > two129) {
			_z = ((((1 : GoUnTypedFloat)) / sqrtPi) * _ss) / sqrt(_x);
		} else {
			var _u:GoFloat64 = _pone(_x);
			var _v:GoFloat64 = _qone(_x);
			_z = ((((1 : GoUnTypedFloat)) / sqrtPi) * ((_u * _ss) + (_v * _cc))) / sqrt(_x);
		};
		return _z;
	};
	if (_x <= twoM54) {
		return -(((2 : GoUnTypedFloat)) / pi) / _x;
	};
	var _z:GoFloat64 = _x * _x;
	var _u:GoFloat64 = u00 + (_z * (u01 + (_z * (u02 + (_z * (u03 + (_z * u04)))))));
	var _v:GoFloat64 = ((1 : GoFloat64)) + (_z * (v00 + (_z * (v01 + (_z * (v02 + (_z * (v03 + (_z * v04)))))))));
	return (_x * (_u / _v)) + ((((2 : GoUnTypedFloat)) / pi) * ((j1(_x) * log(_x)) - (((1 : GoFloat64)) / _x)));
}

function _pone(_x:GoFloat64):GoFloat64 {
	var _p:Pointer<GoArray<GoFloat64>> = new Pointer<GoArray<GoFloat64>>().nil();
	var _q:Pointer<GoArray<GoFloat64>> = new Pointer<GoArray<GoFloat64>>().nil();
	if (_x >= ((8 : GoFloat64))) {
		_p = Go.pointer(_p1R8);
		_q = Go.pointer(_p1S8);
	} else if (_x >= ((4.5454 : GoFloat64))) {
		_p = Go.pointer(_p1R5);
		_q = Go.pointer(_p1S5);
	} else if (_x >= ((2.8571 : GoFloat64))) {
		_p = Go.pointer(_p1R3);
		_q = Go.pointer(_p1S3);
	} else if (_x >= ((2 : GoFloat64))) {
		_p = Go.pointer(_p1R2);
		_q = Go.pointer(_p1S2);
	};
	var _z:GoFloat64 = ((1 : GoFloat64)) / (_x * _x);
	var _r:GoFloat64 = _p.value[((0 : GoInt))]
		+ (_z * (_p.value[((1 : GoInt))]
			+ (_z * (_p.value[((2 : GoInt))] + (_z * (_p.value[((3 : GoInt))] + (_z * (_p.value[((4 : GoInt))] + (_z * _p.value[((5 : GoInt))])))))))));
	var _s:GoFloat64 = ((1 : GoFloat64))
		+ (_z * (_q.value[((0 : GoInt))]
			+ (_z * (_q.value[((1 : GoInt))] + (_z * (_q.value[((2 : GoInt))] + (_z * (_q.value[((3 : GoInt))] + (_z * _q.value[((4 : GoInt))])))))))));
	return ((1 : GoFloat64)) + (_r / _s);
}

function _qone(_x:GoFloat64):GoFloat64 {
	var _p:Pointer<GoArray<GoFloat64>> = new Pointer<GoArray<GoFloat64>>().nil(),
		_q:Pointer<GoArray<GoFloat64>> = new Pointer<GoArray<GoFloat64>>().nil();
	if (_x >= ((8 : GoFloat64))) {
		_p = Go.pointer(_q1R8);
		_q = Go.pointer(_q1S8);
	} else if (_x >= ((4.5454 : GoFloat64))) {
		_p = Go.pointer(_q1R5);
		_q = Go.pointer(_q1S5);
	} else if (_x >= ((2.8571 : GoFloat64))) {
		_p = Go.pointer(_q1R3);
		_q = Go.pointer(_q1S3);
	} else if (_x >= ((2 : GoFloat64))) {
		_p = Go.pointer(_q1R2);
		_q = Go.pointer(_q1S2);
	};
	var _z:GoFloat64 = ((1 : GoFloat64)) / (_x * _x);
	var _r:GoFloat64 = _p.value[((0 : GoInt))]
		+ (_z * (_p.value[((1 : GoInt))]
			+ (_z * (_p.value[((2 : GoInt))] + (_z * (_p.value[((3 : GoInt))] + (_z * (_p.value[((4 : GoInt))] + (_z * _p.value[((5 : GoInt))])))))))));
	var _s:GoFloat64 = ((1 : GoFloat64))
		+ (_z * (_q.value[((0 : GoInt))]
			+ (_z * (_q.value[((1 : GoInt))]
				+ (_z * (_q.value[((2 : GoInt))] + (_z * (_q.value[((3 : GoInt))] + (_z * (_q.value[((4 : GoInt))] + (_z * _q.value[((5 : GoInt))])))))))))));
	return (((0.375 : GoFloat64)) + (_r / _s)) / _x;
}

/**
	// Jn returns the order-n Bessel function of the first kind.
	//
	// Special cases are:
	//	Jn(n, ±Inf) = 0
	//	Jn(n, NaN) = NaN
**/
function jn(_n:GoInt, _x:GoFloat64):GoFloat64 {
	final twoM29:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((29 : GoUnTypedInt))),
	two302:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((302 : GoUnTypedInt));
	if (isNaN(_x)) {
		return _x;
	} else if (isInf(_x, ((0 : GoInt)))) {
		return ((0 : GoFloat64));
	};
	if (_n == ((0 : GoInt))) {
		return j0(_x);
	};
	if (_x == ((0 : GoFloat64))) {
		return ((0 : GoFloat64));
	};
	if (_n < ((0 : GoInt))) {
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
	if (_x < ((0 : GoFloat64))) {
		_x = -_x;
		if ((_n & ((1 : GoInt))) == ((1 : GoInt))) {
			_sign = true;
		};
	};
	var _b:GoFloat64 = ((0 : GoFloat64));
	if (((_n : GoFloat64)) <= _x) {
		if (_x >= two302) {
			var _temp:GoFloat64 = ((0 : GoFloat64));
			{
				var __tmp__ = sincos(_x),
					_s:GoFloat64 = __tmp__._0,
					_c:GoFloat64 = __tmp__._1;
				if (_n & ((3 : GoInt)) == ((0 : GoInt))) {
					_temp = _c + _s;
				} else if (_n & ((3 : GoInt)) == ((1 : GoInt))) {
					_temp = -_c + _s;
				} else if (_n & ((3 : GoInt)) == ((2 : GoInt))) {
					_temp = -_c - _s;
				} else if (_n & ((3 : GoInt)) == ((3 : GoInt))) {
					_temp = _c - _s;
				};
			};
			_b = ((((1 : GoUnTypedFloat)) / sqrtPi) * _temp) / sqrt(_x);
		} else {
			_b = j1(_x);
			{
				var _i:GoInt = ((1 : GoInt)), _a:GoFloat64 = j0(_x);
				Go.cfor(_i < _n, _i++, {
					{
						final __tmp__0 = _b;
						final __tmp__1 = (_b * ((((_i + _i) : GoFloat64)) / _x)) - _a;
						_a = __tmp__0;
						_b = __tmp__1;
					};
				});
			};
		};
	} else {
		if (_x < twoM29) {
			if (_n > ((33 : GoInt))) {
				_b = ((0 : GoFloat64));
			} else {
				var _temp:GoFloat64 = _x * ((0.5 : GoFloat64));
				_b = _temp;
				var _a:GoFloat64 = ((1 : GoFloat64));
				{
					var _i:GoInt = ((2 : GoInt));
					Go.cfor(_i <= _n, _i++, {
						_a = _a * (((_i : GoFloat64)));
						_b = _b * (_temp);
					});
				};
				_b = _b / (_a);
			};
		} else {
			var _w:GoFloat64 = (((_n + _n) : GoFloat64)) / _x;
			var _h:GoFloat64 = ((2 : GoFloat64)) / _x;
			var _q0:GoFloat64 = _w;
			var _z:GoFloat64 = _w + _h;
			var _q1:GoFloat64 = (_w * _z) - ((1 : GoFloat64));
			var _k:GoInt = ((1 : GoInt));
			while (_q1 < ((1e+09 : GoFloat64))) {
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
			var _t:GoFloat64 = ((0 : GoFloat64));
			{
				var _i:GoInt = ((2 : GoInt)) * (_n + _k);
				Go.cfor(_i >= _m, _i = _i - (((2 : GoInt))), {
					_t = ((1 : GoFloat64)) / ((((_i : GoFloat64)) / _x) - _t);
				});
			};
			var _a:GoFloat64 = _t;
			_b = ((1 : GoFloat64));
			var _tmp:GoFloat64 = ((_n : GoFloat64));
			var _v:GoFloat64 = ((2 : GoFloat64)) / _x;
			_tmp = _tmp * log(abs(_v * _tmp));
			if (_tmp < ((709.782712893384 : GoFloat64))) {
				{
					var _i:GoInt = _n - ((1 : GoInt));
					Go.cfor(_i > ((0 : GoInt)), _i--, {
						var _di:GoFloat64 = (((_i + _i) : GoFloat64));
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
					var _i:GoInt = _n - ((1 : GoInt));
					Go.cfor(_i > ((0 : GoInt)), _i--, {
						var _di:GoFloat64 = (((_i + _i) : GoFloat64));
						{
							final __tmp__0 = _b;
							final __tmp__1 = ((_b * _di) / _x) - _a;
							_a = __tmp__0;
							_b = __tmp__1;
						};
						if (_b > ((1e+100 : GoFloat64))) {
							_a = _a / (_b);
							_t = _t / (_b);
							_b = ((1 : GoFloat64));
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
	//	Yn(n, +Inf) = 0
	//	Yn(n ≥ 0, 0) = -Inf
	//	Yn(n < 0, 0) = +Inf if n is odd, -Inf if n is even
	//	Yn(n, x < 0) = NaN
	//	Yn(n, NaN) = NaN
**/
function yn(_n:GoInt, _x:GoFloat64):GoFloat64 {
	final two302:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((302 : GoUnTypedInt));
	if ((_x < ((0 : GoFloat64))) || isNaN(_x)) {
		return naN();
	} else if (isInf(_x, ((1 : GoInt)))) {
		return ((0 : GoFloat64));
	};
	if (_n == ((0 : GoInt))) {
		return y0(_x);
	};
	if (_x == ((0 : GoFloat64))) {
		if ((_n < ((0 : GoInt))) && ((_n & ((1 : GoInt))) == ((1 : GoInt)))) {
			return inf(((1 : GoInt)));
		};
		return inf(-((1 : GoUnTypedInt)));
	};
	var _sign:Bool = false;
	if (_n < ((0 : GoInt))) {
		_n = -_n;
		if ((_n & ((1 : GoInt))) == ((1 : GoInt))) {
			_sign = true;
		};
	};
	if (_n == ((1 : GoInt))) {
		if (_sign) {
			return -y1(_x);
		};
		return y1(_x);
	};
	var _b:GoFloat64 = ((0 : GoFloat64));
	if (_x >= two302) {
		var _temp:GoFloat64 = ((0 : GoFloat64));
		{
			var __tmp__ = sincos(_x),
				_s:GoFloat64 = __tmp__._0,
				_c:GoFloat64 = __tmp__._1;
			if (_n & ((3 : GoInt)) == ((0 : GoInt))) {
				_temp = _s - _c;
			} else if (_n & ((3 : GoInt)) == ((1 : GoInt))) {
				_temp = -_s - _c;
			} else if (_n & ((3 : GoInt)) == ((2 : GoInt))) {
				_temp = -_s + _c;
			} else if (_n & ((3 : GoInt)) == ((3 : GoInt))) {
				_temp = _s + _c;
			};
		};
		_b = ((((1 : GoUnTypedFloat)) / sqrtPi) * _temp) / sqrt(_x);
	} else {
		var _a:GoFloat64 = y0(_x);
		_b = y1(_x);
		{
			var _i:GoInt = ((1 : GoInt));
			Go.cfor((_i < _n) && !isInf(_b, -((1 : GoUnTypedInt))), _i++, {
				{
					final __tmp__0 = _b;
					final __tmp__1 = (((((_i + _i) : GoFloat64)) / _x) * _b) - _a;
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
	//	Ldexp(±0, exp) = ±0
	//	Ldexp(±Inf, exp) = ±Inf
	//	Ldexp(NaN, exp) = NaN
**/
function ldexp(_frac:GoFloat64, _exp:GoInt):GoFloat64 {
	if (_haveArchLdexp) {
		return _archLdexp(_frac, _exp);
	};
	return _ldexp(_frac, _exp);
}

function _ldexp(_frac:GoFloat64, _exp:GoInt):GoFloat64 {
	if (_frac == ((0 : GoFloat64))) {
		return _frac;
	} else if (isInf(_frac, ((0 : GoInt))) || isNaN(_frac)) {
		return _frac;
	};
	var __tmp__ = _normalize(_frac),
		_frac:GoFloat64 = __tmp__._0,
		_e:GoInt = __tmp__._1;
	_exp = _exp + (_e);
	var _x:GoUInt64 = float64bits(_frac);
	_exp = _exp + (((((_x >> _shift) : GoInt)) & _mask) - _bias);
	if (_exp < -((1075 : GoUnTypedInt))) {
		return copysign(((0 : GoFloat64)), _frac);
	};
	if (_exp > ((1023 : GoInt))) {
		if (_frac < ((0 : GoFloat64))) {
			return inf(-((1 : GoUnTypedInt)));
		};
		return inf(((1 : GoInt)));
	};
	var _m:GoFloat64 = ((1 : GoFloat64));
	if (_exp < -((1022 : GoUnTypedInt))) {
		_exp = _exp + (((53 : GoInt)));
		_m = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((53 : GoUnTypedInt)));
	};
	_x = _x & ((_mask << _shift) ^ ((-1 : GoUnTypedInt)));
	_x = _x | ((((_exp + _bias) : GoUInt64)) << _shift);
	return _m * float64frombits(_x);
}

/**
	// Lgamma returns the natural logarithm and sign (-1 or +1) of Gamma(x).
	//
	// Special cases are:
	//	Lgamma(+Inf) = +Inf
	//	Lgamma(0) = +Inf
	//	Lgamma(-integer) = +Inf
	//	Lgamma(-Inf) = -Inf
	//	Lgamma(NaN) = NaN
**/
function lgamma(_x:GoFloat64):{var _0:GoFloat64; var _1:GoInt;} {
	var _lgamma:GoFloat64 = ((0 : GoFloat64)), _sign:GoInt = ((0 : GoInt));
	final ymin:GoUnTypedFloat = ((1.4616321449683622 : GoUnTypedFloat)), two52:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((52 : GoUnTypedInt)),
	two53:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((53 : GoUnTypedInt)), two58:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((58 : GoUnTypedInt)),
	tiny:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((70 : GoUnTypedInt))),
	tc:GoUnTypedFloat = ((1.4616321449683622 : GoUnTypedFloat)), tf:GoUnTypedFloat = -((0.12148629053584961 : GoUnTypedFloat)),
	tt:GoUnTypedFloat = -((3.638676997039505e-18 : GoUnTypedFloat));
	_sign = ((1 : GoInt));
	if (isNaN(_x)) {
		_lgamma = _x;
		return {_0: _lgamma, _1: _sign};
	} else if (isInf(_x, ((0 : GoInt)))) {
		_lgamma = _x;
		return {_0: _lgamma, _1: _sign};
	} else if (_x == ((0 : GoFloat64))) {
		_lgamma = inf(((1 : GoInt)));
		return {_0: _lgamma, _1: _sign};
	};
	var _neg:Bool = false;
	if (_x < ((0 : GoFloat64))) {
		_x = -_x;
		_neg = true;
	};
	if (_x < tiny) {
		if (_neg) {
			_sign = -((1 : GoUnTypedInt));
		};
		_lgamma = -log(_x);
		return {_0: _lgamma, _1: _sign};
	};
	var _nadj:GoFloat64 = ((0 : GoFloat64));
	if (_neg) {
		if (_x >= two52) {
			_lgamma = inf(((1 : GoInt)));
			return {_0: _lgamma, _1: _sign};
		};
		var _t:GoFloat64 = _sinPi(_x);
		if (_t == ((0 : GoFloat64))) {
			_lgamma = inf(((1 : GoInt)));
			return {_0: _lgamma, _1: _sign};
		};
		_nadj = log(pi / abs(_t * _x));
		if (_t < ((0 : GoFloat64))) {
			_sign = -((1 : GoUnTypedInt));
		};
	};
	{
		var __switchIndex__ = -1;
		while (true) {
			if ((_x == ((1 : GoFloat64))) || (_x == ((2 : GoFloat64)))) {
				_lgamma = ((0 : GoFloat64));
				return {_0: _lgamma, _1: _sign};
				break;
			} else if (_x < ((2 : GoFloat64))) {
				var _y:GoFloat64 = ((0 : GoFloat64));
				var _i:GoInt = ((0 : GoInt));
				if (_x <= ((0.9 : GoFloat64))) {
					_lgamma = -log(_x);
					if (_x >= ((ymin - ((1 : GoUnTypedFloat))) + ((0.27 : GoUnTypedFloat)))) {
						_y = ((1 : GoFloat64)) - _x;
						_i = ((0 : GoInt));
					} else if (_x >= ((ymin - ((1 : GoUnTypedFloat))) - ((0.27 : GoUnTypedFloat)))) {
						_y = _x - (tc - ((1 : GoUnTypedFloat)));
						_i = ((1 : GoInt));
					} else {
						_y = _x;
						_i = ((2 : GoInt));
					};
				} else {
					_lgamma = ((0 : GoFloat64));
					if (_x >= (ymin + ((0.27 : GoUnTypedFloat)))) {
						_y = ((2 : GoFloat64)) - _x;
						_i = ((0 : GoInt));
					} else if (_x >= (ymin - ((0.27 : GoUnTypedFloat)))) {
						_y = _x - tc;
						_i = ((1 : GoInt));
					} else {
						_y = _x - ((1 : GoFloat64));
						_i = ((2 : GoInt));
					};
				};
				if (_i == ((0 : GoInt))) {
					var _z:GoFloat64 = _y * _y;
					var _p1:GoFloat64 = __lgamA[((0 : GoInt))]
						+ (_z * (__lgamA[((2 : GoInt))]
							+ (_z * (__lgamA[((4 : GoInt))]
								+ (_z * (__lgamA[((6 : GoInt))] + (_z * (__lgamA[((8 : GoInt))] + (_z * __lgamA[((10 : GoInt))])))))))));
					var _p2:GoFloat64 = _z * (__lgamA[((1 : GoInt))]
						+ (_z * (__lgamA[((3 : GoInt))]
							+ (_z * (__lgamA[((5 : GoInt))]
								+ (_z * (__lgamA[((7 : GoInt))] + (_z * (__lgamA[((9 : GoInt))] + (_z * __lgamA[((11 : GoInt))]))))))))));
					var _p:GoFloat64 = (_y * _p1) + _p2;
					_lgamma = _lgamma + ((_p - (((0.5 : GoFloat64)) * _y)));
				} else if (_i == ((1 : GoInt))) {
					var _z:GoFloat64 = _y * _y;
					var _w:GoFloat64 = _z * _y;
					var _p1:GoFloat64 = __lgamT[((0 : GoInt))]
						+ (_w * (__lgamT[((3 : GoInt))] + (_w * (__lgamT[((6 : GoInt))] + (_w * (__lgamT[((9 : GoInt))] + (_w * __lgamT[((12 : GoInt))])))))));
					var _p2:GoFloat64 = __lgamT[((1 : GoInt))]
						+ (_w * (__lgamT[((4 : GoInt))]
							+ (_w * (__lgamT[((7 : GoInt))] + (_w * (__lgamT[((10 : GoInt))] + (_w * __lgamT[((13 : GoInt))])))))));
					var _p3:GoFloat64 = __lgamT[((2 : GoInt))]
						+ (_w * (__lgamT[((5 : GoInt))]
							+ (_w * (__lgamT[((8 : GoInt))] + (_w * (__lgamT[((11 : GoInt))] + (_w * __lgamT[((14 : GoInt))])))))));
					var _p:GoFloat64 = (_z * _p1) - (tt - (_w * (_p2 + (_y * _p3))));
					_lgamma = _lgamma + ((tf + _p));
				} else if (_i == ((2 : GoInt))) {
					var _p1:GoFloat64 = _y * (__lgamU[((0 : GoInt))]
						+ (_y * (__lgamU[((1 : GoInt))]
							+ (_y * (__lgamU[((2 : GoInt))]
								+ (_y * (__lgamU[((3 : GoInt))] + (_y * (__lgamU[((4 : GoInt))] + (_y * __lgamU[((5 : GoInt))]))))))))));
					var _p2:GoFloat64 = ((1 : GoFloat64))
						+ (_y * (__lgamV[((1 : GoInt))]
							+ (_y * (__lgamV[((2 : GoInt))]
								+ (_y * (__lgamV[((3 : GoInt))] + (_y * (__lgamV[((4 : GoInt))] + (_y * __lgamV[((5 : GoInt))])))))))));
					_lgamma = _lgamma + (((-((0.5 : GoUnTypedFloat)) * _y) + (_p1 / _p2)));
				};
				break;
			} else if (_x < ((8 : GoFloat64))) {
				var _i:GoInt = ((_x : GoInt));
				var _y:GoFloat64 = _x - ((_i : GoFloat64));
				var _p:GoFloat64 = _y * (__lgamS[((0 : GoInt))]
					+ (_y * (__lgamS[((1 : GoInt))]
						+ (_y * (__lgamS[((2 : GoInt))]
							+ (_y * (__lgamS[((3 : GoInt))]
								+ (_y * (__lgamS[((4 : GoInt))] + (_y * (__lgamS[((5 : GoInt))] + (_y * __lgamS[((6 : GoInt))]))))))))))));
				var _q:GoFloat64 = ((1 : GoFloat64))
					+ (_y * (__lgamR[((1 : GoInt))]
						+ (_y * (__lgamR[((2 : GoInt))]
							+ (_y * (__lgamR[((3 : GoInt))]
								+ (_y * (__lgamR[((4 : GoInt))] + (_y * (__lgamR[((5 : GoInt))] + (_y * __lgamR[((6 : GoInt))])))))))))));
				_lgamma = (((0.5 : GoFloat64)) * _y) + (_p / _q);
				var _z:GoFloat64 = ((1 : GoFloat64));
				{
					var __switchIndex__ = -1;
					while (true) {
						if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _i == ((7 : GoInt)))) {
							_z = _z * ((_y + ((6 : GoFloat64))));
							@:fallthrough {
								__switchIndex__ = 1;
								continue;
							};
							break;
						} else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _i == ((6 : GoInt)))) {
							_z = _z * ((_y + ((5 : GoFloat64))));
							@:fallthrough {
								__switchIndex__ = 2;
								continue;
							};
							break;
						} else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _i == ((5 : GoInt)))) {
							_z = _z * ((_y + ((4 : GoFloat64))));
							@:fallthrough {
								__switchIndex__ = 3;
								continue;
							};
							break;
						} else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && _i == ((4 : GoInt)))) {
							_z = _z * ((_y + ((3 : GoFloat64))));
							@:fallthrough {
								__switchIndex__ = 4;
								continue;
							};
							break;
						} else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && _i == ((3 : GoInt)))) {
							_z = _z * ((_y + ((2 : GoFloat64))));
							_lgamma = _lgamma + (log(_z));
							break;
							break;
						};
						break;
					};
				};
				break;
			} else if (_x < two58) {
				var _t:GoFloat64 = log(_x);
				var _z:GoFloat64 = ((1 : GoFloat64)) / _x;
				var _y:GoFloat64 = _z * _z;
				var _w:GoFloat64 = __lgamW[((0 : GoInt))]
					+ (_z * (__lgamW[((1 : GoInt))]
						+ (_y * (__lgamW[((2 : GoInt))]
							+ (_y * (__lgamW[((3 : GoInt))]
								+ (_y * (__lgamW[((4 : GoInt))] + (_y * (__lgamW[((5 : GoInt))] + (_y * __lgamW[((6 : GoInt))])))))))))));
				_lgamma = ((_x - ((0.5 : GoFloat64))) * (_t - ((1 : GoFloat64)))) + _w;
				break;
			} else {
				_lgamma = _x * (log(_x) - ((1 : GoFloat64)));
			};
			break;
		};
	};
	if (_neg) {
		_lgamma = _nadj - _lgamma;
	};
	return {_0: _lgamma, _1: _sign};
}

/**
	// sinPi(x) is a helper function for negative x
**/
function _sinPi(_x:GoFloat64):GoFloat64 {
	final two52:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((52 : GoUnTypedInt)), two53:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((53 : GoUnTypedInt));
	if (_x < ((0.25 : GoFloat64))) {
		return -sin(pi * _x);
	};
	var _z:GoFloat64 = floor(_x);
	var _n:GoInt = ((0 : GoInt));
	if (_z != _x) {
		_x = mod(_x, ((2 : GoFloat64)));
		_n = (((_x * ((4 : GoFloat64))) : GoInt));
	} else {
		if (_x >= two53) {
			_x = ((0 : GoFloat64));
			_n = ((0 : GoInt));
		} else {
			if (_x < two52) {
				_z = _x + two52;
			};
			_n = (((((1 : GoUInt64)) & float64bits(_z)) : GoInt));
			_x = ((_n : GoFloat64));
			_n = _n << (((2 : GoUnTypedInt)));
		};
	};
	if (_n == ((0 : GoInt))) {
		_x = sin(pi * _x);
	} else if (_n == ((1 : GoInt)) || _n == ((2 : GoInt))) {
		_x = cos(pi * (((0.5 : GoFloat64)) - _x));
	} else if (_n == ((3 : GoInt)) || _n == ((4 : GoInt))) {
		_x = sin(pi * (((1 : GoFloat64)) - _x));
	} else if (_n == ((5 : GoInt)) || _n == ((6 : GoInt))) {
		_x = -cos(pi * (_x - ((1.5 : GoFloat64))));
	} else {
		_x = sin(pi * (_x - ((2 : GoFloat64))));
	};
	return -_x;
}

/**
	// Log returns the natural logarithm of x.
	//
	// Special cases are:
	//	Log(+Inf) = +Inf
	//	Log(0) = -Inf
	//	Log(x < 0) = NaN
	//	Log(NaN) = NaN
**/
function log(_x:GoFloat64):GoFloat64 {
	if (_haveArchLog) {
		return _archLog(_x);
	};
	return _log(_x);
}

function _log(_x:GoFloat64):GoFloat64 {
	final ln2Hi:GoUnTypedFloat = ((0.6931471803691238 : GoUnTypedFloat)), ln2Lo:GoUnTypedFloat = ((1.9082149292705877e-10 : GoUnTypedFloat)),
	l1:GoUnTypedFloat = ((0.6666666666666735 : GoUnTypedFloat)), l2:GoUnTypedFloat = ((0.3999999999940942 : GoUnTypedFloat)),
	l3:GoUnTypedFloat = ((0.2857142874366239 : GoUnTypedFloat)), l4:GoUnTypedFloat = ((0.22222198432149784 : GoUnTypedFloat)),
	l5:GoUnTypedFloat = ((0.1818357216161805 : GoUnTypedFloat)), l6:GoUnTypedFloat = ((0.15313837699209373 : GoUnTypedFloat)),
	l7:GoUnTypedFloat = ((0.14798198605116586 : GoUnTypedFloat));
	if (isNaN(_x) || isInf(_x, ((1 : GoInt)))) {
		return _x;
	} else if (_x < ((0 : GoFloat64))) {
		return naN();
	} else if (_x == ((0 : GoFloat64))) {
		return inf(-((1 : GoUnTypedInt)));
	};
	var __tmp__ = frexp(_x),
		_f1:GoFloat64 = __tmp__._0,
		_ki:GoInt = __tmp__._1;
	if (_f1 < (sqrt2 / ((2 : GoUnTypedFloat)))) {
		_f1 = _f1 * (((2 : GoFloat64)));
		_ki--;
	};
	var _f:GoFloat64 = _f1 - ((1 : GoFloat64));
	var _k:GoFloat64 = ((_ki : GoFloat64));
	var _s:GoFloat64 = _f / (((2 : GoFloat64)) + _f);
	var _s2:GoFloat64 = _s * _s;
	var _s4:GoFloat64 = _s2 * _s2;
	var _t1:GoFloat64 = _s2 * (l1 + (_s4 * (l3 + (_s4 * (l5 + (_s4 * l7))))));
	var _t2:GoFloat64 = _s4 * (l2 + (_s4 * (l4 + (_s4 * l6))));
	var r:GoFloat64 = _t1 + _t2;
	var _hfsq:GoFloat64 = (((0.5 : GoFloat64)) * _f) * _f;
	return (_k * ln2Hi) - ((_hfsq - ((_s * (_hfsq + r)) + (_k * ln2Lo))) - _f);
}

/**
	// Log10 returns the decimal logarithm of x.
	// The special cases are the same as for Log.
**/
function log10(_x:GoFloat64):GoFloat64 {
	if (_haveArchLog10) {
		return _archLog10(_x);
	};
	return _log10(_x);
}

function _log10(_x:GoFloat64):GoFloat64 {
	return log(_x) * (((1 : GoUnTypedFloat)) / ln10);
}

/**
	// Log2 returns the binary logarithm of x.
	// The special cases are the same as for Log.
**/
function log2(_x:GoFloat64):GoFloat64 {
	if (_haveArchLog2) {
		return _archLog2(_x);
	};
	return _log2(_x);
}

function _log2(_x:GoFloat64):GoFloat64 {
	var __tmp__ = frexp(_x),
		_frac:GoFloat64 = __tmp__._0,
		_exp:GoInt = __tmp__._1;
	if (_frac == ((0.5 : GoFloat64))) {
		return (((_exp - ((1 : GoInt))) : GoFloat64));
	};
	return (log(_frac) * (((1 : GoUnTypedFloat)) / ln2)) + ((_exp : GoFloat64));
}

/**
	// Log1p returns the natural logarithm of 1 plus its argument x.
	// It is more accurate than Log(1 + x) when x is near zero.
	//
	// Special cases are:
	//	Log1p(+Inf) = +Inf
	//	Log1p(±0) = ±0
	//	Log1p(-1) = -Inf
	//	Log1p(x < -1) = NaN
	//	Log1p(NaN) = NaN
**/
function log1p(_x:GoFloat64):GoFloat64 {
	if (_haveArchLog1p) {
		return _archLog1p(_x);
	};
	return _log1p(_x);
}

function _log1p(_x:GoFloat64):GoFloat64 {
	final sqrt2M1:GoUnTypedFloat = ((0.41421356237309503 : GoUnTypedFloat)), sqrt2HalfM1:GoUnTypedFloat = -((0.2928932188134525 : GoUnTypedFloat)),
	small:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((29 : GoUnTypedInt))),
	tiny:GoUnTypedFloat = ((1 : GoUnTypedFloat)) / (((1 : GoUnTypedInt)) << ((54 : GoUnTypedInt))),
	two53:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((53 : GoUnTypedInt)), ln2Hi:GoUnTypedFloat = ((0.6931471803691238 : GoUnTypedFloat)),
	ln2Lo:GoUnTypedFloat = ((1.9082149292705877e-10 : GoUnTypedFloat)), lp1:GoUnTypedFloat = ((0.6666666666666735 : GoUnTypedFloat)),
	lp2:GoUnTypedFloat = ((0.3999999999940942 : GoUnTypedFloat)), lp3:GoUnTypedFloat = ((0.2857142874366239 : GoUnTypedFloat)),
	lp4:GoUnTypedFloat = ((0.22222198432149784 : GoUnTypedFloat)), lp5:GoUnTypedFloat = ((0.1818357216161805 : GoUnTypedFloat)),
	lp6:GoUnTypedFloat = ((0.15313837699209373 : GoUnTypedFloat)), lp7:GoUnTypedFloat = ((0.14798198605116586 : GoUnTypedFloat));
	if ((_x < -((1 : GoUnTypedInt))) || isNaN(_x)) {
		return naN();
	} else if (_x == -((1 : GoUnTypedInt))) {
		return inf(-((1 : GoUnTypedInt)));
	} else if (isInf(_x, ((1 : GoInt)))) {
		return inf(((1 : GoInt)));
	};
	var _absx:GoFloat64 = abs(_x);
	var _f:GoFloat64 = ((0 : GoFloat64));
	var _iu:GoUInt64 = ((0 : GoUInt64));
	var _k:GoInt = ((1 : GoInt));
	if (_absx < sqrt2M1) {
		if (_absx < small) {
			if (_absx < tiny) {
				return _x;
			};
			return _x - ((_x * _x) * ((0.5 : GoFloat64)));
		};
		if (_x > sqrt2HalfM1) {
			_k = ((0 : GoInt));
			_f = _x;
			_iu = ((1 : GoUInt64));
		};
	};
	var _c:GoFloat64 = ((0 : GoFloat64));
	if (_k != ((0 : GoInt))) {
		var _u:GoFloat64 = ((0 : GoFloat64));
		if (_absx < two53) {
			_u = ((1 : GoFloat64)) + _x;
			_iu = float64bits(_u);
			_k = ((((_iu >> ((52 : GoUnTypedInt))) - ((1023 : GoUInt64))) : GoInt));
			if (_k > ((0 : GoInt))) {
				_c = ((1 : GoFloat64)) - (_u - _x);
			} else {
				_c = _x - (_u - ((1 : GoFloat64)));
			};
			_c = _c / (_u);
		} else {
			_u = _x;
			_iu = float64bits(_u);
			_k = ((((_iu >> ((52 : GoUnTypedInt))) - ((1023 : GoUInt64))) : GoInt));
			_c = ((0 : GoFloat64));
		};
		_iu = _iu & ((("4503599627370495" : GoUInt64)));
		if (_iu < (("1865452045155277" : GoUInt64))) {
			_u = float64frombits(_iu | (("4607182418800017408" : GoUInt64)));
		} else {
			_k++;
			_u = float64frombits(_iu | (("4602678819172646912" : GoUInt64)));
			_iu = ((("4503599627370496" : GoUInt64)) - _iu) >> ((2 : GoUnTypedInt));
		};
		_f = _u - ((1 : GoFloat64));
	};
	var _hfsq:GoFloat64 = (((0.5 : GoFloat64)) * _f) * _f;
	var _s:GoFloat64 = ((0 : GoFloat64)),
		r:GoFloat64 = ((0 : GoFloat64)),
		_z:GoFloat64 = ((0 : GoFloat64));
	if (_iu == ((0 : GoUInt64))) {
		if (_f == ((0 : GoFloat64))) {
			if (_k == ((0 : GoInt))) {
				return ((0 : GoFloat64));
			};
			_c = _c + (((_k : GoFloat64)) * ln2Lo);
			return (((_k : GoFloat64)) * ln2Hi) + _c;
		};
		r = _hfsq * (((1 : GoFloat64)) - (((0.6666666666666666 : GoFloat64)) * _f));
		if (_k == ((0 : GoInt))) {
			return _f - r;
		};
		return (((_k : GoFloat64)) * ln2Hi) - ((r - ((((_k : GoFloat64)) * ln2Lo) + _c)) - _f);
	};
	_s = _f / (((2 : GoFloat64)) + _f);
	_z = _s * _s;
	r = _z * (lp1 + (_z * (lp2 + (_z * (lp3 + (_z * (lp4 + (_z * (lp5 + (_z * (lp6 + (_z * lp7))))))))))));
	if (_k == ((0 : GoInt))) {
		return _f - (_hfsq - (_s * (_hfsq + r)));
	};
	return (((_k : GoFloat64)) * ln2Hi) - ((_hfsq - ((_s * (_hfsq + r)) + ((((_k : GoFloat64)) * ln2Lo) + _c))) - _f);
}

function _archLog(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

/**
	// Logb returns the binary exponent of x.
	//
	// Special cases are:
	//	Logb(±Inf) = +Inf
	//	Logb(0) = -Inf
	//	Logb(NaN) = NaN
**/
function logb(_x:GoFloat64):GoFloat64 {
	if (_x == ((0 : GoFloat64))) {
		return inf(-((1 : GoUnTypedInt)));
	} else if (isInf(_x, ((0 : GoInt)))) {
		return inf(((1 : GoInt)));
	} else if (isNaN(_x)) {
		return _x;
	};
	return ((_ilogb(_x) : GoFloat64));
}

/**
	// Ilogb returns the binary exponent of x as an integer.
	//
	// Special cases are:
	//	Ilogb(±Inf) = MaxInt32
	//	Ilogb(0) = MinInt32
	//	Ilogb(NaN) = MaxInt32
**/
function ilogb(_x:GoFloat64):GoInt {
	if (_x == ((0 : GoFloat64))) {
		return minInt32;
	} else if (isNaN(_x)) {
		return maxInt32;
	} else if (isInf(_x, ((0 : GoInt)))) {
		return maxInt32;
	};
	return _ilogb(_x);
}

/**
	// logb returns the binary exponent of x. It assumes x is finite and
	// non-zero.
**/
function _ilogb(_x:GoFloat64):GoInt {
	var __tmp__ = _normalize(_x),
		_x:GoFloat64 = __tmp__._0,
		_exp:GoInt = __tmp__._1;
	return (((((float64bits(_x) >> _shift) & _mask) : GoInt)) - _bias) + _exp;
}

/**
	// Mod returns the floating-point remainder of x/y.
	// The magnitude of the result is less than y and its
	// sign agrees with that of x.
	//
	// Special cases are:
	//	Mod(±Inf, y) = NaN
	//	Mod(NaN, y) = NaN
	//	Mod(x, 0) = NaN
	//	Mod(x, ±Inf) = x
	//	Mod(x, NaN) = NaN
**/
function mod(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	if (_haveArchMod) {
		return _archMod(_x, _y);
	};
	return _mod(_x, _y);
}

function _mod(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	if ((((_y == ((0 : GoFloat64))) || isInf(_x, ((0 : GoInt)))) || isNaN(_x)) || isNaN(_y)) {
		return naN();
	};
	_y = abs(_y);
	var __tmp__ = frexp(_y),
		_yfr:GoFloat64 = __tmp__._0,
		_yexp:GoInt = __tmp__._1;
	var _r:GoFloat64 = _x;
	if (_x < ((0 : GoFloat64))) {
		_r = -_x;
	};
	while (_r >= _y) {
		var __tmp__ = frexp(_r),
			_rfr:GoFloat64 = __tmp__._0,
			_rexp:GoInt = __tmp__._1;
		if (_rfr < _yfr) {
			_rexp = _rexp - ((1 : GoInt));
		};
		_r = _r - ldexp(_y, _rexp - _yexp);
	};
	if (_x < ((0 : GoFloat64))) {
		_r = -_r;
	};
	return _r;
}

/**
	// Modf returns integer and fractional floating-point numbers
	// that sum to f. Both values have the same sign as f.
	//
	// Special cases are:
	//	Modf(±Inf) = ±Inf, NaN
	//	Modf(NaN) = NaN, NaN
**/
function modf(_f:GoFloat64):{var _0:GoFloat64; var _1:GoFloat64;} {
	var _int:GoFloat64 = ((0 : GoFloat64)),
		_frac:GoFloat64 = ((0 : GoFloat64));
	if (_haveArchModf) {
		return _archModf(_f);
	};
	return _modf(_f);
}

function _modf(_f:GoFloat64):{var _0:GoFloat64; var _1:GoFloat64;} {
	var _int:GoFloat64 = ((0 : GoFloat64)),
		_frac:GoFloat64 = ((0 : GoFloat64));
	if (_f < ((1 : GoFloat64))) {
		if (_f < ((0 : GoFloat64))) {
			{
				var __tmp__ = modf(-_f);
				_int = __tmp__._0;
				_frac = __tmp__._1;
			};
			return {_0: -_int, _1: -_frac};
		} else if (_f == ((0 : GoFloat64))) {
			return {_0: _f, _1: _f};
		};
		return {_0: ((0 : GoFloat64)), _1: _f};
	};
	var _x:GoUInt64 = float64bits(_f);
	var _e:GoUInt = ((((_x >> _shift) : GoUInt)) & _mask) - _bias;
	if (_e < (((64 : GoUnTypedInt)) - ((12 : GoUnTypedInt)))) {
		_x = _x & (((((1 : GoUInt64)) << ((((64 : GoUnTypedInt)) - ((12 : GoUnTypedInt))) - _e)) - ((1 : GoUInt64))) ^ ((-1 : GoUnTypedInt)));
	};
	_int = float64frombits(_x);
	_frac = _f - _int;
	return {_0: _int, _1: _frac};
}

function _archModf(_f:GoFloat64):{var _0:GoFloat64; var _1:GoFloat64;} {
	var _int:GoFloat64 = ((0 : GoFloat64)),
		_frac:GoFloat64 = ((0 : GoFloat64));
	throw(("not implemented" : GoString));
}

/**
	// Nextafter32 returns the next representable float32 value after x towards y.
	//
	// Special cases are:
	//	Nextafter32(x, x)   = x
	//	Nextafter32(NaN, y) = NaN
	//	Nextafter32(x, NaN) = NaN
**/
function nextafter32(_x:GoFloat32, _y:GoFloat32):GoFloat32 {
	var _r:GoFloat32 = ((0 : GoFloat32));
	if (isNaN(((_x : GoFloat64))) || isNaN(((_y : GoFloat64)))) {
		_r = ((naN() : GoFloat32));
	} else if (_x == _y) {
		_r = _x;
	} else if (_x == ((0 : GoFloat32))) {
		_r = ((copysign(((float32frombits(((1 : GoUInt32))) : GoFloat64)), ((_y : GoFloat64))) : GoFloat32));
	} else if ((_y > _x) == (_x > ((0 : GoFloat32)))) {
		_r = float32frombits(float32bits(_x) + ((1 : GoUInt32)));
	} else {
		_r = float32frombits(float32bits(_x) - ((1 : GoUInt32)));
	};
	return _r;
}

/**
	// Nextafter returns the next representable float64 value after x towards y.
	//
	// Special cases are:
	//	Nextafter(x, x)   = x
	//	Nextafter(NaN, y) = NaN
	//	Nextafter(x, NaN) = NaN
**/
function nextafter(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	var _r:GoFloat64 = ((0 : GoFloat64));
	if (isNaN(_x) || isNaN(_y)) {
		_r = naN();
	} else if (_x == _y) {
		_r = _x;
	} else if (_x == ((0 : GoFloat64))) {
		_r = copysign(float64frombits(((1 : GoUInt64))), _y);
	} else if ((_y > _x) == (_x > ((0 : GoFloat64)))) {
		_r = float64frombits(float64bits(_x) + ((1 : GoUInt64)));
	} else {
		_r = float64frombits(float64bits(_x) - ((1 : GoUInt64)));
	};
	return _r;
}

function _isOddInt(_x:GoFloat64):Bool {
	var __tmp__ = modf(_x),
		_xi:GoFloat64 = __tmp__._0,
		_xf:GoFloat64 = __tmp__._1;
	return (_xf == ((0 : GoFloat64))) && ((((_xi : GoInt64)) & ((1 : GoInt64))) == ((1 : GoInt64)));
}

/**
	// Pow returns x**y, the base-x exponential of y.
	//
	// Special cases are (in order):
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
function pow(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	if (_haveArchPow) {
		return _archPow(_x, _y);
	};
	return _pow(_x, _y);
}

function _pow(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	if ((_y == ((0 : GoFloat64))) || (_x == ((1 : GoFloat64)))) {
		return ((1 : GoFloat64));
	} else if (_y == ((1 : GoFloat64))) {
		return _x;
	} else if (isNaN(_x) || isNaN(_y)) {
		return naN();
	} else if (_x == ((0 : GoFloat64))) {
		if (_y < ((0 : GoFloat64))) {
			if (_isOddInt(_y)) {
				return copysign(inf(((1 : GoInt))), _x);
			};
			return inf(((1 : GoInt)));
		} else if (_y > ((0 : GoFloat64))) {
			if (_isOddInt(_y)) {
				return _x;
			};
			return ((0 : GoFloat64));
		};
	} else if (isInf(_y, ((0 : GoInt)))) {
		if (_x == -((1 : GoUnTypedInt))) {
			return ((1 : GoFloat64));
		} else if ((abs(_x) < ((1 : GoFloat64))) == isInf(_y, ((1 : GoInt)))) {
			return ((0 : GoFloat64));
		} else {
			return inf(((1 : GoInt)));
		};
	} else if (isInf(_x, ((0 : GoInt)))) {
		if (isInf(_x, -((1 : GoUnTypedInt)))) {
			return pow(((1 : GoFloat64)) / _x, -_y);
		};
		if (_y < ((0 : GoFloat64))) {
			return ((0 : GoFloat64));
		} else if (_y > ((0 : GoFloat64))) {
			return inf(((1 : GoInt)));
		};
	} else if (_y == ((0.5 : GoFloat64))) {
		return sqrt(_x);
	} else if (_y == -((0.5 : GoUnTypedFloat))) {
		return ((1 : GoFloat64)) / sqrt(_x);
	};
	var __tmp__ = modf(abs(_y)),
		_yi:GoFloat64 = __tmp__._0,
		_yf:GoFloat64 = __tmp__._1;
	if ((_yf != ((0 : GoFloat64))) && (_x < ((0 : GoFloat64)))) {
		return naN();
	};
	if (_yi >= (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt)))) {
		if (_x == -((1 : GoUnTypedInt))) {
			return ((1 : GoFloat64));
		} else if ((abs(_x) < ((1 : GoFloat64))) == (_y > ((0 : GoFloat64)))) {
			return ((0 : GoFloat64));
		} else {
			return inf(((1 : GoInt)));
		};
	};
	var _a1:GoFloat64 = ((1 : GoFloat64));
	var _ae:GoInt = ((0 : GoInt));
	if (_yf != ((0 : GoFloat64))) {
		if (_yf > ((0.5 : GoFloat64))) {
			_yf--;
			_yi++;
		};
		_a1 = exp(_yf * log(_x));
	};
	var __tmp__ = frexp(_x),
		_x1:GoFloat64 = __tmp__._0,
		_xe:GoInt = __tmp__._1;
	{
		var _i:GoInt64 = ((_yi : GoInt64));
		Go.cfor(_i != ((0 : GoInt64)), _i = _i >> (((1 : GoUnTypedInt))), {
			if ((_xe < (-((1 : GoUnTypedInt)) << ((12 : GoUnTypedInt)))) || ((((1 : GoUnTypedInt)) << ((12 : GoUnTypedInt))) < _xe)) {
				_ae = _ae + (_xe);
				break;
			};
			if ((_i & ((1 : GoInt64))) == ((1 : GoInt64))) {
				_a1 = _a1 * (_x1);
				_ae = _ae + (_xe);
			};
			_x1 = _x1 * (_x1);
			_xe = _xe << (((1 : GoUnTypedInt)));
			if (_x1 < ((0.5 : GoFloat64))) {
				_x1 = _x1 + (_x1);
				_xe--;
			};
		});
	};
	if (_y < ((0 : GoFloat64))) {
		_a1 = ((1 : GoFloat64)) / _a1;
		_ae = -_ae;
	};
	return ldexp(_a1, _ae);
}

/**
	// Pow10 returns 10**n, the base-10 exponential of n.
	//
	// Special cases are:
	//	Pow10(n) =    0 for n < -323
	//	Pow10(n) = +Inf for n > 308
**/
function pow10(_n:GoInt):GoFloat64 {
	if ((((0 : GoInt)) <= _n) && (_n <= ((308 : GoInt)))) {
		return _pow10postab32[((_n : GoUInt)) / ((32 : GoUInt))] * _pow10tab[((_n : GoUInt)) % ((32 : GoUInt))];
	};
	if ((-((323 : GoUnTypedInt)) <= _n) && (_n <= ((0 : GoInt)))) {
		return _pow10negtab32[((-_n : GoUInt)) / ((32 : GoUInt))] / _pow10tab[((-_n : GoUInt)) % ((32 : GoUInt))];
	};
	if (_n > ((0 : GoInt))) {
		return inf(((1 : GoInt)));
	};
	return ((0 : GoFloat64));
}

/**
	// Remainder returns the IEEE 754 floating-point remainder of x/y.
	//
	// Special cases are:
	//	Remainder(±Inf, y) = NaN
	//	Remainder(NaN, y) = NaN
	//	Remainder(x, 0) = NaN
	//	Remainder(x, ±Inf) = x
	//	Remainder(x, NaN) = NaN
**/
function remainder(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	if (_haveArchRemainder) {
		return _archRemainder(_x, _y);
	};
	return _remainder(_x, _y);
}

function _remainder(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	final tiny:GoUnTypedFloat = ((4.450147717014403e-308 : GoUnTypedFloat)), halfMax:GoUnTypedFloat = maxFloat64 / ((2 : GoUnTypedFloat));
	if (((isNaN(_x) || isNaN(_y)) || isInf(_x, ((0 : GoInt)))) || (_y == ((0 : GoFloat64)))) {
		return naN();
	} else if (isInf(_y, ((0 : GoInt)))) {
		return _x;
	};
	var _sign:Bool = false;
	if (_x < ((0 : GoFloat64))) {
		_x = -_x;
		_sign = true;
	};
	if (_y < ((0 : GoFloat64))) {
		_y = -_y;
	};
	if (_x == _y) {
		if (_sign) {
			var _zero:GoFloat64 = ((0 : GoFloat64));
			return -_zero;
		};
		return ((0 : GoFloat64));
	};
	if (_y <= halfMax) {
		_x = mod(_x, _y + _y);
	};
	if (_y < tiny) {
		if ((_x + _x) > _y) {
			_x = _x - (_y);
			if ((_x + _x) >= _y) {
				_x = _x - (_y);
			};
		};
	} else {
		var _yHalf:GoFloat64 = ((0.5 : GoFloat64)) * _y;
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
	return (float64bits(_x) & (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt)))) != ((0 : GoUInt64));
}

/**
	// Cos returns the cosine of the radian argument x.
	//
	// Special cases are:
	//	Cos(±Inf) = NaN
	//	Cos(NaN) = NaN
**/
function cos(_x:GoFloat64):GoFloat64 {
	if (_haveArchCos) {
		return _archCos(_x);
	};
	return _cos(_x);
}

function _cos(_x:GoFloat64):GoFloat64 {
	final pi4a:GoUnTypedFloat = ((0.7853981256484985 : GoUnTypedFloat)), pi4b:GoUnTypedFloat = ((3.774894707930798e-08 : GoUnTypedFloat)),
	pi4c:GoUnTypedFloat = ((2.6951514290790595e-15 : GoUnTypedFloat));
	if (isNaN(_x) || isInf(_x, ((0 : GoInt)))) {
		return naN();
	};
	var _sign:Bool = false;
	_x = abs(_x);
	var _j:GoUInt64 = ((0 : GoUInt64));
	var _y:GoFloat64 = ((0 : GoFloat64)), _z:GoFloat64 = ((0 : GoFloat64));
	if (_x >= _reduceThreshold) {
		{
			var __tmp__ = _trigReduce(_x);
			_j = __tmp__._0;
			_z = __tmp__._1;
		};
	} else {
		_j = (((_x * (((4 : GoUnTypedFloat)) / pi)) : GoUInt64));
		_y = ((_j : GoFloat64));
		if ((_j & ((1 : GoUInt64))) == ((1 : GoUInt64))) {
			_j++;
			_y++;
		};
		_j = _j & (((7 : GoUInt64)));
		_z = ((_x - (_y * pi4a)) - (_y * pi4b)) - (_y * pi4c);
	};
	if (_j > ((3 : GoUInt64))) {
		_j = _j - (((4 : GoUInt64)));
		_sign = !_sign;
	};
	if (_j > ((1 : GoUInt64))) {
		_sign = !_sign;
	};
	var _zz:GoFloat64 = _z * _z;
	if ((_j == ((1 : GoUInt64))) || (_j == ((2 : GoUInt64)))) {
		_y = _z
			+ ((_z * _zz) * ((((((((((__sin[((0 : GoInt))] * _zz) + __sin[((1 : GoInt))]) * _zz) + __sin[((2 : GoInt))]) * _zz) + __sin[((3 : GoInt))]) * _zz)
				+ __sin[((4 : GoInt))]) * _zz)
				+ __sin[((5 : GoInt))]));
	} else {
		_y = (((1 : GoFloat64))
			- (((0.5 : GoFloat64)) * _zz))
			+ ((_zz * _zz) * ((((((((((__cos[((0 : GoInt))] * _zz) + __cos[((1 : GoInt))]) * _zz) + __cos[((2 : GoInt))]) * _zz) + __cos[((3 : GoInt))]) * _zz)
				+ __cos[((4 : GoInt))]) * _zz)
				+ __cos[((5 : GoInt))]));
	};
	if (_sign) {
		_y = -_y;
	};
	return _y;
}

/**
	// Sin returns the sine of the radian argument x.
	//
	// Special cases are:
	//	Sin(±0) = ±0
	//	Sin(±Inf) = NaN
	//	Sin(NaN) = NaN
**/
function sin(_x:GoFloat64):GoFloat64 {
	if (_haveArchSin) {
		return _archSin(_x);
	};
	return _sin(_x);
}

function _sin(_x:GoFloat64):GoFloat64 {
	final pi4a:GoUnTypedFloat = ((0.7853981256484985 : GoUnTypedFloat)), pi4b:GoUnTypedFloat = ((3.774894707930798e-08 : GoUnTypedFloat)),
	pi4c:GoUnTypedFloat = ((2.6951514290790595e-15 : GoUnTypedFloat));
	if ((_x == ((0 : GoFloat64))) || isNaN(_x)) {
		return _x;
	} else if (isInf(_x, ((0 : GoInt)))) {
		return naN();
	};
	var _sign:Bool = false;
	if (_x < ((0 : GoFloat64))) {
		_x = -_x;
		_sign = true;
	};
	var _j:GoUInt64 = ((0 : GoUInt64));
	var _y:GoFloat64 = ((0 : GoFloat64)), _z:GoFloat64 = ((0 : GoFloat64));
	if (_x >= _reduceThreshold) {
		{
			var __tmp__ = _trigReduce(_x);
			_j = __tmp__._0;
			_z = __tmp__._1;
		};
	} else {
		_j = (((_x * (((4 : GoUnTypedFloat)) / pi)) : GoUInt64));
		_y = ((_j : GoFloat64));
		if ((_j & ((1 : GoUInt64))) == ((1 : GoUInt64))) {
			_j++;
			_y++;
		};
		_j = _j & (((7 : GoUInt64)));
		_z = ((_x - (_y * pi4a)) - (_y * pi4b)) - (_y * pi4c);
	};
	if (_j > ((3 : GoUInt64))) {
		_sign = !_sign;
		_j = _j - (((4 : GoUInt64)));
	};
	var _zz:GoFloat64 = _z * _z;
	if ((_j == ((1 : GoUInt64))) || (_j == ((2 : GoUInt64)))) {
		_y = (((1 : GoFloat64))
			- (((0.5 : GoFloat64)) * _zz))
			+ ((_zz * _zz) * ((((((((((__cos[((0 : GoInt))] * _zz) + __cos[((1 : GoInt))]) * _zz) + __cos[((2 : GoInt))]) * _zz) + __cos[((3 : GoInt))]) * _zz)
				+ __cos[((4 : GoInt))]) * _zz)
				+ __cos[((5 : GoInt))]));
	} else {
		_y = _z
			+ ((_z * _zz) * ((((((((((__sin[((0 : GoInt))] * _zz) + __sin[((1 : GoInt))]) * _zz) + __sin[((2 : GoInt))]) * _zz) + __sin[((3 : GoInt))]) * _zz)
				+ __sin[((4 : GoInt))]) * _zz)
				+ __sin[((5 : GoInt))]));
	};
	if (_sign) {
		_y = -_y;
	};
	return _y;
}

/**
	// Sincos returns Sin(x), Cos(x).
	//
	// Special cases are:
	//	Sincos(±0) = ±0, 1
	//	Sincos(±Inf) = NaN, NaN
	//	Sincos(NaN) = NaN, NaN
**/
function sincos(_x:GoFloat64):{var _0:GoFloat64; var _1:GoFloat64;} {
	var _sin:GoFloat64 = ((0 : GoFloat64)), _cos:GoFloat64 = ((0 : GoFloat64));
	final pi4a:GoUnTypedFloat = ((0.7853981256484985 : GoUnTypedFloat)), pi4b:GoUnTypedFloat = ((3.774894707930798e-08 : GoUnTypedFloat)),
	pi4c:GoUnTypedFloat = ((2.6951514290790595e-15 : GoUnTypedFloat));
	if (_x == ((0 : GoFloat64))) {
		return {_0: _x, _1: ((1 : GoFloat64))};
	} else if (isNaN(_x) || isInf(_x, ((0 : GoInt)))) {
		return {_0: naN(), _1: naN()};
	};
	var _sinSign:Bool = false, _cosSign:Bool = false;
	if (_x < ((0 : GoFloat64))) {
		_x = -_x;
		_sinSign = true;
	};
	var _j:GoUInt64 = ((0 : GoUInt64));
	var _y:GoFloat64 = ((0 : GoFloat64)), _z:GoFloat64 = ((0 : GoFloat64));
	if (_x >= _reduceThreshold) {
		{
			var __tmp__ = _trigReduce(_x);
			_j = __tmp__._0;
			_z = __tmp__._1;
		};
	} else {
		_j = (((_x * (((4 : GoUnTypedFloat)) / pi)) : GoUInt64));
		_y = ((_j : GoFloat64));
		if ((_j & ((1 : GoUInt64))) == ((1 : GoUInt64))) {
			_j++;
			_y++;
		};
		_j = _j & (((7 : GoUInt64)));
		_z = ((_x - (_y * pi4a)) - (_y * pi4b)) - (_y * pi4c);
	};
	if (_j > ((3 : GoUInt64))) {
		_j = _j - (((4 : GoUInt64)));
		{
			final __tmp__0 = !_sinSign;
			final __tmp__1 = !_cosSign;
			_sinSign = __tmp__0;
			_cosSign = __tmp__1;
		};
	};
	if (_j > ((1 : GoUInt64))) {
		_cosSign = !_cosSign;
	};
	var _zz:GoFloat64 = _z * _z;
	_cos = (((1 : GoFloat64))
		- (((0.5 : GoFloat64)) * _zz))
		+ ((_zz * _zz) * ((((((((((__cos[((0 : GoInt))] * _zz) + __cos[((1 : GoInt))]) * _zz) + __cos[((2 : GoInt))]) * _zz) + __cos[((3 : GoInt))]) * _zz)
			+ __cos[((4 : GoInt))]) * _zz)
			+ __cos[((5 : GoInt))]));
	_sin = _z
		+ ((_z * _zz) * ((((((((((__sin[((0 : GoInt))] * _zz) + __sin[((1 : GoInt))]) * _zz) + __sin[((2 : GoInt))]) * _zz) + __sin[((3 : GoInt))]) * _zz)
			+ __sin[((4 : GoInt))]) * _zz)
			+ __sin[((5 : GoInt))]));
	if ((_j == ((1 : GoUInt64))) || (_j == ((2 : GoUInt64)))) {
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
	return {_0: _sin, _1: _cos};
}

/**
	// Sinh returns the hyperbolic sine of x.
	//
	// Special cases are:
	//	Sinh(±0) = ±0
	//	Sinh(±Inf) = ±Inf
	//	Sinh(NaN) = NaN
**/
function sinh(_x:GoFloat64):GoFloat64 {
	if (_haveArchSinh) {
		return _archSinh(_x);
	};
	return _sinh(_x);
}

function _sinh(_x:GoFloat64):GoFloat64 {
	final p0:GoUnTypedFloat = -((630767.3640497717 : GoUnTypedFloat)), p1:GoUnTypedFloat = -((89912.72022039509 : GoUnTypedFloat)),
	p2:GoUnTypedFloat = -((2894.211355989564 : GoUnTypedFloat)), p3:GoUnTypedFloat = -((26.30563213397497 : GoUnTypedFloat)),
	q0:GoUnTypedFloat = -((630767.3640497717 : GoUnTypedFloat)), q1:GoUnTypedFloat = ((15215.17378790019 : GoUnTypedFloat)),
	q2:GoUnTypedFloat = -((173.6789535582337 : GoUnTypedFloat));
	var _sign:Bool = false;
	if (_x < ((0 : GoFloat64))) {
		_x = -_x;
		_sign = true;
	};
	var _temp:GoFloat64 = ((0 : GoFloat64));
	if (_x > ((21 : GoFloat64))) {
		_temp = exp(_x) * ((0.5 : GoFloat64));
	} else if (_x > ((0.5 : GoFloat64))) {
		var _ex:GoFloat64 = exp(_x);
		_temp = (_ex - (((1 : GoFloat64)) / _ex)) * ((0.5 : GoFloat64));
	} else {
		var _sq:GoFloat64 = _x * _x;
		_temp = ((((((p3 * _sq) + p2) * _sq) + p1) * _sq) + p0) * _x;
		_temp = _temp / (((((_sq + q2) * _sq) + q1) * _sq) + q0);
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
	//	Cosh(±0) = 1
	//	Cosh(±Inf) = +Inf
	//	Cosh(NaN) = NaN
**/
function cosh(_x:GoFloat64):GoFloat64 {
	if (_haveArchCosh) {
		return _archCosh(_x);
	};
	return _cosh(_x);
}

function _cosh(_x:GoFloat64):GoFloat64 {
	_x = abs(_x);
	if (_x > ((21 : GoFloat64))) {
		return exp(_x) * ((0.5 : GoFloat64));
	};
	var _ex:GoFloat64 = exp(_x);
	return (_ex + (((1 : GoFloat64)) / _ex)) * ((0.5 : GoFloat64));
}

/**
	// Sqrt returns the square root of x.
	//
	// Special cases are:
	//	Sqrt(+Inf) = +Inf
	//	Sqrt(±0) = ±0
	//	Sqrt(x < 0) = NaN
	//	Sqrt(NaN) = NaN
**/
function sqrt(_x:GoFloat64):GoFloat64 {
	if (_haveArchSqrt) {
		return _archSqrt(_x);
	};
	return _sqrt(_x);
}

function _sqrt(_x:GoFloat64):GoFloat64 {
	if (((_x == ((0 : GoFloat64))) || isNaN(_x)) || isInf(_x, ((1 : GoInt)))) {
		return _x;
	} else if (_x < ((0 : GoFloat64))) {
		return naN();
	};
	var _ix:GoUInt64 = float64bits(_x);
	var _exp:GoInt = ((((_ix >> _shift) & _mask) : GoInt));
	if (_exp == ((0 : GoInt))) {
		while ((_ix & (((1 : GoUnTypedInt)) << _shift)) == ((0 : GoUInt64))) {
			_ix = _ix << (((1 : GoUnTypedInt)));
			_exp--;
		};
		_exp++;
	};
	_exp = _exp - (_bias);
	_ix = _ix & ((_mask << _shift) ^ ((-1 : GoUnTypedInt)));
	_ix = _ix | (((1 : GoUnTypedInt)) << _shift);
	if ((_exp & ((1 : GoInt))) == ((1 : GoInt))) {
		_ix = _ix << (((1 : GoUnTypedInt)));
	};
	_exp = _exp >> (((1 : GoUnTypedInt)));
	_ix = _ix << (((1 : GoUnTypedInt)));
	var _q:GoUInt64 = ((0 : GoUInt64)), _s:GoUInt64 = ((0 : GoUInt64));
	var _r:GoUInt64 = (((((1 : GoUnTypedInt)) << (_shift + ((1 : GoUnTypedInt)))) : GoUInt64));
	while (_r != ((0 : GoUInt64))) {
		var _t:GoUInt64 = _s + _r;
		if (_t <= _ix) {
			_s = _t + _r;
			_ix = _ix - (_t);
			_q = _q + (_r);
		};
		_ix = _ix << (((1 : GoUnTypedInt)));
		_r = _r >> (((1 : GoUnTypedInt)));
	};
	if (_ix != ((0 : GoUInt64))) {
		_q = _q + (_q & ((1 : GoUInt64)));
	};
	_ix = (_q >> ((1 : GoUnTypedInt))) + (((((_exp - ((1 : GoInt))) + _bias) : GoUInt64)) << _shift);
	return float64frombits(_ix);
}

function _archSqrt(_x:GoFloat64):GoFloat64
	throw "not implemeneted";

function _archAcos(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archAcosh(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archAsin(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archAsinh(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archAtan(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archAtan2(_y:GoFloat64, _x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archAtanh(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archCbrt(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archCos(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archCosh(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archErf(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archErfc(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archExpm1(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archFrexp(_x:GoFloat64):{var _0:GoFloat64; var _1:GoInt;} {
	throw(("not implemented" : GoString));
}

function _archLdexp(_frac:GoFloat64, _exp:GoInt):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archLog10(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archLog2(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archLog1p(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archMod(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archPow(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archRemainder(_x:GoFloat64, _y:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archSin(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archSinh(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archTan(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

function _archTanh(_x:GoFloat64):GoFloat64 {
	throw(("not implemented" : GoString));
}

/**
	// Tan returns the tangent of the radian argument x.
	//
	// Special cases are:
	//	Tan(±0) = ±0
	//	Tan(±Inf) = NaN
	//	Tan(NaN) = NaN
**/
function tan(_x:GoFloat64):GoFloat64 {
	if (_haveArchTan) {
		return _archTan(_x);
	};
	return _tan(_x);
}

function _tan(_x:GoFloat64):GoFloat64 {
	final pi4a:GoUnTypedFloat = ((0.7853981256484985 : GoUnTypedFloat)), pi4b:GoUnTypedFloat = ((3.774894707930798e-08 : GoUnTypedFloat)),
	pi4c:GoUnTypedFloat = ((2.6951514290790595e-15 : GoUnTypedFloat));
	if ((_x == ((0 : GoFloat64))) || isNaN(_x)) {
		return _x;
	} else if (isInf(_x, ((0 : GoInt)))) {
		return naN();
	};
	var _sign:Bool = false;
	if (_x < ((0 : GoFloat64))) {
		_x = -_x;
		_sign = true;
	};
	var _j:GoUInt64 = ((0 : GoUInt64));
	var _y:GoFloat64 = ((0 : GoFloat64)), _z:GoFloat64 = ((0 : GoFloat64));
	if (_x >= _reduceThreshold) {
		{
			var __tmp__ = _trigReduce(_x);
			_j = __tmp__._0;
			_z = __tmp__._1;
		};
	} else {
		_j = (((_x * (((4 : GoUnTypedFloat)) / pi)) : GoUInt64));
		_y = ((_j : GoFloat64));
		if ((_j & ((1 : GoUInt64))) == ((1 : GoUInt64))) {
			_j++;
			_y++;
		};
		_z = ((_x - (_y * pi4a)) - (_y * pi4b)) - (_y * pi4c);
	};
	var _zz:GoFloat64 = _z * _z;
	if (_zz > ((1e-14 : GoFloat64))) {
		_y = _z
			+ (_z * ((_zz * ((((__tanP[((0 : GoInt))] * _zz) + __tanP[((1 : GoInt))]) * _zz)
				+ __tanP[((2 : GoInt))])) / (((((((_zz + __tanQ[((1 : GoInt))]) * _zz) + __tanQ[((2 : GoInt))]) * _zz) + __tanQ[((3 : GoInt))]) * _zz)
					+ __tanQ[((4 : GoInt))])));
	} else {
		_y = _z;
	};
	if ((_j & ((2 : GoUInt64))) == ((2 : GoUInt64))) {
		_y = -((1 : GoUnTypedInt)) / _y;
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
	//	Tanh(±0) = ±0
	//	Tanh(±Inf) = ±1
	//	Tanh(NaN) = NaN
**/
function tanh(_x:GoFloat64):GoFloat64 {
	if (_haveArchTanh) {
		return _archTanh(_x);
	};
	return _tanh(_x);
}

function _tanh(_x:GoFloat64):GoFloat64 {
	final maxlog:GoUnTypedFloat = ((88.02969193111305 : GoUnTypedFloat));
	var _z:GoFloat64 = abs(_x);
	if (_z > (((0.5 : GoUnTypedFloat)) * maxlog)) {
		if (_x < ((0 : GoFloat64))) {
			return -((1 : GoUnTypedInt));
		};
		return ((1 : GoFloat64));
	} else if (_z >= ((0.625 : GoFloat64))) {
		var _s:GoFloat64 = exp(((2 : GoFloat64)) * _z);
		_z = ((1 : GoFloat64)) - (((2 : GoFloat64)) / (_s + ((1 : GoFloat64))));
		if (_x < ((0 : GoFloat64))) {
			_z = -_z;
		};
	} else {
		if (_x == ((0 : GoFloat64))) {
			return _x;
		};
		var _s:GoFloat64 = _x * _x;
		_z = _x
			+ (((_x * _s) * ((((_tanhP[((0 : GoInt))] * _s) + _tanhP[((1 : GoInt))]) * _s)
				+ _tanhP[((2 : GoInt))])) / (((((_s + _tanhQ[((0 : GoInt))]) * _s) + _tanhQ[((1 : GoInt))]) * _s) + _tanhQ[((2 : GoInt))]));
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
function _trigReduce(_x:GoFloat64):{var _0:GoUInt64; var _1:GoFloat64;} {
	var _j:GoUInt64 = ((0 : GoUInt64)), _z:GoFloat64 = ((0 : GoFloat64));
	final pi4:GoUnTypedFloat = pi / ((4 : GoUnTypedFloat));
	if (_x < pi4) {
		return {_0: ((0 : GoUInt64)), _1: _x};
	};
	var _ix:GoUInt64 = float64bits(_x);
	var _exp:GoInt = (((((_ix >> _shift) & _mask) : GoInt)) - _bias) - _shift;
	_ix = _ix & ((_mask << _shift) ^ ((-1 : GoUnTypedInt)));
	_ix = _ix | (((1 : GoUnTypedInt)) << _shift);
	var _digit:GoUInt = (((_exp + ((61 : GoInt))) : GoUInt)) / ((64 : GoUInt)),
		_bitshift:GoUInt = (((_exp + ((61 : GoInt))) : GoUInt)) % ((64 : GoUInt));
	trace(_digit, _bitshift, _mPi4[_digit]); // helper
	var _z0:GoUInt64 = (_mPi4[_digit] << _bitshift) | (_mPi4[_digit + ((1 : GoUInt))] >> (((64 : GoUInt)) - _bitshift));
	var _z1:GoUInt64 = (_mPi4[_digit + ((1 : GoUInt))] << _bitshift) | (_mPi4[_digit + ((2 : GoUInt))] >> (((64 : GoUInt)) - _bitshift));
	var _z2:GoUInt64 = (_mPi4[_digit + ((2 : GoUInt))] << _bitshift) | (_mPi4[_digit + ((3 : GoUInt))] >> (((64 : GoUInt)) - _bitshift));
	var __tmp__ = stdgo.math.bits.Bits.mul64(_z2, _ix),
		_z2hi:GoUInt64 = __tmp__._0,
		_:GoUInt64 = __tmp__._1;
	var __tmp__ = stdgo.math.bits.Bits.mul64(_z1, _ix),
		_z1hi:GoUInt64 = __tmp__._0,
		_z1lo:GoUInt64 = __tmp__._1;
	var _z0lo:GoUInt64 = _z0 * _ix;
	var __tmp__ = stdgo.math.bits.Bits.add64(_z1lo, _z2hi, ((0 : GoUInt64))),
		_lo:GoUInt64 = __tmp__._0,
		_c:GoUInt64 = __tmp__._1;
	var __tmp__ = stdgo.math.bits.Bits.add64(_z0lo, _z1hi, _c),
		_hi:GoUInt64 = __tmp__._0,
		_:GoUInt64 = __tmp__._1;
	_j = _hi >> ((61 : GoUnTypedInt));
	_hi = (_hi << ((3 : GoUnTypedInt))) | (_lo >> ((61 : GoUnTypedInt)));
	var _lz:GoUInt = ((stdgo.math.bits.Bits.leadingZeros64(_hi) : GoUInt));
	var _e:GoUInt64 = (((_bias - (_lz + ((1 : GoUInt)))) : GoUInt64));
	_hi = (_hi << (_lz + ((1 : GoUInt)))) | (_lo >> (((64 : GoUInt)) - (_lz + ((1 : GoUInt)))));
	_hi = _hi >> (((64 : GoUnTypedInt)) - _shift);
	_hi = _hi | (_e << _shift);
	_z = float64frombits(_hi);
	if ((_j & ((1 : GoUInt64))) == ((1 : GoUInt64))) {
		_j++;
		_j = _j & (((7 : GoUInt64)));
		_z--;
	};
	return {_0: _j, _1: _z * pi4};
}

/**
	// Float32bits returns the IEEE 754 binary representation of f,
	// with the sign bit of f and the result in the same bit position.
	// Float32bits(Float32frombits(x)) == x.
**/
function float32bits(_f:GoFloat32):GoUInt32 {
	return ((((Go.pointer(_f) : stdgo.unsafe.Unsafe.Pointer_)) : Pointer<GoUInt32>)).value;
}

/**
	// Float32frombits returns the floating-point number corresponding
	// to the IEEE 754 binary representation b, with the sign bit of b
	// and the result in the same bit position.
	// Float32frombits(Float32bits(x)) == x.
**/
function float32frombits(_b:GoUInt32):GoFloat32 {
	return ((((Go.pointer(_b) : stdgo.unsafe.Unsafe.Pointer_)) : Pointer<GoFloat32>)).value;
}

/**
	// Float64bits returns the IEEE 754 binary representation of f,
	// with the sign bit of f and the result in the same bit position,
	// and Float64bits(Float64frombits(x)) == x.
**/
function float64bits(_f:GoFloat64):GoUInt64 {
	return ((((Go.pointer(_f) : stdgo.unsafe.Unsafe.Pointer_)) : Pointer<GoUInt64>)).value;
}

/**
	// Float64frombits returns the floating-point number corresponding
	// to the IEEE 754 binary representation b, with the sign bit of b
	// and the result in the same bit position.
	// Float64frombits(Float64bits(x)) == x.
**/
function float64frombits(_b:GoUInt64):GoFloat64 {
	return ((((Go.pointer(_b) : stdgo.unsafe.Unsafe.Pointer_)) : Pointer<GoFloat64>)).value;
}

/**
	// Ceil returns the least integer value greater than or equal to x.
	//
	// Special cases are:
	//	Ceil(±0) = ±0
	//	Ceil(±Inf) = ±Inf
	//	Ceil(NaN) = NaN
**/
function ceil(_x:GoFloat64):GoFloat64 {
	if (_haveArchCeil) {
		return _archCeil(_x);
	};
	return _ceil(_x);
}
