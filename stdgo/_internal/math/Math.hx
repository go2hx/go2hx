package stdgo._internal.math;
private var __go2hxdoc__package : Bool;
final _uvnan : stdgo.GoUInt64 = (9221120237041090561i64 : stdgo.GoUInt64);
final _uvinf : stdgo.GoUInt64 = (9218868437227405312i64 : stdgo.GoUInt64);
final _uvneginf : stdgo.GoUInt64 = (-4503599627370496i64 : stdgo.GoUInt64);
final _uvone : stdgo.GoUInt64 = (4607182418800017408i64 : stdgo.GoUInt64);
final _mask : stdgo.GoUInt64 = (2047i64 : stdgo.GoUInt64);
final _shift : stdgo.GoUInt64 = (52i64 : stdgo.GoUInt64);
final _bias : stdgo.GoUInt64 = (1023i64 : stdgo.GoUInt64);
final _signMask : stdgo.GoUInt64 = (-9223372036854775808i64 : stdgo.GoUInt64);
final _fracMask : stdgo.GoUInt64 = (4503599627370495i64 : stdgo.GoUInt64);
final e : stdgo.GoFloat64 = (2.718281828459045 : stdgo.GoFloat64);
final pi : stdgo.GoFloat64 = (3.141592653589793 : stdgo.GoFloat64);
final phi : stdgo.GoFloat64 = (1.618033988749895 : stdgo.GoFloat64);
final sqrt2 : stdgo.GoFloat64 = (1.4142135623730951 : stdgo.GoFloat64);
final sqrtE : stdgo.GoFloat64 = (1.6487212707001282 : stdgo.GoFloat64);
final sqrtPi : stdgo.GoFloat64 = (1.772453850905516 : stdgo.GoFloat64);
final sqrtPhi : stdgo.GoFloat64 = (1.272019649514069 : stdgo.GoFloat64);
final ln2 : stdgo.GoFloat64 = (0.6931471805599453 : stdgo.GoFloat64);
final log2E : stdgo.GoFloat64 = (1.4426950408889634 : stdgo.GoFloat64);
final ln10 : stdgo.GoFloat64 = (2.302585092994046 : stdgo.GoFloat64);
final log10E : stdgo.GoFloat64 = (0.4342944819032518 : stdgo.GoFloat64);
final maxFloat32 : stdgo.GoFloat64 = (3.4028234663852886e+38 : stdgo.GoFloat64);
final smallestNonzeroFloat32 : stdgo.GoFloat64 = (1.401298464324817e-45 : stdgo.GoFloat64);
final maxFloat64 : stdgo.GoFloat64 = (1.7976931348623157e+308 : stdgo.GoFloat64);
final smallestNonzeroFloat64 : stdgo.GoFloat64 = (5e-324 : stdgo.GoFloat64);
final _intSize : stdgo.GoUInt64 = (32i64 : stdgo.GoUInt64);
final maxInt : stdgo.GoUInt64 = (2147483647i64 : stdgo.GoUInt64);
final minInt : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final maxInt8 : stdgo.GoUInt64 = (127i64 : stdgo.GoUInt64);
final minInt8 : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final maxInt16 : stdgo.GoUInt64 = (32767i64 : stdgo.GoUInt64);
final minInt16 : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final maxInt32 : stdgo.GoUInt64 = (2147483647i64 : stdgo.GoUInt64);
final minInt32 : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final maxInt64 : stdgo.GoUInt64 = (9223372036854775807i64 : stdgo.GoUInt64);
final minInt64 : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final maxUint : stdgo.GoUInt64 = (4294967295i64 : stdgo.GoUInt64);
final maxUint8 : stdgo.GoUInt64 = (255i64 : stdgo.GoUInt64);
final maxUint16 : stdgo.GoUInt64 = (65535i64 : stdgo.GoUInt64);
final maxUint32 : stdgo.GoUInt64 = (4294967295i64 : stdgo.GoUInt64);
final maxUint64 : stdgo.GoUInt64 = (-1i64 : stdgo.GoUInt64);
final _haveArchMax : Bool = false;
final _haveArchMin : Bool = false;
final _erx : stdgo.GoFloat64 = (0.8450629115104675 : stdgo.GoFloat64);
final _efx : stdgo.GoFloat64 = (0.1283791670955126 : stdgo.GoFloat64);
final _efx8 : stdgo.GoFloat64 = (1.0270333367641007 : stdgo.GoFloat64);
final _pp0 : stdgo.GoFloat64 = (0.12837916709551256 : stdgo.GoFloat64);
final _pp1 : stdgo.GoFloat64 = (-0.3250421072470015 : stdgo.GoFloat64);
final _pp2 : stdgo.GoFloat64 = (-0.02848174957559851 : stdgo.GoFloat64);
final _pp3 : stdgo.GoFloat64 = (-0.005770270296489442 : stdgo.GoFloat64);
final _pp4 : stdgo.GoFloat64 = (-2.3763016656650163e-05 : stdgo.GoFloat64);
final _qq1 : stdgo.GoFloat64 = (0.39791722395915535 : stdgo.GoFloat64);
final _qq2 : stdgo.GoFloat64 = (0.0650222499887673 : stdgo.GoFloat64);
final _qq3 : stdgo.GoFloat64 = (0.005081306281875766 : stdgo.GoFloat64);
final _qq4 : stdgo.GoFloat64 = (0.00013249473800432164 : stdgo.GoFloat64);
final _qq5 : stdgo.GoFloat64 = (-3.960228278775368e-06 : stdgo.GoFloat64);
final _pa0 : stdgo.GoFloat64 = (-0.0023621185607526594 : stdgo.GoFloat64);
final _pa1 : stdgo.GoFloat64 = (0.41485611868374833 : stdgo.GoFloat64);
final _pa2 : stdgo.GoFloat64 = (-0.3722078760357013 : stdgo.GoFloat64);
final _pa3 : stdgo.GoFloat64 = (0.31834661990116175 : stdgo.GoFloat64);
final _pa4 : stdgo.GoFloat64 = (-0.11089469428239668 : stdgo.GoFloat64);
final _pa5 : stdgo.GoFloat64 = (0.035478304325618236 : stdgo.GoFloat64);
final _pa6 : stdgo.GoFloat64 = (-0.002166375594868791 : stdgo.GoFloat64);
final _qa1 : stdgo.GoFloat64 = (0.10642088040084423 : stdgo.GoFloat64);
final _qa2 : stdgo.GoFloat64 = (0.540397917702171 : stdgo.GoFloat64);
final _qa3 : stdgo.GoFloat64 = (0.07182865441419627 : stdgo.GoFloat64);
final _qa4 : stdgo.GoFloat64 = (0.12617121980876164 : stdgo.GoFloat64);
final _qa5 : stdgo.GoFloat64 = (0.01363708391202905 : stdgo.GoFloat64);
final _qa6 : stdgo.GoFloat64 = (0.011984499846799107 : stdgo.GoFloat64);
final _ra0 : stdgo.GoFloat64 = (-0.009864944034847148 : stdgo.GoFloat64);
final _ra1 : stdgo.GoFloat64 = (-0.6938585727071818 : stdgo.GoFloat64);
final _ra2 : stdgo.GoFloat64 = (-10.558626225323291 : stdgo.GoFloat64);
final _ra3 : stdgo.GoFloat64 = (-62.375332450326006 : stdgo.GoFloat64);
final _ra4 : stdgo.GoFloat64 = (-162.39666946257347 : stdgo.GoFloat64);
final _ra5 : stdgo.GoFloat64 = (-184.60509290671104 : stdgo.GoFloat64);
final _ra6 : stdgo.GoFloat64 = (-81.2874355063066 : stdgo.GoFloat64);
final _ra7 : stdgo.GoFloat64 = (-9.814329344169145 : stdgo.GoFloat64);
final _sa1 : stdgo.GoFloat64 = (19.651271667439257 : stdgo.GoFloat64);
final _sa2 : stdgo.GoFloat64 = (137.65775414351904 : stdgo.GoFloat64);
final _sa3 : stdgo.GoFloat64 = (434.56587747522923 : stdgo.GoFloat64);
final _sa4 : stdgo.GoFloat64 = (645.3872717332679 : stdgo.GoFloat64);
final _sa5 : stdgo.GoFloat64 = (429.00814002756783 : stdgo.GoFloat64);
final _sa6 : stdgo.GoFloat64 = (108.63500554177944 : stdgo.GoFloat64);
final _sa7 : stdgo.GoFloat64 = (6.570249770319282 : stdgo.GoFloat64);
final _sa8 : stdgo.GoFloat64 = (-0.0604244152148581 : stdgo.GoFloat64);
final _rb0 : stdgo.GoFloat64 = (-0.0098649429247001 : stdgo.GoFloat64);
final _rb1 : stdgo.GoFloat64 = (-0.799283237680523 : stdgo.GoFloat64);
final _rb2 : stdgo.GoFloat64 = (-17.757954917754752 : stdgo.GoFloat64);
final _rb3 : stdgo.GoFloat64 = (-160.63638485582192 : stdgo.GoFloat64);
final _rb4 : stdgo.GoFloat64 = (-637.5664433683896 : stdgo.GoFloat64);
final _rb5 : stdgo.GoFloat64 = (-1025.0951316110772 : stdgo.GoFloat64);
final _rb6 : stdgo.GoFloat64 = (-483.5191916086514 : stdgo.GoFloat64);
final _sb1 : stdgo.GoFloat64 = (30.33806074348246 : stdgo.GoFloat64);
final _sb2 : stdgo.GoFloat64 = (325.7925129965739 : stdgo.GoFloat64);
final _sb3 : stdgo.GoFloat64 = (1536.729586084437 : stdgo.GoFloat64);
final _sb4 : stdgo.GoFloat64 = (3199.8582195085955 : stdgo.GoFloat64);
final _sb5 : stdgo.GoFloat64 = (2553.0504064331644 : stdgo.GoFloat64);
final _sb6 : stdgo.GoFloat64 = (474.52854120695537 : stdgo.GoFloat64);
final _sb7 : stdgo.GoFloat64 = (-22.44095244658582 : stdgo.GoFloat64);
final _a0 : stdgo.GoFloat64 = (1.1975323115670913 : stdgo.GoFloat64);
final _a1 : stdgo.GoFloat64 = (47.07268811238398 : stdgo.GoFloat64);
final _a2 : stdgo.GoFloat64 = (697.062665343896 : stdgo.GoFloat64);
final _a3 : stdgo.GoFloat64 = (4854.886889384388 : stdgo.GoFloat64);
final _a4 : stdgo.GoFloat64 = (16235.862515167575 : stdgo.GoFloat64);
final _a5 : stdgo.GoFloat64 = (23782.041382114385 : stdgo.GoFloat64);
final _a6 : stdgo.GoFloat64 = (11819.493347062295 : stdgo.GoFloat64);
final _a7 : stdgo.GoFloat64 = (887.0940696254552 : stdgo.GoFloat64);
final _b0 : stdgo.GoFloat64 = (1 : stdgo.GoFloat64);
final _b1 : stdgo.GoFloat64 = (42.31333070160091 : stdgo.GoFloat64);
final _b2 : stdgo.GoFloat64 = (687.1870074920579 : stdgo.GoFloat64);
final _b3 : stdgo.GoFloat64 = (5394.196021424751 : stdgo.GoFloat64);
final _b4 : stdgo.GoFloat64 = (21213.794301586597 : stdgo.GoFloat64);
final _b5 : stdgo.GoFloat64 = (39307.89580009271 : stdgo.GoFloat64);
final _b6 : stdgo.GoFloat64 = (28729.085735721943 : stdgo.GoFloat64);
final _b7 : stdgo.GoFloat64 = (5226.495278852854 : stdgo.GoFloat64);
final _c0 : stdgo.GoFloat64 = (1.4234371107496835 : stdgo.GoFloat64);
final _c1 : stdgo.GoFloat64 = (4.630337846156546 : stdgo.GoFloat64);
final _c2 : stdgo.GoFloat64 = (5.769497221460691 : stdgo.GoFloat64);
final _c3 : stdgo.GoFloat64 = (3.6478483247632045 : stdgo.GoFloat64);
final _c4 : stdgo.GoFloat64 = (1.2704582524523684 : stdgo.GoFloat64);
final _c5 : stdgo.GoFloat64 = (0.2417807251774506 : stdgo.GoFloat64);
final _c6 : stdgo.GoFloat64 = (0.022723844989269184 : stdgo.GoFloat64);
final _c7 : stdgo.GoFloat64 = (0.0007745450142783414 : stdgo.GoFloat64);
final _d0 : stdgo.GoFloat64 = (1.4142135623730951 : stdgo.GoFloat64);
final _d1 : stdgo.GoFloat64 = (2.9036514445419948 : stdgo.GoFloat64);
final _d2 : stdgo.GoFloat64 = (2.3707661626024534 : stdgo.GoFloat64);
final _d3 : stdgo.GoFloat64 = (0.9754783200178743 : stdgo.GoFloat64);
final _d4 : stdgo.GoFloat64 = (0.2094506521051275 : stdgo.GoFloat64);
final _d5 : stdgo.GoFloat64 = (0.021494160384252878 : stdgo.GoFloat64);
final _d6 : stdgo.GoFloat64 = (0.0007744145906515771 : stdgo.GoFloat64);
final _d7 : stdgo.GoFloat64 = (1.4859850019840355e-09 : stdgo.GoFloat64);
final _e0 : stdgo.GoFloat64 = (6.657904643501103 : stdgo.GoFloat64);
final _e1 : stdgo.GoFloat64 = (5.463784911164114 : stdgo.GoFloat64);
final _e2 : stdgo.GoFloat64 = (1.7848265399172913 : stdgo.GoFloat64);
final _e3 : stdgo.GoFloat64 = (0.29656057182850487 : stdgo.GoFloat64);
final _e4 : stdgo.GoFloat64 = (0.026532189526576124 : stdgo.GoFloat64);
final _e5 : stdgo.GoFloat64 = (0.0012426609473880784 : stdgo.GoFloat64);
final _e6 : stdgo.GoFloat64 = (2.7115555687434876e-05 : stdgo.GoFloat64);
final _e7 : stdgo.GoFloat64 = (2.0103343992922881e-07 : stdgo.GoFloat64);
final _f0 : stdgo.GoFloat64 = (1.4142135623730951 : stdgo.GoFloat64);
final _f1 : stdgo.GoFloat64 = (0.8482908416595164 : stdgo.GoFloat64);
final _f2 : stdgo.GoFloat64 = (0.19364809469506591 : stdgo.GoFloat64);
final _f3 : stdgo.GoFloat64 = (0.02103693768272069 : stdgo.GoFloat64);
final _f4 : stdgo.GoFloat64 = (0.0011128009970788597 : stdgo.GoFloat64);
final _f5 : stdgo.GoFloat64 = (2.6110884050805935e-05 : stdgo.GoFloat64);
final _f6 : stdgo.GoFloat64 = (2.010321207683943e-07 : stdgo.GoFloat64);
final _f7 : stdgo.GoFloat64 = (2.8910246058729655e-15 : stdgo.GoFloat64);
final _haveArchExp2 : Bool = false;
final _haveArchExp : Bool = false;
final reduceThreshold : stdgo.GoUInt64 = (536870912i64 : stdgo.GoUInt64);
final _haveArchFloor : Bool = true;
final _haveArchCeil : Bool = true;
final _haveArchTrunc : Bool = true;
final _haveArchHypot : Bool = false;
final _haveArchLog : Bool = false;
final _haveArchModf : Bool = false;
final _haveArchAcos : Bool = false;
final _haveArchAcosh : Bool = false;
final _haveArchAsin : Bool = false;
final _haveArchAsinh : Bool = false;
final _haveArchAtan : Bool = false;
final _haveArchAtan2 : Bool = false;
final _haveArchAtanh : Bool = false;
final _haveArchCbrt : Bool = false;
final _haveArchCos : Bool = false;
final _haveArchCosh : Bool = false;
final _haveArchErf : Bool = false;
final _haveArchErfc : Bool = false;
final _haveArchExpm1 : Bool = false;
final _haveArchFrexp : Bool = false;
final _haveArchLdexp : Bool = false;
final _haveArchLog10 : Bool = false;
final _haveArchLog2 : Bool = false;
final _haveArchLog1p : Bool = false;
final _haveArchMod : Bool = false;
final _haveArchPow : Bool = false;
final _haveArchRemainder : Bool = false;
final _haveArchSin : Bool = false;
final _haveArchSinh : Bool = false;
final _haveArchTan : Bool = false;
final _haveArchTanh : Bool = false;
final _reduceThreshold : stdgo.GoUInt64 = (536870912i64 : stdgo.GoUInt64);
var __gamP : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(7, 7, ...[(0.00016011952247675185 : stdgo.GoFloat64), (0.0011913514700658638 : stdgo.GoFloat64), (0.010421379756176158 : stdgo.GoFloat64), (0.04763678004571372 : stdgo.GoFloat64), (0.20744822764843598 : stdgo.GoFloat64), (0.4942148268014971 : stdgo.GoFloat64), (1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var __gamQ : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(8, 8, ...[(-2.3158187332412014e-05 : stdgo.GoFloat64), (0.0005396055804933034 : stdgo.GoFloat64), (-0.004456419138517973 : stdgo.GoFloat64), (0.011813978522206043 : stdgo.GoFloat64), (0.035823639860549865 : stdgo.GoFloat64), (-0.23459179571824335 : stdgo.GoFloat64), (0.0714304917030273 : stdgo.GoFloat64), (1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var __gamS : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(5, 5, ...[(0.0007873113957930937 : stdgo.GoFloat64), (-0.00022954996161337813 : stdgo.GoFloat64), (-0.0026813261780578124 : stdgo.GoFloat64), (0.0034722222160545866 : stdgo.GoFloat64), (0.08333333333334822 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p0R8 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(0 : stdgo.GoFloat64), (-0.07031249999999004 : stdgo.GoFloat64), (-8.081670412753498 : stdgo.GoFloat64), (-257.06310567970485 : stdgo.GoFloat64), (-2485.216410094288 : stdgo.GoFloat64), (-5253.043804907295 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p0S8 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(5, 5, ...[(116.53436461966818 : stdgo.GoFloat64), (3833.7447536412183 : stdgo.GoFloat64), (40597.857264847255 : stdgo.GoFloat64), (116752.97256437592 : stdgo.GoFloat64), (47627.728414673096 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p0R5 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(-1.141254646918945e-11 : stdgo.GoFloat64), (-0.07031249408735993 : stdgo.GoFloat64), (-4.159610644705878 : stdgo.GoFloat64), (-67.67476522651673 : stdgo.GoFloat64), (-331.23129964917297 : stdgo.GoFloat64), (-346.4333883656049 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p0S5 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(5, 5, ...[(60.753938269230034 : stdgo.GoFloat64), (1051.2523059570458 : stdgo.GoFloat64), (5978.970943338558 : stdgo.GoFloat64), (9625.445143577745 : stdgo.GoFloat64), (2406.058159229391 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p0R3 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(-2.547046017719519e-09 : stdgo.GoFloat64), (-0.07031196163814817 : stdgo.GoFloat64), (-2.409032215495296 : stdgo.GoFloat64), (-21.96597747348831 : stdgo.GoFloat64), (-58.07917047017376 : stdgo.GoFloat64), (-31.44794705948885 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p0S3 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(5, 5, ...[(35.85603380552097 : stdgo.GoFloat64), (361.51398305030386 : stdgo.GoFloat64), (1193.6078379211153 : stdgo.GoFloat64), (1127.9967985690741 : stdgo.GoFloat64), (173.58093081333575 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p0R2 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(-8.875343330325264e-08 : stdgo.GoFloat64), (-0.07030309954836247 : stdgo.GoFloat64), (-1.4507384678095299 : stdgo.GoFloat64), (-7.635696138235278 : stdgo.GoFloat64), (-11.193166886035675 : stdgo.GoFloat64), (-3.2336457935133534 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p0S2 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(5, 5, ...[(22.22029975320888 : stdgo.GoFloat64), (136.2067942182152 : stdgo.GoFloat64), (270.4702786580835 : stdgo.GoFloat64), (153.87539420832033 : stdgo.GoFloat64), (14.65761769482562 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q0R8 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(0 : stdgo.GoFloat64), (0.0732421874999935 : stdgo.GoFloat64), (11.76820646822527 : stdgo.GoFloat64), (557.6733802564019 : stdgo.GoFloat64), (8859.197207564686 : stdgo.GoFloat64), (37014.62677768878 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q0S8 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(163.77602689568982 : stdgo.GoFloat64), (8098.344946564498 : stdgo.GoFloat64), (142538.29141912048 : stdgo.GoFloat64), (803309.2571195144 : stdgo.GoFloat64), (840501.5798190605 : stdgo.GoFloat64), (-343899.2935378666 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q0R5 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(1.8408596359451553e-11 : stdgo.GoFloat64), (0.07324217666126848 : stdgo.GoFloat64), (5.8356350896205695 : stdgo.GoFloat64), (135.11157728644983 : stdgo.GoFloat64), (1027.243765961641 : stdgo.GoFloat64), (1989.9778586460538 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q0S5 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(82.77661022365378 : stdgo.GoFloat64), (2077.81416421393 : stdgo.GoFloat64), (18847.28877857181 : stdgo.GoFloat64), (56751.11228949473 : stdgo.GoFloat64), (35976.75384251145 : stdgo.GoFloat64), (-5354.342756019448 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q0R3 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(4.377410140897386e-09 : stdgo.GoFloat64), (0.07324111800429114 : stdgo.GoFloat64), (3.344231375161707 : stdgo.GoFloat64), (42.621844074541265 : stdgo.GoFloat64), (170.8080913405656 : stdgo.GoFloat64), (166.73394869665117 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q0S3 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(48.75887297245872 : stdgo.GoFloat64), (709.689221056606 : stdgo.GoFloat64), (3704.1482262011136 : stdgo.GoFloat64), (6460.425167525689 : stdgo.GoFloat64), (2516.3336892036896 : stdgo.GoFloat64), (-149.2474518361564 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q0R2 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(1.5044444488698327e-07 : stdgo.GoFloat64), (0.07322342659630793 : stdgo.GoFloat64), (1.99819174093816 : stdgo.GoFloat64), (14.495602934788574 : stdgo.GoFloat64), (31.666231750478154 : stdgo.GoFloat64), (16.252707571092927 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q0S2 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(30.36558483552192 : stdgo.GoFloat64), (269.34811860804984 : stdgo.GoFloat64), (844.7837575953201 : stdgo.GoFloat64), (882.9358451124886 : stdgo.GoFloat64), (212.66638851179883 : stdgo.GoFloat64), (-5.3109549388266695 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p1R8 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(0 : stdgo.GoFloat64), (0.11718749999998865 : stdgo.GoFloat64), (13.239480659307358 : stdgo.GoFloat64), (412.05185430737856 : stdgo.GoFloat64), (3874.7453891396053 : stdgo.GoFloat64), (7914.479540318917 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p1S8 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(5, 5, ...[(114.20737037567841 : stdgo.GoFloat64), (3650.9308342085346 : stdgo.GoFloat64), (36956.206026903346 : stdgo.GoFloat64), (97602.79359349508 : stdgo.GoFloat64), (30804.27206278888 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p1R5 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(1.3199051955624352e-11 : stdgo.GoFloat64), (0.1171874931906141 : stdgo.GoFloat64), (6.802751278684329 : stdgo.GoFloat64), (108.30818299018911 : stdgo.GoFloat64), (517.6361395331998 : stdgo.GoFloat64), (528.7152013633375 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p1S5 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(5, 5, ...[(59.28059872211313 : stdgo.GoFloat64), (991.4014187336144 : stdgo.GoFloat64), (5353.26695291488 : stdgo.GoFloat64), (7844.690317495512 : stdgo.GoFloat64), (1504.0468881036106 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p1R3 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(3.025039161373736e-09 : stdgo.GoFloat64), (0.11718686556725359 : stdgo.GoFloat64), (3.9329775003331564 : stdgo.GoFloat64), (35.11940355916369 : stdgo.GoFloat64), (91.05501107507813 : stdgo.GoFloat64), (48.55906851973649 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p1S3 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(5, 5, ...[(34.79130950012515 : stdgo.GoFloat64), (336.76245874782575 : stdgo.GoFloat64), (1046.8713997577513 : stdgo.GoFloat64), (890.8113463982564 : stdgo.GoFloat64), (103.78793243963928 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p1R2 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(1.0771083010687374e-07 : stdgo.GoFloat64), (0.11717621946268335 : stdgo.GoFloat64), (2.368514966676088 : stdgo.GoFloat64), (12.242610914826123 : stdgo.GoFloat64), (17.693971127168773 : stdgo.GoFloat64), (5.073523125888185 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _p1S2 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(5, 5, ...[(21.43648593638214 : stdgo.GoFloat64), (125.29022716840275 : stdgo.GoFloat64), (232.2764690571628 : stdgo.GoFloat64), (117.6793732871471 : stdgo.GoFloat64), (8.364638933716183 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q1R8 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(0 : stdgo.GoFloat64), (-0.10253906249999271 : stdgo.GoFloat64), (-16.271753454459 : stdgo.GoFloat64), (-759.6017225139501 : stdgo.GoFloat64), (-11849.806670242959 : stdgo.GoFloat64), (-48438.512428575035 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q1S8 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(161.3953697007229 : stdgo.GoFloat64), (7825.385999233485 : stdgo.GoFloat64), (133875.33628724958 : stdgo.GoFloat64), (719657.7236832409 : stdgo.GoFloat64), (666601.2326177764 : stdgo.GoFloat64), (-294490.26430383464 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q1R5 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(-2.089799311417641e-11 : stdgo.GoFloat64), (-0.10253905024137543 : stdgo.GoFloat64), (-8.05644828123936 : stdgo.GoFloat64), (-183.66960747488838 : stdgo.GoFloat64), (-1373.1937606550816 : stdgo.GoFloat64), (-2612.4444045321566 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q1S5 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(81.27655013843358 : stdgo.GoFloat64), (1991.7987346048596 : stdgo.GoFloat64), (17468.48519249089 : stdgo.GoFloat64), (49851.42709103523 : stdgo.GoFloat64), (27948.075163891812 : stdgo.GoFloat64), (-4719.183547951285 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q1R3 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(-5.078312264617666e-09 : stdgo.GoFloat64), (-0.10253782982083709 : stdgo.GoFloat64), (-4.610115811394734 : stdgo.GoFloat64), (-57.847221656278364 : stdgo.GoFloat64), (-228.2445407376317 : stdgo.GoFloat64), (-219.21012847890933 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q1S3 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(47.66515503237295 : stdgo.GoFloat64), (673.8651126766997 : stdgo.GoFloat64), (3380.1528667952634 : stdgo.GoFloat64), (5547.729097207228 : stdgo.GoFloat64), (1903.119193388108 : stdgo.GoFloat64), (-135.20119144430734 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q1R2 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(-1.7838172751095887e-07 : stdgo.GoFloat64), (-0.10251704260798555 : stdgo.GoFloat64), (-2.7522056827818746 : stdgo.GoFloat64), (-19.663616264370372 : stdgo.GoFloat64), (-42.32531333728305 : stdgo.GoFloat64), (-21.371921170370406 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _q1S2 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(29.533362906052385 : stdgo.GoFloat64), (252.98154998219053 : stdgo.GoFloat64), (757.5028348686454 : stdgo.GoFloat64), (739.3932053204672 : stdgo.GoFloat64), (155.94900333666612 : stdgo.GoFloat64), (-4.959498988226282 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var __lgamA : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(12, 12, ...[
(0.07721566490153287 : stdgo.GoFloat64),
(0.3224670334241136 : stdgo.GoFloat64),
(0.06735230105312927 : stdgo.GoFloat64),
(0.020580808432516733 : stdgo.GoFloat64),
(0.007385550860814029 : stdgo.GoFloat64),
(0.0028905138367341563 : stdgo.GoFloat64),
(0.0011927076318336207 : stdgo.GoFloat64),
(0.0005100697921535113 : stdgo.GoFloat64),
(0.00022086279071390839 : stdgo.GoFloat64),
(0.00010801156724758394 : stdgo.GoFloat64),
(2.5214456545125733e-05 : stdgo.GoFloat64),
(4.4864094961891516e-05 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var __lgamR : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(7, 7, ...[(1 : stdgo.GoFloat64), (1.3920053346762105 : stdgo.GoFloat64), (0.7219355475671381 : stdgo.GoFloat64), (0.17193386563280308 : stdgo.GoFloat64), (0.01864591917156529 : stdgo.GoFloat64), (0.0007779424963818936 : stdgo.GoFloat64), (7.326684307446256e-06 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var __lgamS : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(7, 7, ...[(-0.07721566490153287 : stdgo.GoFloat64), (0.21498241596060885 : stdgo.GoFloat64), (0.325778796408931 : stdgo.GoFloat64), (0.14635047265246445 : stdgo.GoFloat64), (0.02664227030336386 : stdgo.GoFloat64), (0.0018402845140733772 : stdgo.GoFloat64), (3.194753265841009e-05 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var __lgamT : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(15, 15, ...[
(0.48383612272381005 : stdgo.GoFloat64),
(-0.1475877229945939 : stdgo.GoFloat64),
(0.06462494023913339 : stdgo.GoFloat64),
(-0.032788541075985965 : stdgo.GoFloat64),
(0.01797067508118204 : stdgo.GoFloat64),
(-0.010314224129834144 : stdgo.GoFloat64),
(0.006100538702462913 : stdgo.GoFloat64),
(-0.0036845201678113826 : stdgo.GoFloat64),
(0.0022596478090061247 : stdgo.GoFloat64),
(-0.0014034646998923284 : stdgo.GoFloat64),
(0.000881081882437654 : stdgo.GoFloat64),
(-0.0005385953053567405 : stdgo.GoFloat64),
(0.00031563207090362595 : stdgo.GoFloat64),
(-0.00031275416837512086 : stdgo.GoFloat64),
(0.0003355291926355191 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var __lgamU : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(-0.07721566490153287 : stdgo.GoFloat64), (0.6328270640250934 : stdgo.GoFloat64), (1.4549225013723477 : stdgo.GoFloat64), (0.9777175279633727 : stdgo.GoFloat64), (0.22896372806469245 : stdgo.GoFloat64), (0.013381091853678766 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var __lgamV : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(1 : stdgo.GoFloat64), (2.4559779371304113 : stdgo.GoFloat64), (2.128489763798934 : stdgo.GoFloat64), (0.7692851504566728 : stdgo.GoFloat64), (0.10422264559336913 : stdgo.GoFloat64), (0.003217092422824239 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var __lgamW : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(7, 7, ...[(0.4189385332046727 : stdgo.GoFloat64), (0.08333333333333297 : stdgo.GoFloat64), (-0.0027777777772877554 : stdgo.GoFloat64), (0.0007936505586430196 : stdgo.GoFloat64), (-0.00059518755745034 : stdgo.GoFloat64), (0.0008363399189962821 : stdgo.GoFloat64), (-0.0016309293409657527 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _pow10tab : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(32, 32, ...[
(1 : stdgo.GoFloat64),
(10 : stdgo.GoFloat64),
(100 : stdgo.GoFloat64),
(1000 : stdgo.GoFloat64),
(10000 : stdgo.GoFloat64),
(100000 : stdgo.GoFloat64),
(1e+06 : stdgo.GoFloat64),
(1e+07 : stdgo.GoFloat64),
(1e+08 : stdgo.GoFloat64),
(1e+09 : stdgo.GoFloat64),
(1e+10 : stdgo.GoFloat64),
(1e+11 : stdgo.GoFloat64),
(1e+12 : stdgo.GoFloat64),
(1e+13 : stdgo.GoFloat64),
(1e+14 : stdgo.GoFloat64),
(1e+15 : stdgo.GoFloat64),
(1e+16 : stdgo.GoFloat64),
(1e+17 : stdgo.GoFloat64),
(1e+18 : stdgo.GoFloat64),
(1e+19 : stdgo.GoFloat64),
(1e+20 : stdgo.GoFloat64),
(1e+21 : stdgo.GoFloat64),
(1e+22 : stdgo.GoFloat64),
(1e+23 : stdgo.GoFloat64),
(1e+24 : stdgo.GoFloat64),
(1e+25 : stdgo.GoFloat64),
(1e+26 : stdgo.GoFloat64),
(1e+27 : stdgo.GoFloat64),
(1e+28 : stdgo.GoFloat64),
(1e+29 : stdgo.GoFloat64),
(1e+30 : stdgo.GoFloat64),
(1e+31 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _pow10postab32 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(10, 10, ...[(1 : stdgo.GoFloat64), (1e+32 : stdgo.GoFloat64), (1e+64 : stdgo.GoFloat64), (1e+96 : stdgo.GoFloat64), (1e+128 : stdgo.GoFloat64), (1e+160 : stdgo.GoFloat64), (1e+192 : stdgo.GoFloat64), (1e+224 : stdgo.GoFloat64), (1e+256 : stdgo.GoFloat64), (1e+288 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _pow10negtab32 : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(11, 11, ...[
(1 : stdgo.GoFloat64),
(1e-32 : stdgo.GoFloat64),
(1e-64 : stdgo.GoFloat64),
(1e-96 : stdgo.GoFloat64),
(1e-128 : stdgo.GoFloat64),
(1e-160 : stdgo.GoFloat64),
(1e-192 : stdgo.GoFloat64),
(1e-224 : stdgo.GoFloat64),
(1e-256 : stdgo.GoFloat64),
(1e-288 : stdgo.GoFloat64),
(1e-320 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var __sin : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(1.5896230157654656e-10 : stdgo.GoFloat64), (-2.5050747762857807e-08 : stdgo.GoFloat64), (2.7557313621385722e-06 : stdgo.GoFloat64), (-0.0001984126982958954 : stdgo.GoFloat64), (0.008333333333322118 : stdgo.GoFloat64), (-0.1666666666666663 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var __cos : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[(-1.1358536521387682e-11 : stdgo.GoFloat64), (2.087570084197473e-09 : stdgo.GoFloat64), (-2.755731417929674e-07 : stdgo.GoFloat64), (2.4801587288851704e-05 : stdgo.GoFloat64), (-0.0013888888888873056 : stdgo.GoFloat64), (0.041666666666666595 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var __tanP : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(3, 3, ...[(-13093.693918138379 : stdgo.GoFloat64), (1.1535166483858742e+06 : stdgo.GoFloat64), (-1.7956525197648488e+07 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var __tanQ : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(5, 5, ...[(1 : stdgo.GoFloat64), (13681.296347069296 : stdgo.GoFloat64), (-1.3208923444021097e+06 : stdgo.GoFloat64), (2.500838018233579e+07 : stdgo.GoFloat64), (-5.3869575592945464e+07 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _tanhP : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(3, 3, ...[(-0.9643991794250523 : stdgo.GoFloat64), (-99.28772310019185 : stdgo.GoFloat64), (-1614.6876844170845 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _tanhQ : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(3, 3, ...[(112.81167849163293 : stdgo.GoFloat64), (2235.4883906010045 : stdgo.GoFloat64), (4844.063053251255 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _mPi4 : stdgo.GoArray<stdgo.GoUInt64> = (new stdgo.GoArray<stdgo.GoUInt64>(20, 20, ...[
(1i64 : stdgo.GoUInt64),
(5040379952546458195i64 : stdgo.GoUInt64),
(-554312585572664447i64 : stdgo.GoUInt64),
(-5276763892624187261i64 : stdgo.GoUInt64),
(-242412250269775165i64 : stdgo.GoUInt64),
(7946843935494350272i64 : stdgo.GoUInt64),
(905889640498799673i64 : stdgo.GoUInt64),
(-271387810574676355i64 : stdgo.GoUInt64),
(-3385462365541201655i64 : stdgo.GoUInt64),
(-3226582509936509822i64 : stdgo.GoUInt64),
(8296664548579374057i64 : stdgo.GoUInt64),
(4109744767560208502i64 : stdgo.GoUInt64),
(4607516669194743839i64 : stdgo.GoUInt64),
(-2423460969061230018i64 : stdgo.GoUInt64),
(-2707510419574615186i64 : stdgo.GoUInt64),
(-7022098299024845734i64 : stdgo.GoUInt64),
(-1562901285013036298i64 : stdgo.GoUInt64),
(8795094592981902804i64 : stdgo.GoUInt64),
(-2884908082597807600i64 : stdgo.GoUInt64),
(-6051042886442100905i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>);
var expGo : stdgo.GoFloat64 -> stdgo.GoFloat64 = _exp;
var exp2Go : stdgo.GoFloat64 -> stdgo.GoFloat64 = _exp2;
var hypotGo : (stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64 = _hypot;
var sqrtGo : stdgo.GoFloat64 -> stdgo.GoFloat64 = _sqrt;
var trigReduce : stdgo.GoFloat64 -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; } = _trigReduce;
function abs(_x:stdgo.GoFloat64):stdgo.GoFloat64 return std.Math.abs(_x.toBasic());
function acosh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archAcosh(_x);
        };
        return _acosh(_x);
    }
function _acosh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (((_x < (1 : stdgo.GoFloat64) : Bool) || isNaN(_x) : Bool)) {
            return naN();
        } else if (_x == (1 : stdgo.GoFloat64)) {
            return (0 : stdgo.GoFloat64);
        } else if ((_x >= (2.68435456e+08 : stdgo.GoFloat64) : Bool)) {
            return (log(_x) + (0.6931471805599453 : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else if ((_x > (2 : stdgo.GoFloat64) : Bool)) {
            return log((((2 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) - ((1 : stdgo.GoFloat64) / ((_x + sqrt(((_x * _x : stdgo.GoFloat64) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64));
        };
        var _t = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
        return log1p((_t + sqrt((((2 : stdgo.GoFloat64) * _t : stdgo.GoFloat64) + (_t * _t : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64));
    }
function asin(_x:stdgo.GoFloat64):stdgo.GoFloat64 return std.Math.asin(_x.toBasic());
function _asin(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (_x == (0 : stdgo.GoFloat64)) {
            return _x;
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        if ((_x > (1 : stdgo.GoFloat64) : Bool)) {
            return naN();
        };
        var _temp = (sqrt(((1 : stdgo.GoFloat64) - (_x * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        if ((_x > (0.7 : stdgo.GoFloat64) : Bool)) {
            _temp = ((1.5707963267948966 : stdgo.GoFloat64) - _satan((_temp / _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        } else {
            _temp = _satan((_x / _temp : stdgo.GoFloat64));
        };
        if (_sign) {
            _temp = -_temp;
        };
        return _temp;
    }
function acos(_x:stdgo.GoFloat64):stdgo.GoFloat64 return std.Math.acos(_x.toBasic());
function _acos(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        return ((1.5707963267948966 : stdgo.GoFloat64) - asin(_x) : stdgo.GoFloat64);
    }
function asinh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archAsinh(_x);
        };
        return _asinh(_x);
    }
function _asinh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((isNaN(_x) || isInf(_x, (0 : stdgo.GoInt)) : Bool)) {
            return _x;
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        var _temp:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if ((_x > (2.68435456e+08 : stdgo.GoFloat64) : Bool)) {
            _temp = (log(_x) + (0.6931471805599453 : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else if ((_x > (2 : stdgo.GoFloat64) : Bool)) {
            _temp = log((((2 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) + ((1 : stdgo.GoFloat64) / ((sqrt(((_x * _x : stdgo.GoFloat64) + (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) + _x : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64));
        } else if ((_x < (3.725290298461914e-09 : stdgo.GoFloat64) : Bool)) {
            _temp = _x;
        } else {
            _temp = log1p((_x + ((_x * _x : stdgo.GoFloat64) / (((1 : stdgo.GoFloat64) + sqrt(((1 : stdgo.GoFloat64) + (_x * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64));
        };
        if (_sign) {
            _temp = -_temp;
        };
        return _temp;
    }
function _xatan(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        var _z = (_x * _x : stdgo.GoFloat64);
        _z = ((_z * (((((((((((((-0.8750608600031904 : stdgo.GoFloat64) * _z : stdgo.GoFloat64) + (-16.157537187333652 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _z : stdgo.GoFloat64) + (-75.00855792314705 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _z : stdgo.GoFloat64) + (-122.88666844901361 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _z : stdgo.GoFloat64) + (-64.85021904942025 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) / ((((((((((((((_z + (24.858464901423062 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _z : stdgo.GoFloat64) + (165.02700983169885 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _z : stdgo.GoFloat64) + (432.88106049129027 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _z : stdgo.GoFloat64) + (485.3903996359137 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _z : stdgo.GoFloat64) + (194.5506571482614 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        _z = ((_x * _z : stdgo.GoFloat64) + _x : stdgo.GoFloat64);
        return _z;
    }
function _satan(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((_x <= (0.66 : stdgo.GoFloat64) : Bool)) {
            return _xatan(_x);
        };
        if ((_x > (2.414213562373095 : stdgo.GoFloat64) : Bool)) {
            return (((1.5707963267948966 : stdgo.GoFloat64) - _xatan(((1 : stdgo.GoFloat64) / _x : stdgo.GoFloat64)) : stdgo.GoFloat64) + (6.123233995736766e-17 : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        return (((0.7853981633974483 : stdgo.GoFloat64) + _xatan((((_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) / ((_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64) + (3.061616997868383e-17 : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
function atan(_x:stdgo.GoFloat64):stdgo.GoFloat64 return std.Math.atan(_x.toBasic());
function _atan(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (_x == (0 : stdgo.GoFloat64)) {
            return _x;
        };
        if ((_x > (0 : stdgo.GoFloat64) : Bool)) {
            return _satan(_x);
        };
        return -_satan(-_x);
    }
function atan2(_y:stdgo.GoFloat64, _x:stdgo.GoFloat64):stdgo.GoFloat64 return std.Math.atan2(_y.toBasic(), _x.toBasic());
function _atan2(_y:stdgo.GoFloat64, _x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if ((isNaN(_y) || isNaN(_x) : Bool)) {
            return naN();
        } else if (_y == (0 : stdgo.GoFloat64)) {
            if (((_x >= (0 : stdgo.GoFloat64) : Bool) && !signbit(_x) : Bool)) {
                return copysign((0 : stdgo.GoFloat64), _y);
            };
            return copysign((3.141592653589793 : stdgo.GoFloat64), _y);
        } else if (_x == (0 : stdgo.GoFloat64)) {
            return copysign((1.5707963267948966 : stdgo.GoFloat64), _y);
        } else if (isInf(_x, (0 : stdgo.GoInt))) {
            if (isInf(_x, (1 : stdgo.GoInt))) {
                if (isInf(_y, (0 : stdgo.GoInt))) {
                    return copysign((0.7853981633974483 : stdgo.GoFloat64), _y);
                } else {
                    return copysign((0 : stdgo.GoFloat64), _y);
                };
            };
            if (isInf(_y, (0 : stdgo.GoInt))) {
                return copysign((2.356194490192345 : stdgo.GoFloat64), _y);
            } else {
                return copysign((3.141592653589793 : stdgo.GoFloat64), _y);
            };
        } else if (isInf(_y, (0 : stdgo.GoInt))) {
            return copysign((1.5707963267948966 : stdgo.GoFloat64), _y);
        };
        var _q = (atan((_y / _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            if ((_q <= (0 : stdgo.GoFloat64) : Bool)) {
                return (_q + (3.141592653589793 : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            return (_q - (3.141592653589793 : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        return _q;
    }
function atanh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archAtanh(_x);
        };
        return _atanh(_x);
    }
function _atanh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((((_x < (-1 : stdgo.GoFloat64) : Bool) || (_x > (1 : stdgo.GoFloat64) : Bool) : Bool) || isNaN(_x) : Bool)) {
            return naN();
        } else if (_x == (1 : stdgo.GoFloat64)) {
            return inf((1 : stdgo.GoInt));
        } else if (_x == (-1 : stdgo.GoFloat64)) {
            return inf((-1 : stdgo.GoInt));
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        var _temp:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if ((_x < (3.725290298461914e-09 : stdgo.GoFloat64) : Bool)) {
            _temp = _x;
        } else if ((_x < (0.5 : stdgo.GoFloat64) : Bool)) {
            _temp = (_x + _x : stdgo.GoFloat64);
            _temp = ((0.5 : stdgo.GoFloat64) * log1p((_temp + ((_temp * _x : stdgo.GoFloat64) / (((1 : stdgo.GoFloat64) - _x : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        } else {
            _temp = ((0.5 : stdgo.GoFloat64) * log1p((((_x + _x : stdgo.GoFloat64)) / (((1 : stdgo.GoFloat64) - _x : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        if (_sign) {
            _temp = -_temp;
        };
        return _temp;
    }
function inf(_sign:stdgo.GoInt):stdgo.GoFloat64 {
        if (_sign >= 0) return std.Math.POSITIVE_INFINITY;
        return std.Math.NEGATIVE_INFINITY;
    }
function naN():stdgo.GoFloat64 return std.Math.NaN;
function isNaN(_f:stdgo.GoFloat64):Bool return std.Math.isNaN(_f.toBasic());
function isInf(_f:stdgo.GoFloat64, _sign:stdgo.GoInt):Bool return _sign.toBasic() >= 0 && _f == std.Math.POSITIVE_INFINITY || _sign.toBasic() <= 0 && _f == std.Math.NEGATIVE_INFINITY;
function _normalize(_x:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } {
        var _y = (0 : stdgo.GoFloat64), _exp = (0 : stdgo.GoInt);
        {};
        if ((abs(_x) < (2.2250738585072014e-308 : stdgo.GoFloat64) : Bool)) {
            return { _0 : (_x * (4.503599627370496e+15 : stdgo.GoFloat64) : stdgo.GoFloat64), _1 : (-52 : stdgo.GoInt) };
        };
        return { _0 : _x, _1 : (0 : stdgo.GoInt) };
    }
function cbrt(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archCbrt(_x);
        };
        return _cbrt(_x);
    }
function _cbrt(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (((_x == (0 : stdgo.GoFloat64) || isNaN(_x) : Bool) || isInf(_x, (0 : stdgo.GoInt)) : Bool)) {
            return _x;
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        var _t = (float64frombits(((float64bits(_x) / (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (3071306043645493248i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoFloat64);
        if ((_x < (2.2250738585072014e-308 : stdgo.GoFloat64) : Bool)) {
            _t = (1.8014398509481984e+16 : stdgo.GoFloat64);
            _t = (_t * (_x) : stdgo.GoFloat64);
            _t = float64frombits(((float64bits(_t) / (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (2990241250352824320i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        };
        var _r = ((_t * _t : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
        var _s = ((0.5428571428571428 : stdgo.GoFloat64) + (_r * _t : stdgo.GoFloat64) : stdgo.GoFloat64);
        _t = (_t * (((0.35714285714285715 : stdgo.GoFloat64) + ((1.6071428571428572 : stdgo.GoFloat64) / (((_s + (1.4142857142857144 : stdgo.GoFloat64) : stdgo.GoFloat64) + ((-0.7053061224489796 : stdgo.GoFloat64) / _s : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        _t = float64frombits(((float64bits(_t) & (-1073741824i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (1073741824i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        _s = (_t * _t : stdgo.GoFloat64);
        _r = (_x / _s : stdgo.GoFloat64);
        var _w = (_t + _t : stdgo.GoFloat64);
        _r = (((_r - _t : stdgo.GoFloat64)) / ((_w + _r : stdgo.GoFloat64)) : stdgo.GoFloat64);
        _t = (_t + (_t * _r : stdgo.GoFloat64) : stdgo.GoFloat64);
        if (_sign) {
            _t = -_t;
        };
        return _t;
    }
function copysign(_f:stdgo.GoFloat64, _sign:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        return float64frombits(((float64bits(_f) & (((-9223372036854775808i64 : stdgo.GoUInt64) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64) | (float64bits(_sign) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64));
    }
function dim(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _v = (_x - _y : stdgo.GoFloat64);
        if ((_v <= (0 : stdgo.GoFloat64) : Bool)) {
            return (0 : stdgo.GoFloat64);
        };
        return _v;
    }
function max(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (_x > 0 && !std.Math.isFinite(_x.toBasic()) || _y > 0 && !std.Math.isFinite(_y.toBasic())) return inf(1);
        if (_x == 0.0 && !signbit(_x) && !isNaN(_y) || _y == 0.0 && !signbit(_y) && !isNaN(_x)) return 0.0;
        if (isNaN(_x) || isNaN(_y)) return naN();
        return std.Math.max(_x.toBasic(), _y.toBasic());
    }
function _max(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        if ((isInf(_x, (1 : stdgo.GoInt)) || isInf(_y, (1 : stdgo.GoInt)) : Bool)) {
            return inf((1 : stdgo.GoInt));
        } else if ((isNaN(_x) || isNaN(_y) : Bool)) {
            return naN();
        } else if (((_x == (0 : stdgo.GoFloat64)) && (_x == _y) : Bool)) {
            if (signbit(_x)) {
                return _y;
            };
            return _x;
        };
        if ((_x > _y : Bool)) {
            return _x;
        };
        return _y;
    }
function min(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (_x < 0 && !std.Math.isFinite(_x.toBasic()) || _y < 0 && !std.Math.isFinite(_y.toBasic())) return inf(-1);
        if (_x == 0.0 && signbit(_x) && !isNaN(_y) || _y == 0.0 && signbit(_y) && !isNaN(_x)) return negZero();
        if (isNaN(_x) || isNaN(_y)) return naN();
        return std.Math.min(_x.toBasic(), _y.toBasic());
    }
function _min(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        if ((isInf(_x, (-1 : stdgo.GoInt)) || isInf(_y, (-1 : stdgo.GoInt)) : Bool)) {
            return inf((-1 : stdgo.GoInt));
        } else if ((isNaN(_x) || isNaN(_y) : Bool)) {
            return naN();
        } else if (((_x == (0 : stdgo.GoFloat64)) && (_x == _y) : Bool)) {
            if (signbit(_x)) {
                return _x;
            };
            return _y;
        };
        if ((_x < _y : Bool)) {
            return _x;
        };
        return _y;
    }
function _archMax(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archMin(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function erf(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archErf(_x);
        };
        return _erf(_x);
    }
function _erf(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (isNaN(_x)) {
            return naN();
        } else if (isInf(_x, (1 : stdgo.GoInt))) {
            return (1 : stdgo.GoFloat64);
        } else if (isInf(_x, (-1 : stdgo.GoInt))) {
            return (-1 : stdgo.GoFloat64);
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        if ((_x < (0.84375 : stdgo.GoFloat64) : Bool)) {
            var _temp:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            if ((_x < (3.725290298461914e-09 : stdgo.GoFloat64) : Bool)) {
                if ((_x < (2.848094538889218e-306 : stdgo.GoFloat64) : Bool)) {
                    _temp = ((0.125 : stdgo.GoFloat64) * ((((8 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) + ((1.0270333367641007 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                } else {
                    _temp = (_x + ((0.1283791670955126 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64);
                };
            } else {
                var _z = (_x * _x : stdgo.GoFloat64);
                var _r = ((0.12837916709551256 : stdgo.GoFloat64) + (_z * (((-0.3250421072470015 : stdgo.GoFloat64) + (_z * (((-0.02848174957559851 : stdgo.GoFloat64) + (_z * (((-0.005770270296489442 : stdgo.GoFloat64) + (_z * (-2.3763016656650163e-05 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                var _s = ((1 : stdgo.GoFloat64) + (_z * (((0.39791722395915535 : stdgo.GoFloat64) + (_z * (((0.0650222499887673 : stdgo.GoFloat64) + (_z * (((0.005081306281875766 : stdgo.GoFloat64) + (_z * (((0.00013249473800432164 : stdgo.GoFloat64) + (_z * (-3.960228278775368e-06 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                var _y = (_r / _s : stdgo.GoFloat64);
                _temp = (_x + (_x * _y : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            if (_sign) {
                return -_temp;
            };
            return _temp;
        };
        if ((_x < (1.25 : stdgo.GoFloat64) : Bool)) {
            var _s = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
            var p = ((-0.0023621185607526594 : stdgo.GoFloat64) + (_s * (((0.41485611868374833 : stdgo.GoFloat64) + (_s * (((-0.3722078760357013 : stdgo.GoFloat64) + (_s * (((0.31834661990116175 : stdgo.GoFloat64) + (_s * (((-0.11089469428239668 : stdgo.GoFloat64) + (_s * (((0.035478304325618236 : stdgo.GoFloat64) + (_s * (-0.002166375594868791 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
            var q = ((1 : stdgo.GoFloat64) + (_s * (((0.10642088040084423 : stdgo.GoFloat64) + (_s * (((0.540397917702171 : stdgo.GoFloat64) + (_s * (((0.07182865441419627 : stdgo.GoFloat64) + (_s * (((0.12617121980876164 : stdgo.GoFloat64) + (_s * (((0.01363708391202905 : stdgo.GoFloat64) + (_s * (0.011984499846799107 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
            if (_sign) {
                return ((-0.8450629115104675 : stdgo.GoFloat64) - (p / q : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            return ((0.8450629115104675 : stdgo.GoFloat64) + (p / q : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        if ((_x >= (6 : stdgo.GoFloat64) : Bool)) {
            if (_sign) {
                return (-1 : stdgo.GoFloat64);
            };
            return (1 : stdgo.GoFloat64);
        };
        var _s = ((1 : stdgo.GoFloat64) / ((_x * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var __0:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var s = __1, r = __0;
        if ((_x < (2.857142857142857 : stdgo.GoFloat64) : Bool)) {
            r = ((-0.009864944034847148 : stdgo.GoFloat64) + (_s * (((-0.6938585727071818 : stdgo.GoFloat64) + (_s * (((-10.558626225323291 : stdgo.GoFloat64) + (_s * (((-62.375332450326006 : stdgo.GoFloat64) + (_s * (((-162.39666946257347 : stdgo.GoFloat64) + (_s * (((-184.60509290671104 : stdgo.GoFloat64) + (_s * (((-81.2874355063066 : stdgo.GoFloat64) + (_s * (-9.814329344169145 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
            s = ((1 : stdgo.GoFloat64) + (_s * (((19.651271667439257 : stdgo.GoFloat64) + (_s * (((137.65775414351904 : stdgo.GoFloat64) + (_s * (((434.56587747522923 : stdgo.GoFloat64) + (_s * (((645.3872717332679 : stdgo.GoFloat64) + (_s * (((429.00814002756783 : stdgo.GoFloat64) + (_s * (((108.63500554177944 : stdgo.GoFloat64) + (_s * (((6.570249770319282 : stdgo.GoFloat64) + (_s * (-0.0604244152148581 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else {
            r = ((-0.0098649429247001 : stdgo.GoFloat64) + (_s * (((-0.799283237680523 : stdgo.GoFloat64) + (_s * (((-17.757954917754752 : stdgo.GoFloat64) + (_s * (((-160.63638485582192 : stdgo.GoFloat64) + (_s * (((-637.5664433683896 : stdgo.GoFloat64) + (_s * (((-1025.0951316110772 : stdgo.GoFloat64) + (_s * (-483.5191916086514 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
            s = ((1 : stdgo.GoFloat64) + (_s * (((30.33806074348246 : stdgo.GoFloat64) + (_s * (((325.7925129965739 : stdgo.GoFloat64) + (_s * (((1536.729586084437 : stdgo.GoFloat64) + (_s * (((3199.8582195085955 : stdgo.GoFloat64) + (_s * (((2553.0504064331644 : stdgo.GoFloat64) + (_s * (((474.52854120695537 : stdgo.GoFloat64) + (_s * (-22.44095244658582 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        var _z = (float64frombits((float64bits(_x) & (-4294967296i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoFloat64);
        var _r = (exp(((-_z * _z : stdgo.GoFloat64) - (0.5625 : stdgo.GoFloat64) : stdgo.GoFloat64)) * exp(((((_z - _x : stdgo.GoFloat64)) * ((_z + _x : stdgo.GoFloat64)) : stdgo.GoFloat64) + (r / s : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        if (_sign) {
            return ((_r / _x : stdgo.GoFloat64) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        return ((1 : stdgo.GoFloat64) - (_r / _x : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
function erfc(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archErfc(_x);
        };
        return _erfc(_x);
    }
function _erfc(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (isNaN(_x)) {
            return naN();
        } else if (isInf(_x, (1 : stdgo.GoInt))) {
            return (0 : stdgo.GoFloat64);
        } else if (isInf(_x, (-1 : stdgo.GoInt))) {
            return (2 : stdgo.GoFloat64);
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        if ((_x < (0.84375 : stdgo.GoFloat64) : Bool)) {
            var _temp:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            if ((_x < (1.3877787807814457e-17 : stdgo.GoFloat64) : Bool)) {
                _temp = _x;
            } else {
                var _z = (_x * _x : stdgo.GoFloat64);
                var _r = ((0.12837916709551256 : stdgo.GoFloat64) + (_z * (((-0.3250421072470015 : stdgo.GoFloat64) + (_z * (((-0.02848174957559851 : stdgo.GoFloat64) + (_z * (((-0.005770270296489442 : stdgo.GoFloat64) + (_z * (-2.3763016656650163e-05 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                var _s = ((1 : stdgo.GoFloat64) + (_z * (((0.39791722395915535 : stdgo.GoFloat64) + (_z * (((0.0650222499887673 : stdgo.GoFloat64) + (_z * (((0.005081306281875766 : stdgo.GoFloat64) + (_z * (((0.00013249473800432164 : stdgo.GoFloat64) + (_z * (-3.960228278775368e-06 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                var _y = (_r / _s : stdgo.GoFloat64);
                if ((_x < (0.25 : stdgo.GoFloat64) : Bool)) {
                    _temp = (_x + (_x * _y : stdgo.GoFloat64) : stdgo.GoFloat64);
                } else {
                    _temp = ((0.5 : stdgo.GoFloat64) + (((_x * _y : stdgo.GoFloat64) + ((_x - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                };
            };
            if (_sign) {
                return ((1 : stdgo.GoFloat64) + _temp : stdgo.GoFloat64);
            };
            return ((1 : stdgo.GoFloat64) - _temp : stdgo.GoFloat64);
        };
        if ((_x < (1.25 : stdgo.GoFloat64) : Bool)) {
            var _s = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
            var p = ((-0.0023621185607526594 : stdgo.GoFloat64) + (_s * (((0.41485611868374833 : stdgo.GoFloat64) + (_s * (((-0.3722078760357013 : stdgo.GoFloat64) + (_s * (((0.31834661990116175 : stdgo.GoFloat64) + (_s * (((-0.11089469428239668 : stdgo.GoFloat64) + (_s * (((0.035478304325618236 : stdgo.GoFloat64) + (_s * (-0.002166375594868791 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
            var q = ((1 : stdgo.GoFloat64) + (_s * (((0.10642088040084423 : stdgo.GoFloat64) + (_s * (((0.540397917702171 : stdgo.GoFloat64) + (_s * (((0.07182865441419627 : stdgo.GoFloat64) + (_s * (((0.12617121980876164 : stdgo.GoFloat64) + (_s * (((0.01363708391202905 : stdgo.GoFloat64) + (_s * (0.011984499846799107 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
            if (_sign) {
                return ((1.8450629115104675 : stdgo.GoFloat64) + (p / q : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            return ((0.15493708848953247 : stdgo.GoFloat64) - (p / q : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        if ((_x < (28 : stdgo.GoFloat64) : Bool)) {
            var _s = ((1 : stdgo.GoFloat64) / ((_x * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
            var __0:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var s = __1, r = __0;
            if ((_x < (2.857142857142857 : stdgo.GoFloat64) : Bool)) {
                r = ((-0.009864944034847148 : stdgo.GoFloat64) + (_s * (((-0.6938585727071818 : stdgo.GoFloat64) + (_s * (((-10.558626225323291 : stdgo.GoFloat64) + (_s * (((-62.375332450326006 : stdgo.GoFloat64) + (_s * (((-162.39666946257347 : stdgo.GoFloat64) + (_s * (((-184.60509290671104 : stdgo.GoFloat64) + (_s * (((-81.2874355063066 : stdgo.GoFloat64) + (_s * (-9.814329344169145 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                s = ((1 : stdgo.GoFloat64) + (_s * (((19.651271667439257 : stdgo.GoFloat64) + (_s * (((137.65775414351904 : stdgo.GoFloat64) + (_s * (((434.56587747522923 : stdgo.GoFloat64) + (_s * (((645.3872717332679 : stdgo.GoFloat64) + (_s * (((429.00814002756783 : stdgo.GoFloat64) + (_s * (((108.63500554177944 : stdgo.GoFloat64) + (_s * (((6.570249770319282 : stdgo.GoFloat64) + (_s * (-0.0604244152148581 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
            } else {
                if ((_sign && (_x > (6 : stdgo.GoFloat64) : Bool) : Bool)) {
                    return (2 : stdgo.GoFloat64);
                };
                r = ((-0.0098649429247001 : stdgo.GoFloat64) + (_s * (((-0.799283237680523 : stdgo.GoFloat64) + (_s * (((-17.757954917754752 : stdgo.GoFloat64) + (_s * (((-160.63638485582192 : stdgo.GoFloat64) + (_s * (((-637.5664433683896 : stdgo.GoFloat64) + (_s * (((-1025.0951316110772 : stdgo.GoFloat64) + (_s * (-483.5191916086514 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                s = ((1 : stdgo.GoFloat64) + (_s * (((30.33806074348246 : stdgo.GoFloat64) + (_s * (((325.7925129965739 : stdgo.GoFloat64) + (_s * (((1536.729586084437 : stdgo.GoFloat64) + (_s * (((3199.8582195085955 : stdgo.GoFloat64) + (_s * (((2553.0504064331644 : stdgo.GoFloat64) + (_s * (((474.52854120695537 : stdgo.GoFloat64) + (_s * (-22.44095244658582 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            var _z = (float64frombits((float64bits(_x) & (-4294967296i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoFloat64);
            var _r = (exp(((-_z * _z : stdgo.GoFloat64) - (0.5625 : stdgo.GoFloat64) : stdgo.GoFloat64)) * exp(((((_z - _x : stdgo.GoFloat64)) * ((_z + _x : stdgo.GoFloat64)) : stdgo.GoFloat64) + (r / s : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
            if (_sign) {
                return ((2 : stdgo.GoFloat64) - (_r / _x : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            return (_r / _x : stdgo.GoFloat64);
        };
        if (_sign) {
            return (2 : stdgo.GoFloat64);
        };
        return (0 : stdgo.GoFloat64);
    }
function erfinv(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (((isNaN(_x) || (_x <= (-1 : stdgo.GoFloat64) : Bool) : Bool) || (_x >= (1 : stdgo.GoFloat64) : Bool) : Bool)) {
            if (((_x == (-1 : stdgo.GoFloat64)) || (_x == (1 : stdgo.GoFloat64)) : Bool)) {
                return inf((_x : stdgo.GoInt));
            };
            return naN();
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        var _ans:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if ((_x <= (0.85 : stdgo.GoFloat64) : Bool)) {
            var _r = ((0.180625 : stdgo.GoFloat64) - (((0.25 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64);
            var _z1 = (((((((((((((((((((((887.0940696254552 : stdgo.GoFloat64) * _r : stdgo.GoFloat64) + (11819.493347062295 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (23782.041382114385 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (16235.862515167575 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (4854.886889384388 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (697.062665343896 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (47.07268811238398 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (1.1975323115670913 : stdgo.GoFloat64) : stdgo.GoFloat64);
            var _z2 = (((((((((((((((((((((5226.495278852854 : stdgo.GoFloat64) * _r : stdgo.GoFloat64) + (28729.085735721943 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (39307.89580009271 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (21213.794301586597 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (5394.196021424751 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (687.1870074920579 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (42.31333070160091 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
            _ans = (((_x * _z1 : stdgo.GoFloat64)) / _z2 : stdgo.GoFloat64);
        } else {
            var __0:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var _z2 = __1, _z1 = __0;
            var _r = (sqrt(((0.6931471805599453 : stdgo.GoFloat64) - log(((1 : stdgo.GoFloat64) - _x : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
            if ((_r <= (5 : stdgo.GoFloat64) : Bool)) {
                _r = (_r - (1.6 : stdgo.GoFloat64) : stdgo.GoFloat64);
                _z1 = (((((((((((((((((((((0.0007745450142783414 : stdgo.GoFloat64) * _r : stdgo.GoFloat64) + (0.022723844989269184 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.2417807251774506 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (1.2704582524523684 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (3.6478483247632045 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (5.769497221460691 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (4.630337846156546 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (1.4234371107496835 : stdgo.GoFloat64) : stdgo.GoFloat64);
                _z2 = (((((((((((((((((((((1.4859850019840355e-09 : stdgo.GoFloat64) * _r : stdgo.GoFloat64) + (0.0007744145906515771 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.021494160384252878 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.2094506521051275 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.9754783200178743 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (2.3707661626024534 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (2.9036514445419948 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (1.4142135623730951 : stdgo.GoFloat64) : stdgo.GoFloat64);
            } else {
                _r = (_r - (5 : stdgo.GoFloat64) : stdgo.GoFloat64);
                _z1 = (((((((((((((((((((((2.0103343992922881e-07 : stdgo.GoFloat64) * _r : stdgo.GoFloat64) + (2.7115555687434876e-05 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.0012426609473880784 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.026532189526576124 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.29656057182850487 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (1.7848265399172913 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (5.463784911164114 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (6.657904643501103 : stdgo.GoFloat64) : stdgo.GoFloat64);
                _z2 = (((((((((((((((((((((2.8910246058729655e-15 : stdgo.GoFloat64) * _r : stdgo.GoFloat64) + (2.010321207683943e-07 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (2.6110884050805935e-05 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.0011128009970788597 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.02103693768272069 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.19364809469506591 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (0.8482908416595164 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _r : stdgo.GoFloat64) + (1.4142135623730951 : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            _ans = (_z1 / _z2 : stdgo.GoFloat64);
        };
        if (_sign) {
            return -_ans;
        };
        return _ans;
    }
function erfcinv(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        return erfinv(((1 : stdgo.GoFloat64) - _x : stdgo.GoFloat64));
    }
function exp(_x:stdgo.GoFloat64):stdgo.GoFloat64 return std.Math.exp(_x.toBasic());
function _exp(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((isNaN(_x) || isInf(_x, (1 : stdgo.GoInt)) : Bool)) {
            return _x;
        } else if (isInf(_x, (-1 : stdgo.GoInt))) {
            return (0 : stdgo.GoFloat64);
        } else if ((_x > (709.782712893384 : stdgo.GoFloat64) : Bool)) {
            return inf((1 : stdgo.GoInt));
        } else if ((_x < (-745.1332191019411 : stdgo.GoFloat64) : Bool)) {
            return (0 : stdgo.GoFloat64);
        } else if ((((-3.725290298461914e-09 : stdgo.GoFloat64) < _x : Bool) && (_x < (3.725290298461914e-09 : stdgo.GoFloat64) : Bool) : Bool)) {
            return ((1 : stdgo.GoFloat64) + _x : stdgo.GoFloat64);
        };
        var _k:stdgo.GoInt = (0 : stdgo.GoInt);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _k = ((((1.4426950408889634 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
        } else if ((_x > (0 : stdgo.GoFloat64) : Bool)) {
            _k = ((((1.4426950408889634 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
        };
        var _hi = (_x - ((_k : stdgo.GoFloat64) * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _lo = ((_k : stdgo.GoFloat64) * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64);
        return _expmulti(_hi, _lo, _k);
    }
function exp2(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archExp2(_x);
        };
        return _exp2(_x);
    }
function _exp2(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((isNaN(_x) || isInf(_x, (1 : stdgo.GoInt)) : Bool)) {
            return _x;
        } else if (isInf(_x, (-1 : stdgo.GoInt))) {
            return (0 : stdgo.GoFloat64);
        } else if ((_x > (1023.9999999999999 : stdgo.GoFloat64) : Bool)) {
            return inf((1 : stdgo.GoInt));
        } else if ((_x < (-1074 : stdgo.GoFloat64) : Bool)) {
            return (0 : stdgo.GoFloat64);
        };
        var _k:stdgo.GoInt = (0 : stdgo.GoInt);
        if ((_x > (0 : stdgo.GoFloat64) : Bool)) {
            _k = ((_x + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
        } else if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _k = ((_x - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
        };
        var _t = (_x - (_k : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _hi = (_t * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _lo = (-_t * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64);
        return _expmulti(_hi, _lo, _k);
    }
function _expmulti(_hi:stdgo.GoFloat64, _lo:stdgo.GoFloat64, _k:stdgo.GoInt):stdgo.GoFloat64 {
        {};
        var _r = (_hi - _lo : stdgo.GoFloat64);
        var _t = (_r * _r : stdgo.GoFloat64);
        var _c = (_r - (_t * (((0.16666666666666666 : stdgo.GoFloat64) + (_t * (((-0.0027777777777015593 : stdgo.GoFloat64) + (_t * (((6.613756321437934e-05 : stdgo.GoFloat64) + (_t * (((-1.6533902205465252e-06 : stdgo.GoFloat64) + (_t * (4.1381367970572385e-08 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _y = ((1 : stdgo.GoFloat64) - ((((_lo - (((_r * _c : stdgo.GoFloat64)) / (((2 : stdgo.GoFloat64) - _c : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) - _hi : stdgo.GoFloat64)) : stdgo.GoFloat64);
        return ldexp(_y, _k);
    }
function _archExp2(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archExp(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function expm1(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archExpm1(_x);
        };
        return _expm1(_x);
    }
function _expm1(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((isInf(_x, (1 : stdgo.GoInt)) || isNaN(_x) : Bool)) {
            return _x;
        } else if (isInf(_x, (-1 : stdgo.GoInt))) {
            return (-1 : stdgo.GoFloat64);
        };
        var _absx = (_x : stdgo.GoFloat64);
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _absx = -_absx;
            _sign = true;
        };
        if ((_absx >= (38.816242111356935 : stdgo.GoFloat64) : Bool)) {
            if (_sign) {
                return (-1 : stdgo.GoFloat64);
            };
            if ((_absx >= (709.782712893384 : stdgo.GoFloat64) : Bool)) {
                return inf((1 : stdgo.GoInt));
            };
        };
        var _c:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _k:stdgo.GoInt = (0 : stdgo.GoInt);
        if ((_absx > (0.34657359027997264 : stdgo.GoFloat64) : Bool)) {
            var __0:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var _lo = __1, _hi = __0;
            if ((_absx < (1.0397207708399179 : stdgo.GoFloat64) : Bool)) {
                if (!_sign) {
                    _hi = (_x - (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _lo = (1.9082149292705877e-10 : stdgo.GoFloat64);
                    _k = (1 : stdgo.GoInt);
                } else {
                    _hi = (_x + (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _lo = (-1.9082149292705877e-10 : stdgo.GoFloat64);
                    _k = (-1 : stdgo.GoInt);
                };
            } else {
                if (!_sign) {
                    _k = ((((1.4426950408889634 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
                } else {
                    _k = ((((1.4426950408889634 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
                };
                var _t = (_k : stdgo.GoFloat64);
                _hi = (_x - (_t * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
                _lo = (_t * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            _x = (_hi - _lo : stdgo.GoFloat64);
            _c = (((_hi - _x : stdgo.GoFloat64)) - _lo : stdgo.GoFloat64);
        } else if ((_absx < (5.551115123125783e-17 : stdgo.GoFloat64) : Bool)) {
            return _x;
        } else {
            _k = (0 : stdgo.GoInt);
        };
        var _hfx = ((0.5 : stdgo.GoFloat64) * _x : stdgo.GoFloat64);
        var _hxs = (_x * _hfx : stdgo.GoFloat64);
        var _r1 = ((1 : stdgo.GoFloat64) + (_hxs * (((-0.03333333333333313 : stdgo.GoFloat64) + (_hxs * (((0.0015873015872548146 : stdgo.GoFloat64) + (_hxs * (((-7.93650757867488e-05 : stdgo.GoFloat64) + (_hxs * (((4.008217827329362e-06 : stdgo.GoFloat64) + (_hxs * (-2.0109921818362437e-07 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _t = ((3 : stdgo.GoFloat64) - (_r1 * _hfx : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _e = (_hxs * ((((_r1 - _t : stdgo.GoFloat64)) / (((6 : stdgo.GoFloat64) - (_x * _t : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        if (_k == ((0 : stdgo.GoInt))) {
            return (_x - (((_x * _e : stdgo.GoFloat64) - _hxs : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        _e = (((_x * ((_e - _c : stdgo.GoFloat64)) : stdgo.GoFloat64) - _c : stdgo.GoFloat64));
        _e = (_e - (_hxs) : stdgo.GoFloat64);
        if (_k == ((-1 : stdgo.GoInt))) {
            return (((0.5 : stdgo.GoFloat64) * ((_x - _e : stdgo.GoFloat64)) : stdgo.GoFloat64) - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else if (_k == ((1 : stdgo.GoInt))) {
            if ((_x < (-0.25 : stdgo.GoFloat64) : Bool)) {
                return ((-2 : stdgo.GoFloat64) * ((_e - ((_x + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
            };
            return ((1 : stdgo.GoFloat64) + ((2 : stdgo.GoFloat64) * ((_x - _e : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else if (((_k <= (-2 : stdgo.GoInt) : Bool) || (_k > (56 : stdgo.GoInt) : Bool) : Bool)) {
            var _y = ((1 : stdgo.GoFloat64) - ((_e - _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
            _y = float64frombits((float64bits(_y) + ((_k : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64));
            return (_y - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        if ((_k < (20 : stdgo.GoInt) : Bool)) {
            var _t = (float64frombits(((4607182418800017408i64 : stdgo.GoUInt64) - (((9007199254740992i64 : stdgo.GoUInt64) >> (_k : stdgo.GoUInt) : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoFloat64);
            var _y = (_t - ((_e - _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
            _y = float64frombits((float64bits(_y) + ((_k : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64));
            return _y;
        };
        _t = float64frombits(((((1023 : stdgo.GoInt) - _k : stdgo.GoInt) : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        var _y = (_x - ((_e + _t : stdgo.GoFloat64)) : stdgo.GoFloat64);
        _y++;
        _y = float64frombits((float64bits(_y) + ((_k : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64));
        return _y;
    }
function floor(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (!std.Math.isFinite(_x.toBasic()) || std.Math.isNaN(_x.toBasic())) return _x;
        return std.Math.ffloor(_x.toBasic());
    }
function _floor(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (((_x == (0 : stdgo.GoFloat64) || isNaN(_x) : Bool) || isInf(_x, (0 : stdgo.GoInt)) : Bool)) {
            return _x;
        };
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            var __tmp__ = modf(-_x), _d:stdgo.GoFloat64 = __tmp__._0, _fract:stdgo.GoFloat64 = __tmp__._1;
            if (_fract != (0 : stdgo.GoFloat64)) {
                _d = (_d + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            return -_d;
        };
        var __tmp__ = modf(_x), _d:stdgo.GoFloat64 = __tmp__._0, __0:stdgo.GoFloat64 = __tmp__._1;
        return _d;
    }
function ceil(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (!std.Math.isFinite(_x.toBasic()) || std.Math.isNaN(_x.toBasic())) return _x;
        if (_x == 0.0 && signbit(_x)) return negZero();
        if (_x > -1.0 && _x < 0.0) {
            return negZero();
        };
        return std.Math.ceil(_x.toBasic());
    }
function _ceil(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        return -floor(-_x);
    }
function trunc(_x:stdgo.GoFloat64):stdgo.GoFloat64 return _x > 0 ? floor(_x) : ceil(_x);
function _trunc(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (((_x == (0 : stdgo.GoFloat64) || isNaN(_x) : Bool) || isInf(_x, (0 : stdgo.GoInt)) : Bool)) {
            return _x;
        };
        var __tmp__ = modf(_x), _d:stdgo.GoFloat64 = __tmp__._0, __0:stdgo.GoFloat64 = __tmp__._1;
        return _d;
    }
function round(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _bits = (float64bits(_x) : stdgo.GoUInt64);
        var _e = (((_bits >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt) & (2047u32 : stdgo.GoUInt) : stdgo.GoUInt);
        if ((_e < (1023u32 : stdgo.GoUInt) : Bool)) {
            _bits = (_bits & ((-9223372036854775808i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            if (_e == ((1022u32 : stdgo.GoUInt))) {
                _bits = (_bits | ((4607182418800017408i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
        } else if ((_e < (1075u32 : stdgo.GoUInt) : Bool)) {
            {};
            _e = (_e - ((1023u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            _bits = (_bits + (((2251799813685248i64 : stdgo.GoUInt64) >> _e : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _bits = (_bits & (((((4503599627370495i64 : stdgo.GoUInt64) >> _e : stdgo.GoUInt64)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        return float64frombits(_bits);
    }
function roundToEven(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _bits = (float64bits(_x) : stdgo.GoUInt64);
        var _e = (((_bits >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt) & (2047u32 : stdgo.GoUInt) : stdgo.GoUInt);
        if ((_e >= (1023u32 : stdgo.GoUInt) : Bool)) {
            {};
            _e = (_e - ((1023u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            _bits = (_bits + (((((2251799813685247i64 : stdgo.GoUInt64) + (((_bits >> (((52u32 : stdgo.GoUInt) - _e : stdgo.GoUInt)) : stdgo.GoUInt64)) & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64)) >> _e : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _bits = (_bits & (((((4503599627370495i64 : stdgo.GoUInt64) >> _e : stdgo.GoUInt64)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        } else if (((_e == (1022u32 : stdgo.GoUInt)) && ((_bits & (4503599627370495i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != (0i64 : stdgo.GoUInt64)) : Bool)) {
            _bits = ((_bits & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (4607182418800017408i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        } else {
            _bits = (_bits & ((-9223372036854775808i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        return float64frombits(_bits);
    }
inline function _archFloor(_x:stdgo.GoFloat64):stdgo.GoFloat64 return floor(_x);
inline function _archCeil(_x:stdgo.GoFloat64):stdgo.GoFloat64 return ceil(_x);
inline function _archTrunc(_x:stdgo.GoFloat64):stdgo.GoFloat64 return trunc(_x);
function _zero(_x:stdgo.GoUInt64):stdgo.GoUInt64 {
        if (_x == ((0i64 : stdgo.GoUInt64))) {
            return (1i64 : stdgo.GoUInt64);
        };
        return (0i64 : stdgo.GoUInt64);
    }
function _nonzero(_x:stdgo.GoUInt64):stdgo.GoUInt64 {
        if (_x != ((0i64 : stdgo.GoUInt64))) {
            return (1i64 : stdgo.GoUInt64);
        };
        return (0i64 : stdgo.GoUInt64);
    }
function _shl(_u1:stdgo.GoUInt64, _u2:stdgo.GoUInt64, _n:stdgo.GoUInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _r1 = (0 : stdgo.GoUInt64), _r2 = (0 : stdgo.GoUInt64);
        _r1 = (((_u1 << _n : stdgo.GoUInt64) | (_u2 >> (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoUInt64) : stdgo.GoUInt64) | (_u2 << ((_n - (64u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) : stdgo.GoUInt64);
        _r2 = (_u2 << _n : stdgo.GoUInt64);
        return { _0 : _r1, _1 : _r2 };
    }
function _shr(_u1:stdgo.GoUInt64, _u2:stdgo.GoUInt64, _n:stdgo.GoUInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _r1 = (0 : stdgo.GoUInt64), _r2 = (0 : stdgo.GoUInt64);
        _r2 = (((_u2 >> _n : stdgo.GoUInt64) | (_u1 << (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoUInt64) : stdgo.GoUInt64) | (_u1 >> ((_n - (64u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) : stdgo.GoUInt64);
        _r1 = (_u1 >> _n : stdgo.GoUInt64);
        return { _0 : _r1, _1 : _r2 };
    }
function _shrcompress(_u1:stdgo.GoUInt64, _u2:stdgo.GoUInt64, _n:stdgo.GoUInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _r1 = (0 : stdgo.GoUInt64), _r2 = (0 : stdgo.GoUInt64);
        if (_n == ((0u32 : stdgo.GoUInt))) {
            return { _0 : _u1, _1 : _u2 };
        } else if (_n == ((64u32 : stdgo.GoUInt))) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : (_u1 | _nonzero(_u2) : stdgo.GoUInt64) };
        } else if ((_n >= (128u32 : stdgo.GoUInt) : Bool)) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : _nonzero((_u1 | _u2 : stdgo.GoUInt64)) };
        } else if ((_n < (64u32 : stdgo.GoUInt) : Bool)) {
            {
                var __tmp__ = _shr(_u1, _u2, _n);
                _r1 = __tmp__._0;
                _r2 = __tmp__._1;
            };
            _r2 = (_r2 | (_nonzero((_u2 & ((((1i64 : stdgo.GoUInt64) << _n : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64))) : stdgo.GoUInt64);
        } else if ((_n < (128u32 : stdgo.GoUInt) : Bool)) {
            {
                var __tmp__ = _shr(_u1, _u2, _n);
                _r1 = __tmp__._0;
                _r2 = __tmp__._1;
            };
            _r2 = (_r2 | (_nonzero(((_u1 & ((((1i64 : stdgo.GoUInt64) << ((_n - (64u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64) | _u2 : stdgo.GoUInt64))) : stdgo.GoUInt64);
        };
        return { _0 : _r1, _1 : _r2 };
    }
function _lz(_u1:stdgo.GoUInt64, _u2:stdgo.GoUInt64):stdgo.GoInt32 {
        var _l = (0 : stdgo.GoInt32);
        _l = (stdgo._internal.math.bits.Bits.leadingZeros64(_u1) : stdgo.GoInt32);
        if (_l == ((64 : stdgo.GoInt32))) {
            _l = (_l + ((stdgo._internal.math.bits.Bits.leadingZeros64(_u2) : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        return _l;
    }
function _split(_b:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoInt32; var _2 : stdgo.GoUInt64; } {
        var _sign = (0 : stdgo.GoUInt32), _exp = (0 : stdgo.GoInt32), _mantissa = (0 : stdgo.GoUInt64);
        _sign = ((_b >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
        _exp = (((_b >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt32) & (2047 : stdgo.GoInt32) : stdgo.GoInt32);
        _mantissa = (_b & (4503599627370495i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if (_exp == ((0 : stdgo.GoInt32))) {
            var _shift = ((stdgo._internal.math.bits.Bits.leadingZeros64(_mantissa) - (11 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt);
            _mantissa = (_mantissa << (_shift) : stdgo.GoUInt64);
            _exp = ((1 : stdgo.GoInt32) - (_shift : stdgo.GoInt32) : stdgo.GoInt32);
        } else {
            _mantissa = (_mantissa | ((4503599627370496i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        return { _0 : _sign, _1 : _exp, _2 : _mantissa };
    }
function fma(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64, _z:stdgo.GoFloat64):stdgo.GoFloat64 {
        var __0 = (float64bits(_x) : stdgo.GoUInt64), __1 = (float64bits(_y) : stdgo.GoUInt64), __2 = (float64bits(_z) : stdgo.GoUInt64);
var _bz = __2, _by = __1, _bx = __0;
        if (((((_x == (0 : stdgo.GoFloat64) || _y == (0 : stdgo.GoFloat64) : Bool) || _z == (0 : stdgo.GoFloat64) : Bool) || (_bx & (9218868437227405312i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((9218868437227405312i64 : stdgo.GoUInt64)) : Bool) || ((_by & (9218868437227405312i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (9218868437227405312i64 : stdgo.GoUInt64)) : Bool)) {
            return ((_x * _y : stdgo.GoFloat64) + _z : stdgo.GoFloat64);
        };
        if ((_bz & (9218868437227405312i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((9218868437227405312i64 : stdgo.GoUInt64))) {
            return _z;
        };
        var __tmp__ = _split(_bx), _xs:stdgo.GoUInt32 = __tmp__._0, _xe:stdgo.GoInt32 = __tmp__._1, _xm:stdgo.GoUInt64 = __tmp__._2;
        var __tmp__ = _split(_by), _ys:stdgo.GoUInt32 = __tmp__._0, _ye:stdgo.GoInt32 = __tmp__._1, _ym:stdgo.GoUInt64 = __tmp__._2;
        var __tmp__ = _split(_bz), _zs:stdgo.GoUInt32 = __tmp__._0, _ze:stdgo.GoInt32 = __tmp__._1, _zm:stdgo.GoUInt64 = __tmp__._2;
        var _pe = (((_xe + _ye : stdgo.GoInt32) - (1023 : stdgo.GoInt32) : stdgo.GoInt32) + (1 : stdgo.GoInt32) : stdgo.GoInt32);
        var __tmp__ = stdgo._internal.math.bits.Bits.mul64((_xm << (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64), (_ym << (11i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), _pm1:stdgo.GoUInt64 = __tmp__._0, _pm2:stdgo.GoUInt64 = __tmp__._1;
        var __0 = (_zm << (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __1 = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
var _zm2 = __1, _zm1 = __0;
        var _ps = (_xs ^ _ys : stdgo.GoUInt32);
        var _is62zero = (((((-1 ^ _pm1) >> (62i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt);
        {
            var __tmp__ = _shl(_pm1, _pm2, _is62zero);
            _pm1 = __tmp__._0;
            _pm2 = __tmp__._1;
        };
        _pe = (_pe - ((_is62zero : stdgo.GoInt32)) : stdgo.GoInt32);
        if (((_pe < _ze : Bool) || (_pe == (_ze) && (_pm1 < _zm1 : Bool) : Bool) : Bool)) {
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
        if ((((_ps != (_zs) && _pe == (_ze) : Bool) && _pm1 == (_zm1) : Bool) && (_pm2 == _zm2) : Bool)) {
            return (0 : stdgo.GoFloat64);
        };
        {
            var __tmp__ = _shrcompress(_zm1, _zm2, ((_pe - _ze : stdgo.GoInt32) : stdgo.GoUInt));
            _zm1 = __tmp__._0;
            _zm2 = __tmp__._1;
        };
        var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _c = __1, _m = __0;
        if (_ps == (_zs)) {
            {
                var __tmp__ = stdgo._internal.math.bits.Bits.add64(_pm2, _zm2, (0i64 : stdgo.GoUInt64));
                _pm2 = __tmp__._0;
                _c = __tmp__._1;
            };
            {
                var __tmp__ = stdgo._internal.math.bits.Bits.add64(_pm1, _zm1, _c);
                _pm1 = __tmp__._0;
            };
            _pe = (_pe - ((((-1 ^ _pm1) >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt32)) : stdgo.GoInt32);
            {
                var __tmp__ = _shrcompress(_pm1, _pm2, (((64i64 : stdgo.GoUInt64) + (_pm1 >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt));
                _pm1 = __tmp__._0;
                _m = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = stdgo._internal.math.bits.Bits.sub64(_pm2, _zm2, (0i64 : stdgo.GoUInt64));
                _pm2 = __tmp__._0;
                _c = __tmp__._1;
            };
            {
                var __tmp__ = stdgo._internal.math.bits.Bits.sub64(_pm1, _zm1, _c);
                _pm1 = __tmp__._0;
            };
            var _nz = (_lz(_pm1, _pm2) : stdgo.GoInt32);
            _pe = (_pe - (_nz) : stdgo.GoInt32);
            {
                var __tmp__ = _shl(_pm1, _pm2, ((_nz - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt));
                _m = __tmp__._0;
                _pm2 = __tmp__._1;
            };
            _m = (_m | (_nonzero(_pm2)) : stdgo.GoUInt64);
        };
        if (((_pe > (2045 : stdgo.GoInt32) : Bool) || (_pe == ((2045 : stdgo.GoInt32)) && (((_m + (512i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64)) : Bool) : Bool)) {
            return float64frombits((((_ps : stdgo.GoUInt64) << (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (9218868437227405312i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        };
        if ((_pe < (0 : stdgo.GoInt32) : Bool)) {
            var _n = (-_pe : stdgo.GoUInt);
            _m = ((_m >> _n : stdgo.GoUInt64) | _nonzero((_m & ((((1i64 : stdgo.GoUInt64) << _n : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _pe = (0 : stdgo.GoInt32);
        };
        _m = (((((_m + (512i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) >> (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (-1 ^ _zero((((_m & (1023i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) ^ (512i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) : stdgo.GoUInt64);
        _pe = (_pe & (-(_nonzero(_m) : stdgo.GoInt32)) : stdgo.GoInt32);
        return float64frombits(((((_ps : stdgo.GoUInt64) << (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + ((_pe : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) + _m : stdgo.GoUInt64));
    }
function frexp(_f:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } {
        var _frac = (0 : stdgo.GoFloat64), _exp = (0 : stdgo.GoInt);
        if (false) {
            return _archFrexp(_f);
        };
        return _frexp(_f);
    }
function _frexp(_f:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } {
        var _frac = (0 : stdgo.GoFloat64), _exp = (0 : stdgo.GoInt);
        if (_f == (0 : stdgo.GoFloat64)) {
            return { _0 : _f, _1 : (0 : stdgo.GoInt) };
        } else if ((isInf(_f, (0 : stdgo.GoInt)) || isNaN(_f) : Bool)) {
            return { _0 : _f, _1 : (0 : stdgo.GoInt) };
        };
        {
            var __tmp__ = _normalize(_f);
            _f = __tmp__._0;
            _exp = __tmp__._1;
        };
        var _x = (float64bits(_f) : stdgo.GoUInt64);
        _exp = (_exp + (((((((_x >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (2047i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt) - (1023 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        _x = (_x & ((((9218868437227405312i64 : stdgo.GoUInt64)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _x = (_x | ((4602678819172646912i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _frac = float64frombits(_x);
        return { _0 : _frac, _1 : _exp };
    }
function _stirling(_x:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } {
        if ((_x > (200 : stdgo.GoFloat64) : Bool)) {
            return { _0 : inf((1 : stdgo.GoInt)), _1 : (1 : stdgo.GoFloat64) };
        };
        {};
        var _w = ((1 : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
        _w = ((1 : stdgo.GoFloat64) + (_w * ((((((((((((__gamS[(0 : stdgo.GoInt)] * _w : stdgo.GoFloat64) + __gamS[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _w : stdgo.GoFloat64) + __gamS[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _w : stdgo.GoFloat64) + __gamS[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _w : stdgo.GoFloat64) + __gamS[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _y1 = (exp(_x) : stdgo.GoFloat64);
        var _y2 = (1 : stdgo.GoFloat64);
        if ((_x > (143.01608 : stdgo.GoFloat64) : Bool)) {
            var _v = (pow(_x, (((0.5 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) - (0.25 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
            {
                final __tmp__0 = _v;
                final __tmp__1 = (_v / _y1 : stdgo.GoFloat64);
                _y1 = __tmp__0;
                _y2 = __tmp__1;
            };
        } else {
            _y1 = (pow(_x, (_x - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) / _y1 : stdgo.GoFloat64);
        };
        return { _0 : _y1, _1 : (((2.5066282746310007 : stdgo.GoFloat64) * _w : stdgo.GoFloat64) * _y2 : stdgo.GoFloat64) };
    }
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        stdgo._internal.internal.Macro.controlFlow({
            {};
            if (((_isNegInt(_x) || isInf(_x, (-1 : stdgo.GoInt)) : Bool) || isNaN(_x) : Bool)) {
                return naN();
            } else if (isInf(_x, (1 : stdgo.GoInt))) {
                return inf((1 : stdgo.GoInt));
            } else if (_x == (0 : stdgo.GoFloat64)) {
                if (signbit(_x)) {
                    return inf((-1 : stdgo.GoInt));
                };
                return inf((1 : stdgo.GoInt));
            };
            var _q = (abs(_x) : stdgo.GoFloat64);
            var _p = (floor(_q) : stdgo.GoFloat64);
            if ((_q > (33 : stdgo.GoFloat64) : Bool)) {
                if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                    var __tmp__ = _stirling(_x), _y1:stdgo.GoFloat64 = __tmp__._0, _y2:stdgo.GoFloat64 = __tmp__._1;
                    return (_y1 * _y2 : stdgo.GoFloat64);
                };
                var _signgam = (1 : stdgo.GoInt);
                {
                    var _ip = (_p : stdgo.GoInt64);
                    if ((_ip & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                        _signgam = (-1 : stdgo.GoInt);
                    };
                };
                var _z = (_q - _p : stdgo.GoFloat64);
                if ((_z > (0.5 : stdgo.GoFloat64) : Bool)) {
                    _p = (_p + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z = (_q - _p : stdgo.GoFloat64);
                };
                _z = (_q * sin(((3.141592653589793 : stdgo.GoFloat64) * _z : stdgo.GoFloat64)) : stdgo.GoFloat64);
                if (_z == (0 : stdgo.GoFloat64)) {
                    return inf(_signgam);
                };
                var __tmp__ = _stirling(_q), _sq1:stdgo.GoFloat64 = __tmp__._0, _sq2:stdgo.GoFloat64 = __tmp__._1;
                var _absz = (abs(_z) : stdgo.GoFloat64);
                var _d = ((_absz * _sq1 : stdgo.GoFloat64) * _sq2 : stdgo.GoFloat64);
                if (isInf(_d, (0 : stdgo.GoInt))) {
                    _z = ((((3.141592653589793 : stdgo.GoFloat64) / _absz : stdgo.GoFloat64) / _sq1 : stdgo.GoFloat64) / _sq2 : stdgo.GoFloat64);
                } else {
                    _z = ((3.141592653589793 : stdgo.GoFloat64) / _d : stdgo.GoFloat64);
                };
                return ((_signgam : stdgo.GoFloat64) * _z : stdgo.GoFloat64);
            };
            var _z = (1 : stdgo.GoFloat64);
            while ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                _z = (_z * _x : stdgo.GoFloat64);
            };
            while ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                    @:goto "small";
                };
                _z = (_z / _x : stdgo.GoFloat64);
                _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            while ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                    @:goto "small";
                };
                _z = (_z / _x : stdgo.GoFloat64);
                _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            if (_x == (2 : stdgo.GoFloat64)) {
                return _z;
            };
            _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
            _p = (((((((((((((((((_x * __gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + __gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + __gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + __gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + __gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + __gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + __gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
            _q = ((((((((((((((((((((_x * __gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + __gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + __gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + __gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + __gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + __gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + __gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + __gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
            return ((_z * _p : stdgo.GoFloat64) / _q : stdgo.GoFloat64);
            @:label("small") if (_x == (0 : stdgo.GoFloat64)) {
                return inf((1 : stdgo.GoInt));
            };
            return (_z / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        });
        throw "controlFlow did not return";
    }
function _isNegInt(_x:stdgo.GoFloat64):Bool {
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            var __tmp__ = modf(_x), __0:stdgo.GoFloat64 = __tmp__._0, _xf:stdgo.GoFloat64 = __tmp__._1;
            return _xf == (0 : stdgo.GoFloat64);
        };
        return false;
    }
function hypot(_p:stdgo.GoFloat64, _q:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archHypot(_p, _q);
        };
        return _hypot(_p, _q);
    }
function _hypot(_p:stdgo.GoFloat64, _q:stdgo.GoFloat64):stdgo.GoFloat64 {
        {
            final __tmp__0 = abs(_p);
            final __tmp__1 = abs(_q);
            _p = __tmp__0;
            _q = __tmp__1;
        };
        if ((isInf(_p, (1 : stdgo.GoInt)) || isInf(_q, (1 : stdgo.GoInt)) : Bool)) {
            return inf((1 : stdgo.GoInt));
        } else if ((isNaN(_p) || isNaN(_q) : Bool)) {
            return naN();
        };
        if ((_p < _q : Bool)) {
            {
                final __tmp__0 = _q;
                final __tmp__1 = _p;
                _p = __tmp__0;
                _q = __tmp__1;
            };
        };
        if (_p == (0 : stdgo.GoFloat64)) {
            return (0 : stdgo.GoFloat64);
        };
        _q = (_q / _p : stdgo.GoFloat64);
        return (_p * sqrt(((1 : stdgo.GoFloat64) + (_q * _q : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
    }
function _archHypot(_p:stdgo.GoFloat64, _q:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (isInf(_p, 0) || isInf(_q, 0)) return inf(1);
        if (!std.Math.isFinite(_p.toBasic()) || std.Math.isNaN(_q.toBasic())) return naN();
        _p = abs(_p);
        _q = abs(_q);
        if (_p < _q) {
            final temp = _p;
            _p = _q;
            _q = temp;
        };
        if (_p == 0) return 0;
        _q = _q / _p;
        return _p * sqrt(1 + _q * _q);
    }
function j0(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (isNaN(_x)) {
            return _x;
        } else if (isInf(_x, (0 : stdgo.GoInt))) {
            return (0 : stdgo.GoFloat64);
        } else if (_x == (0 : stdgo.GoFloat64)) {
            return (1 : stdgo.GoFloat64);
        };
        _x = abs(_x);
        if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            var __tmp__ = sincos(_x), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
            var _ss = (_s - _c : stdgo.GoFloat64);
            var _cc = (_s + _c : stdgo.GoFloat64);
            if ((_x < (8.988465674311579e+307 : stdgo.GoFloat64) : Bool)) {
                var _z = (-cos((_x + _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                if (((_s * _c : stdgo.GoFloat64) < (0 : stdgo.GoFloat64) : Bool)) {
                    _cc = (_z / _ss : stdgo.GoFloat64);
                } else {
                    _ss = (_z / _cc : stdgo.GoFloat64);
                };
            };
            var _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            if ((_x > (6.80564733841877e+38 : stdgo.GoFloat64) : Bool)) {
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * _cc : stdgo.GoFloat64) / sqrt(_x) : stdgo.GoFloat64);
            } else {
                var _u = (_pzero(_x) : stdgo.GoFloat64);
                var _v = (_qzero(_x) : stdgo.GoFloat64);
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * (((_u * _cc : stdgo.GoFloat64) - (_v * _ss : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) / sqrt(_x) : stdgo.GoFloat64);
            };
            return _z;
        };
        if ((_x < (0.0001220703125 : stdgo.GoFloat64) : Bool)) {
            if ((_x < (7.450580596923828e-09 : stdgo.GoFloat64) : Bool)) {
                return (1 : stdgo.GoFloat64);
            };
            return ((1 : stdgo.GoFloat64) - (((0.25 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        var _z = (_x * _x : stdgo.GoFloat64);
        var _r = (_z * (((0.015624999999999995 : stdgo.GoFloat64) + (_z * (((-0.00018997929423885472 : stdgo.GoFloat64) + (_z * (((1.8295404953270067e-06 : stdgo.GoFloat64) + (_z * (-4.618326885321032e-09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _s = ((1 : stdgo.GoFloat64) + (_z * (((0.015619102946489001 : stdgo.GoFloat64) + (_z * (((0.00011692678466333745 : stdgo.GoFloat64) + (_z * (((5.135465502073181e-07 : stdgo.GoFloat64) + (_z * (1.1661400333379e-09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        if ((_x < (1 : stdgo.GoFloat64) : Bool)) {
            return ((1 : stdgo.GoFloat64) + (_z * (((-0.25 : stdgo.GoFloat64) + ((_r / _s : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        var _u = ((0.5 : stdgo.GoFloat64) * _x : stdgo.GoFloat64);
        return (((((1 : stdgo.GoFloat64) + _u : stdgo.GoFloat64)) * (((1 : stdgo.GoFloat64) - _u : stdgo.GoFloat64)) : stdgo.GoFloat64) + (_z * ((_r / _s : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
function y0(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (((_x < (0 : stdgo.GoFloat64) : Bool) || isNaN(_x) : Bool)) {
            return naN();
        } else if (isInf(_x, (1 : stdgo.GoInt))) {
            return (0 : stdgo.GoFloat64);
        } else if (_x == (0 : stdgo.GoFloat64)) {
            return inf((-1 : stdgo.GoInt));
        };
        if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            var __tmp__ = sincos(_x), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
            var _ss = (_s - _c : stdgo.GoFloat64);
            var _cc = (_s + _c : stdgo.GoFloat64);
            if ((_x < (8.988465674311579e+307 : stdgo.GoFloat64) : Bool)) {
                var _z = (-cos((_x + _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                if (((_s * _c : stdgo.GoFloat64) < (0 : stdgo.GoFloat64) : Bool)) {
                    _cc = (_z / _ss : stdgo.GoFloat64);
                } else {
                    _ss = (_z / _cc : stdgo.GoFloat64);
                };
            };
            var _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            if ((_x > (6.80564733841877e+38 : stdgo.GoFloat64) : Bool)) {
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * _ss : stdgo.GoFloat64) / sqrt(_x) : stdgo.GoFloat64);
            } else {
                var _u = (_pzero(_x) : stdgo.GoFloat64);
                var _v = (_qzero(_x) : stdgo.GoFloat64);
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * (((_u * _ss : stdgo.GoFloat64) + (_v * _cc : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) / sqrt(_x) : stdgo.GoFloat64);
            };
            return _z;
        };
        if ((_x <= (7.450580596923828e-09 : stdgo.GoFloat64) : Bool)) {
            return ((-0.07380429510868723 : stdgo.GoFloat64) + ((0.6366197723675814 : stdgo.GoFloat64) * log(_x) : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        var _z = (_x * _x : stdgo.GoFloat64);
        var _u = ((-0.07380429510868723 : stdgo.GoFloat64) + (_z * (((0.17666645250918112 : stdgo.GoFloat64) + (_z * (((-0.01381856719455969 : stdgo.GoFloat64) + (_z * (((0.00034745343209368365 : stdgo.GoFloat64) + (_z * (((-3.8140705372436416e-06 : stdgo.GoFloat64) + (_z * (((1.9559013703502292e-08 : stdgo.GoFloat64) + (_z * (-3.982051941321034e-11 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _v = ((1 : stdgo.GoFloat64) + (_z * (((0.01273048348341237 : stdgo.GoFloat64) + (_z * (((7.600686273503533e-05 : stdgo.GoFloat64) + (_z * (((2.591508518404578e-07 : stdgo.GoFloat64) + (_z * (4.4111031133267547e-10 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        return ((_u / _v : stdgo.GoFloat64) + (((0.6366197723675814 : stdgo.GoFloat64) * j0(_x) : stdgo.GoFloat64) * log(_x) : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
function _pzero(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _p:stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> = (null : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        var _q:stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> = (null : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        if ((_x >= (8 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_p0R8) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_p0S8) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (4.5454 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_p0R5) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_p0S5) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (2.8571 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_p0R3) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_p0S3) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_p0R2) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_p0S2) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        };
        var _z = ((1 : stdgo.GoFloat64) / ((_x * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _r = (_p[(0 : stdgo.GoInt)] + (_z * ((_p[(1 : stdgo.GoInt)] + (_z * ((_p[(2 : stdgo.GoInt)] + (_z * ((_p[(3 : stdgo.GoInt)] + (_z * ((_p[(4 : stdgo.GoInt)] + (_z * _p[(5 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _s = ((1 : stdgo.GoFloat64) + (_z * ((_q[(0 : stdgo.GoInt)] + (_z * ((_q[(1 : stdgo.GoInt)] + (_z * ((_q[(2 : stdgo.GoInt)] + (_z * ((_q[(3 : stdgo.GoInt)] + (_z * _q[(4 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        return ((1 : stdgo.GoFloat64) + (_r / _s : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
function _qzero(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var __0:stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> = (null : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>), __1:stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> = (null : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
var _q = __1, _p = __0;
        if ((_x >= (8 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_q0R8) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_q0S8) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (4.5454 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_q0R5) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_q0S5) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (2.8571 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_q0R3) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_q0S3) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_q0R2) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_q0S2) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        };
        var _z = ((1 : stdgo.GoFloat64) / ((_x * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _r = (_p[(0 : stdgo.GoInt)] + (_z * ((_p[(1 : stdgo.GoInt)] + (_z * ((_p[(2 : stdgo.GoInt)] + (_z * ((_p[(3 : stdgo.GoInt)] + (_z * ((_p[(4 : stdgo.GoInt)] + (_z * _p[(5 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _s = ((1 : stdgo.GoFloat64) + (_z * ((_q[(0 : stdgo.GoInt)] + (_z * ((_q[(1 : stdgo.GoInt)] + (_z * ((_q[(2 : stdgo.GoInt)] + (_z * ((_q[(3 : stdgo.GoInt)] + (_z * ((_q[(4 : stdgo.GoInt)] + (_z * _q[(5 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        return ((((-0.125 : stdgo.GoFloat64) + (_r / _s : stdgo.GoFloat64) : stdgo.GoFloat64)) / _x : stdgo.GoFloat64);
    }
function j1(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (isNaN(_x)) {
            return _x;
        } else if ((isInf(_x, (0 : stdgo.GoInt)) || (_x == (0 : stdgo.GoFloat64)) : Bool)) {
            return (0 : stdgo.GoFloat64);
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            var __tmp__ = sincos(_x), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
            var _ss = (-_s - _c : stdgo.GoFloat64);
            var _cc = (_s - _c : stdgo.GoFloat64);
            if ((_x < (8.988465674311579e+307 : stdgo.GoFloat64) : Bool)) {
                var _z = (cos((_x + _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                if (((_s * _c : stdgo.GoFloat64) > (0 : stdgo.GoFloat64) : Bool)) {
                    _cc = (_z / _ss : stdgo.GoFloat64);
                } else {
                    _ss = (_z / _cc : stdgo.GoFloat64);
                };
            };
            var _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            if ((_x > (6.80564733841877e+38 : stdgo.GoFloat64) : Bool)) {
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * _cc : stdgo.GoFloat64) / sqrt(_x) : stdgo.GoFloat64);
            } else {
                var _u = (_pone(_x) : stdgo.GoFloat64);
                var _v = (_qone(_x) : stdgo.GoFloat64);
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * (((_u * _cc : stdgo.GoFloat64) - (_v * _ss : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) / sqrt(_x) : stdgo.GoFloat64);
            };
            if (_sign) {
                return -_z;
            };
            return _z;
        };
        if ((_x < (7.450580596923828e-09 : stdgo.GoFloat64) : Bool)) {
            return ((0.5 : stdgo.GoFloat64) * _x : stdgo.GoFloat64);
        };
        var _z = (_x * _x : stdgo.GoFloat64);
        var _r = (_z * (((-0.0625 : stdgo.GoFloat64) + (_z * (((0.001407056669551897 : stdgo.GoFloat64) + (_z * (((-1.599556310840356e-05 : stdgo.GoFloat64) + (_z * (4.9672799960958445e-08 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _s = ((1 : stdgo.GoFloat64) + (_z * (((0.019153759953836346 : stdgo.GoFloat64) + (_z * (((0.00018594678558863092 : stdgo.GoFloat64) + (_z * (((1.1771846404262368e-06 : stdgo.GoFloat64) + (_z * (((5.0463625707621704e-09 : stdgo.GoFloat64) + (_z * (1.2354227442613791e-11 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        _r = (_r * (_x) : stdgo.GoFloat64);
        _z = (((0.5 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) + (_r / _s : stdgo.GoFloat64) : stdgo.GoFloat64);
        if (_sign) {
            return -_z;
        };
        return _z;
    }
function y1(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (((_x < (0 : stdgo.GoFloat64) : Bool) || isNaN(_x) : Bool)) {
            return naN();
        } else if (isInf(_x, (1 : stdgo.GoInt))) {
            return (0 : stdgo.GoFloat64);
        } else if (_x == (0 : stdgo.GoFloat64)) {
            return inf((-1 : stdgo.GoInt));
        };
        if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            var __tmp__ = sincos(_x), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
            var _ss = (-_s - _c : stdgo.GoFloat64);
            var _cc = (_s - _c : stdgo.GoFloat64);
            if ((_x < (8.988465674311579e+307 : stdgo.GoFloat64) : Bool)) {
                var _z = (cos((_x + _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                if (((_s * _c : stdgo.GoFloat64) > (0 : stdgo.GoFloat64) : Bool)) {
                    _cc = (_z / _ss : stdgo.GoFloat64);
                } else {
                    _ss = (_z / _cc : stdgo.GoFloat64);
                };
            };
            var _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            if ((_x > (6.80564733841877e+38 : stdgo.GoFloat64) : Bool)) {
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * _ss : stdgo.GoFloat64) / sqrt(_x) : stdgo.GoFloat64);
            } else {
                var _u = (_pone(_x) : stdgo.GoFloat64);
                var _v = (_qone(_x) : stdgo.GoFloat64);
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * (((_u * _ss : stdgo.GoFloat64) + (_v * _cc : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) / sqrt(_x) : stdgo.GoFloat64);
            };
            return _z;
        };
        if ((_x <= (5.551115123125783e-17 : stdgo.GoFloat64) : Bool)) {
            return ((-0.6366197723675814 : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
        };
        var _z = (_x * _x : stdgo.GoFloat64);
        var _u = ((-0.19605709064623894 : stdgo.GoFloat64) + (_z * (((0.05044387166398113 : stdgo.GoFloat64) + (_z * (((-0.0019125689587576355 : stdgo.GoFloat64) + (_z * (((2.352526005616105e-05 : stdgo.GoFloat64) + (_z * (-9.190991580398789e-08 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _v = ((1 : stdgo.GoFloat64) + (_z * (((0.01991673182366499 : stdgo.GoFloat64) + (_z * (((0.00020255258102513517 : stdgo.GoFloat64) + (_z * (((1.3560880109751623e-06 : stdgo.GoFloat64) + (_z * (((6.227414523646215e-09 : stdgo.GoFloat64) + (_z * (1.6655924620799208e-11 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        return ((_x * ((_u / _v : stdgo.GoFloat64)) : stdgo.GoFloat64) + ((0.6366197723675814 : stdgo.GoFloat64) * (((j1(_x) * log(_x) : stdgo.GoFloat64) - ((1 : stdgo.GoFloat64) / _x : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
function _pone(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _p:stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> = (null : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        var _q:stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> = (null : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        if ((_x >= (8 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_p1R8) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_p1S8) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (4.5454 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_p1R5) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_p1S5) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (2.8571 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_p1R3) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_p1S3) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_p1R2) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_p1S2) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        };
        var _z = ((1 : stdgo.GoFloat64) / ((_x * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _r = (_p[(0 : stdgo.GoInt)] + (_z * ((_p[(1 : stdgo.GoInt)] + (_z * ((_p[(2 : stdgo.GoInt)] + (_z * ((_p[(3 : stdgo.GoInt)] + (_z * ((_p[(4 : stdgo.GoInt)] + (_z * _p[(5 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _s = ((1 : stdgo.GoFloat64) + (_z * ((_q[(0 : stdgo.GoInt)] + (_z * ((_q[(1 : stdgo.GoInt)] + (_z * ((_q[(2 : stdgo.GoInt)] + (_z * ((_q[(3 : stdgo.GoInt)] + (_z * _q[(4 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        return ((1 : stdgo.GoFloat64) + (_r / _s : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
function _qone(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var __0:stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> = (null : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>), __1:stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> = (null : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
var _q = __1, _p = __0;
        if ((_x >= (8 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_q1R8) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_q1S8) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (4.5454 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_q1R5) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_q1S5) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (2.8571 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_q1R3) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_q1S3) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(_q1R2) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(_q1S2) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        };
        var _z = ((1 : stdgo.GoFloat64) / ((_x * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _r = (_p[(0 : stdgo.GoInt)] + (_z * ((_p[(1 : stdgo.GoInt)] + (_z * ((_p[(2 : stdgo.GoInt)] + (_z * ((_p[(3 : stdgo.GoInt)] + (_z * ((_p[(4 : stdgo.GoInt)] + (_z * _p[(5 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _s = ((1 : stdgo.GoFloat64) + (_z * ((_q[(0 : stdgo.GoInt)] + (_z * ((_q[(1 : stdgo.GoInt)] + (_z * ((_q[(2 : stdgo.GoInt)] + (_z * ((_q[(3 : stdgo.GoInt)] + (_z * ((_q[(4 : stdgo.GoInt)] + (_z * _q[(5 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        return ((((0.375 : stdgo.GoFloat64) + (_r / _s : stdgo.GoFloat64) : stdgo.GoFloat64)) / _x : stdgo.GoFloat64);
    }
function jn(_n:stdgo.GoInt, _x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (isNaN(_x)) {
            return _x;
        } else if (isInf(_x, (0 : stdgo.GoInt))) {
            return (0 : stdgo.GoFloat64);
        };
        if (_n == ((0 : stdgo.GoInt))) {
            return j0(_x);
        };
        if (_x == (0 : stdgo.GoFloat64)) {
            return (0 : stdgo.GoFloat64);
        };
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            {
                final __tmp__0 = -_n;
                final __tmp__1 = -_x;
                _n = __tmp__0;
                _x = __tmp__1;
            };
        };
        if (_n == ((1 : stdgo.GoInt))) {
            return j1(_x);
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            if ((_n & (1 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                _sign = true;
            };
        };
        var _b:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if (((_n : stdgo.GoFloat64) <= _x : Bool)) {
            if ((_x >= (8.148143905337944e+90 : stdgo.GoFloat64) : Bool)) {
                var _temp:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                {
                    var __tmp__ = sincos(_x), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
                    {
                        final __value__ = (_n & (3 : stdgo.GoInt) : stdgo.GoInt);
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _temp = (_c + _s : stdgo.GoFloat64);
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _temp = (-_c + _s : stdgo.GoFloat64);
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _temp = (-_c - _s : stdgo.GoFloat64);
                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                            _temp = (_c - _s : stdgo.GoFloat64);
                        };
                    };
                };
                _b = (((0.5641895835477563 : stdgo.GoFloat64) * _temp : stdgo.GoFloat64) / sqrt(_x) : stdgo.GoFloat64);
            } else {
                _b = j1(_x);
                {
                    var __0 = (1 : stdgo.GoInt), __1 = (j0(_x) : stdgo.GoFloat64);
var _a = __1, _i = __0;
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        {
                            final __tmp__0 = _b;
                            final __tmp__1 = ((_b * ((((_i + _i : stdgo.GoInt) : stdgo.GoFloat64) / _x : stdgo.GoFloat64)) : stdgo.GoFloat64) - _a : stdgo.GoFloat64);
                            _a = __tmp__0;
                            _b = __tmp__1;
                        };
                    });
                };
            };
        } else {
            if ((_x < (1.862645149230957e-09 : stdgo.GoFloat64) : Bool)) {
                if ((_n > (33 : stdgo.GoInt) : Bool)) {
                    _b = (0 : stdgo.GoFloat64);
                } else {
                    var _temp = (_x * (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _b = _temp;
                    var _a = (1 : stdgo.GoFloat64);
                    {
                        var _i = (2 : stdgo.GoInt);
                        stdgo.Go.cfor((_i <= _n : Bool), _i++, {
                            _a = (_a * ((_i : stdgo.GoFloat64)) : stdgo.GoFloat64);
                            _b = (_b * (_temp) : stdgo.GoFloat64);
                        });
                    };
                    _b = (_b / (_a) : stdgo.GoFloat64);
                };
            } else {
                var _w = (((_n + _n : stdgo.GoInt) : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
                var _h = ((2 : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
                var _q0 = (_w : stdgo.GoFloat64);
                var _z = (_w + _h : stdgo.GoFloat64);
                var _q1 = ((_w * _z : stdgo.GoFloat64) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                var _k = (1 : stdgo.GoInt);
                while ((_q1 < (1e+09 : stdgo.GoFloat64) : Bool)) {
                    _k++;
                    _z = (_z + (_h) : stdgo.GoFloat64);
                    {
                        final __tmp__0 = _q1;
                        final __tmp__1 = ((_z * _q1 : stdgo.GoFloat64) - _q0 : stdgo.GoFloat64);
                        _q0 = __tmp__0;
                        _q1 = __tmp__1;
                    };
                };
                var _m = (_n + _n : stdgo.GoInt);
                var _t = (0 : stdgo.GoFloat64);
                {
                    var _i = ((2 : stdgo.GoInt) * ((_n + _k : stdgo.GoInt)) : stdgo.GoInt);
                    stdgo.Go.cfor((_i >= _m : Bool), _i = (_i - ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                        _t = ((1 : stdgo.GoFloat64) / ((((_i : stdgo.GoFloat64) / _x : stdgo.GoFloat64) - _t : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    });
                };
                var _a = (_t : stdgo.GoFloat64);
                _b = (1 : stdgo.GoFloat64);
                var _tmp = (_n : stdgo.GoFloat64);
                var _v = ((2 : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
                _tmp = (_tmp * log(abs((_v * _tmp : stdgo.GoFloat64))) : stdgo.GoFloat64);
                if ((_tmp < (709.782712893384 : stdgo.GoFloat64) : Bool)) {
                    {
                        var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                            var _di = ((_i + _i : stdgo.GoInt) : stdgo.GoFloat64);
                            {
                                final __tmp__0 = _b;
                                final __tmp__1 = (((_b * _di : stdgo.GoFloat64) / _x : stdgo.GoFloat64) - _a : stdgo.GoFloat64);
                                _a = __tmp__0;
                                _b = __tmp__1;
                            };
                        });
                    };
                } else {
                    {
                        var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                            var _di = ((_i + _i : stdgo.GoInt) : stdgo.GoFloat64);
                            {
                                final __tmp__0 = _b;
                                final __tmp__1 = (((_b * _di : stdgo.GoFloat64) / _x : stdgo.GoFloat64) - _a : stdgo.GoFloat64);
                                _a = __tmp__0;
                                _b = __tmp__1;
                            };
                            if ((_b > (1e+100 : stdgo.GoFloat64) : Bool)) {
                                _a = (_a / (_b) : stdgo.GoFloat64);
                                _t = (_t / (_b) : stdgo.GoFloat64);
                                _b = (1 : stdgo.GoFloat64);
                            };
                        });
                    };
                };
                _b = ((_t * j0(_x) : stdgo.GoFloat64) / _b : stdgo.GoFloat64);
            };
        };
        if (_sign) {
            return -_b;
        };
        return _b;
    }
function yn(_n:stdgo.GoInt, _x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (((_x < (0 : stdgo.GoFloat64) : Bool) || isNaN(_x) : Bool)) {
            return naN();
        } else if (isInf(_x, (1 : stdgo.GoInt))) {
            return (0 : stdgo.GoFloat64);
        };
        if (_n == ((0 : stdgo.GoInt))) {
            return y0(_x);
        };
        if (_x == (0 : stdgo.GoFloat64)) {
            if (((_n < (0 : stdgo.GoInt) : Bool) && ((_n & (1 : stdgo.GoInt) : stdgo.GoInt) == (1 : stdgo.GoInt)) : Bool)) {
                return inf((1 : stdgo.GoInt));
            };
            return inf((-1 : stdgo.GoInt));
        };
        var _sign = (false : Bool);
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = -_n;
            if ((_n & (1 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                _sign = true;
            };
        };
        if (_n == ((1 : stdgo.GoInt))) {
            if (_sign) {
                return -y1(_x);
            };
            return y1(_x);
        };
        var _b:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if ((_x >= (8.148143905337944e+90 : stdgo.GoFloat64) : Bool)) {
            var _temp:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            {
                var __tmp__ = sincos(_x), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
                {
                    final __value__ = (_n & (3 : stdgo.GoInt) : stdgo.GoInt);
                    if (__value__ == ((0 : stdgo.GoInt))) {
                        _temp = (_s - _c : stdgo.GoFloat64);
                    } else if (__value__ == ((1 : stdgo.GoInt))) {
                        _temp = (-_s - _c : stdgo.GoFloat64);
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        _temp = (-_s + _c : stdgo.GoFloat64);
                    } else if (__value__ == ((3 : stdgo.GoInt))) {
                        _temp = (_s + _c : stdgo.GoFloat64);
                    };
                };
            };
            _b = (((0.5641895835477563 : stdgo.GoFloat64) * _temp : stdgo.GoFloat64) / sqrt(_x) : stdgo.GoFloat64);
        } else {
            var _a = (y0(_x) : stdgo.GoFloat64);
            _b = y1(_x);
            {
                var _i = (1 : stdgo.GoInt);
                stdgo.Go.cfor(((_i < _n : Bool) && !isInf(_b, (-1 : stdgo.GoInt)) : Bool), _i++, {
                    {
                        final __tmp__0 = _b;
                        final __tmp__1 = ((((((_i + _i : stdgo.GoInt) : stdgo.GoFloat64) / _x : stdgo.GoFloat64)) * _b : stdgo.GoFloat64) - _a : stdgo.GoFloat64);
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
function ldexp(_frac:stdgo.GoFloat64, _exp:stdgo.GoInt):stdgo.GoFloat64 {
        if (false) {
            return _archLdexp(_frac, _exp);
        };
        return _ldexp(_frac, _exp);
    }
function _ldexp(_frac:stdgo.GoFloat64, _exp:stdgo.GoInt):stdgo.GoFloat64 {
        if (_frac == (0 : stdgo.GoFloat64)) {
            return _frac;
        } else if ((isInf(_frac, (0 : stdgo.GoInt)) || isNaN(_frac) : Bool)) {
            return _frac;
        };
        var __tmp__ = _normalize(_frac), _frac:stdgo.GoFloat64 = __tmp__._0, _e:stdgo.GoInt = __tmp__._1;
        _exp = (_exp + (_e) : stdgo.GoInt);
        var _x = (float64bits(_frac) : stdgo.GoUInt64);
        _exp = (_exp + (((((_x >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt) & (2047 : stdgo.GoInt) : stdgo.GoInt) - (1023 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        if ((_exp < (-1075 : stdgo.GoInt) : Bool)) {
            return copysign((0 : stdgo.GoFloat64), _frac);
        };
        if ((_exp > (1023 : stdgo.GoInt) : Bool)) {
            if ((_frac < (0 : stdgo.GoFloat64) : Bool)) {
                return inf((-1 : stdgo.GoInt));
            };
            return inf((1 : stdgo.GoInt));
        };
        var _m:stdgo.GoFloat64 = (1 : stdgo.GoFloat64);
        if ((_exp < (-1022 : stdgo.GoInt) : Bool)) {
            _exp = (_exp + ((53 : stdgo.GoInt)) : stdgo.GoInt);
            _m = (1.1102230246251565e-16 : stdgo.GoFloat64);
        };
        _x = (_x & ((((9218868437227405312i64 : stdgo.GoUInt64)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _x = (_x | ((((_exp + (1023 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return (_m * float64frombits(_x) : stdgo.GoFloat64);
    }
function lgamma(_x:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } {
        var _lgamma = (0 : stdgo.GoFloat64), _sign = (0 : stdgo.GoInt);
        {};
        _sign = (1 : stdgo.GoInt);
        if (isNaN(_x)) {
            _lgamma = _x;
            return { _0 : _lgamma, _1 : _sign };
        } else if (isInf(_x, (0 : stdgo.GoInt))) {
            _lgamma = _x;
            return { _0 : _lgamma, _1 : _sign };
        } else if (_x == (0 : stdgo.GoFloat64)) {
            _lgamma = inf((1 : stdgo.GoInt));
            return { _0 : _lgamma, _1 : _sign };
        };
        var _neg = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _neg = true;
        };
        if ((_x < (8.470329472543003e-22 : stdgo.GoFloat64) : Bool)) {
            if (_neg) {
                _sign = (-1 : stdgo.GoInt);
            };
            _lgamma = -log(_x);
            return { _0 : _lgamma, _1 : _sign };
        };
        var _nadj:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if (_neg) {
            if ((_x >= (4.503599627370496e+15 : stdgo.GoFloat64) : Bool)) {
                _lgamma = inf((1 : stdgo.GoInt));
                return { _0 : _lgamma, _1 : _sign };
            };
            var _t = (_sinPi(_x) : stdgo.GoFloat64);
            if (_t == (0 : stdgo.GoFloat64)) {
                _lgamma = inf((1 : stdgo.GoInt));
                return { _0 : _lgamma, _1 : _sign };
            };
            _nadj = log(((3.141592653589793 : stdgo.GoFloat64) / abs((_t * _x : stdgo.GoFloat64)) : stdgo.GoFloat64));
            if ((_t < (0 : stdgo.GoFloat64) : Bool)) {
                _sign = (-1 : stdgo.GoInt);
            };
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (((_x == (1 : stdgo.GoFloat64)) || (_x == (2 : stdgo.GoFloat64)) : Bool)) {
                    _lgamma = (0 : stdgo.GoFloat64);
                    return { _0 : _lgamma, _1 : _sign };
                    break;
                } else if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                    var _y:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    if ((_x <= (0.9 : stdgo.GoFloat64) : Bool)) {
                        _lgamma = -log(_x);
                        if ((_x >= (0.7316321449683623 : stdgo.GoFloat64) : Bool)) {
                            _y = ((1 : stdgo.GoFloat64) - _x : stdgo.GoFloat64);
                            _i = (0 : stdgo.GoInt);
                        } else if ((_x >= (0.19163214496836226 : stdgo.GoFloat64) : Bool)) {
                            _y = (_x - (0.46163214496836225 : stdgo.GoFloat64) : stdgo.GoFloat64);
                            _i = (1 : stdgo.GoInt);
                        } else {
                            _y = _x;
                            _i = (2 : stdgo.GoInt);
                        };
                    } else {
                        _lgamma = (0 : stdgo.GoFloat64);
                        if ((_x >= (1.7316321449683623 : stdgo.GoFloat64) : Bool)) {
                            _y = ((2 : stdgo.GoFloat64) - _x : stdgo.GoFloat64);
                            _i = (0 : stdgo.GoInt);
                        } else if ((_x >= (1.1916321449683622 : stdgo.GoFloat64) : Bool)) {
                            _y = (_x - (1.4616321449683622 : stdgo.GoFloat64) : stdgo.GoFloat64);
                            _i = (1 : stdgo.GoInt);
                        } else {
                            _y = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                            _i = (2 : stdgo.GoInt);
                        };
                    };
                    {
                        final __value__ = _i;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            var _z = (_y * _y : stdgo.GoFloat64);
                            var _p1 = (__lgamA[(0 : stdgo.GoInt)] + (_z * ((__lgamA[(2 : stdgo.GoInt)] + (_z * ((__lgamA[(4 : stdgo.GoInt)] + (_z * ((__lgamA[(6 : stdgo.GoInt)] + (_z * ((__lgamA[(8 : stdgo.GoInt)] + (_z * __lgamA[(10 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                            var _p2 = (_z * ((__lgamA[(1 : stdgo.GoInt)] + (_z * ((__lgamA[(3 : stdgo.GoInt)] + (_z * ((__lgamA[(5 : stdgo.GoInt)] + (_z * ((__lgamA[(7 : stdgo.GoInt)] + (_z * ((__lgamA[(9 : stdgo.GoInt)] + (_z * __lgamA[(11 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                            var _p = ((_y * _p1 : stdgo.GoFloat64) + _p2 : stdgo.GoFloat64);
                            _lgamma = (_lgamma + ((_p - ((0.5 : stdgo.GoFloat64) * _y : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            var _z = (_y * _y : stdgo.GoFloat64);
                            var _w = (_z * _y : stdgo.GoFloat64);
                            var _p1 = (__lgamT[(0 : stdgo.GoInt)] + (_w * ((__lgamT[(3 : stdgo.GoInt)] + (_w * ((__lgamT[(6 : stdgo.GoInt)] + (_w * ((__lgamT[(9 : stdgo.GoInt)] + (_w * __lgamT[(12 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                            var _p2 = (__lgamT[(1 : stdgo.GoInt)] + (_w * ((__lgamT[(4 : stdgo.GoInt)] + (_w * ((__lgamT[(7 : stdgo.GoInt)] + (_w * ((__lgamT[(10 : stdgo.GoInt)] + (_w * __lgamT[(13 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                            var _p3 = (__lgamT[(2 : stdgo.GoInt)] + (_w * ((__lgamT[(5 : stdgo.GoInt)] + (_w * ((__lgamT[(8 : stdgo.GoInt)] + (_w * ((__lgamT[(11 : stdgo.GoInt)] + (_w * __lgamT[(14 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                            var _p = ((_z * _p1 : stdgo.GoFloat64) - (((-3.638676997039505e-18 : stdgo.GoFloat64) - (_w * ((_p2 + (_y * _p3 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                            _lgamma = (_lgamma + (((-0.12148629053584961 : stdgo.GoFloat64) + _p : stdgo.GoFloat64)) : stdgo.GoFloat64);
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            var _p1 = (_y * ((__lgamU[(0 : stdgo.GoInt)] + (_y * ((__lgamU[(1 : stdgo.GoInt)] + (_y * ((__lgamU[(2 : stdgo.GoInt)] + (_y * ((__lgamU[(3 : stdgo.GoInt)] + (_y * ((__lgamU[(4 : stdgo.GoInt)] + (_y * __lgamU[(5 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                            var _p2 = ((1 : stdgo.GoFloat64) + (_y * ((__lgamV[(1 : stdgo.GoInt)] + (_y * ((__lgamV[(2 : stdgo.GoInt)] + (_y * ((__lgamV[(3 : stdgo.GoInt)] + (_y * ((__lgamV[(4 : stdgo.GoInt)] + (_y * __lgamV[(5 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                            _lgamma = (_lgamma + ((((-0.5 : stdgo.GoFloat64) * _y : stdgo.GoFloat64) + (_p1 / _p2 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                        };
                    };
                    break;
                } else if ((_x < (8 : stdgo.GoFloat64) : Bool)) {
                    var _i = (_x : stdgo.GoInt);
                    var _y = (_x - (_i : stdgo.GoFloat64) : stdgo.GoFloat64);
                    var _p = (_y * ((__lgamS[(0 : stdgo.GoInt)] + (_y * ((__lgamS[(1 : stdgo.GoInt)] + (_y * ((__lgamS[(2 : stdgo.GoInt)] + (_y * ((__lgamS[(3 : stdgo.GoInt)] + (_y * ((__lgamS[(4 : stdgo.GoInt)] + (_y * ((__lgamS[(5 : stdgo.GoInt)] + (_y * __lgamS[(6 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    var _q = ((1 : stdgo.GoFloat64) + (_y * ((__lgamR[(1 : stdgo.GoInt)] + (_y * ((__lgamR[(2 : stdgo.GoInt)] + (_y * ((__lgamR[(3 : stdgo.GoInt)] + (_y * ((__lgamR[(4 : stdgo.GoInt)] + (_y * ((__lgamR[(5 : stdgo.GoInt)] + (_y * __lgamR[(6 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _lgamma = (((0.5 : stdgo.GoFloat64) * _y : stdgo.GoFloat64) + (_p / _q : stdgo.GoFloat64) : stdgo.GoFloat64);
                    var _z = (1 : stdgo.GoFloat64);
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _i;
                                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (7 : stdgo.GoInt)))) {
                                    _z = (_z * ((_y + (6 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                                    @:fallthrough {
                                        __switchIndex__ = 1;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (6 : stdgo.GoInt)))) {
                                    _z = (_z * ((_y + (5 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                                    @:fallthrough {
                                        __switchIndex__ = 2;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (5 : stdgo.GoInt)))) {
                                    _z = (_z * ((_y + (4 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                                    @:fallthrough {
                                        __switchIndex__ = 3;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (4 : stdgo.GoInt)))) {
                                    _z = (_z * ((_y + (3 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                                    @:fallthrough {
                                        __switchIndex__ = 4;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (3 : stdgo.GoInt)))) {
                                    _z = (_z * ((_y + (2 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                                    _lgamma = (_lgamma + (log(_z)) : stdgo.GoFloat64);
                                    break;
                                    break;
                                };
                            };
                            break;
                        };
                    };
                    break;
                } else if ((_x < (2.8823037615171174e+17 : stdgo.GoFloat64) : Bool)) {
                    var _t = (log(_x) : stdgo.GoFloat64);
                    var _z = ((1 : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
                    var _y = (_z * _z : stdgo.GoFloat64);
                    var _w = (__lgamW[(0 : stdgo.GoInt)] + (_z * ((__lgamW[(1 : stdgo.GoInt)] + (_y * ((__lgamW[(2 : stdgo.GoInt)] + (_y * ((__lgamW[(3 : stdgo.GoInt)] + (_y * ((__lgamW[(4 : stdgo.GoInt)] + (_y * ((__lgamW[(5 : stdgo.GoInt)] + (_y * __lgamW[(6 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _lgamma = ((((_x - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) * ((_t - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) + _w : stdgo.GoFloat64);
                    break;
                } else {
                    _lgamma = (_x * ((log(_x) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                };
                break;
            };
        };
        if (_neg) {
            _lgamma = (_nadj - _lgamma : stdgo.GoFloat64);
        };
        return { _0 : _lgamma, _1 : _sign };
    }
function _sinPi(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((_x < (0.25 : stdgo.GoFloat64) : Bool)) {
            return -sin(((3.141592653589793 : stdgo.GoFloat64) * _x : stdgo.GoFloat64));
        };
        var _z = (floor(_x) : stdgo.GoFloat64);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_z != (_x)) {
            _x = mod(_x, (2 : stdgo.GoFloat64));
            _n = ((_x * (4 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
        } else {
            if ((_x >= (9.007199254740992e+15 : stdgo.GoFloat64) : Bool)) {
                _x = (0 : stdgo.GoFloat64);
                _n = (0 : stdgo.GoInt);
            } else {
                if ((_x < (4.503599627370496e+15 : stdgo.GoFloat64) : Bool)) {
                    _z = (_x + (4.503599627370496e+15 : stdgo.GoFloat64) : stdgo.GoFloat64);
                };
                _n = (((1i64 : stdgo.GoUInt64) & float64bits(_z) : stdgo.GoUInt64) : stdgo.GoInt);
                _x = (_n : stdgo.GoFloat64);
                _n = (_n << ((2i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            };
        };
        {
            final __value__ = _n;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _x = sin(((3.141592653589793 : stdgo.GoFloat64) * _x : stdgo.GoFloat64));
            } else if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt))) {
                _x = cos(((3.141592653589793 : stdgo.GoFloat64) * (((0.5 : stdgo.GoFloat64) - _x : stdgo.GoFloat64)) : stdgo.GoFloat64));
            } else if (__value__ == ((3 : stdgo.GoInt)) || __value__ == ((4 : stdgo.GoInt))) {
                _x = sin(((3.141592653589793 : stdgo.GoFloat64) * (((1 : stdgo.GoFloat64) - _x : stdgo.GoFloat64)) : stdgo.GoFloat64));
            } else if (__value__ == ((5 : stdgo.GoInt)) || __value__ == ((6 : stdgo.GoInt))) {
                _x = -cos(((3.141592653589793 : stdgo.GoFloat64) * ((_x - (1.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64));
            } else {
                _x = sin(((3.141592653589793 : stdgo.GoFloat64) * ((_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64));
            };
        };
        return -_x;
    }
function log(_x:stdgo.GoFloat64):stdgo.GoFloat64 return std.Math.log(_x.toBasic());
function _log(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((isNaN(_x) || isInf(_x, (1 : stdgo.GoInt)) : Bool)) {
            return _x;
        } else if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            return naN();
        } else if (_x == (0 : stdgo.GoFloat64)) {
            return inf((-1 : stdgo.GoInt));
        };
        var __tmp__ = frexp(_x), _f1:stdgo.GoFloat64 = __tmp__._0, _ki:stdgo.GoInt = __tmp__._1;
        if ((_f1 < (0.7071067811865476 : stdgo.GoFloat64) : Bool)) {
            _f1 = (_f1 * (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
            _ki--;
        };
        var _f = (_f1 - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _k = (_ki : stdgo.GoFloat64);
        var _s = (_f / (((2 : stdgo.GoFloat64) + _f : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _s2 = (_s * _s : stdgo.GoFloat64);
        var _s4 = (_s2 * _s2 : stdgo.GoFloat64);
        var _t1 = (_s2 * (((0.6666666666666735 : stdgo.GoFloat64) + (_s4 * (((0.2857142874366239 : stdgo.GoFloat64) + (_s4 * (((0.1818357216161805 : stdgo.GoFloat64) + (_s4 * (0.14798198605116586 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _t2 = (_s4 * (((0.3999999999940942 : stdgo.GoFloat64) + (_s4 * (((0.22222198432149784 : stdgo.GoFloat64) + (_s4 * (0.15313837699209373 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var r = (_t1 + _t2 : stdgo.GoFloat64);
        var _hfsq = (((0.5 : stdgo.GoFloat64) * _f : stdgo.GoFloat64) * _f : stdgo.GoFloat64);
        return ((_k * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64) - ((((_hfsq - (((_s * ((_hfsq + r : stdgo.GoFloat64)) : stdgo.GoFloat64) + (_k * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) - _f : stdgo.GoFloat64)) : stdgo.GoFloat64);
    }
function log10(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archLog10(_x);
        };
        return _log10(_x);
    }
function _log10(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        return (log(_x) * (0.4342944819032518 : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
function log2(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archLog2(_x);
        };
        return _log2(_x);
    }
function _log2(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var __tmp__ = frexp(_x), _frac:stdgo.GoFloat64 = __tmp__._0, _exp:stdgo.GoInt = __tmp__._1;
        if (_frac == (0.5 : stdgo.GoFloat64)) {
            return ((_exp - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoFloat64);
        };
        return ((log(_frac) * (1.4426950408889634 : stdgo.GoFloat64) : stdgo.GoFloat64) + (_exp : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
function log1p(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archLog1p(_x);
        };
        return _log1p(_x);
    }
function _log1p(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (((_x < (-1 : stdgo.GoFloat64) : Bool) || isNaN(_x) : Bool)) {
            return naN();
        } else if (_x == (-1 : stdgo.GoFloat64)) {
            return inf((-1 : stdgo.GoInt));
        } else if (isInf(_x, (1 : stdgo.GoInt))) {
            return inf((1 : stdgo.GoInt));
        };
        var _absx = (abs(_x) : stdgo.GoFloat64);
        var _f:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _iu:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _k = (1 : stdgo.GoInt);
        if ((_absx < (0.41421356237309503 : stdgo.GoFloat64) : Bool)) {
            if ((_absx < (1.862645149230957e-09 : stdgo.GoFloat64) : Bool)) {
                if ((_absx < (5.551115123125783e-17 : stdgo.GoFloat64) : Bool)) {
                    return _x;
                };
                return (_x - ((_x * _x : stdgo.GoFloat64) * (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            if ((_x > (-0.2928932188134525 : stdgo.GoFloat64) : Bool)) {
                _k = (0 : stdgo.GoInt);
                _f = _x;
                _iu = (1i64 : stdgo.GoUInt64);
            };
        };
        var _c:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if (_k != ((0 : stdgo.GoInt))) {
            var _u:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            if ((_absx < (9.007199254740992e+15 : stdgo.GoFloat64) : Bool)) {
                _u = ((1 : stdgo.GoFloat64) + _x : stdgo.GoFloat64);
                _iu = float64bits(_u);
                _k = ((((_iu >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - (1023i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
                if ((_k > (0 : stdgo.GoInt) : Bool)) {
                    _c = ((1 : stdgo.GoFloat64) - ((_u - _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                } else {
                    _c = (_x - ((_u - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                };
                _c = (_c / (_u) : stdgo.GoFloat64);
            } else {
                _u = _x;
                _iu = float64bits(_u);
                _k = ((((_iu >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - (1023i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
                _c = (0 : stdgo.GoFloat64);
            };
            _iu = (_iu & ((4503599627370495i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            if ((_iu < (1865452045155277i64 : stdgo.GoUInt64) : Bool)) {
                _u = float64frombits((_iu | (4607182418800017408i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
            } else {
                _k++;
                _u = float64frombits((_iu | (4602678819172646912i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
                _iu = ((((4503599627370496i64 : stdgo.GoUInt64) - _iu : stdgo.GoUInt64)) >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            };
            _f = (_u - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        var _hfsq = (((0.5 : stdgo.GoFloat64) * _f : stdgo.GoFloat64) * _f : stdgo.GoFloat64);
        var __0:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __2:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var _z = __2, r = __1, _s = __0;
        if (_iu == ((0i64 : stdgo.GoUInt64))) {
            if (_f == (0 : stdgo.GoFloat64)) {
                if (_k == ((0 : stdgo.GoInt))) {
                    return (0 : stdgo.GoFloat64);
                };
                _c = (_c + (((_k : stdgo.GoFloat64) * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                return (((_k : stdgo.GoFloat64) * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64) + _c : stdgo.GoFloat64);
            };
            r = (_hfsq * (((1 : stdgo.GoFloat64) - ((0.6666666666666666 : stdgo.GoFloat64) * _f : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
            if (_k == ((0 : stdgo.GoInt))) {
                return (_f - r : stdgo.GoFloat64);
            };
            return (((_k : stdgo.GoFloat64) * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64) - ((((r - ((((_k : stdgo.GoFloat64) * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64) + _c : stdgo.GoFloat64)) : stdgo.GoFloat64)) - _f : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        _s = (_f / (((2 : stdgo.GoFloat64) + _f : stdgo.GoFloat64)) : stdgo.GoFloat64);
        _z = (_s * _s : stdgo.GoFloat64);
        r = (_z * (((0.6666666666666735 : stdgo.GoFloat64) + (_z * (((0.3999999999940942 : stdgo.GoFloat64) + (_z * (((0.2857142874366239 : stdgo.GoFloat64) + (_z * (((0.22222198432149784 : stdgo.GoFloat64) + (_z * (((0.1818357216161805 : stdgo.GoFloat64) + (_z * (((0.15313837699209373 : stdgo.GoFloat64) + (_z * (0.14798198605116586 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        if (_k == ((0 : stdgo.GoInt))) {
            return (_f - ((_hfsq - (_s * ((_hfsq + r : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        return (((_k : stdgo.GoFloat64) * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64) - ((((_hfsq - (((_s * ((_hfsq + r : stdgo.GoFloat64)) : stdgo.GoFloat64) + ((((_k : stdgo.GoFloat64) * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64) + _c : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64)) - _f : stdgo.GoFloat64)) : stdgo.GoFloat64);
    }
function _archLog(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function logb(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (_x == (0 : stdgo.GoFloat64)) {
            return inf((-1 : stdgo.GoInt));
        } else if (isInf(_x, (0 : stdgo.GoInt))) {
            return inf((1 : stdgo.GoInt));
        } else if (isNaN(_x)) {
            return _x;
        };
        return (_ilogb(_x) : stdgo.GoFloat64);
    }
function ilogb(_x:stdgo.GoFloat64):stdgo.GoInt {
        if (_x == (0 : stdgo.GoFloat64)) {
            return (-2147483648 : stdgo.GoInt);
        } else if (isNaN(_x)) {
            return (2147483647 : stdgo.GoInt);
        } else if (isInf(_x, (0 : stdgo.GoInt))) {
            return (2147483647 : stdgo.GoInt);
        };
        return _ilogb(_x);
    }
function _ilogb(_x:stdgo.GoFloat64):stdgo.GoInt {
        var __tmp__ = _normalize(_x), _x:stdgo.GoFloat64 = __tmp__._0, _exp:stdgo.GoInt = __tmp__._1;
        return ((((((float64bits(_x) >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (2047i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt) - (1023 : stdgo.GoInt) : stdgo.GoInt) + _exp : stdgo.GoInt);
    }
function mod(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 return _x.toBasic() % _y.toBasic();
function _mod(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        if ((((_y == (0 : stdgo.GoFloat64) || isInf(_x, (0 : stdgo.GoInt)) : Bool) || isNaN(_x) : Bool) || isNaN(_y) : Bool)) {
            return naN();
        };
        _y = abs(_y);
        var __tmp__ = frexp(_y), _yfr:stdgo.GoFloat64 = __tmp__._0, _yexp:stdgo.GoInt = __tmp__._1;
        var _r = (_x : stdgo.GoFloat64);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _r = -_x;
        };
        while ((_r >= _y : Bool)) {
            var __tmp__ = frexp(_r), _rfr:stdgo.GoFloat64 = __tmp__._0, _rexp:stdgo.GoInt = __tmp__._1;
            if ((_rfr < _yfr : Bool)) {
                _rexp = (_rexp - (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            _r = (_r - ldexp(_y, (_rexp - _yexp : stdgo.GoInt)) : stdgo.GoFloat64);
        };
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _r = -_r;
        };
        return _r;
    }
function modf(_f:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } {
        var _int = (0 : stdgo.GoFloat64), _frac = (0 : stdgo.GoFloat64);
        if (false) {
            return _archModf(_f);
        };
        return _modf(_f);
    }
function _modf(_f:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } {
        var _int = (0 : stdgo.GoFloat64), _frac = (0 : stdgo.GoFloat64);
        if ((_f < (1 : stdgo.GoFloat64) : Bool)) {
            if ((_f < (0 : stdgo.GoFloat64) : Bool)) {
                {
                    var __tmp__ = modf(-_f);
                    _int = __tmp__._0;
                    _frac = __tmp__._1;
                };
                return { _0 : -_int, _1 : -_frac };
            } else if (_f == (0 : stdgo.GoFloat64)) {
                return { _0 : _f, _1 : _f };
            };
            return { _0 : (0 : stdgo.GoFloat64), _1 : _f };
        };
        var _x = (float64bits(_f) : stdgo.GoUInt64);
        var _e = ((((_x >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt) & (2047u32 : stdgo.GoUInt) : stdgo.GoUInt) - (1023u32 : stdgo.GoUInt) : stdgo.GoUInt);
        if ((_e < (52u32 : stdgo.GoUInt) : Bool)) {
            _x = (_x & ((((((1i64 : stdgo.GoUInt64) << (((52u32 : stdgo.GoUInt) - _e : stdgo.GoUInt)) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        _int = float64frombits(_x);
        _frac = (_f - _int : stdgo.GoFloat64);
        return { _0 : _int, _1 : _frac };
    }
function _archModf(_f:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } {
        var _int = (0 : stdgo.GoFloat64), _frac = (0 : stdgo.GoFloat64);
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function nextafter32(_x:stdgo.GoFloat32, _y:stdgo.GoFloat32):stdgo.GoFloat32 {
        var _r = (0 : stdgo.GoFloat32);
        if ((isNaN((_x : stdgo.GoFloat64)) || isNaN((_y : stdgo.GoFloat64)) : Bool)) {
            _r = (naN() : stdgo.GoFloat32);
        } else if (_x == (_y)) {
            _r = _x;
        } else if (_x == (0 : stdgo.GoFloat64)) {
            _r = (copysign((float32frombits((1u32 : stdgo.GoUInt32)) : stdgo.GoFloat64), (_y : stdgo.GoFloat64)) : stdgo.GoFloat32);
        } else if (((_y > _x : Bool)) == ((_x > (0 : stdgo.GoFloat64) : Bool))) {
            _r = float32frombits((float32bits(_x) + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
        } else {
            _r = float32frombits((float32bits(_x) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
        };
        return _r;
    }
function nextafter(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _r = (0 : stdgo.GoFloat64);
        if ((isNaN(_x) || isNaN(_y) : Bool)) {
            _r = naN();
        } else if (_x == (_y)) {
            _r = _x;
        } else if (_x == (0 : stdgo.GoFloat64)) {
            _r = copysign(float64frombits((1i64 : stdgo.GoUInt64)), _y);
        } else if (((_y > _x : Bool)) == ((_x > (0 : stdgo.GoFloat64) : Bool))) {
            _r = float64frombits((float64bits(_x) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        } else {
            _r = float64frombits((float64bits(_x) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        };
        return _r;
    }
function _isOddInt(_x:stdgo.GoFloat64):Bool {
        if ((abs(_x) >= (9.007199254740992e+15 : stdgo.GoFloat64) : Bool)) {
            return false;
        };
        var __tmp__ = modf(_x), _xi:stdgo.GoFloat64 = __tmp__._0, _xf:stdgo.GoFloat64 = __tmp__._1;
        return ((_xf == (0 : stdgo.GoFloat64)) && (((_xi : stdgo.GoInt64) & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == (1i64 : stdgo.GoInt64)) : Bool);
    }
function pow(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        #if (js || interp) {
            if (_x == 1 && std.Math.isNaN(_y.toBasic())) return 1;
            if ((_x == -1 || _x == 1) && isInf(_y, 0)) return 1;
        } #else null #end;
        return std.Math.pow(_x.toBasic(), _y.toBasic());
    }
function _pow(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (((_y == (0 : stdgo.GoFloat64)) || (_x == (1 : stdgo.GoFloat64)) : Bool)) {
            return (1 : stdgo.GoFloat64);
        } else if (_y == (1 : stdgo.GoFloat64)) {
            return _x;
        } else if ((isNaN(_x) || isNaN(_y) : Bool)) {
            return naN();
        } else if (_x == (0 : stdgo.GoFloat64)) {
            if ((_y < (0 : stdgo.GoFloat64) : Bool)) {
                if ((signbit(_x) && _isOddInt(_y) : Bool)) {
                    return inf((-1 : stdgo.GoInt));
                };
                return inf((1 : stdgo.GoInt));
            } else if ((_y > (0 : stdgo.GoFloat64) : Bool)) {
                if ((signbit(_x) && _isOddInt(_y) : Bool)) {
                    return _x;
                };
                return (0 : stdgo.GoFloat64);
            };
        } else if (isInf(_y, (0 : stdgo.GoInt))) {
            if (_x == (-1 : stdgo.GoFloat64)) {
                return (1 : stdgo.GoFloat64);
            } else if (((abs(_x) < (1 : stdgo.GoFloat64) : Bool)) == (isInf(_y, (1 : stdgo.GoInt)))) {
                return (0 : stdgo.GoFloat64);
            } else {
                return inf((1 : stdgo.GoInt));
            };
        } else if (isInf(_x, (0 : stdgo.GoInt))) {
            if (isInf(_x, (-1 : stdgo.GoInt))) {
                return pow(((1 : stdgo.GoFloat64) / _x : stdgo.GoFloat64), -_y);
            };
            if ((_y < (0 : stdgo.GoFloat64) : Bool)) {
                return (0 : stdgo.GoFloat64);
            } else if ((_y > (0 : stdgo.GoFloat64) : Bool)) {
                return inf((1 : stdgo.GoInt));
            };
        } else if (_y == (0.5 : stdgo.GoFloat64)) {
            return sqrt(_x);
        } else if (_y == (-0.5 : stdgo.GoFloat64)) {
            return ((1 : stdgo.GoFloat64) / sqrt(_x) : stdgo.GoFloat64);
        };
        var __tmp__ = modf(abs(_y)), _yi:stdgo.GoFloat64 = __tmp__._0, _yf:stdgo.GoFloat64 = __tmp__._1;
        if (((_yf != (0 : stdgo.GoFloat64)) && (_x < (0 : stdgo.GoFloat64) : Bool) : Bool)) {
            return naN();
        };
        if ((_yi >= (9.223372036854776e+18 : stdgo.GoFloat64) : Bool)) {
            if (_x == (-1 : stdgo.GoFloat64)) {
                return (1 : stdgo.GoFloat64);
            } else if (((abs(_x) < (1 : stdgo.GoFloat64) : Bool)) == ((_y > (0 : stdgo.GoFloat64) : Bool))) {
                return (0 : stdgo.GoFloat64);
            } else {
                return inf((1 : stdgo.GoInt));
            };
        };
        var _a1 = (1 : stdgo.GoFloat64);
        var _ae = (0 : stdgo.GoInt);
        if (_yf != (0 : stdgo.GoFloat64)) {
            if ((_yf > (0.5 : stdgo.GoFloat64) : Bool)) {
                _yf--;
                _yi++;
            };
            _a1 = exp((_yf * log(_x) : stdgo.GoFloat64));
        };
        var __tmp__ = frexp(_x), _x1:stdgo.GoFloat64 = __tmp__._0, _xe:stdgo.GoInt = __tmp__._1;
        {
            var _i = (_yi : stdgo.GoInt64);
            stdgo.Go.cfor(_i != ((0i64 : stdgo.GoInt64)), _i = (_i >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt64), {
                if (((_xe < (-4096 : stdgo.GoInt) : Bool) || ((4096 : stdgo.GoInt) < _xe : Bool) : Bool)) {
                    _ae = (_ae + (_xe) : stdgo.GoInt);
                    break;
                };
                if ((_i & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((1i64 : stdgo.GoInt64))) {
                    _a1 = (_a1 * (_x1) : stdgo.GoFloat64);
                    _ae = (_ae + (_xe) : stdgo.GoInt);
                };
                _x1 = (_x1 * (_x1) : stdgo.GoFloat64);
                _xe = (_xe << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                if ((_x1 < (0.5 : stdgo.GoFloat64) : Bool)) {
                    _x1 = (_x1 + (_x1) : stdgo.GoFloat64);
                    _xe--;
                };
            });
        };
        if ((_y < (0 : stdgo.GoFloat64) : Bool)) {
            _a1 = ((1 : stdgo.GoFloat64) / _a1 : stdgo.GoFloat64);
            _ae = -_ae;
        };
        return ldexp(_a1, _ae);
    }
function pow10(_n:stdgo.GoInt):stdgo.GoFloat64 {
        if ((((0 : stdgo.GoInt) <= _n : Bool) && (_n <= (308 : stdgo.GoInt) : Bool) : Bool)) {
            return (_pow10postab32[(((_n : stdgo.GoUInt) / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] * _pow10tab[(((_n : stdgo.GoUInt) % (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] : stdgo.GoFloat64);
        };
        if ((((-323 : stdgo.GoInt) <= _n : Bool) && (_n <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return (_pow10negtab32[(((-_n : stdgo.GoUInt) / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] / _pow10tab[(((-_n : stdgo.GoUInt) % (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] : stdgo.GoFloat64);
        };
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            return inf((1 : stdgo.GoInt));
        };
        return (0 : stdgo.GoFloat64);
    }
function remainder(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archRemainder(_x, _y);
        };
        return _remainder(_x, _y);
    }
function _remainder(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((((isNaN(_x) || isNaN(_y) : Bool) || isInf(_x, (0 : stdgo.GoInt)) : Bool) || (_y == (0 : stdgo.GoFloat64)) : Bool)) {
            return naN();
        } else if (isInf(_y, (0 : stdgo.GoInt))) {
            return _x;
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        if ((_y < (0 : stdgo.GoFloat64) : Bool)) {
            _y = -_y;
        };
        if (_x == (_y)) {
            if (_sign) {
                var _zero = (0 : stdgo.GoFloat64);
                return -_zero;
            };
            return (0 : stdgo.GoFloat64);
        };
        if ((_y <= (8.988465674311579e+307 : stdgo.GoFloat64) : Bool)) {
            _x = mod(_x, (_y + _y : stdgo.GoFloat64));
        };
        if ((_y < (4.450147717014403e-308 : stdgo.GoFloat64) : Bool)) {
            if (((_x + _x : stdgo.GoFloat64) > _y : Bool)) {
                _x = (_x - (_y) : stdgo.GoFloat64);
                if (((_x + _x : stdgo.GoFloat64) >= _y : Bool)) {
                    _x = (_x - (_y) : stdgo.GoFloat64);
                };
            };
        } else {
            var _yHalf = ((0.5 : stdgo.GoFloat64) * _y : stdgo.GoFloat64);
            if ((_x > _yHalf : Bool)) {
                _x = (_x - (_y) : stdgo.GoFloat64);
                if ((_x >= _yHalf : Bool)) {
                    _x = (_x - (_y) : stdgo.GoFloat64);
                };
            };
        };
        if (_sign) {
            _x = -_x;
        };
        return _x;
    }
function signbit(_x:stdgo.GoFloat64):Bool {
        if (std.Math.isNaN(_x.toBasic())) return false;
        return float64bits(_x) & ((1 : stdgo.GoUInt64) << (63 : stdgo.GoUInt64)) != (0 : stdgo.GoUInt64);
    }
function cos(_x:stdgo.GoFloat64):stdgo.GoFloat64 return std.Math.cos(_x.toBasic());
inline function _cos(_x:stdgo.GoFloat64):stdgo.GoFloat64 return cos(_x);
function sin(_x:stdgo.GoFloat64):stdgo.GoFloat64 return std.Math.sin(_x.toBasic());
inline function _sin(_x:stdgo.GoFloat64):stdgo.GoFloat64 return sin(_x);
function sincos(_x:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } {
        var _sin = (0 : stdgo.GoFloat64), _cos = (0 : stdgo.GoFloat64);
        {};
        if (_x == (0 : stdgo.GoFloat64)) {
            return { _0 : _x, _1 : (1 : stdgo.GoFloat64) };
        } else if ((isNaN(_x) || isInf(_x, (0 : stdgo.GoInt)) : Bool)) {
            return { _0 : naN(), _1 : naN() };
        };
        var __0 = (false : Bool), __1 = (false : Bool);
var _cosSign = __1, _sinSign = __0;
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sinSign = true;
        };
        var _j:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var __0:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var _z = __1, _y = __0;
        if ((_x >= (5.36870912e+08 : stdgo.GoFloat64) : Bool)) {
            {
                var __tmp__ = _trigReduce(_x);
                _j = __tmp__._0;
                _z = __tmp__._1;
            };
        } else {
            _j = ((_x * (1.2732395447351628 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoUInt64);
            _y = (_j : stdgo.GoFloat64);
            if ((_j & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64))) {
                _j++;
                _y++;
            };
            _j = (_j & ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _z = (((((_x - (_y * (0.7853981256484985 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) - (_y * (3.774894707930798e-08 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) - (_y * (2.6951514290790595e-15 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        if ((_j > (3i64 : stdgo.GoUInt64) : Bool)) {
            _j = (_j - ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            {
                final __tmp__0 = !_sinSign;
                final __tmp__1 = !_cosSign;
                _sinSign = __tmp__0;
                _cosSign = __tmp__1;
            };
        };
        if ((_j > (1i64 : stdgo.GoUInt64) : Bool)) {
            _cosSign = !_cosSign;
        };
        var _zz = (_z * _z : stdgo.GoFloat64);
        _cos = (((1 : stdgo.GoFloat64) - ((0.5 : stdgo.GoFloat64) * _zz : stdgo.GoFloat64) : stdgo.GoFloat64) + ((_zz * _zz : stdgo.GoFloat64) * ((((((((((((((((__cos[(0 : stdgo.GoInt)] * _zz : stdgo.GoFloat64)) + __cos[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + __cos[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + __cos[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + __cos[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + __cos[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        _sin = (_z + ((_z * _zz : stdgo.GoFloat64) * ((((((((((((((((__sin[(0 : stdgo.GoInt)] * _zz : stdgo.GoFloat64)) + __sin[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + __sin[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + __sin[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + __sin[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + __sin[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        if (((_j == (1i64 : stdgo.GoUInt64)) || (_j == (2i64 : stdgo.GoUInt64)) : Bool)) {
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
function sinh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archSinh(_x);
        };
        return _sinh(_x);
    }
function _sinh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        var _temp:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if ((_x > (21 : stdgo.GoFloat64) : Bool)) {
            _temp = (exp(_x) * (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else if ((_x > (0.5 : stdgo.GoFloat64) : Bool)) {
            var _ex = (exp(_x) : stdgo.GoFloat64);
            _temp = (((_ex - ((1 : stdgo.GoFloat64) / _ex : stdgo.GoFloat64) : stdgo.GoFloat64)) * (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else {
            var _sq = (_x * _x : stdgo.GoFloat64);
            _temp = (((((((((((-26.30563213397497 : stdgo.GoFloat64) * _sq : stdgo.GoFloat64) + (-2894.211355989564 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _sq : stdgo.GoFloat64) + (-89912.72022039509 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _sq : stdgo.GoFloat64) + (-630767.3640497717 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64);
            _temp = (_temp / ((((((((_sq + (-173.6789535582337 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _sq : stdgo.GoFloat64) + (15215.17378790019 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _sq : stdgo.GoFloat64) + (-630767.3640497717 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        if (_sign) {
            _temp = -_temp;
        };
        return _temp;
    }
function cosh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archCosh(_x);
        };
        return _cosh(_x);
    }
function _cosh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        _x = abs(_x);
        if ((_x > (21 : stdgo.GoFloat64) : Bool)) {
            return (exp(_x) * (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        var _ex = (exp(_x) : stdgo.GoFloat64);
        return (((_ex + ((1 : stdgo.GoFloat64) / _ex : stdgo.GoFloat64) : stdgo.GoFloat64)) * (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
function sqrt(_x:stdgo.GoFloat64):stdgo.GoFloat64 return _sqrt(_x);
inline function _sqrt(_x:stdgo.GoFloat64):stdgo.GoFloat64 return std.Math.sqrt(_x.toBasic());
function _archAcos(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archAcosh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archAsin(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archAsinh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archAtan(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archAtan2(_y:stdgo.GoFloat64, _x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archAtanh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archCbrt(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archCos(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archCosh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archErf(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archErfc(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archExpm1(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archFrexp(_x:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archLdexp(_frac:stdgo.GoFloat64, _exp:stdgo.GoInt):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archLog10(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archLog2(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archLog1p(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archMod(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archPow(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archRemainder(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archSin(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archSinh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archTan(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function _archTanh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
function tan(_x:stdgo.GoFloat64):stdgo.GoFloat64 return std.Math.tan(_x.toBasic());
function _tan(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (((_x == (0 : stdgo.GoFloat64)) || isNaN(_x) : Bool)) {
            return _x;
        } else if (isInf(_x, (0 : stdgo.GoInt))) {
            return naN();
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        var _j:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var __0:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var _z = __1, _y = __0;
        if ((_x >= (5.36870912e+08 : stdgo.GoFloat64) : Bool)) {
            {
                var __tmp__ = _trigReduce(_x);
                _j = __tmp__._0;
                _z = __tmp__._1;
            };
        } else {
            _j = ((_x * (1.2732395447351628 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoUInt64);
            _y = (_j : stdgo.GoFloat64);
            if ((_j & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64))) {
                _j++;
                _y++;
            };
            _z = (((((_x - (_y * (0.7853981256484985 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) - (_y * (3.774894707930798e-08 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) - (_y * (2.6951514290790595e-15 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        var _zz = (_z * _z : stdgo.GoFloat64);
        if ((_zz > (1e-14 : stdgo.GoFloat64) : Bool)) {
            _y = (_z + (_z * (((_zz * (((((((__tanP[(0 : stdgo.GoInt)] * _zz : stdgo.GoFloat64)) + __tanP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + __tanP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64) / (((((((((((_zz + __tanQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + __tanQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + __tanQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + __tanQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else {
            _y = _z;
        };
        if ((_j & (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((2i64 : stdgo.GoUInt64))) {
            _y = ((-1 : stdgo.GoFloat64) / _y : stdgo.GoFloat64);
        };
        if (_sign) {
            _y = -_y;
        };
        return _y;
    }
function tanh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (false) {
            return _archTanh(_x);
        };
        return _tanh(_x);
    }
function _tanh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        var _z = (abs(_x) : stdgo.GoFloat64);
        if ((_z > (44.014845965556525 : stdgo.GoFloat64) : Bool)) {
            if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                return (-1 : stdgo.GoFloat64);
            };
            return (1 : stdgo.GoFloat64);
        } else if ((_z >= (0.625 : stdgo.GoFloat64) : Bool)) {
            var _s = (exp(((2 : stdgo.GoFloat64) * _z : stdgo.GoFloat64)) : stdgo.GoFloat64);
            _z = ((1 : stdgo.GoFloat64) - ((2 : stdgo.GoFloat64) / ((_s + (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
            if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                _z = -_z;
            };
        } else {
            if (_x == (0 : stdgo.GoFloat64)) {
                return _x;
            };
            var _s = (_x * _x : stdgo.GoFloat64);
            _z = (_x + (((_x * _s : stdgo.GoFloat64) * ((((((_tanhP[(0 : stdgo.GoInt)] * _s : stdgo.GoFloat64) + _tanhP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _s : stdgo.GoFloat64) + _tanhP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64) / ((((((((_s + _tanhQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64)) * _s : stdgo.GoFloat64) + _tanhQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _s : stdgo.GoFloat64) + _tanhQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        return _z;
    }
function _trigReduce(_x:stdgo.GoFloat64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; } {
        var _j = (0 : stdgo.GoUInt64), _z = (0 : stdgo.GoFloat64);
        {};
        if ((_x < (0.7853981633974483 : stdgo.GoFloat64) : Bool)) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : _x };
        };
        var _ix = (float64bits(_x) : stdgo.GoUInt64);
        var _exp = (((((_ix >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & (2047i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt) - (1023 : stdgo.GoInt) : stdgo.GoInt) - (52 : stdgo.GoInt) : stdgo.GoInt);
        _ix = (_ix & ((((9218868437227405312i64 : stdgo.GoUInt64)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _ix = (_ix | ((4503599627370496i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var __0 = (((_exp + (61 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) / (64u32 : stdgo.GoUInt) : stdgo.GoUInt), __1 = (((_exp + (61 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) % (64u32 : stdgo.GoUInt) : stdgo.GoUInt);
var _bitshift = __1, _digit = __0;
        var _z0 = (((_mPi4[(_digit : stdgo.GoInt)] << _bitshift : stdgo.GoUInt64)) | ((_mPi4[((_digit + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] >> (((64u32 : stdgo.GoUInt) - _bitshift : stdgo.GoUInt)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _z1 = (((_mPi4[((_digit + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] << _bitshift : stdgo.GoUInt64)) | ((_mPi4[((_digit + (2u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] >> (((64u32 : stdgo.GoUInt) - _bitshift : stdgo.GoUInt)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _z2 = (((_mPi4[((_digit + (2u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] << _bitshift : stdgo.GoUInt64)) | ((_mPi4[((_digit + (3u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] >> (((64u32 : stdgo.GoUInt) - _bitshift : stdgo.GoUInt)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var __tmp__ = stdgo._internal.math.bits.Bits.mul64(_z2, _ix), _z2hi:stdgo.GoUInt64 = __tmp__._0, __0:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits.mul64(_z1, _ix), _z1hi:stdgo.GoUInt64 = __tmp__._0, _z1lo:stdgo.GoUInt64 = __tmp__._1;
        var _z0lo = (_z0 * _ix : stdgo.GoUInt64);
        var __tmp__ = stdgo._internal.math.bits.Bits.add64(_z1lo, _z2hi, (0i64 : stdgo.GoUInt64)), _lo:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits.add64(_z0lo, _z1hi, _c), _hi:stdgo.GoUInt64 = __tmp__._0, __1:stdgo.GoUInt64 = __tmp__._1;
        _j = (_hi >> (61i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _hi = ((_hi << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_lo >> (61i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _lz = (stdgo._internal.math.bits.Bits.leadingZeros64(_hi) : stdgo.GoUInt);
        var _e = (((1023u32 : stdgo.GoUInt) - ((_lz + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoUInt64);
        _hi = (((_hi << ((_lz + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64)) | ((_lo >> (((64u32 : stdgo.GoUInt) - ((_lz + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _hi = (_hi >> ((12i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _hi = (_hi | ((_e << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _z = float64frombits(_hi);
        if ((_j & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64))) {
            _j++;
            _j = (_j & ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _z--;
        };
        return { _0 : _j, _1 : (_z * (0.7853981633974483 : stdgo.GoFloat64) : stdgo.GoFloat64) };
    }
function float32bits(_f:stdgo.GoFloat32):stdgo.GoUInt32 {
        final bits = haxe.io.Bytes.alloc(4);
        bits.setFloat(0, _f.toBasic());
        return (bits.get(0)) | (bits.get(1) << 8) | (bits.get(2) << 16) | (bits.get(3) << 24);
    }
function float32frombits(_b:stdgo.GoUInt32):stdgo.GoFloat32 {
        final bits = haxe.io.Bytes.alloc(4);
        final v = _b.toBasic();
        bits.set(0, v & 0xff);
        bits.set(1, (v >> 8) & 0xff);
        bits.set(2, (v >> 16) & 0xff);
        bits.set(3, (v >> 24) & 0xff);
        return bits.getFloat(0);
    }
function float64bits(_f:stdgo.GoFloat64):stdgo.GoUInt64 {
        final bits = haxe.io.Bytes.alloc(8);
        bits.setDouble(0, _f.toBasic());
        return haxe.Int64.make(bits.get(4) | (bits.get(5) << 8) | (bits.get(6) << 16) | (bits.get(7) << 24), bits.get(0) | (bits.get(1) << 8) | (bits.get(2) << 16) | (bits.get(3) << 24));
    }
function float64frombits(_b:stdgo.GoUInt64):stdgo.GoFloat64 {
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
function negZero() {
        return copysign(0.0, -1.0);
    }
