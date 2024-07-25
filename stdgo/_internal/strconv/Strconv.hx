package stdgo._internal.strconv;
private var __go2hxdoc__package : Bool;
final _fnParseComplex : stdgo.GoString = ("ParseComplex" : stdgo.GoString);
final _fnParseFloat : stdgo.GoString = ("ParseFloat" : stdgo.GoString);
final _intSize : stdgo.GoUInt64 = (32i64 : stdgo.GoUInt64);
final intSize : stdgo.GoUInt64 = (32i64 : stdgo.GoUInt64);
final _maxUint64 : stdgo.GoUInt64 = (-1i64 : stdgo.GoUInt64);
final _uintSize : stdgo.GoUInt64 = (32i64 : stdgo.GoUInt64);
final _maxShift : stdgo.GoUInt64 = (28i64 : stdgo.GoUInt64);
final _detailedPowersOfTenMinExp10 : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final _detailedPowersOfTenMaxExp10 : stdgo.GoUInt64 = (347i64 : stdgo.GoUInt64);
final _fastSmalls : Bool = true;
final _nSmalls : stdgo.GoUInt64 = (100i64 : stdgo.GoUInt64);
final _smallsString : stdgo.GoString = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString);
final _host32bit : Bool = true;
final _digits : stdgo.GoString = ("0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString);
final _lowerhex : stdgo.GoString = ("0123456789abcdef" : stdgo.GoString);
final _upperhex : stdgo.GoString = ("0123456789ABCDEF" : stdgo.GoString);
var _optimize : Bool = true;
var _powtab : stdgo.Slice<stdgo.GoInt> = (new stdgo.Slice<stdgo.GoInt>(9, 9, ...[(1 : stdgo.GoInt), (3 : stdgo.GoInt), (6 : stdgo.GoInt), (9 : stdgo.GoInt), (13 : stdgo.GoInt), (16 : stdgo.GoInt), (19 : stdgo.GoInt), (23 : stdgo.GoInt), (26 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
var _float64pow10 : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(23, 23, ...[
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
(1e+22 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _float32pow10 : stdgo.Slice<stdgo.GoFloat32> = (new stdgo.Slice<stdgo.GoFloat32>(11, 11, ...[
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
(1e+10 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat32>);
var errRange : stdgo.Error = stdgo._internal.errors.Errors.new_(("value out of range" : stdgo.GoString));
var errSyntax : stdgo.Error = stdgo._internal.errors.Errors.new_(("invalid syntax" : stdgo.GoString));
var _leftcheats : stdgo.Slice<stdgo._internal.strconv.Strconv.T_leftCheat> = (new stdgo.Slice<stdgo._internal.strconv.Strconv.T_leftCheat>(61, 61, ...[
(new stdgo._internal.strconv.Strconv.T_leftCheat((0 : stdgo.GoInt), stdgo.Go.str()?.__copy__()) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((1 : stdgo.GoInt), ("5" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((1 : stdgo.GoInt), ("25" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((1 : stdgo.GoInt), ("125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((2 : stdgo.GoInt), ("625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((2 : stdgo.GoInt), ("3125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((2 : stdgo.GoInt), ("15625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((3 : stdgo.GoInt), ("78125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((3 : stdgo.GoInt), ("390625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((3 : stdgo.GoInt), ("1953125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((4 : stdgo.GoInt), ("9765625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((4 : stdgo.GoInt), ("48828125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((4 : stdgo.GoInt), ("244140625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((4 : stdgo.GoInt), ("1220703125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((5 : stdgo.GoInt), ("6103515625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((5 : stdgo.GoInt), ("30517578125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((5 : stdgo.GoInt), ("152587890625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((6 : stdgo.GoInt), ("762939453125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((6 : stdgo.GoInt), ("3814697265625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((6 : stdgo.GoInt), ("19073486328125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((7 : stdgo.GoInt), ("95367431640625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((7 : stdgo.GoInt), ("476837158203125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((7 : stdgo.GoInt), ("2384185791015625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((7 : stdgo.GoInt), ("11920928955078125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((8 : stdgo.GoInt), ("59604644775390625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((8 : stdgo.GoInt), ("298023223876953125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((8 : stdgo.GoInt), ("1490116119384765625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((9 : stdgo.GoInt), ("7450580596923828125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((9 : stdgo.GoInt), ("37252902984619140625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((9 : stdgo.GoInt), ("186264514923095703125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((10 : stdgo.GoInt), ("931322574615478515625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((10 : stdgo.GoInt), ("4656612873077392578125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((10 : stdgo.GoInt), ("23283064365386962890625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((10 : stdgo.GoInt), ("116415321826934814453125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((11 : stdgo.GoInt), ("582076609134674072265625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((11 : stdgo.GoInt), ("2910383045673370361328125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((11 : stdgo.GoInt), ("14551915228366851806640625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((12 : stdgo.GoInt), ("72759576141834259033203125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((12 : stdgo.GoInt), ("363797880709171295166015625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((12 : stdgo.GoInt), ("1818989403545856475830078125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((13 : stdgo.GoInt), ("9094947017729282379150390625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((13 : stdgo.GoInt), ("45474735088646411895751953125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((13 : stdgo.GoInt), ("227373675443232059478759765625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((13 : stdgo.GoInt), ("1136868377216160297393798828125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((14 : stdgo.GoInt), ("5684341886080801486968994140625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((14 : stdgo.GoInt), ("28421709430404007434844970703125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((14 : stdgo.GoInt), ("142108547152020037174224853515625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((15 : stdgo.GoInt), ("710542735760100185871124267578125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((15 : stdgo.GoInt), ("3552713678800500929355621337890625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((15 : stdgo.GoInt), ("17763568394002504646778106689453125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((16 : stdgo.GoInt), ("88817841970012523233890533447265625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((16 : stdgo.GoInt), ("444089209850062616169452667236328125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((16 : stdgo.GoInt), ("2220446049250313080847263336181640625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((16 : stdgo.GoInt), ("11102230246251565404236316680908203125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((17 : stdgo.GoInt), ("55511151231257827021181583404541015625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((17 : stdgo.GoInt), ("277555756156289135105907917022705078125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((17 : stdgo.GoInt), ("1387778780781445675529539585113525390625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((18 : stdgo.GoInt), ("6938893903907228377647697925567626953125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((18 : stdgo.GoInt), ("34694469519536141888238489627838134765625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((18 : stdgo.GoInt), ("173472347597680709441192448139190673828125" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat),
(new stdgo._internal.strconv.Strconv.T_leftCheat((19 : stdgo.GoInt), ("867361737988403547205962240695953369140625" : stdgo.GoString)) : stdgo._internal.strconv.Strconv.T_leftCheat)].concat([for (i in 61 ... (61 > 61 ? 61 : 61 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strconv.Strconv.T_leftCheat)])) : stdgo.Slice<stdgo._internal.strconv.Strconv.T_leftCheat>);
var _detailedPowersOfTen : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>> = (new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>(696, 696, ...[
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1671618768450675795i64 : stdgo.GoUInt64), (-391859759250406776i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1044761730281672372i64 : stdgo.GoUInt64), (-7162441377172586091i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5917638181279478369i64 : stdgo.GoUInt64), (-4341365703038344710i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1826324310255427847i64 : stdgo.GoUInt64), (-815021110370542984i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8058981721550724260i64 : stdgo.GoUInt64), (-7426917221622671221i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8373016921771146291i64 : stdgo.GoUInt64), (-4671960508600951122i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1242899115359157055i64 : stdgo.GoUInt64), (-1228264617323800998i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5388497965526861063i64 : stdgo.GoUInt64), (-7685194413468457480i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6735622456908576329i64 : stdgo.GoUInt64), (-4994806998408183946i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-803843965719055396i64 : stdgo.GoUInt64), (-1631822729582842029i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8720969558280366185i64 : stdgo.GoUInt64), (-7937418233630358124i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7545532125859093884i64 : stdgo.GoUInt64), (-5310086773610559751i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-208543120469091547i64 : stdgo.GoUInt64), (-2025922448585811785i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-130339450293182217i64 : stdgo.GoUInt64), (-8183730558007214222i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4774610331293865675i64 : stdgo.GoUInt64), (-5617977179081629873i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5968262914117332094i64 : stdgo.GoUInt64), (-2410785455424649437i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5493207715531443249i64 : stdgo.GoUInt64), (-8424269937281487754i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2356862392440471747i64 : stdgo.GoUInt64), (-5918651403174471789i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2946077990550589683i64 : stdgo.GoUInt64), (-2786628235540701832i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8758827771735200408i64 : stdgo.GoUInt64), (-8659171674854020501i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7498209359040551106i64 : stdgo.GoUInt64), (-6212278575140137722i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(149389661945913074i64 : stdgo.GoUInt64), (-3153662200497784248i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(93368538716195671i64 : stdgo.GoUInt64), (-8888567902952197011i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4728396691822632493i64 : stdgo.GoUInt64), (-6499023860262858360i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5910495864778290617i64 : stdgo.GoUInt64), (-3512093806901185046i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8305745933913819539i64 : stdgo.GoUInt64), (-9112587656954322510i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1158810380537498616i64 : stdgo.GoUInt64), (-6779048552765515233i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3163173042755514634i64 : stdgo.GoUInt64), (-3862124672529506138i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8565652321871781196i64 : stdgo.GoUInt64), (-215969822234494768i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6175682344898606512i64 : stdgo.GoUInt64), (-7052510166537641086i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1503769105731517667i64 : stdgo.GoUInt64), (-4203951689744663454i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6491397400591784988i64 : stdgo.GoUInt64), (-643253593753441413i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5166248661484910190i64 : stdgo.GoUInt64), (-7319562523736982739i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7377247228426025974i64 : stdgo.GoUInt64), (-4537767136243840520i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4609873017105144563i64 : stdgo.GoUInt64), (-1060522901877412746i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4036358391950366504i64 : stdgo.GoUInt64), (-7580355841314464822i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4177924046916817678i64 : stdgo.GoUInt64), (-4863758783215693124i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-610719040218634194i64 : stdgo.GoUInt64), (-1468012460592228501i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8841672636718129437i64 : stdgo.GoUInt64), (-7835036815511224669i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6440404777470273892i64 : stdgo.GoUInt64), (-5182110000961642932i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8050505971837842365i64 : stdgo.GoUInt64), (-1865951482774665761i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6497648813669818282i64 : stdgo.GoUInt64), (-8083748704375247957i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8122061017087272852i64 : stdgo.GoUInt64), (-5492999862041672042i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3682481783923072647i64 : stdgo.GoUInt64), (-2254563809124702148i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6921820921902855404i64 : stdgo.GoUInt64), (-8326631408344020699i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(571095884476206553i64 : stdgo.GoUInt64), (-5796603242002637969i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3897816162832129712i64 : stdgo.GoUInt64), (-2634068034075909558i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4741978110983775022i64 : stdgo.GoUInt64), (-8563821548938525330i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7907585416552444934i64 : stdgo.GoUInt64), (-6093090917745768758i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(661109733835780360i64 : stdgo.GoUInt64), (-3004677628754823043i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2719036592861056677i64 : stdgo.GoUInt64), (-8795452545612846258i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5824576295778454962i64 : stdgo.GoUInt64), (-6382629663588669919i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1942651667131707105i64 : stdgo.GoUInt64), (-3366601061058449494i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5825843310384704845i64 : stdgo.GoUInt64), (-9021654690802612790i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1941067898873894752i64 : stdgo.GoUInt64), (-6665382345075878084i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2185351144835019464i64 : stdgo.GoUInt64), (-3720041912917459700i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2731688931043774330i64 : stdgo.GoUInt64), (-38366372719436721i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8624834609543440812i64 : stdgo.GoUInt64), (-6941508010590729807i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3054014793352862697i64 : stdgo.GoUInt64), (-4065198994811024355i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5405853545163697437i64 : stdgo.GoUInt64), (-469812725086392539i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5684501474941004850i64 : stdgo.GoUInt64), (-7211161980820077193i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2493940825248868159i64 : stdgo.GoUInt64), (-4402266457597708587i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7729112049988473103i64 : stdgo.GoUInt64), (-891147053569747830i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-9004363024039368023i64 : stdgo.GoUInt64), (-7474495936122174250i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2579604275232953683i64 : stdgo.GoUInt64), (-4731433901725329908i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3224505344041192104i64 : stdgo.GoUInt64), (-1302606358729274481i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8932844867666826921i64 : stdgo.GoUInt64), (-7731658001846878407i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2669001970698630061i64 : stdgo.GoUInt64), (-5052886483881210105i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3336252463373287576i64 : stdgo.GoUInt64), (-1704422086424124727i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2526528228819083169i64 : stdgo.GoUInt64), (-7982792831656159810i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6065211750830921846i64 : stdgo.GoUInt64), (-5366805021142811859i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1641857348316123500i64 : stdgo.GoUInt64), (-2096820258001126919i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5891368184943504669i64 : stdgo.GoUInt64), (-8228041688891786181i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7364210231179380836i64 : stdgo.GoUInt64), (-5673366092687344822i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4629795266307937667i64 : stdgo.GoUInt64), (-2480021597431793123i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5199465050656154994i64 : stdgo.GoUInt64), (-8467542526035952558i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2724040723534582065i64 : stdgo.GoUInt64), (-5972742139117552794i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8016736922845615486i64 : stdgo.GoUInt64), (-2854241655469553088i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6518754469289960081i64 : stdgo.GoUInt64), (-8701430062309552536i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8148443086612450102i64 : stdgo.GoUInt64), (-6265101559459552766i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(962181821410786819i64 : stdgo.GoUInt64), (-3219690930897053053i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1704479370831952190i64 : stdgo.GoUInt64), (-8929835859451740015i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7092772823314835570i64 : stdgo.GoUInt64), (-6550608805887287114i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-357406007711231345i64 : stdgo.GoUInt64), (-3576574988931720989i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8999993282035256217i64 : stdgo.GoUInt64), (-9152888395723407474i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2026619565689294464i64 : stdgo.GoUInt64), (-6829424476226871438i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6690097579743157728i64 : stdgo.GoUInt64), (-3925094576856201394i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5472436080603216552i64 : stdgo.GoUInt64), (-294682202642863838i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8031958568804398249i64 : stdgo.GoUInt64), (-7101705404292871755i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3795109844276665901i64 : stdgo.GoUInt64), (-4265445736938701790i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(9091170749936331336i64 : stdgo.GoUInt64), (-720121152745989333i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3376138709496513133i64 : stdgo.GoUInt64), (-7367604748107325189i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-391512631556746488i64 : stdgo.GoUInt64), (-4597819916706768583i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8733981247408842698i64 : stdgo.GoUInt64), (-1135588877456072824i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5458738279630526686i64 : stdgo.GoUInt64), (-7627272076051127371i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7011635205744005354i64 : stdgo.GoUInt64), (-4922404076636521310i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5070514048102157020i64 : stdgo.GoUInt64), (-1541319077368263733i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(863228270850154185i64 : stdgo.GoUInt64), (-7880853450996246689i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3532650679864695173i64 : stdgo.GoUInt64), (-5239380795317920458i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-9027499368258256870i64 : stdgo.GoUInt64), (-1937539975720012668i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3336344095947716592i64 : stdgo.GoUInt64), (-8128491512466089774i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8782116138362033643i64 : stdgo.GoUInt64), (-5548928372155224313i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7469098900757009562i64 : stdgo.GoUInt64), (-2324474446766642487i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2249342214667950880i64 : stdgo.GoUInt64), (-8370325556870233411i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6411694268519837208i64 : stdgo.GoUInt64), (-5851220927660403859i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5820440219632367202i64 : stdgo.GoUInt64), (-2702340141148116920i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7891439908798240259i64 : stdgo.GoUInt64), (-8606491615858654931i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3970758169284363389i64 : stdgo.GoUInt64), (-6146428501395930760i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-351761693178066332i64 : stdgo.GoUInt64), (-3071349608317525546i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6697677969404790399i64 : stdgo.GoUInt64), (-8837122532839535322i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-851274575098787810i64 : stdgo.GoUInt64), (-6434717147622031249i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1064093218873484762i64 : stdgo.GoUInt64), (-3431710416100151157i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8558313775058847832i64 : stdgo.GoUInt64), (-9062348037703676329i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6086206200396171886i64 : stdgo.GoUInt64), (-6716249028702207507i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6227300304786948855i64 : stdgo.GoUInt64), (-3783625267450371480i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3172439362556298164i64 : stdgo.GoUInt64), (-117845565885576446i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4288617610811380305i64 : stdgo.GoUInt64), (-6991182506319567135i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3862600023340550427i64 : stdgo.GoUInt64), (-4127292114472071014i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4395122007679087774i64 : stdgo.GoUInt64), (-547429124662700864i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8782263791269039901i64 : stdgo.GoUInt64), (-7259672230555269896i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7468914334623251740i64 : stdgo.GoUInt64), (-4462904269766699466i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4498915137003099037i64 : stdgo.GoUInt64), (-966944318780986428i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6411550076227838910i64 : stdgo.GoUInt64), (-7521869226879198374i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5820620459997365075i64 : stdgo.GoUInt64), (-4790650515171610063i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6559282480285457368i64 : stdgo.GoUInt64), (-1376627125537124675i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8711237568605798759i64 : stdgo.GoUInt64), (-7777920981101784778i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2946011094524915263i64 : stdgo.GoUInt64), (-5110715207949843068i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3682513868156144079i64 : stdgo.GoUInt64), (-1776707991509915931i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4607414176811284001i64 : stdgo.GoUInt64), (-8027971522334779313i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1147581702586717097i64 : stdgo.GoUInt64), (-5423278384491086237i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3177208890193991532i64 : stdgo.GoUInt64), (-2167411962186469893i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7237616480483531100i64 : stdgo.GoUInt64), (-8272161504007625539i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4788037454677749837i64 : stdgo.GoUInt64), (-5728515861582144020i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1373360799919799392i64 : stdgo.GoUInt64), (-2548958808550292121i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-858350499949874620i64 : stdgo.GoUInt64), (-8510628282985014432i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3538747893490044629i64 : stdgo.GoUInt64), (-6026599335303880135i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(9035120885289943691i64 : stdgo.GoUInt64), (-2921563150702462265i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5882264492762254953i64 : stdgo.GoUInt64), (-8743505996830120772i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2741144597525430788i64 : stdgo.GoUInt64), (-6317696477610263061i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3426430746906788485i64 : stdgo.GoUInt64), (-3285434578585440922i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4776009810824339053i64 : stdgo.GoUInt64), (-8970925639256982432i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5970012263530423816i64 : stdgo.GoUInt64), (-6601971030643840136i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7462515329413029771i64 : stdgo.GoUInt64), (-3640777769877412266i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(52386062455755702i64 : stdgo.GoUInt64), (-9193015133814464522i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-9157889458785081180i64 : stdgo.GoUInt64), (-6879582898840692749i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6999382250228200141i64 : stdgo.GoUInt64), (-3987792605123478032i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8749227812785250177i64 : stdgo.GoUInt64), (-373054737976959636i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3755104653863994448i64 : stdgo.GoUInt64), (-7150688238876681629i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4693880817329993060i64 : stdgo.GoUInt64), (-4326674280168464132i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1255665003235103420i64 : stdgo.GoUInt64), (-796656831783192261i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8438581409832836170i64 : stdgo.GoUInt64), (-7415439547505577019i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3286831292991118499i64 : stdgo.GoUInt64), (-4657613415954583370i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8720225134666286028i64 : stdgo.GoUInt64), (-1210330751515841308i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3144297699952734816i64 : stdgo.GoUInt64), (-7673985747338482674i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8542058143368306423i64 : stdgo.GoUInt64), (-4980796165745715438i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3157485376071780683i64 : stdgo.GoUInt64), (-1614309188754756393i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8890957387685944783i64 : stdgo.GoUInt64), (-7926472270612804602i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1890324697752655170i64 : stdgo.GoUInt64), (-5296404319838617848i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2362905872190818963i64 : stdgo.GoUInt64), (-2008819381370884406i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6088502188546649756i64 : stdgo.GoUInt64), (-8173041140997884610i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1612744301171463613i64 : stdgo.GoUInt64), (-5604615407819967859i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7207441660390446292i64 : stdgo.GoUInt64), (-2394083241347571919i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2412877989897052924i64 : stdgo.GoUInt64), (-8413831053483314306i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7627783505798704059i64 : stdgo.GoUInt64), (-5905602798426754978i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4300328673033783639i64 : stdgo.GoUInt64), (-2770317479606055818i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1923980597781273130i64 : stdgo.GoUInt64), (-8648977452394866743i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6818396289628184396i64 : stdgo.GoUInt64), (-6199535797066195524i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8522995362035230495i64 : stdgo.GoUInt64), (-3137733727905356501i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3021029092058325107i64 : stdgo.GoUInt64), (-8878612607581929669i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-835399653354481520i64 : stdgo.GoUInt64), (-6486579741050024183i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8179122470161673908i64 : stdgo.GoUInt64), (-3496538657885142324i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4111420493003729616i64 : stdgo.GoUInt64), (-9102865688819295809i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5139275616254662020i64 : stdgo.GoUInt64), (-6766896092596731857i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6424094520318327524i64 : stdgo.GoUInt64), (-3846934097318526917i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8030118150397909405i64 : stdgo.GoUInt64), (-196981603220770742i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7324666853212387330i64 : stdgo.GoUInt64), (-7040642529654063570i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4679224488766679549i64 : stdgo.GoUInt64), (-4189117143640191558i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3374341425896426372i64 : stdgo.GoUInt64), (-624710411122851544i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-9026492418826348338i64 : stdgo.GoUInt64), (-7307973034592864071i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2059743486678159615i64 : stdgo.GoUInt64), (-4523280274813692185i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2574679358347699519i64 : stdgo.GoUInt64), (-1042414325089727327i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3002511419460075705i64 : stdgo.GoUInt64), (-7569037980822161435i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8364825292752482535i64 : stdgo.GoUInt64), (-4849611457600313890i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1232659579085827361i64 : stdgo.GoUInt64), (-1450328303573004458i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3841273781498745804i64 : stdgo.GoUInt64), (-7823984217374209643i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4421779809981343554i64 : stdgo.GoUInt64), (-5168294253290374149i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(915538744049291538i64 : stdgo.GoUInt64), (-1848681798185579782i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5183897733458195115i64 : stdgo.GoUInt64), (-8072955151507069220i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6479872166822743894i64 : stdgo.GoUInt64), (-5479507920956448621i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3488154190101041964i64 : stdgo.GoUInt64), (-2237698882768172872i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2180096368813151227i64 : stdgo.GoUInt64), (-8316090829371189901i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1886565557410948870i64 : stdgo.GoUInt64), (-5783427518286599473i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2358206946763686087i64 : stdgo.GoUInt64), (-2617598379430861437i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7749492695127472003i64 : stdgo.GoUInt64), (-8553528014785370254i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(463493832054564196i64 : stdgo.GoUInt64), (-6080224000054324913i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4032318728359182659i64 : stdgo.GoUInt64), (-2988593981640518238i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4826042214438183114i64 : stdgo.GoUInt64), (-8785400266166405755i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3190819268807046916i64 : stdgo.GoUInt64), (-6370064314280619289i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-623161932418579259i64 : stdgo.GoUInt64), (-3350894374423386208i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7307005235402693893i64 : stdgo.GoUInt64), (-9011838011655698236i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4522070525825979462i64 : stdgo.GoUInt64), (-6653111496142234891i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3570783879572301480i64 : stdgo.GoUInt64), (-3704703351750405709i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-148206168962011054i64 : stdgo.GoUInt64), (-19193171260619233i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-92628855601256909i64 : stdgo.GoUInt64), (-6929524759678968877i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-115786069501571136i64 : stdgo.GoUInt64), (-4050219931171323192i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4466953431550423984i64 : stdgo.GoUInt64), (-451088895536766085i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(486002885505321038i64 : stdgo.GoUInt64), (-7199459587351560659i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5219189625309039202i64 : stdgo.GoUInt64), (-4387638465762062920i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6523987031636299002i64 : stdgo.GoUInt64), (-872862063775190746i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-534194123654701028i64 : stdgo.GoUInt64), (-7463067817500576073i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-667742654568376285i64 : stdgo.GoUInt64), (-4717148753448332187i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8388693718644305452i64 : stdgo.GoUInt64), (-1284749923383027329i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6286281471915778852i64 : stdgo.GoUInt64), (-7720497729755473937i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7857851839894723565i64 : stdgo.GoUInt64), (-5038936143766954517i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8624429273841147159i64 : stdgo.GoUInt64), (-1686984161281305242i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(778582277723329070i64 : stdgo.GoUInt64), (-7971894128441897632i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(973227847154161338i64 : stdgo.GoUInt64), (-5353181642124984136i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1216534808942701673i64 : stdgo.GoUInt64), (-2079791034228842266i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3851351762838199359i64 : stdgo.GoUInt64), (-8217398424034108273i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4814189703547749198i64 : stdgo.GoUInt64), (-5660062011615247437i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6017737129434686498i64 : stdgo.GoUInt64), (-2463391496091671392i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7768129340171790699i64 : stdgo.GoUInt64), (-8457148712698376476i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8736582398494813242i64 : stdgo.GoUInt64), (-5959749872445582691i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1697355961263740745i64 : stdgo.GoUInt64), (-2838001322129590460i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1244995533423855986i64 : stdgo.GoUInt64), (-8691279853972075893i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3055441601647567921i64 : stdgo.GoUInt64), (-6252413799037706963i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5404070034795315907i64 : stdgo.GoUInt64), (-3203831230369745799i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3539985255894009414i64 : stdgo.GoUInt64), (-8919923546622172981i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4424981569867511768i64 : stdgo.GoUInt64), (-6538218414850328322i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8303831092947774002i64 : stdgo.GoUInt64), (-3561087000135522498i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(578208414664970847i64 : stdgo.GoUInt64), (-9143208402725783417i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3888925500096174345i64 : stdgo.GoUInt64), (-6817324484979841368i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-249470856692830027i64 : stdgo.GoUInt64), (-3909969587797413806i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4923524589293425438i64 : stdgo.GoUInt64), (-275775966319379353i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3077202868308390899i64 : stdgo.GoUInt64), (-7089889006590693952i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(765182433041899281i64 : stdgo.GoUInt64), (-4250675239810979535i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5568164059729762005i64 : stdgo.GoUInt64), (-701658031336336515i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5785945546544795205i64 : stdgo.GoUInt64), (-7356065297226292178i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1990940103673781802i64 : stdgo.GoUInt64), (-4583395603105477319i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6734696907262548556i64 : stdgo.GoUInt64), (-1117558485454458744i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4209185567039092847i64 : stdgo.GoUInt64), (-7616003081050118571i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8573576096483297653i64 : stdgo.GoUInt64), (-4908317832885260310i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3118087934678041646i64 : stdgo.GoUInt64), (-1523711272679187483i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4254647968387469981i64 : stdgo.GoUInt64), (-7869848573065574033i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(706623942056949572i64 : stdgo.GoUInt64), (-5225624697904579637i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3728406090856200939i64 : stdgo.GoUInt64), (-1920344853953336643i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6941939825212513491i64 : stdgo.GoUInt64), (-8117744561361917258i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5157633273766521849i64 : stdgo.GoUInt64), (-5535494683275008668i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6447041592208152311i64 : stdgo.GoUInt64), (-2307682335666372931i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6335244004343789146i64 : stdgo.GoUInt64), (-8359830487432564938i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1304317031425039375i64 : stdgo.GoUInt64), (-5838102090863318269i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1630396289281299219i64 : stdgo.GoUInt64), (-2685941595151759932i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1286845328412881940i64 : stdgo.GoUInt64), (-8596242524610931813i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3003129357911285479i64 : stdgo.GoUInt64), (-6133617137336276863i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5469460339465668959i64 : stdgo.GoUInt64), (-3055335403242958174i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8030098730593431003i64 : stdgo.GoUInt64), (-8827113654667930715i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3797434642040374958i64 : stdgo.GoUInt64), (-6422206049907525490i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(9088264752731695015i64 : stdgo.GoUInt64), (-3416071543957018958i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8154892584824854328i64 : stdgo.GoUInt64), (-9052573742614218705i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8253128342678483706i64 : stdgo.GoUInt64), (-6704031159840385477i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5704724409920716729i64 : stdgo.GoUInt64), (-3768352931373093942i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2092466524453879896i64 : stdgo.GoUInt64), (-98755145788979524i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(998051431430019017i64 : stdgo.GoUInt64), (-6979250993759194058i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7975807747567252037i64 : stdgo.GoUInt64), (-4112377723771604669i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8476984389250486570i64 : stdgo.GoUInt64), (-528786136287117932i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3925256793573221702i64 : stdgo.GoUInt64), (-7248020362820530564i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-294884973539139224i64 : stdgo.GoUInt64), (-4448339435098275301i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-368606216923924029i64 : stdgo.GoUInt64), (-948738275445456222i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2536221894791146470i64 : stdgo.GoUInt64), (-7510490449794491995i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6053094668365842720i64 : stdgo.GoUInt64), (-4776427043815727089i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2954682317029915496i64 : stdgo.GoUInt64), (-1358847786342270957i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-459166561069996767i64 : stdgo.GoUInt64), (-7766808894105001205i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-573958201337495959i64 : stdgo.GoUInt64), (-5096825099203863602i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5329133770099257852i64 : stdgo.GoUInt64), (-1759345355577441598i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5636551615525730110i64 : stdgo.GoUInt64), (-8017119874876982855i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2177682517447613171i64 : stdgo.GoUInt64), (-5409713825168840664i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2722103146809516464i64 : stdgo.GoUInt64), (-2150456263033662926i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6313000485183335694i64 : stdgo.GoUInt64), (-8261564192037121185i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3279564588051781713i64 : stdgo.GoUInt64), (-5715269221619013577i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-512230283362660763i64 : stdgo.GoUInt64), (-2532400508596379068i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1985699082112030975i64 : stdgo.GoUInt64), (-8500279345513818773i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2129562165787349185i64 : stdgo.GoUInt64), (-6013663163464885563i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6561419329620589327i64 : stdgo.GoUInt64), (-2905392935903719049i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7428327965055601431i64 : stdgo.GoUInt64), (-8733399612580906262i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4549648098962661924i64 : stdgo.GoUInt64), (-6305063497298744923i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8147997931578836307i64 : stdgo.GoUInt64), (-3269643353196043250i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1825030320404309164i64 : stdgo.GoUInt64), (-8961056123388608887i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6892973918932774359i64 : stdgo.GoUInt64), (-6589634135808373205i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4004531380238580045i64 : stdgo.GoUInt64), (-3625356651333078602i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2108853905778275376i64 : stdgo.GoUInt64), (-9183376934724255983i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6587304654631931588i64 : stdgo.GoUInt64), (-6867535149977932074i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-989241218564861323i64 : stdgo.GoUInt64), (-3972732919045027189i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1236551523206076654i64 : stdgo.GoUInt64), (-354230130378896082i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6144684325637283947i64 : stdgo.GoUInt64), (-7138922859127891907i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6154202648235558778i64 : stdgo.GoUInt64), (-4311967555482476980i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3081067291867060568i64 : stdgo.GoUInt64), (-778273425925708321i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1925667057416912855i64 : stdgo.GoUInt64), (-7403949918844649557i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2407083821771141069i64 : stdgo.GoUInt64), (-4643251380128424042i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7620540795641314240i64 : stdgo.GoUInt64), (-1192378206733142148i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2456994988062127448i64 : stdgo.GoUInt64), (-7662765406849295699i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6152128301777116498i64 : stdgo.GoUInt64), (-4966770740134231719i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6144897678060768090i64 : stdgo.GoUInt64), (-1596777406740401745i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3840561048787980056i64 : stdgo.GoUInt64), (-7915514906853832947i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4422670725869800738i64 : stdgo.GoUInt64), (-5282707615139903279i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8306719647944912790i64 : stdgo.GoUInt64), (-1991698500497491195i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8643358275316593218i64 : stdgo.GoUInt64), (-8162340590452013853i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6192511825718353619i64 : stdgo.GoUInt64), (-5591239719637629412i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7740639782147942024i64 : stdgo.GoUInt64), (-2377363631119648861i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2532056854628769813i64 : stdgo.GoUInt64), (-8403381297090862394i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6058300968568813542i64 : stdgo.GoUInt64), (-5892540602936190089i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7572876210711016927i64 : stdgo.GoUInt64), (-2753989735242849707i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(9102010423587778132i64 : stdgo.GoUInt64), (-8638772612167862923i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2457545025797441047i64 : stdgo.GoUInt64), (-6186779746782440750i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7683617300674189212i64 : stdgo.GoUInt64), (-3121788665050663033i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4802260812921368258i64 : stdgo.GoUInt64), (-8868646943297746252i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1391139997724322418i64 : stdgo.GoUInt64), (-6474122660694794911i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7484447039699372786i64 : stdgo.GoUInt64), (-3480967307441105734i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-9157278655470055721i64 : stdgo.GoUInt64), (-9093133594791772940i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6834912300910181747i64 : stdgo.GoUInt64), (-6754730975062328271i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(679731660717048624i64 : stdgo.GoUInt64), (-3831727700400522434i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8373707460958465028i64 : stdgo.GoUInt64), (-177973607073265139i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8601490892183123069i64 : stdgo.GoUInt64), (-7028762532061872568i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7694880458480647779i64 : stdgo.GoUInt64), (-4174267146649952806i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4216457482181353988i64 : stdgo.GoUInt64), (-606147914885053103i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4282243101277735614i64 : stdgo.GoUInt64), (-7296371474444240046i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8482254178684994195i64 : stdgo.GoUInt64), (-4508778324627912153i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5991131704928854840i64 : stdgo.GoUInt64), (-1024286887357502287i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3173071712060547581i64 : stdgo.GoUInt64), (-7557708332239520786i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8578025658503072380i64 : stdgo.GoUInt64), (-4835449396872013078i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3112525982153323237i64 : stdgo.GoUInt64), (-1432625727662628443i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4251171748059520975i64 : stdgo.GoUInt64), (-7812920107430224633i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(702278666647013314i64 : stdgo.GoUInt64), (-5154464115860392887i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5489534351736154547i64 : stdgo.GoUInt64), (-1831394126398103205i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1125115960621402640i64 : stdgo.GoUInt64), (-8062150356639896359i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6018080969204141204i64 : stdgo.GoUInt64), (-5466001927372482545i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2910915193077788601i64 : stdgo.GoUInt64), (-2220816390788215277i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-486521013540076077i64 : stdgo.GoUInt64), (-8305539271883716405i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-608151266925095096i64 : stdgo.GoUInt64), (-5770238071427257602i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5371875102083756773i64 : stdgo.GoUInt64), (-2601111570856684098i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3560107088838733872i64 : stdgo.GoUInt64), (-8543223759426509417i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-161552157378970563i64 : stdgo.GoUInt64), (-6067343680855748868i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4409745821703674700i64 : stdgo.GoUInt64), (-2972493582642298180i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6467280898289979121i64 : stdgo.GoUInt64), (-8775337516792518219i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1139270913992301907i64 : stdgo.GoUInt64), (-6357485877563259869i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3187597375937010520i64 : stdgo.GoUInt64), (-3335171328526686933i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7231123676894144233i64 : stdgo.GoUInt64), (-9002011107970261189i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4427218577690292387i64 : stdgo.GoUInt64), (-6640827866535438582i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3689348814741910324i64 : stdgo.GoUInt64), (-3689348814741910324i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-6917529027641081856i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-4035225266123964416i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-432345564227567616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-7187745005283311616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-4372995238176751616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-854558029293551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-7451627795949551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-4702848726509551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-1266874889709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-7709325833709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-5024971273709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-1669528073709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-7960984073709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-5339544073709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-2062744073709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-8206744073709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-5646744073709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-2446744073709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-8446744073709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-5946744073709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-2821744073709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-8681119073709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-6239712823709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-3187955011209551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-8910000909647051616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-6525815118631426616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-3545582879861895366i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4611686018427387904i64 : stdgo.GoUInt64), (-9133518327554766460i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5764607523034234880i64 : stdgo.GoUInt64), (-6805211891016070171i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6629298651489370112i64 : stdgo.GoUInt64), (-3894828845342699810i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5548434740920451072i64 : stdgo.GoUInt64), (-256850038250986858i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1143914305352105984i64 : stdgo.GoUInt64), (-7078060301547948643i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7793479155164643328i64 : stdgo.GoUInt64), (-4235889358507547899i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4093209111326359552i64 : stdgo.GoUInt64), (-683175679707046970i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4359273333062107136i64 : stdgo.GoUInt64), (-7344513827457986212i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5449091666327633920i64 : stdgo.GoUInt64), (-4568956265895094861i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2199678564482154496i64 : stdgo.GoUInt64), (-1099509313941480672i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1374799102801346560i64 : stdgo.GoUInt64), (-7604722348854507276i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1718498878501683200i64 : stdgo.GoUInt64), (-4894216917640746191i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6759809616554491904i64 : stdgo.GoUInt64), (-1506085128623544835i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6530724019560251392i64 : stdgo.GoUInt64), (-7858832233030797378i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1059967012404461568i64 : stdgo.GoUInt64), (-5211854272861108819i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7898413271349198848i64 : stdgo.GoUInt64), (-1903131822648998119i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1981020733047832576i64 : stdgo.GoUInt64), (-8106986416796705681i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2476275916309790720i64 : stdgo.GoUInt64), (-5522047002568494197i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3095344895387238400i64 : stdgo.GoUInt64), (-2290872734783229842i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4982938468024057856i64 : stdgo.GoUInt64), (-8349324486880600507i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7606384970252091392i64 : stdgo.GoUInt64), (-5824969590173362730i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4327076842467049472i64 : stdgo.GoUInt64), (-2669525969289315508i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6518949010312869888i64 : stdgo.GoUInt64), (-8585982758446904049i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8148686262891087360i64 : stdgo.GoUInt64), (-6120792429631242157i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8260886245095692416i64 : stdgo.GoUInt64), (-3039304518611664792i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5163053903184807760i64 : stdgo.GoUInt64), (-8817094351773372351i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7381240676301154012i64 : stdgo.GoUInt64), (-6409681921289327535i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3178808521666707i64 : stdgo.GoUInt64), (-3400416383184271515i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4613672773753429596i64 : stdgo.GoUInt64), (-9042789267131251553i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5767090967191786995i64 : stdgo.GoUInt64), (-6691800565486676537i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7208863708989733744i64 : stdgo.GoUInt64), (-3753064688430957767i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(212292400617608628i64 : stdgo.GoUInt64), (-79644842111309304i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(132682750386005392i64 : stdgo.GoUInt64), (-6967307053960650171i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4777539456409894645i64 : stdgo.GoUInt64), (-4097447799023424810i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3251447716342407502i64 : stdgo.GoUInt64), (-510123730351893109i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7191217214140771119i64 : stdgo.GoUInt64), (-7236356359111015049i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4377335499248575995i64 : stdgo.GoUInt64), (-4433759430461380907i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8363388681221443718i64 : stdgo.GoUInt64), (-930513269649338230i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7532960934977096276i64 : stdgo.GoUInt64), (-7499099821171918250i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4418856886560793367i64 : stdgo.GoUInt64), (-4762188758037509908i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5523571108200991709i64 : stdgo.GoUInt64), (-1341049929119499481i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8076983103442849942i64 : stdgo.GoUInt64), (-7755685233340769032i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5484542860876174524i64 : stdgo.GoUInt64), (-5082920523248573386i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6979379479186945558i64 : stdgo.GoUInt64), (-1741964635633328828i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4861259862362934835i64 : stdgo.GoUInt64), (-8006256924911912374i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7758483227328495169i64 : stdgo.GoUInt64), (-5396135137712502563i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4136954021121544751i64 : stdgo.GoUInt64), (-2133482903713240300i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-279753253987271518i64 : stdgo.GoUInt64), (-8250955842461857044i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4261994450943298507i64 : stdgo.GoUInt64), (-5702008784649933400i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5327493063679123134i64 : stdgo.GoUInt64), (-2515824962385028846i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7941369183226839863i64 : stdgo.GoUInt64), (-8489919629131724885i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5315025460606161924i64 : stdgo.GoUInt64), (-6000713517987268202i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2579590211097073402i64 : stdgo.GoUInt64), (-2889205879056697349i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7611128154919104931i64 : stdgo.GoUInt64), (-8723282702051517699i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4321147861633282548i64 : stdgo.GoUInt64), (-6292417359137009220i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-789748808614215280i64 : stdgo.GoUInt64), (-3253835680493873621i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8729779031470891258i64 : stdgo.GoUInt64), (-8951176327949752869i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6300537770911226168i64 : stdgo.GoUInt64), (-6577284391509803182i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1347699823215743098i64 : stdgo.GoUInt64), (-3609919470959866074i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6075216638131242420i64 : stdgo.GoUInt64), (-9173728696990998152i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7594020797664053025i64 : stdgo.GoUInt64), (-6855474852811359786i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(269153960225290473i64 : stdgo.GoUInt64), (-3957657547586811828i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(336442450281613091i64 : stdgo.GoUInt64), (-335385916056126881i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7127805559067090038i64 : stdgo.GoUInt64), (-7127145225176161157i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4298070930406474644i64 : stdgo.GoUInt64), (-4297245513042813542i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3850783373846682503i64 : stdgo.GoUInt64), (-759870872876129024i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(9122475437414293195i64 : stdgo.GoUInt64), (-7392448323188662496i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7043649776941685122i64 : stdgo.GoUInt64), (-4628874385558440216i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4192876202749718498i64 : stdgo.GoUInt64), (-1174406963520662366i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4926390635932268014i64 : stdgo.GoUInt64), (-7651533379841495835i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3065383741939440791i64 : stdgo.GoUInt64), (-4952730706374481889i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-779956341003086915i64 : stdgo.GoUInt64), (-1579227364540714458i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6430056314514152534i64 : stdgo.GoUInt64), (-7904546130479028392i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8037570393142690668i64 : stdgo.GoUInt64), (-5268996644671397586i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(823590954573587527i64 : stdgo.GoUInt64), (-1974559787411859078i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5126430365035880108i64 : stdgo.GoUInt64), (-8151628894773493780i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6408037956294850135i64 : stdgo.GoUInt64), (-5577850100039479321i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3398361426941174765i64 : stdgo.GoUInt64), (-2360626606621961247i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4793553135802847628i64 : stdgo.GoUInt64), (-8392920656779807636i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1380255401326171631i64 : stdgo.GoUInt64), (-5879464802547371641i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1725319251657714539i64 : stdgo.GoUInt64), (-2737644984756826647i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3533361486141316317i64 : stdgo.GoUInt64), (-8628557143114098510i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4806670179178130411i64 : stdgo.GoUInt64), (-6174010410465235234i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7826720331309500698i64 : stdgo.GoUInt64), (-3105826994654156138i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(280014188641050032i64 : stdgo.GoUInt64), (-8858670899299929442i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8873354301053463268i64 : stdgo.GoUInt64), (-6461652605697523899i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1868320839462053277i64 : stdgo.GoUInt64), (-3465379738694516970i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5749828502977298558i64 : stdgo.GoUInt64), (-9083391364325154962i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2036086408133152611i64 : stdgo.GoUInt64), (-6742553186979055799i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6678264026688335045i64 : stdgo.GoUInt64), (-3816505465296431844i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8347830033360418806i64 : stdgo.GoUInt64), (-158945813193151901i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2911550761636567802i64 : stdgo.GoUInt64), (-7016870160886801794i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5583933584809066056i64 : stdgo.GoUInt64), (-4159401682681114339i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2243455055843443238i64 : stdgo.GoUInt64), (-587566084924005019i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3708002419115845976i64 : stdgo.GoUInt64), (-7284757830718584993i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(23317005467419566i64 : stdgo.GoUInt64), (-4494261269970843337i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4582539761593113446i64 : stdgo.GoUInt64), (-1006140569036166268i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-558244341782001952i64 : stdgo.GoUInt64), (-7546366883288685774i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5309491445654890344i64 : stdgo.GoUInt64), (-4821272585683469313i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6636864307068612930i64 : stdgo.GoUInt64), (-1414904713676948737i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4148040191917883081i64 : stdgo.GoUInt64), (-7801844473689174817i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5185050239897353852i64 : stdgo.GoUInt64), (-5140619573684080617i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6481312799871692315i64 : stdgo.GoUInt64), (-1814088448677712867i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8662506518347195601i64 : stdgo.GoUInt64), (-8051334308064652398i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3006924907348169211i64 : stdgo.GoUInt64), (-5452481866653427593i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-853029884242176390i64 : stdgo.GoUInt64), (-2203916314889396588i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1772699331562333708i64 : stdgo.GoUInt64), (-8294976724446954723i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6827560182880305039i64 : stdgo.GoUInt64), (-5757034887131305500i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8534450228600381299i64 : stdgo.GoUInt64), (-2584607590486743971i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7639874402088932264i64 : stdgo.GoUInt64), (-8532908771695296838i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(326470965756389522i64 : stdgo.GoUInt64), (-6054449946191733143i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5019774725622874806i64 : stdgo.GoUInt64), (-2956376414312278525i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(831516194300602802i64 : stdgo.GoUInt64), (-8765264286586255934i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8183976793979022306i64 : stdgo.GoUInt64), (-6344894339805432014i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3605087062808385830i64 : stdgo.GoUInt64), (-3319431906329402113i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(9170708441896323000i64 : stdgo.GoUInt64), (-8992173969096958177i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6851699533943015846i64 : stdgo.GoUInt64), (-6628531442943809817i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3952938399001381903i64 : stdgo.GoUInt64), (-3673978285252374367i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4446942528265218167i64 : stdgo.GoUInt64), (-9213765455923815836i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-946992141904134804i64 : stdgo.GoUInt64), (-6905520801477381891i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8039631859474607303i64 : stdgo.GoUInt64), (-4020214983419339459i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3785518230938904583i64 : stdgo.GoUInt64), (-413582710846786420i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-60105885123121413i64 : stdgo.GoUInt64), (-7176018221920323369i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-75132356403901766i64 : stdgo.GoUInt64), (-4358336758973016307i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(9129456591349898601i64 : stdgo.GoUInt64), (-836234930288882479i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1211618658047395231i64 : stdgo.GoUInt64), (-7440175859071633406i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6126209340986631942i64 : stdgo.GoUInt64), (-4688533805412153853i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7657761676233289928i64 : stdgo.GoUInt64), (-1248981238337804412i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2480258038432112253i64 : stdgo.GoUInt64), (-7698142301602209614i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7712008566467528220i64 : stdgo.GoUInt64), (-5010991858575374113i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8806733365625141341i64 : stdgo.GoUInt64), (-1652053804791829737i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6025006692552756422i64 : stdgo.GoUInt64), (-7950062655635975442i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6303799689591218185i64 : stdgo.GoUInt64), (-5325892301117581398i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1343622424865753077i64 : stdgo.GoUInt64), (-2045679357969588844i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1466078993672598279i64 : stdgo.GoUInt64), (-8196078626372074883i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6444284760518135752i64 : stdgo.GoUInt64), (-5633412264537705700i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8055355950647669691i64 : stdgo.GoUInt64), (-2430079312244744221i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2728754459941099604i64 : stdgo.GoUInt64), (-8436328597794046994i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5812428961928401302i64 : stdgo.GoUInt64), (-5933724728815170839i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1957835834444274180i64 : stdgo.GoUInt64), (-2805469892591575644i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7999724640327104446i64 : stdgo.GoUInt64), (-8670947710510816634i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3835402254873283155i64 : stdgo.GoUInt64), (-6226998619711132888i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4794252818591603944i64 : stdgo.GoUInt64), (-3172062256211528206i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7608094030047140369i64 : stdgo.GoUInt64), (-8900067937773286985i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4898431519131537557i64 : stdgo.GoUInt64), (-6513398903789220827i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7712018656367741765i64 : stdgo.GoUInt64), (-3530062611309138130i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2097517367411243253i64 : stdgo.GoUInt64), (-9123818159709293187i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7233582727691441970i64 : stdgo.GoUInt64), (-6793086681209228580i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(9041978409614302462i64 : stdgo.GoUInt64), (-3879672333084147821i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6690786993590490174i64 : stdgo.GoUInt64), (-237904397927796872i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4181741870994056359i64 : stdgo.GoUInt64), (-7066219276345954901i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(615491320315182544i64 : stdgo.GoUInt64), (-4221088077005055722i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8454007886460797627i64 : stdgo.GoUInt64), (-664674077828931749i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3939617107816777291i64 : stdgo.GoUInt64), (-7332950326284164199i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8910536670511192099i64 : stdgo.GoUInt64), (-4554501889427817345i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7308573235570561493i64 : stdgo.GoUInt64), (-1081441343357383777i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6961356773836868827i64 : stdgo.GoUInt64), (-7593429867239446717i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8701695967296086034i64 : stdgo.GoUInt64), (-4880101315621920492i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6265433940692719638i64 : stdgo.GoUInt64), (-1488440626100012711i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(695789805494438130i64 : stdgo.GoUInt64), (-7847804418953589800i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(869737256868047663i64 : stdgo.GoUInt64), (-5198069505264599346i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8136200465769716230i64 : stdgo.GoUInt64), (-1885900863153361279i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-473439272678684740i64 : stdgo.GoUInt64), (-8096217067111932656i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4019886927579031980i64 : stdgo.GoUInt64), (-5508585315462527915i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8810199395808373737i64 : stdgo.GoUInt64), (-2274045625900771990i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7812217631593927538i64 : stdgo.GoUInt64), (-8338807543829064350i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4069786015789754290i64 : stdgo.GoUInt64), (-5811823411358942533i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(475546501309804958i64 : stdgo.GoUInt64), (-2653093245771290262i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4908902581746016003i64 : stdgo.GoUInt64), (-8575712306248138270i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3087243809672255805i64 : stdgo.GoUInt64), (-6107954364382784934i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8470740780517707660i64 : stdgo.GoUInt64), (-3023256937051093263i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-682526969396179383i64 : stdgo.GoUInt64), (-8807064613298015146i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5464844730172612133i64 : stdgo.GoUInt64), (-6397144748195131028i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2219369894288377262i64 : stdgo.GoUInt64), (-3384744916816525881i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1387106183930235789i64 : stdgo.GoUInt64), (-9032994600651410532i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2877803288514593168i64 : stdgo.GoUInt64), (-6679557232386875260i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3597254110643241460i64 : stdgo.GoUInt64), (-3737760522056206171i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(9108253656731439729i64 : stdgo.GoUInt64), (-60514634142869810i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1080972517029761926i64 : stdgo.GoUInt64), (-6955350673980375487i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5962901664714590312i64 : stdgo.GoUInt64), (-4082502324048081455i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6381430974388925822i64 : stdgo.GoUInt64), (-491441886632713915i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8600080377420466543i64 : stdgo.GoUInt64), (-7224680206786528053i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7696643601933968437i64 : stdgo.GoUInt64), (-4419164240055772162i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(397432465562684739i64 : stdgo.GoUInt64), (-912269281642327298i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4363290727450709942i64 : stdgo.GoUInt64), (-7487697328667536418i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8380944645968776284i64 : stdgo.GoUInt64), (-4747935642407032618i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1252808770606194547i64 : stdgo.GoUInt64), (-1323233534581402868i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8440366555225904216i64 : stdgo.GoUInt64), (-7744549986754458649i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7896285879677171346i64 : stdgo.GoUInt64), (-5069001465015685407i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3964700705685699529i64 : stdgo.GoUInt64), (-1724565812842218855i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2133748077373825698i64 : stdgo.GoUInt64), (-7995382660667468640i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2667185096717282123i64 : stdgo.GoUInt64), (-5382542307406947896i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3333981370896602653i64 : stdgo.GoUInt64), (-2116491865831296966i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6695424375237764562i64 : stdgo.GoUInt64), (-8240336443785642460i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8369280469047205703i64 : stdgo.GoUInt64), (-5688734536304665171i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3373457468973156583i64 : stdgo.GoUInt64), (-2499232151953443560i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-9025939945749304721i64 : stdgo.GoUInt64), (-8479549122611984081i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7164319141522920715i64 : stdgo.GoUInt64), (-5987750384837592197i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4343712908476262990i64 : stdgo.GoUInt64), (-2873001962619602342i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7326506586225052273i64 : stdgo.GoUInt64), (-8713155254278333320i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(9158133232781315341i64 : stdgo.GoUInt64), (-6279758049420528746i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2224294504121868368i64 : stdgo.GoUInt64), (-3238011543348273028i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7833187971778608078i64 : stdgo.GoUInt64), (-8941286242233752499i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-568112927868484289i64 : stdgo.GoUInt64), (-6564921784364802720i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3901544858591782542i64 : stdgo.GoUInt64), (-3594466212028615495i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4479063491021217767i64 : stdgo.GoUInt64), (-9164070410158966541i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5598829363776522209i64 : stdgo.GoUInt64), (-6843401994271320272i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2386850686293264857i64 : stdgo.GoUInt64), (-3942566474411762436i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1628122660560806833i64 : stdgo.GoUInt64), (-316522074587315140i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8205795374004271538i64 : stdgo.GoUInt64), (-7115355324258153819i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1033872180650563614i64 : stdgo.GoUInt64), (-4282508136895304370i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5904026244240592421i64 : stdgo.GoUInt64), (-741449152691742558i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5995859411864064215i64 : stdgo.GoUInt64), (-7380934748073420955i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1728547772024695539i64 : stdgo.GoUInt64), (-4614482416664388289i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2451001303396518480i64 : stdgo.GoUInt64), (-1156417002403097458i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5385653213018257806i64 : stdgo.GoUInt64), (-7640289654143017767i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7102991539009341455i64 : stdgo.GoUInt64), (-4938676049251384305i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8878739423761676819i64 : stdgo.GoUInt64), (-1561659043136842477i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3674159897003727796i64 : stdgo.GoUInt64), (-7893565929601608404i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4592699871254659745i64 : stdgo.GoUInt64), (-5255271393574622601i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1129188820640936778i64 : stdgo.GoUInt64), (-1957403223540890347i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3011586022114279438i64 : stdgo.GoUInt64), (-8140906042354138323i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8376168546070237202i64 : stdgo.GoUInt64), (-5564446534515285000i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7976533391121755114i64 : stdgo.GoUInt64), (-2343872149716718346i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1932195658189984910i64 : stdgo.GoUInt64), (-8382449121214030822i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6808127464117294671i64 : stdgo.GoUInt64), (-5866375383090150624i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3898473311719230434i64 : stdgo.GoUInt64), (-2721283210435300376i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(9092669226243950738i64 : stdgo.GoUInt64), (-8618331034163144591i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2469221522477225289i64 : stdgo.GoUInt64), (-6161227774276542835i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6136845133758244197i64 : stdgo.GoUInt64), (-3089848699418290639i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3082000819042179233i64 : stdgo.GoUInt64), (-8848684464777513506i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8464187042230111945i64 : stdgo.GoUInt64), (-6449169562544503978i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3254824252494523781i64 : stdgo.GoUInt64), (-3449775934753242068i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7189106879045698445i64 : stdgo.GoUInt64), (-9073638986861858149i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8986383598807123057i64 : stdgo.GoUInt64), (-6730362715149934782i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2602078556773259891i64 : stdgo.GoUInt64), (-3801267375510030573i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1359087822460813040i64 : stdgo.GoUInt64), (-139898200960150313i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-849429889038008150i64 : stdgo.GoUInt64), (-7004965403241175802i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5673473379724898091i64 : stdgo.GoUInt64), (-4144520735624081848i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2480155706228734710i64 : stdgo.GoUInt64), (-568964901102714406i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3855940325606653146i64 : stdgo.GoUInt64), (-7273132090830278360i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-208239388580928528i64 : stdgo.GoUInt64), (-4479729095110460046i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4871985254153548564i64 : stdgo.GoUInt64), (-987975350460687153i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3044990783845967853i64 : stdgo.GoUInt64), (-7535013621679011327i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5417133557047315992i64 : stdgo.GoUInt64), (-4807081008671376254i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2451955090545630818i64 : stdgo.GoUInt64), (-1397165242411832414i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3838314940804713213i64 : stdgo.GoUInt64), (-7790757304148477115i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4425478360848884291i64 : stdgo.GoUInt64), (-5126760611758208489i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(920161932633717460i64 : stdgo.GoUInt64), (-1796764746270372707i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2880944217109767365i64 : stdgo.GoUInt64), (-8040506994060064798i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5622191765467566602i64 : stdgo.GoUInt64), (-5438947724147693094i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6807318348447705459i64 : stdgo.GoUInt64), (-2186998636757228463i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2662955059861265944i64 : stdgo.GoUInt64), (-8284403175614349646i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7940379843253970334i64 : stdgo.GoUInt64), (-5743817951090549153i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8521269269642088699i64 : stdgo.GoUInt64), (-2568086420435798537i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6203421752542164323i64 : stdgo.GoUInt64), (-8522583040413455942i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6080780864604458308i64 : stdgo.GoUInt64), (-6041542782089432023i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6234081974526590827i64 : stdgo.GoUInt64), (-2940242459184402125i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5327070802775656541i64 : stdgo.GoUInt64), (-8755180564631333184i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6658838503469570676i64 : stdgo.GoUInt64), (-6332289687361778576i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8323548129336963345i64 : stdgo.GoUInt64), (-3303676090774835316i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4021154456019173717i64 : stdgo.GoUInt64), (-8982326584375353929i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5026443070023967147i64 : stdgo.GoUInt64), (-6616222212041804507i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2940318199324816875i64 : stdgo.GoUInt64), (-3658591746624867729i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8755227902219092403i64 : stdgo.GoUInt64), (-9204148869281624187i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2891023177508298209i64 : stdgo.GoUInt64), (-6893500068174642330i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8225464990312760665i64 : stdgo.GoUInt64), (-4005189066790915008i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5670145219463562927i64 : stdgo.GoUInt64), (-394800315061255856i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7985374283903742931i64 : stdgo.GoUInt64), (-7164279224554366766i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(758345818024902856i64 : stdgo.GoUInt64), (-4343663012265570553i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3663753745896259334i64 : stdgo.GoUInt64), (-817892746904575288i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-9207375118826243940i64 : stdgo.GoUInt64), (-7428711994456441411i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2285846861678029117i64 : stdgo.GoUInt64), (-4674203974643163860i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1754377441329851508i64 : stdgo.GoUInt64), (-1231068949876566920i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1096485900831157192i64 : stdgo.GoUInt64), (-7686947121313936181i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3241078642388441414i64 : stdgo.GoUInt64), (-4996997883215032323i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5172023733869224041i64 : stdgo.GoUInt64), (-1634561335591402499i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5538357842881958977i64 : stdgo.GoUInt64), (-7939129862385708418i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2300424733252327086i64 : stdgo.GoUInt64), (-5312226309554747619i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6347841120289366950i64 : stdgo.GoUInt64), (-2028596868516046619i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6273243709394548296i64 : stdgo.GoUInt64), (-8185402070463610993i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(3229868618315797466i64 : stdgo.GoUInt64), (-5620066569652125837i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-574350245532641071i64 : stdgo.GoUInt64), (-2413397193637769393i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-358968903457900670i64 : stdgo.GoUInt64), (-8425902273664687727i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8774660907532399971i64 : stdgo.GoUInt64), (-5920691823653471754i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1744954097560724156i64 : stdgo.GoUInt64), (-2789178761139451788i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8132775725879323211i64 : stdgo.GoUInt64), (-8660765753353239224i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5554283638921766110i64 : stdgo.GoUInt64), (-6214271173264161126i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6892203506629956075i64 : stdgo.GoUInt64), (-3156152948152813503i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2609901835997359309i64 : stdgo.GoUInt64), (-8890124620236590296i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(1349308723430688768i64 : stdgo.GoUInt64), (-6500969756868349965i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2925050114139026944i64 : stdgo.GoUInt64), (-3514526177658049553i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1828156321336891840i64 : stdgo.GoUInt64), (-9114107888677362827i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6938176635183661008i64 : stdgo.GoUInt64), (-6780948842419315629i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(4061034775552188356i64 : stdgo.GoUInt64), (-3864500034596756632i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5076293469440235445i64 : stdgo.GoUInt64), (-218939024818557886i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7784369436827535057i64 : stdgo.GoUInt64), (-7054365918152680535i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4104596259247744891i64 : stdgo.GoUInt64), (-4206271379263462765i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5130745324059681113i64 : stdgo.GoUInt64), (-646153205651940552i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8322499218531169064i64 : stdgo.GoUInt64), (-7321374781173544701i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5791438004736573426i64 : stdgo.GoUInt64), (-4540032458039542972i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7239297505920716783i64 : stdgo.GoUInt64), (-1063354554122040811i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(6830403950414141941i64 : stdgo.GoUInt64), (-7582125623967357363i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-5297053117264486286i64 : stdgo.GoUInt64), (-4865971011531808800i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-2009630378153219953i64 : stdgo.GoUInt64), (-1470777745987373096i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8173548013986844327i64 : stdgo.GoUInt64), (-7836765118883190041i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8229809056225996208i64 : stdgo.GoUInt64), (-5184270380176599647i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-3547796734999668452i64 : stdgo.GoUInt64), (-1868651956793361655i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(2394313059052595121i64 : stdgo.GoUInt64), (-8085436500636932890i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6230480713039031907i64 : stdgo.GoUInt64), (-5495109607368778209i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-7788100891298789883i64 : stdgo.GoUInt64), (-2257200990783584857i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-4867563057061743677i64 : stdgo.GoUInt64), (-8328279646880822392i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-1472767802899791692i64 : stdgo.GoUInt64), (-5798663540173640086i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-6452645772052127519i64 : stdgo.GoUInt64), (-2636643406789662203i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8644589625959967604i64 : stdgo.GoUInt64), (-8565431156884620733i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(7641007041259592112i64 : stdgo.GoUInt64), (-6095102927678388012i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-8895485272135061476i64 : stdgo.GoUInt64), (-3007192641170597111i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(-947992276657025519i64 : stdgo.GoUInt64), (-8797024428372705051i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(8038381691033493909i64 : stdgo.GoUInt64), (-6384594517038493409i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[(5436291095364479483i64 : stdgo.GoUInt64), (-3369057127870728857i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__()].concat([for (i in 696 ... (696 > 696 ? 696 : 696 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt64)])])) : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>);
var _float32info : stdgo._internal.strconv.Strconv.T_floatInfo = (new stdgo._internal.strconv.Strconv.T_floatInfo((23u32 : stdgo.GoUInt), (8u32 : stdgo.GoUInt), (-127 : stdgo.GoInt)) : stdgo._internal.strconv.Strconv.T_floatInfo);
var _float64info : stdgo._internal.strconv.Strconv.T_floatInfo = (new stdgo._internal.strconv.Strconv.T_floatInfo((52u32 : stdgo.GoUInt), (11u32 : stdgo.GoUInt), (-1023 : stdgo.GoInt)) : stdgo._internal.strconv.Strconv.T_floatInfo);
var _uint64pow10 : stdgo.GoArray<stdgo.GoUInt64> = (new stdgo.GoArray<stdgo.GoUInt64>(20, 20, ...[
(1i64 : stdgo.GoUInt64),
(10i64 : stdgo.GoUInt64),
(100i64 : stdgo.GoUInt64),
(1000i64 : stdgo.GoUInt64),
(10000i64 : stdgo.GoUInt64),
(100000i64 : stdgo.GoUInt64),
(1000000i64 : stdgo.GoUInt64),
(10000000i64 : stdgo.GoUInt64),
(100000000i64 : stdgo.GoUInt64),
(1000000000i64 : stdgo.GoUInt64),
(10000000000i64 : stdgo.GoUInt64),
(100000000000i64 : stdgo.GoUInt64),
(1000000000000i64 : stdgo.GoUInt64),
(10000000000000i64 : stdgo.GoUInt64),
(100000000000000i64 : stdgo.GoUInt64),
(1000000000000000i64 : stdgo.GoUInt64),
(10000000000000000i64 : stdgo.GoUInt64),
(100000000000000000i64 : stdgo.GoUInt64),
(1000000000000000000i64 : stdgo.GoUInt64),
(-8446744073709551616i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>);
var _isPrint16 : stdgo.Slice<stdgo.GoUInt16> = (new stdgo.Slice<stdgo.GoUInt16>(424, 424, ...[
(32 : stdgo.GoUInt16),
(126 : stdgo.GoUInt16),
(161 : stdgo.GoUInt16),
(887 : stdgo.GoUInt16),
(890 : stdgo.GoUInt16),
(895 : stdgo.GoUInt16),
(900 : stdgo.GoUInt16),
(1366 : stdgo.GoUInt16),
(1369 : stdgo.GoUInt16),
(1418 : stdgo.GoUInt16),
(1421 : stdgo.GoUInt16),
(1479 : stdgo.GoUInt16),
(1488 : stdgo.GoUInt16),
(1514 : stdgo.GoUInt16),
(1519 : stdgo.GoUInt16),
(1524 : stdgo.GoUInt16),
(1542 : stdgo.GoUInt16),
(1805 : stdgo.GoUInt16),
(1808 : stdgo.GoUInt16),
(1866 : stdgo.GoUInt16),
(1869 : stdgo.GoUInt16),
(1969 : stdgo.GoUInt16),
(1984 : stdgo.GoUInt16),
(2042 : stdgo.GoUInt16),
(2045 : stdgo.GoUInt16),
(2093 : stdgo.GoUInt16),
(2096 : stdgo.GoUInt16),
(2139 : stdgo.GoUInt16),
(2142 : stdgo.GoUInt16),
(2154 : stdgo.GoUInt16),
(2160 : stdgo.GoUInt16),
(2190 : stdgo.GoUInt16),
(2200 : stdgo.GoUInt16),
(2444 : stdgo.GoUInt16),
(2447 : stdgo.GoUInt16),
(2448 : stdgo.GoUInt16),
(2451 : stdgo.GoUInt16),
(2482 : stdgo.GoUInt16),
(2486 : stdgo.GoUInt16),
(2489 : stdgo.GoUInt16),
(2492 : stdgo.GoUInt16),
(2500 : stdgo.GoUInt16),
(2503 : stdgo.GoUInt16),
(2504 : stdgo.GoUInt16),
(2507 : stdgo.GoUInt16),
(2510 : stdgo.GoUInt16),
(2519 : stdgo.GoUInt16),
(2519 : stdgo.GoUInt16),
(2524 : stdgo.GoUInt16),
(2531 : stdgo.GoUInt16),
(2534 : stdgo.GoUInt16),
(2558 : stdgo.GoUInt16),
(2561 : stdgo.GoUInt16),
(2570 : stdgo.GoUInt16),
(2575 : stdgo.GoUInt16),
(2576 : stdgo.GoUInt16),
(2579 : stdgo.GoUInt16),
(2617 : stdgo.GoUInt16),
(2620 : stdgo.GoUInt16),
(2626 : stdgo.GoUInt16),
(2631 : stdgo.GoUInt16),
(2632 : stdgo.GoUInt16),
(2635 : stdgo.GoUInt16),
(2637 : stdgo.GoUInt16),
(2641 : stdgo.GoUInt16),
(2641 : stdgo.GoUInt16),
(2649 : stdgo.GoUInt16),
(2654 : stdgo.GoUInt16),
(2662 : stdgo.GoUInt16),
(2678 : stdgo.GoUInt16),
(2689 : stdgo.GoUInt16),
(2745 : stdgo.GoUInt16),
(2748 : stdgo.GoUInt16),
(2765 : stdgo.GoUInt16),
(2768 : stdgo.GoUInt16),
(2768 : stdgo.GoUInt16),
(2784 : stdgo.GoUInt16),
(2787 : stdgo.GoUInt16),
(2790 : stdgo.GoUInt16),
(2801 : stdgo.GoUInt16),
(2809 : stdgo.GoUInt16),
(2828 : stdgo.GoUInt16),
(2831 : stdgo.GoUInt16),
(2832 : stdgo.GoUInt16),
(2835 : stdgo.GoUInt16),
(2873 : stdgo.GoUInt16),
(2876 : stdgo.GoUInt16),
(2884 : stdgo.GoUInt16),
(2887 : stdgo.GoUInt16),
(2888 : stdgo.GoUInt16),
(2891 : stdgo.GoUInt16),
(2893 : stdgo.GoUInt16),
(2901 : stdgo.GoUInt16),
(2903 : stdgo.GoUInt16),
(2908 : stdgo.GoUInt16),
(2915 : stdgo.GoUInt16),
(2918 : stdgo.GoUInt16),
(2935 : stdgo.GoUInt16),
(2946 : stdgo.GoUInt16),
(2954 : stdgo.GoUInt16),
(2958 : stdgo.GoUInt16),
(2965 : stdgo.GoUInt16),
(2969 : stdgo.GoUInt16),
(2975 : stdgo.GoUInt16),
(2979 : stdgo.GoUInt16),
(2980 : stdgo.GoUInt16),
(2984 : stdgo.GoUInt16),
(2986 : stdgo.GoUInt16),
(2990 : stdgo.GoUInt16),
(3001 : stdgo.GoUInt16),
(3006 : stdgo.GoUInt16),
(3010 : stdgo.GoUInt16),
(3014 : stdgo.GoUInt16),
(3021 : stdgo.GoUInt16),
(3024 : stdgo.GoUInt16),
(3024 : stdgo.GoUInt16),
(3031 : stdgo.GoUInt16),
(3031 : stdgo.GoUInt16),
(3046 : stdgo.GoUInt16),
(3066 : stdgo.GoUInt16),
(3072 : stdgo.GoUInt16),
(3129 : stdgo.GoUInt16),
(3132 : stdgo.GoUInt16),
(3149 : stdgo.GoUInt16),
(3157 : stdgo.GoUInt16),
(3162 : stdgo.GoUInt16),
(3165 : stdgo.GoUInt16),
(3165 : stdgo.GoUInt16),
(3168 : stdgo.GoUInt16),
(3171 : stdgo.GoUInt16),
(3174 : stdgo.GoUInt16),
(3183 : stdgo.GoUInt16),
(3191 : stdgo.GoUInt16),
(3257 : stdgo.GoUInt16),
(3260 : stdgo.GoUInt16),
(3277 : stdgo.GoUInt16),
(3285 : stdgo.GoUInt16),
(3286 : stdgo.GoUInt16),
(3293 : stdgo.GoUInt16),
(3299 : stdgo.GoUInt16),
(3302 : stdgo.GoUInt16),
(3315 : stdgo.GoUInt16),
(3328 : stdgo.GoUInt16),
(3407 : stdgo.GoUInt16),
(3412 : stdgo.GoUInt16),
(3427 : stdgo.GoUInt16),
(3430 : stdgo.GoUInt16),
(3478 : stdgo.GoUInt16),
(3482 : stdgo.GoUInt16),
(3517 : stdgo.GoUInt16),
(3520 : stdgo.GoUInt16),
(3526 : stdgo.GoUInt16),
(3530 : stdgo.GoUInt16),
(3530 : stdgo.GoUInt16),
(3535 : stdgo.GoUInt16),
(3551 : stdgo.GoUInt16),
(3558 : stdgo.GoUInt16),
(3567 : stdgo.GoUInt16),
(3570 : stdgo.GoUInt16),
(3572 : stdgo.GoUInt16),
(3585 : stdgo.GoUInt16),
(3642 : stdgo.GoUInt16),
(3647 : stdgo.GoUInt16),
(3675 : stdgo.GoUInt16),
(3713 : stdgo.GoUInt16),
(3773 : stdgo.GoUInt16),
(3776 : stdgo.GoUInt16),
(3801 : stdgo.GoUInt16),
(3804 : stdgo.GoUInt16),
(3807 : stdgo.GoUInt16),
(3840 : stdgo.GoUInt16),
(3948 : stdgo.GoUInt16),
(3953 : stdgo.GoUInt16),
(4058 : stdgo.GoUInt16),
(4096 : stdgo.GoUInt16),
(4295 : stdgo.GoUInt16),
(4301 : stdgo.GoUInt16),
(4301 : stdgo.GoUInt16),
(4304 : stdgo.GoUInt16),
(4685 : stdgo.GoUInt16),
(4688 : stdgo.GoUInt16),
(4701 : stdgo.GoUInt16),
(4704 : stdgo.GoUInt16),
(4749 : stdgo.GoUInt16),
(4752 : stdgo.GoUInt16),
(4789 : stdgo.GoUInt16),
(4792 : stdgo.GoUInt16),
(4805 : stdgo.GoUInt16),
(4808 : stdgo.GoUInt16),
(4885 : stdgo.GoUInt16),
(4888 : stdgo.GoUInt16),
(4954 : stdgo.GoUInt16),
(4957 : stdgo.GoUInt16),
(4988 : stdgo.GoUInt16),
(4992 : stdgo.GoUInt16),
(5017 : stdgo.GoUInt16),
(5024 : stdgo.GoUInt16),
(5109 : stdgo.GoUInt16),
(5112 : stdgo.GoUInt16),
(5117 : stdgo.GoUInt16),
(5120 : stdgo.GoUInt16),
(5788 : stdgo.GoUInt16),
(5792 : stdgo.GoUInt16),
(5880 : stdgo.GoUInt16),
(5888 : stdgo.GoUInt16),
(5909 : stdgo.GoUInt16),
(5919 : stdgo.GoUInt16),
(5942 : stdgo.GoUInt16),
(5952 : stdgo.GoUInt16),
(5971 : stdgo.GoUInt16),
(5984 : stdgo.GoUInt16),
(6003 : stdgo.GoUInt16),
(6016 : stdgo.GoUInt16),
(6109 : stdgo.GoUInt16),
(6112 : stdgo.GoUInt16),
(6121 : stdgo.GoUInt16),
(6128 : stdgo.GoUInt16),
(6137 : stdgo.GoUInt16),
(6144 : stdgo.GoUInt16),
(6169 : stdgo.GoUInt16),
(6176 : stdgo.GoUInt16),
(6264 : stdgo.GoUInt16),
(6272 : stdgo.GoUInt16),
(6314 : stdgo.GoUInt16),
(6320 : stdgo.GoUInt16),
(6389 : stdgo.GoUInt16),
(6400 : stdgo.GoUInt16),
(6443 : stdgo.GoUInt16),
(6448 : stdgo.GoUInt16),
(6459 : stdgo.GoUInt16),
(6464 : stdgo.GoUInt16),
(6464 : stdgo.GoUInt16),
(6468 : stdgo.GoUInt16),
(6509 : stdgo.GoUInt16),
(6512 : stdgo.GoUInt16),
(6516 : stdgo.GoUInt16),
(6528 : stdgo.GoUInt16),
(6571 : stdgo.GoUInt16),
(6576 : stdgo.GoUInt16),
(6601 : stdgo.GoUInt16),
(6608 : stdgo.GoUInt16),
(6618 : stdgo.GoUInt16),
(6622 : stdgo.GoUInt16),
(6683 : stdgo.GoUInt16),
(6686 : stdgo.GoUInt16),
(6780 : stdgo.GoUInt16),
(6783 : stdgo.GoUInt16),
(6793 : stdgo.GoUInt16),
(6800 : stdgo.GoUInt16),
(6809 : stdgo.GoUInt16),
(6816 : stdgo.GoUInt16),
(6829 : stdgo.GoUInt16),
(6832 : stdgo.GoUInt16),
(6862 : stdgo.GoUInt16),
(6912 : stdgo.GoUInt16),
(6988 : stdgo.GoUInt16),
(6992 : stdgo.GoUInt16),
(7155 : stdgo.GoUInt16),
(7164 : stdgo.GoUInt16),
(7223 : stdgo.GoUInt16),
(7227 : stdgo.GoUInt16),
(7241 : stdgo.GoUInt16),
(7245 : stdgo.GoUInt16),
(7304 : stdgo.GoUInt16),
(7312 : stdgo.GoUInt16),
(7354 : stdgo.GoUInt16),
(7357 : stdgo.GoUInt16),
(7367 : stdgo.GoUInt16),
(7376 : stdgo.GoUInt16),
(7418 : stdgo.GoUInt16),
(7424 : stdgo.GoUInt16),
(7957 : stdgo.GoUInt16),
(7960 : stdgo.GoUInt16),
(7965 : stdgo.GoUInt16),
(7968 : stdgo.GoUInt16),
(8005 : stdgo.GoUInt16),
(8008 : stdgo.GoUInt16),
(8013 : stdgo.GoUInt16),
(8016 : stdgo.GoUInt16),
(8061 : stdgo.GoUInt16),
(8064 : stdgo.GoUInt16),
(8147 : stdgo.GoUInt16),
(8150 : stdgo.GoUInt16),
(8175 : stdgo.GoUInt16),
(8178 : stdgo.GoUInt16),
(8190 : stdgo.GoUInt16),
(8208 : stdgo.GoUInt16),
(8231 : stdgo.GoUInt16),
(8240 : stdgo.GoUInt16),
(8286 : stdgo.GoUInt16),
(8304 : stdgo.GoUInt16),
(8305 : stdgo.GoUInt16),
(8308 : stdgo.GoUInt16),
(8348 : stdgo.GoUInt16),
(8352 : stdgo.GoUInt16),
(8384 : stdgo.GoUInt16),
(8400 : stdgo.GoUInt16),
(8432 : stdgo.GoUInt16),
(8448 : stdgo.GoUInt16),
(8587 : stdgo.GoUInt16),
(8592 : stdgo.GoUInt16),
(9254 : stdgo.GoUInt16),
(9280 : stdgo.GoUInt16),
(9290 : stdgo.GoUInt16),
(9312 : stdgo.GoUInt16),
(11123 : stdgo.GoUInt16),
(11126 : stdgo.GoUInt16),
(11507 : stdgo.GoUInt16),
(11513 : stdgo.GoUInt16),
(11559 : stdgo.GoUInt16),
(11565 : stdgo.GoUInt16),
(11565 : stdgo.GoUInt16),
(11568 : stdgo.GoUInt16),
(11623 : stdgo.GoUInt16),
(11631 : stdgo.GoUInt16),
(11632 : stdgo.GoUInt16),
(11647 : stdgo.GoUInt16),
(11670 : stdgo.GoUInt16),
(11680 : stdgo.GoUInt16),
(11869 : stdgo.GoUInt16),
(11904 : stdgo.GoUInt16),
(12019 : stdgo.GoUInt16),
(12032 : stdgo.GoUInt16),
(12245 : stdgo.GoUInt16),
(12272 : stdgo.GoUInt16),
(12283 : stdgo.GoUInt16),
(12289 : stdgo.GoUInt16),
(12438 : stdgo.GoUInt16),
(12441 : stdgo.GoUInt16),
(12543 : stdgo.GoUInt16),
(12549 : stdgo.GoUInt16),
(12771 : stdgo.GoUInt16),
(12784 : stdgo.GoUInt16),
(42124 : stdgo.GoUInt16),
(42128 : stdgo.GoUInt16),
(42182 : stdgo.GoUInt16),
(42192 : stdgo.GoUInt16),
(42539 : stdgo.GoUInt16),
(42560 : stdgo.GoUInt16),
(42743 : stdgo.GoUInt16),
(42752 : stdgo.GoUInt16),
(42954 : stdgo.GoUInt16),
(42960 : stdgo.GoUInt16),
(42969 : stdgo.GoUInt16),
(42994 : stdgo.GoUInt16),
(43052 : stdgo.GoUInt16),
(43056 : stdgo.GoUInt16),
(43065 : stdgo.GoUInt16),
(43072 : stdgo.GoUInt16),
(43127 : stdgo.GoUInt16),
(43136 : stdgo.GoUInt16),
(43205 : stdgo.GoUInt16),
(43214 : stdgo.GoUInt16),
(43225 : stdgo.GoUInt16),
(43232 : stdgo.GoUInt16),
(43347 : stdgo.GoUInt16),
(43359 : stdgo.GoUInt16),
(43388 : stdgo.GoUInt16),
(43392 : stdgo.GoUInt16),
(43481 : stdgo.GoUInt16),
(43486 : stdgo.GoUInt16),
(43574 : stdgo.GoUInt16),
(43584 : stdgo.GoUInt16),
(43597 : stdgo.GoUInt16),
(43600 : stdgo.GoUInt16),
(43609 : stdgo.GoUInt16),
(43612 : stdgo.GoUInt16),
(43714 : stdgo.GoUInt16),
(43739 : stdgo.GoUInt16),
(43766 : stdgo.GoUInt16),
(43777 : stdgo.GoUInt16),
(43782 : stdgo.GoUInt16),
(43785 : stdgo.GoUInt16),
(43790 : stdgo.GoUInt16),
(43793 : stdgo.GoUInt16),
(43798 : stdgo.GoUInt16),
(43808 : stdgo.GoUInt16),
(43883 : stdgo.GoUInt16),
(43888 : stdgo.GoUInt16),
(44013 : stdgo.GoUInt16),
(44016 : stdgo.GoUInt16),
(44025 : stdgo.GoUInt16),
(44032 : stdgo.GoUInt16),
(55203 : stdgo.GoUInt16),
(55216 : stdgo.GoUInt16),
(55238 : stdgo.GoUInt16),
(55243 : stdgo.GoUInt16),
(55291 : stdgo.GoUInt16),
(63744 : stdgo.GoUInt16),
(64109 : stdgo.GoUInt16),
(64112 : stdgo.GoUInt16),
(64217 : stdgo.GoUInt16),
(64256 : stdgo.GoUInt16),
(64262 : stdgo.GoUInt16),
(64275 : stdgo.GoUInt16),
(64279 : stdgo.GoUInt16),
(64285 : stdgo.GoUInt16),
(64450 : stdgo.GoUInt16),
(64467 : stdgo.GoUInt16),
(64911 : stdgo.GoUInt16),
(64914 : stdgo.GoUInt16),
(64967 : stdgo.GoUInt16),
(64975 : stdgo.GoUInt16),
(64975 : stdgo.GoUInt16),
(65008 : stdgo.GoUInt16),
(65049 : stdgo.GoUInt16),
(65056 : stdgo.GoUInt16),
(65131 : stdgo.GoUInt16),
(65136 : stdgo.GoUInt16),
(65276 : stdgo.GoUInt16),
(65281 : stdgo.GoUInt16),
(65470 : stdgo.GoUInt16),
(65474 : stdgo.GoUInt16),
(65479 : stdgo.GoUInt16),
(65482 : stdgo.GoUInt16),
(65487 : stdgo.GoUInt16),
(65490 : stdgo.GoUInt16),
(65495 : stdgo.GoUInt16),
(65498 : stdgo.GoUInt16),
(65500 : stdgo.GoUInt16),
(65504 : stdgo.GoUInt16),
(65518 : stdgo.GoUInt16),
(65532 : stdgo.GoUInt16),
(65533 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
var _isNotPrint16 : stdgo.Slice<stdgo.GoUInt16> = (new stdgo.Slice<stdgo.GoUInt16>(133, 133, ...[
(173 : stdgo.GoUInt16),
(907 : stdgo.GoUInt16),
(909 : stdgo.GoUInt16),
(930 : stdgo.GoUInt16),
(1328 : stdgo.GoUInt16),
(1424 : stdgo.GoUInt16),
(1564 : stdgo.GoUInt16),
(1757 : stdgo.GoUInt16),
(2111 : stdgo.GoUInt16),
(2143 : stdgo.GoUInt16),
(2274 : stdgo.GoUInt16),
(2436 : stdgo.GoUInt16),
(2473 : stdgo.GoUInt16),
(2481 : stdgo.GoUInt16),
(2526 : stdgo.GoUInt16),
(2564 : stdgo.GoUInt16),
(2601 : stdgo.GoUInt16),
(2609 : stdgo.GoUInt16),
(2612 : stdgo.GoUInt16),
(2615 : stdgo.GoUInt16),
(2621 : stdgo.GoUInt16),
(2653 : stdgo.GoUInt16),
(2692 : stdgo.GoUInt16),
(2702 : stdgo.GoUInt16),
(2706 : stdgo.GoUInt16),
(2729 : stdgo.GoUInt16),
(2737 : stdgo.GoUInt16),
(2740 : stdgo.GoUInt16),
(2758 : stdgo.GoUInt16),
(2762 : stdgo.GoUInt16),
(2816 : stdgo.GoUInt16),
(2820 : stdgo.GoUInt16),
(2857 : stdgo.GoUInt16),
(2865 : stdgo.GoUInt16),
(2868 : stdgo.GoUInt16),
(2910 : stdgo.GoUInt16),
(2948 : stdgo.GoUInt16),
(2961 : stdgo.GoUInt16),
(2971 : stdgo.GoUInt16),
(2973 : stdgo.GoUInt16),
(3017 : stdgo.GoUInt16),
(3085 : stdgo.GoUInt16),
(3089 : stdgo.GoUInt16),
(3113 : stdgo.GoUInt16),
(3141 : stdgo.GoUInt16),
(3145 : stdgo.GoUInt16),
(3159 : stdgo.GoUInt16),
(3213 : stdgo.GoUInt16),
(3217 : stdgo.GoUInt16),
(3241 : stdgo.GoUInt16),
(3252 : stdgo.GoUInt16),
(3269 : stdgo.GoUInt16),
(3273 : stdgo.GoUInt16),
(3295 : stdgo.GoUInt16),
(3312 : stdgo.GoUInt16),
(3341 : stdgo.GoUInt16),
(3345 : stdgo.GoUInt16),
(3397 : stdgo.GoUInt16),
(3401 : stdgo.GoUInt16),
(3456 : stdgo.GoUInt16),
(3460 : stdgo.GoUInt16),
(3506 : stdgo.GoUInt16),
(3516 : stdgo.GoUInt16),
(3541 : stdgo.GoUInt16),
(3543 : stdgo.GoUInt16),
(3715 : stdgo.GoUInt16),
(3717 : stdgo.GoUInt16),
(3723 : stdgo.GoUInt16),
(3748 : stdgo.GoUInt16),
(3750 : stdgo.GoUInt16),
(3781 : stdgo.GoUInt16),
(3783 : stdgo.GoUInt16),
(3791 : stdgo.GoUInt16),
(3912 : stdgo.GoUInt16),
(3992 : stdgo.GoUInt16),
(4029 : stdgo.GoUInt16),
(4045 : stdgo.GoUInt16),
(4294 : stdgo.GoUInt16),
(4681 : stdgo.GoUInt16),
(4695 : stdgo.GoUInt16),
(4697 : stdgo.GoUInt16),
(4745 : stdgo.GoUInt16),
(4785 : stdgo.GoUInt16),
(4799 : stdgo.GoUInt16),
(4801 : stdgo.GoUInt16),
(4823 : stdgo.GoUInt16),
(4881 : stdgo.GoUInt16),
(5760 : stdgo.GoUInt16),
(5997 : stdgo.GoUInt16),
(6001 : stdgo.GoUInt16),
(6158 : stdgo.GoUInt16),
(6431 : stdgo.GoUInt16),
(6751 : stdgo.GoUInt16),
(7039 : stdgo.GoUInt16),
(8024 : stdgo.GoUInt16),
(8026 : stdgo.GoUInt16),
(8028 : stdgo.GoUInt16),
(8030 : stdgo.GoUInt16),
(8117 : stdgo.GoUInt16),
(8133 : stdgo.GoUInt16),
(8156 : stdgo.GoUInt16),
(8181 : stdgo.GoUInt16),
(8335 : stdgo.GoUInt16),
(11158 : stdgo.GoUInt16),
(11558 : stdgo.GoUInt16),
(11687 : stdgo.GoUInt16),
(11695 : stdgo.GoUInt16),
(11703 : stdgo.GoUInt16),
(11711 : stdgo.GoUInt16),
(11719 : stdgo.GoUInt16),
(11727 : stdgo.GoUInt16),
(11735 : stdgo.GoUInt16),
(11743 : stdgo.GoUInt16),
(11930 : stdgo.GoUInt16),
(12352 : stdgo.GoUInt16),
(12592 : stdgo.GoUInt16),
(12687 : stdgo.GoUInt16),
(12831 : stdgo.GoUInt16),
(42962 : stdgo.GoUInt16),
(42964 : stdgo.GoUInt16),
(43470 : stdgo.GoUInt16),
(43519 : stdgo.GoUInt16),
(43815 : stdgo.GoUInt16),
(43823 : stdgo.GoUInt16),
(64311 : stdgo.GoUInt16),
(64317 : stdgo.GoUInt16),
(64319 : stdgo.GoUInt16),
(64322 : stdgo.GoUInt16),
(64325 : stdgo.GoUInt16),
(65107 : stdgo.GoUInt16),
(65127 : stdgo.GoUInt16),
(65141 : stdgo.GoUInt16),
(65511 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
var _isPrint32 : stdgo.Slice<stdgo.GoUInt32> = (new stdgo.Slice<stdgo.GoUInt32>(508, 508, ...[
(65536u32 : stdgo.GoUInt32),
(65613u32 : stdgo.GoUInt32),
(65616u32 : stdgo.GoUInt32),
(65629u32 : stdgo.GoUInt32),
(65664u32 : stdgo.GoUInt32),
(65786u32 : stdgo.GoUInt32),
(65792u32 : stdgo.GoUInt32),
(65794u32 : stdgo.GoUInt32),
(65799u32 : stdgo.GoUInt32),
(65843u32 : stdgo.GoUInt32),
(65847u32 : stdgo.GoUInt32),
(65948u32 : stdgo.GoUInt32),
(65952u32 : stdgo.GoUInt32),
(65952u32 : stdgo.GoUInt32),
(66000u32 : stdgo.GoUInt32),
(66045u32 : stdgo.GoUInt32),
(66176u32 : stdgo.GoUInt32),
(66204u32 : stdgo.GoUInt32),
(66208u32 : stdgo.GoUInt32),
(66256u32 : stdgo.GoUInt32),
(66272u32 : stdgo.GoUInt32),
(66299u32 : stdgo.GoUInt32),
(66304u32 : stdgo.GoUInt32),
(66339u32 : stdgo.GoUInt32),
(66349u32 : stdgo.GoUInt32),
(66378u32 : stdgo.GoUInt32),
(66384u32 : stdgo.GoUInt32),
(66426u32 : stdgo.GoUInt32),
(66432u32 : stdgo.GoUInt32),
(66499u32 : stdgo.GoUInt32),
(66504u32 : stdgo.GoUInt32),
(66517u32 : stdgo.GoUInt32),
(66560u32 : stdgo.GoUInt32),
(66717u32 : stdgo.GoUInt32),
(66720u32 : stdgo.GoUInt32),
(66729u32 : stdgo.GoUInt32),
(66736u32 : stdgo.GoUInt32),
(66771u32 : stdgo.GoUInt32),
(66776u32 : stdgo.GoUInt32),
(66811u32 : stdgo.GoUInt32),
(66816u32 : stdgo.GoUInt32),
(66855u32 : stdgo.GoUInt32),
(66864u32 : stdgo.GoUInt32),
(66915u32 : stdgo.GoUInt32),
(66927u32 : stdgo.GoUInt32),
(67004u32 : stdgo.GoUInt32),
(67072u32 : stdgo.GoUInt32),
(67382u32 : stdgo.GoUInt32),
(67392u32 : stdgo.GoUInt32),
(67413u32 : stdgo.GoUInt32),
(67424u32 : stdgo.GoUInt32),
(67431u32 : stdgo.GoUInt32),
(67456u32 : stdgo.GoUInt32),
(67514u32 : stdgo.GoUInt32),
(67584u32 : stdgo.GoUInt32),
(67589u32 : stdgo.GoUInt32),
(67592u32 : stdgo.GoUInt32),
(67640u32 : stdgo.GoUInt32),
(67644u32 : stdgo.GoUInt32),
(67644u32 : stdgo.GoUInt32),
(67647u32 : stdgo.GoUInt32),
(67742u32 : stdgo.GoUInt32),
(67751u32 : stdgo.GoUInt32),
(67759u32 : stdgo.GoUInt32),
(67808u32 : stdgo.GoUInt32),
(67829u32 : stdgo.GoUInt32),
(67835u32 : stdgo.GoUInt32),
(67867u32 : stdgo.GoUInt32),
(67871u32 : stdgo.GoUInt32),
(67897u32 : stdgo.GoUInt32),
(67903u32 : stdgo.GoUInt32),
(67903u32 : stdgo.GoUInt32),
(67968u32 : stdgo.GoUInt32),
(68023u32 : stdgo.GoUInt32),
(68028u32 : stdgo.GoUInt32),
(68047u32 : stdgo.GoUInt32),
(68050u32 : stdgo.GoUInt32),
(68102u32 : stdgo.GoUInt32),
(68108u32 : stdgo.GoUInt32),
(68149u32 : stdgo.GoUInt32),
(68152u32 : stdgo.GoUInt32),
(68154u32 : stdgo.GoUInt32),
(68159u32 : stdgo.GoUInt32),
(68168u32 : stdgo.GoUInt32),
(68176u32 : stdgo.GoUInt32),
(68184u32 : stdgo.GoUInt32),
(68192u32 : stdgo.GoUInt32),
(68255u32 : stdgo.GoUInt32),
(68288u32 : stdgo.GoUInt32),
(68326u32 : stdgo.GoUInt32),
(68331u32 : stdgo.GoUInt32),
(68342u32 : stdgo.GoUInt32),
(68352u32 : stdgo.GoUInt32),
(68405u32 : stdgo.GoUInt32),
(68409u32 : stdgo.GoUInt32),
(68437u32 : stdgo.GoUInt32),
(68440u32 : stdgo.GoUInt32),
(68466u32 : stdgo.GoUInt32),
(68472u32 : stdgo.GoUInt32),
(68497u32 : stdgo.GoUInt32),
(68505u32 : stdgo.GoUInt32),
(68508u32 : stdgo.GoUInt32),
(68521u32 : stdgo.GoUInt32),
(68527u32 : stdgo.GoUInt32),
(68608u32 : stdgo.GoUInt32),
(68680u32 : stdgo.GoUInt32),
(68736u32 : stdgo.GoUInt32),
(68786u32 : stdgo.GoUInt32),
(68800u32 : stdgo.GoUInt32),
(68850u32 : stdgo.GoUInt32),
(68858u32 : stdgo.GoUInt32),
(68903u32 : stdgo.GoUInt32),
(68912u32 : stdgo.GoUInt32),
(68921u32 : stdgo.GoUInt32),
(69216u32 : stdgo.GoUInt32),
(69293u32 : stdgo.GoUInt32),
(69296u32 : stdgo.GoUInt32),
(69297u32 : stdgo.GoUInt32),
(69373u32 : stdgo.GoUInt32),
(69415u32 : stdgo.GoUInt32),
(69424u32 : stdgo.GoUInt32),
(69465u32 : stdgo.GoUInt32),
(69488u32 : stdgo.GoUInt32),
(69513u32 : stdgo.GoUInt32),
(69552u32 : stdgo.GoUInt32),
(69579u32 : stdgo.GoUInt32),
(69600u32 : stdgo.GoUInt32),
(69622u32 : stdgo.GoUInt32),
(69632u32 : stdgo.GoUInt32),
(69709u32 : stdgo.GoUInt32),
(69714u32 : stdgo.GoUInt32),
(69749u32 : stdgo.GoUInt32),
(69759u32 : stdgo.GoUInt32),
(69826u32 : stdgo.GoUInt32),
(69840u32 : stdgo.GoUInt32),
(69864u32 : stdgo.GoUInt32),
(69872u32 : stdgo.GoUInt32),
(69881u32 : stdgo.GoUInt32),
(69888u32 : stdgo.GoUInt32),
(69959u32 : stdgo.GoUInt32),
(69968u32 : stdgo.GoUInt32),
(70006u32 : stdgo.GoUInt32),
(70016u32 : stdgo.GoUInt32),
(70132u32 : stdgo.GoUInt32),
(70144u32 : stdgo.GoUInt32),
(70209u32 : stdgo.GoUInt32),
(70272u32 : stdgo.GoUInt32),
(70313u32 : stdgo.GoUInt32),
(70320u32 : stdgo.GoUInt32),
(70378u32 : stdgo.GoUInt32),
(70384u32 : stdgo.GoUInt32),
(70393u32 : stdgo.GoUInt32),
(70400u32 : stdgo.GoUInt32),
(70412u32 : stdgo.GoUInt32),
(70415u32 : stdgo.GoUInt32),
(70416u32 : stdgo.GoUInt32),
(70419u32 : stdgo.GoUInt32),
(70468u32 : stdgo.GoUInt32),
(70471u32 : stdgo.GoUInt32),
(70472u32 : stdgo.GoUInt32),
(70475u32 : stdgo.GoUInt32),
(70477u32 : stdgo.GoUInt32),
(70480u32 : stdgo.GoUInt32),
(70480u32 : stdgo.GoUInt32),
(70487u32 : stdgo.GoUInt32),
(70487u32 : stdgo.GoUInt32),
(70493u32 : stdgo.GoUInt32),
(70499u32 : stdgo.GoUInt32),
(70502u32 : stdgo.GoUInt32),
(70508u32 : stdgo.GoUInt32),
(70512u32 : stdgo.GoUInt32),
(70516u32 : stdgo.GoUInt32),
(70656u32 : stdgo.GoUInt32),
(70753u32 : stdgo.GoUInt32),
(70784u32 : stdgo.GoUInt32),
(70855u32 : stdgo.GoUInt32),
(70864u32 : stdgo.GoUInt32),
(70873u32 : stdgo.GoUInt32),
(71040u32 : stdgo.GoUInt32),
(71093u32 : stdgo.GoUInt32),
(71096u32 : stdgo.GoUInt32),
(71133u32 : stdgo.GoUInt32),
(71168u32 : stdgo.GoUInt32),
(71236u32 : stdgo.GoUInt32),
(71248u32 : stdgo.GoUInt32),
(71257u32 : stdgo.GoUInt32),
(71264u32 : stdgo.GoUInt32),
(71276u32 : stdgo.GoUInt32),
(71296u32 : stdgo.GoUInt32),
(71353u32 : stdgo.GoUInt32),
(71360u32 : stdgo.GoUInt32),
(71369u32 : stdgo.GoUInt32),
(71424u32 : stdgo.GoUInt32),
(71450u32 : stdgo.GoUInt32),
(71453u32 : stdgo.GoUInt32),
(71467u32 : stdgo.GoUInt32),
(71472u32 : stdgo.GoUInt32),
(71494u32 : stdgo.GoUInt32),
(71680u32 : stdgo.GoUInt32),
(71739u32 : stdgo.GoUInt32),
(71840u32 : stdgo.GoUInt32),
(71922u32 : stdgo.GoUInt32),
(71935u32 : stdgo.GoUInt32),
(71942u32 : stdgo.GoUInt32),
(71945u32 : stdgo.GoUInt32),
(71945u32 : stdgo.GoUInt32),
(71948u32 : stdgo.GoUInt32),
(71992u32 : stdgo.GoUInt32),
(71995u32 : stdgo.GoUInt32),
(72006u32 : stdgo.GoUInt32),
(72016u32 : stdgo.GoUInt32),
(72025u32 : stdgo.GoUInt32),
(72096u32 : stdgo.GoUInt32),
(72103u32 : stdgo.GoUInt32),
(72106u32 : stdgo.GoUInt32),
(72151u32 : stdgo.GoUInt32),
(72154u32 : stdgo.GoUInt32),
(72164u32 : stdgo.GoUInt32),
(72192u32 : stdgo.GoUInt32),
(72263u32 : stdgo.GoUInt32),
(72272u32 : stdgo.GoUInt32),
(72354u32 : stdgo.GoUInt32),
(72368u32 : stdgo.GoUInt32),
(72440u32 : stdgo.GoUInt32),
(72448u32 : stdgo.GoUInt32),
(72457u32 : stdgo.GoUInt32),
(72704u32 : stdgo.GoUInt32),
(72773u32 : stdgo.GoUInt32),
(72784u32 : stdgo.GoUInt32),
(72812u32 : stdgo.GoUInt32),
(72816u32 : stdgo.GoUInt32),
(72847u32 : stdgo.GoUInt32),
(72850u32 : stdgo.GoUInt32),
(72886u32 : stdgo.GoUInt32),
(72960u32 : stdgo.GoUInt32),
(73014u32 : stdgo.GoUInt32),
(73018u32 : stdgo.GoUInt32),
(73031u32 : stdgo.GoUInt32),
(73040u32 : stdgo.GoUInt32),
(73049u32 : stdgo.GoUInt32),
(73056u32 : stdgo.GoUInt32),
(73112u32 : stdgo.GoUInt32),
(73120u32 : stdgo.GoUInt32),
(73129u32 : stdgo.GoUInt32),
(73440u32 : stdgo.GoUInt32),
(73464u32 : stdgo.GoUInt32),
(73472u32 : stdgo.GoUInt32),
(73530u32 : stdgo.GoUInt32),
(73534u32 : stdgo.GoUInt32),
(73561u32 : stdgo.GoUInt32),
(73648u32 : stdgo.GoUInt32),
(73648u32 : stdgo.GoUInt32),
(73664u32 : stdgo.GoUInt32),
(73713u32 : stdgo.GoUInt32),
(73727u32 : stdgo.GoUInt32),
(74649u32 : stdgo.GoUInt32),
(74752u32 : stdgo.GoUInt32),
(74868u32 : stdgo.GoUInt32),
(74880u32 : stdgo.GoUInt32),
(75075u32 : stdgo.GoUInt32),
(77712u32 : stdgo.GoUInt32),
(77810u32 : stdgo.GoUInt32),
(77824u32 : stdgo.GoUInt32),
(78895u32 : stdgo.GoUInt32),
(78912u32 : stdgo.GoUInt32),
(78933u32 : stdgo.GoUInt32),
(82944u32 : stdgo.GoUInt32),
(83526u32 : stdgo.GoUInt32),
(92160u32 : stdgo.GoUInt32),
(92728u32 : stdgo.GoUInt32),
(92736u32 : stdgo.GoUInt32),
(92777u32 : stdgo.GoUInt32),
(92782u32 : stdgo.GoUInt32),
(92873u32 : stdgo.GoUInt32),
(92880u32 : stdgo.GoUInt32),
(92909u32 : stdgo.GoUInt32),
(92912u32 : stdgo.GoUInt32),
(92917u32 : stdgo.GoUInt32),
(92928u32 : stdgo.GoUInt32),
(92997u32 : stdgo.GoUInt32),
(93008u32 : stdgo.GoUInt32),
(93047u32 : stdgo.GoUInt32),
(93053u32 : stdgo.GoUInt32),
(93071u32 : stdgo.GoUInt32),
(93760u32 : stdgo.GoUInt32),
(93850u32 : stdgo.GoUInt32),
(93952u32 : stdgo.GoUInt32),
(94026u32 : stdgo.GoUInt32),
(94031u32 : stdgo.GoUInt32),
(94087u32 : stdgo.GoUInt32),
(94095u32 : stdgo.GoUInt32),
(94111u32 : stdgo.GoUInt32),
(94176u32 : stdgo.GoUInt32),
(94180u32 : stdgo.GoUInt32),
(94192u32 : stdgo.GoUInt32),
(94193u32 : stdgo.GoUInt32),
(94208u32 : stdgo.GoUInt32),
(100343u32 : stdgo.GoUInt32),
(100352u32 : stdgo.GoUInt32),
(101589u32 : stdgo.GoUInt32),
(101632u32 : stdgo.GoUInt32),
(101640u32 : stdgo.GoUInt32),
(110576u32 : stdgo.GoUInt32),
(110882u32 : stdgo.GoUInt32),
(110898u32 : stdgo.GoUInt32),
(110898u32 : stdgo.GoUInt32),
(110928u32 : stdgo.GoUInt32),
(110930u32 : stdgo.GoUInt32),
(110933u32 : stdgo.GoUInt32),
(110933u32 : stdgo.GoUInt32),
(110948u32 : stdgo.GoUInt32),
(110951u32 : stdgo.GoUInt32),
(110960u32 : stdgo.GoUInt32),
(111355u32 : stdgo.GoUInt32),
(113664u32 : stdgo.GoUInt32),
(113770u32 : stdgo.GoUInt32),
(113776u32 : stdgo.GoUInt32),
(113788u32 : stdgo.GoUInt32),
(113792u32 : stdgo.GoUInt32),
(113800u32 : stdgo.GoUInt32),
(113808u32 : stdgo.GoUInt32),
(113817u32 : stdgo.GoUInt32),
(113820u32 : stdgo.GoUInt32),
(113823u32 : stdgo.GoUInt32),
(118528u32 : stdgo.GoUInt32),
(118573u32 : stdgo.GoUInt32),
(118576u32 : stdgo.GoUInt32),
(118598u32 : stdgo.GoUInt32),
(118608u32 : stdgo.GoUInt32),
(118723u32 : stdgo.GoUInt32),
(118784u32 : stdgo.GoUInt32),
(119029u32 : stdgo.GoUInt32),
(119040u32 : stdgo.GoUInt32),
(119078u32 : stdgo.GoUInt32),
(119081u32 : stdgo.GoUInt32),
(119154u32 : stdgo.GoUInt32),
(119163u32 : stdgo.GoUInt32),
(119274u32 : stdgo.GoUInt32),
(119296u32 : stdgo.GoUInt32),
(119365u32 : stdgo.GoUInt32),
(119488u32 : stdgo.GoUInt32),
(119507u32 : stdgo.GoUInt32),
(119520u32 : stdgo.GoUInt32),
(119539u32 : stdgo.GoUInt32),
(119552u32 : stdgo.GoUInt32),
(119638u32 : stdgo.GoUInt32),
(119648u32 : stdgo.GoUInt32),
(119672u32 : stdgo.GoUInt32),
(119808u32 : stdgo.GoUInt32),
(119967u32 : stdgo.GoUInt32),
(119970u32 : stdgo.GoUInt32),
(119970u32 : stdgo.GoUInt32),
(119973u32 : stdgo.GoUInt32),
(119974u32 : stdgo.GoUInt32),
(119977u32 : stdgo.GoUInt32),
(120074u32 : stdgo.GoUInt32),
(120077u32 : stdgo.GoUInt32),
(120134u32 : stdgo.GoUInt32),
(120138u32 : stdgo.GoUInt32),
(120485u32 : stdgo.GoUInt32),
(120488u32 : stdgo.GoUInt32),
(120779u32 : stdgo.GoUInt32),
(120782u32 : stdgo.GoUInt32),
(121483u32 : stdgo.GoUInt32),
(121499u32 : stdgo.GoUInt32),
(121519u32 : stdgo.GoUInt32),
(122624u32 : stdgo.GoUInt32),
(122654u32 : stdgo.GoUInt32),
(122661u32 : stdgo.GoUInt32),
(122666u32 : stdgo.GoUInt32),
(122880u32 : stdgo.GoUInt32),
(122904u32 : stdgo.GoUInt32),
(122907u32 : stdgo.GoUInt32),
(122922u32 : stdgo.GoUInt32),
(122928u32 : stdgo.GoUInt32),
(122989u32 : stdgo.GoUInt32),
(123023u32 : stdgo.GoUInt32),
(123023u32 : stdgo.GoUInt32),
(123136u32 : stdgo.GoUInt32),
(123180u32 : stdgo.GoUInt32),
(123184u32 : stdgo.GoUInt32),
(123197u32 : stdgo.GoUInt32),
(123200u32 : stdgo.GoUInt32),
(123209u32 : stdgo.GoUInt32),
(123214u32 : stdgo.GoUInt32),
(123215u32 : stdgo.GoUInt32),
(123536u32 : stdgo.GoUInt32),
(123566u32 : stdgo.GoUInt32),
(123584u32 : stdgo.GoUInt32),
(123641u32 : stdgo.GoUInt32),
(123647u32 : stdgo.GoUInt32),
(123647u32 : stdgo.GoUInt32),
(124112u32 : stdgo.GoUInt32),
(124153u32 : stdgo.GoUInt32),
(124896u32 : stdgo.GoUInt32),
(125124u32 : stdgo.GoUInt32),
(125127u32 : stdgo.GoUInt32),
(125142u32 : stdgo.GoUInt32),
(125184u32 : stdgo.GoUInt32),
(125259u32 : stdgo.GoUInt32),
(125264u32 : stdgo.GoUInt32),
(125273u32 : stdgo.GoUInt32),
(125278u32 : stdgo.GoUInt32),
(125279u32 : stdgo.GoUInt32),
(126065u32 : stdgo.GoUInt32),
(126132u32 : stdgo.GoUInt32),
(126209u32 : stdgo.GoUInt32),
(126269u32 : stdgo.GoUInt32),
(126464u32 : stdgo.GoUInt32),
(126500u32 : stdgo.GoUInt32),
(126503u32 : stdgo.GoUInt32),
(126523u32 : stdgo.GoUInt32),
(126530u32 : stdgo.GoUInt32),
(126530u32 : stdgo.GoUInt32),
(126535u32 : stdgo.GoUInt32),
(126548u32 : stdgo.GoUInt32),
(126551u32 : stdgo.GoUInt32),
(126564u32 : stdgo.GoUInt32),
(126567u32 : stdgo.GoUInt32),
(126619u32 : stdgo.GoUInt32),
(126625u32 : stdgo.GoUInt32),
(126651u32 : stdgo.GoUInt32),
(126704u32 : stdgo.GoUInt32),
(126705u32 : stdgo.GoUInt32),
(126976u32 : stdgo.GoUInt32),
(127019u32 : stdgo.GoUInt32),
(127024u32 : stdgo.GoUInt32),
(127123u32 : stdgo.GoUInt32),
(127136u32 : stdgo.GoUInt32),
(127150u32 : stdgo.GoUInt32),
(127153u32 : stdgo.GoUInt32),
(127221u32 : stdgo.GoUInt32),
(127232u32 : stdgo.GoUInt32),
(127405u32 : stdgo.GoUInt32),
(127462u32 : stdgo.GoUInt32),
(127490u32 : stdgo.GoUInt32),
(127504u32 : stdgo.GoUInt32),
(127547u32 : stdgo.GoUInt32),
(127552u32 : stdgo.GoUInt32),
(127560u32 : stdgo.GoUInt32),
(127568u32 : stdgo.GoUInt32),
(127569u32 : stdgo.GoUInt32),
(127584u32 : stdgo.GoUInt32),
(127589u32 : stdgo.GoUInt32),
(127744u32 : stdgo.GoUInt32),
(128727u32 : stdgo.GoUInt32),
(128732u32 : stdgo.GoUInt32),
(128748u32 : stdgo.GoUInt32),
(128752u32 : stdgo.GoUInt32),
(128764u32 : stdgo.GoUInt32),
(128768u32 : stdgo.GoUInt32),
(128886u32 : stdgo.GoUInt32),
(128891u32 : stdgo.GoUInt32),
(128985u32 : stdgo.GoUInt32),
(128992u32 : stdgo.GoUInt32),
(129003u32 : stdgo.GoUInt32),
(129008u32 : stdgo.GoUInt32),
(129008u32 : stdgo.GoUInt32),
(129024u32 : stdgo.GoUInt32),
(129035u32 : stdgo.GoUInt32),
(129040u32 : stdgo.GoUInt32),
(129095u32 : stdgo.GoUInt32),
(129104u32 : stdgo.GoUInt32),
(129113u32 : stdgo.GoUInt32),
(129120u32 : stdgo.GoUInt32),
(129159u32 : stdgo.GoUInt32),
(129168u32 : stdgo.GoUInt32),
(129197u32 : stdgo.GoUInt32),
(129200u32 : stdgo.GoUInt32),
(129201u32 : stdgo.GoUInt32),
(129280u32 : stdgo.GoUInt32),
(129619u32 : stdgo.GoUInt32),
(129632u32 : stdgo.GoUInt32),
(129645u32 : stdgo.GoUInt32),
(129648u32 : stdgo.GoUInt32),
(129660u32 : stdgo.GoUInt32),
(129664u32 : stdgo.GoUInt32),
(129672u32 : stdgo.GoUInt32),
(129680u32 : stdgo.GoUInt32),
(129733u32 : stdgo.GoUInt32),
(129742u32 : stdgo.GoUInt32),
(129755u32 : stdgo.GoUInt32),
(129760u32 : stdgo.GoUInt32),
(129768u32 : stdgo.GoUInt32),
(129776u32 : stdgo.GoUInt32),
(129784u32 : stdgo.GoUInt32),
(129792u32 : stdgo.GoUInt32),
(129994u32 : stdgo.GoUInt32),
(130032u32 : stdgo.GoUInt32),
(130041u32 : stdgo.GoUInt32),
(131072u32 : stdgo.GoUInt32),
(173791u32 : stdgo.GoUInt32),
(173824u32 : stdgo.GoUInt32),
(177977u32 : stdgo.GoUInt32),
(177984u32 : stdgo.GoUInt32),
(178205u32 : stdgo.GoUInt32),
(178208u32 : stdgo.GoUInt32),
(183969u32 : stdgo.GoUInt32),
(183984u32 : stdgo.GoUInt32),
(191456u32 : stdgo.GoUInt32),
(194560u32 : stdgo.GoUInt32),
(195101u32 : stdgo.GoUInt32),
(196608u32 : stdgo.GoUInt32),
(201546u32 : stdgo.GoUInt32),
(201552u32 : stdgo.GoUInt32),
(205743u32 : stdgo.GoUInt32),
(917760u32 : stdgo.GoUInt32),
(917999u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
var _isNotPrint32 : stdgo.Slice<stdgo.GoUInt16> = (new stdgo.Slice<stdgo.GoUInt16>(112, 112, ...[
(12 : stdgo.GoUInt16),
(39 : stdgo.GoUInt16),
(59 : stdgo.GoUInt16),
(62 : stdgo.GoUInt16),
(399 : stdgo.GoUInt16),
(926 : stdgo.GoUInt16),
(1403 : stdgo.GoUInt16),
(1419 : stdgo.GoUInt16),
(1427 : stdgo.GoUInt16),
(1430 : stdgo.GoUInt16),
(1442 : stdgo.GoUInt16),
(1458 : stdgo.GoUInt16),
(1466 : stdgo.GoUInt16),
(1926 : stdgo.GoUInt16),
(1969 : stdgo.GoUInt16),
(2057 : stdgo.GoUInt16),
(2102 : stdgo.GoUInt16),
(2134 : stdgo.GoUInt16),
(2291 : stdgo.GoUInt16),
(2564 : stdgo.GoUInt16),
(2580 : stdgo.GoUInt16),
(2584 : stdgo.GoUInt16),
(3711 : stdgo.GoUInt16),
(3754 : stdgo.GoUInt16),
(4285 : stdgo.GoUInt16),
(4405 : stdgo.GoUInt16),
(4576 : stdgo.GoUInt16),
(4626 : stdgo.GoUInt16),
(4743 : stdgo.GoUInt16),
(4745 : stdgo.GoUInt16),
(4750 : stdgo.GoUInt16),
(4766 : stdgo.GoUInt16),
(4868 : stdgo.GoUInt16),
(4905 : stdgo.GoUInt16),
(4913 : stdgo.GoUInt16),
(4916 : stdgo.GoUInt16),
(4922 : stdgo.GoUInt16),
(5212 : stdgo.GoUInt16),
(6420 : stdgo.GoUInt16),
(6423 : stdgo.GoUInt16),
(6454 : stdgo.GoUInt16),
(7177 : stdgo.GoUInt16),
(7223 : stdgo.GoUInt16),
(7336 : stdgo.GoUInt16),
(7431 : stdgo.GoUInt16),
(7434 : stdgo.GoUInt16),
(7483 : stdgo.GoUInt16),
(7486 : stdgo.GoUInt16),
(7526 : stdgo.GoUInt16),
(7529 : stdgo.GoUInt16),
(7567 : stdgo.GoUInt16),
(7570 : stdgo.GoUInt16),
(7953 : stdgo.GoUInt16),
(9327 : stdgo.GoUInt16),
(27231 : stdgo.GoUInt16),
(27327 : stdgo.GoUInt16),
(27482 : stdgo.GoUInt16),
(27490 : stdgo.GoUInt16),
(45044 : stdgo.GoUInt16),
(45052 : stdgo.GoUInt16),
(45055 : stdgo.GoUInt16),
(54357 : stdgo.GoUInt16),
(54429 : stdgo.GoUInt16),
(54445 : stdgo.GoUInt16),
(54458 : stdgo.GoUInt16),
(54460 : stdgo.GoUInt16),
(54468 : stdgo.GoUInt16),
(54534 : stdgo.GoUInt16),
(54549 : stdgo.GoUInt16),
(54557 : stdgo.GoUInt16),
(54586 : stdgo.GoUInt16),
(54591 : stdgo.GoUInt16),
(54597 : stdgo.GoUInt16),
(54609 : stdgo.GoUInt16),
(55968 : stdgo.GoUInt16),
(57351 : stdgo.GoUInt16),
(57378 : stdgo.GoUInt16),
(57381 : stdgo.GoUInt16),
(59367 : stdgo.GoUInt16),
(59372 : stdgo.GoUInt16),
(59375 : stdgo.GoUInt16),
(59391 : stdgo.GoUInt16),
(60932 : stdgo.GoUInt16),
(60960 : stdgo.GoUInt16),
(60963 : stdgo.GoUInt16),
(60968 : stdgo.GoUInt16),
(60979 : stdgo.GoUInt16),
(60984 : stdgo.GoUInt16),
(60986 : stdgo.GoUInt16),
(61000 : stdgo.GoUInt16),
(61002 : stdgo.GoUInt16),
(61004 : stdgo.GoUInt16),
(61008 : stdgo.GoUInt16),
(61011 : stdgo.GoUInt16),
(61016 : stdgo.GoUInt16),
(61018 : stdgo.GoUInt16),
(61020 : stdgo.GoUInt16),
(61022 : stdgo.GoUInt16),
(61024 : stdgo.GoUInt16),
(61027 : stdgo.GoUInt16),
(61035 : stdgo.GoUInt16),
(61043 : stdgo.GoUInt16),
(61048 : stdgo.GoUInt16),
(61053 : stdgo.GoUInt16),
(61055 : stdgo.GoUInt16),
(61066 : stdgo.GoUInt16),
(61092 : stdgo.GoUInt16),
(61098 : stdgo.GoUInt16),
(61632 : stdgo.GoUInt16),
(61648 : stdgo.GoUInt16),
(64190 : stdgo.GoUInt16),
(64403 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
var _isGraphic : stdgo.Slice<stdgo.GoUInt16> = (new stdgo.Slice<stdgo.GoUInt16>(16, 16, ...[
(160 : stdgo.GoUInt16),
(5760 : stdgo.GoUInt16),
(8192 : stdgo.GoUInt16),
(8193 : stdgo.GoUInt16),
(8194 : stdgo.GoUInt16),
(8195 : stdgo.GoUInt16),
(8196 : stdgo.GoUInt16),
(8197 : stdgo.GoUInt16),
(8198 : stdgo.GoUInt16),
(8199 : stdgo.GoUInt16),
(8200 : stdgo.GoUInt16),
(8201 : stdgo.GoUInt16),
(8202 : stdgo.GoUInt16),
(8239 : stdgo.GoUInt16),
(8287 : stdgo.GoUInt16),
(12288 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
var bitSizeError : (stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError> = _bitSizeError;
var baseError : (stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError> = _baseError;
@:structInit @:using(stdgo._internal.strconv.Strconv.NumError_static_extension) class NumError {
    public var func : stdgo.GoString = "";
    public var num : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?func:stdgo.GoString, ?num:stdgo.GoString, ?err:stdgo.Error) {
        if (func != null) this.func = func;
        if (num != null) this.num = num;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NumError(func, num, err);
    }
}
@:structInit @:private @:using(stdgo._internal.strconv.Strconv.T_decimal_static_extension) class T_decimal {
    public var _d : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(800, 800, ...[for (i in 0 ... 800) (0 : stdgo.GoUInt8)]);
    public var _nd : stdgo.GoInt = 0;
    public var _dp : stdgo.GoInt = 0;
    public var _neg : Bool = false;
    public var _trunc : Bool = false;
    public function new(?_d:stdgo.GoArray<stdgo.GoUInt8>, ?_nd:stdgo.GoInt, ?_dp:stdgo.GoInt, ?_neg:Bool, ?_trunc:Bool) {
        if (_d != null) this._d = _d;
        if (_nd != null) this._nd = _nd;
        if (_dp != null) this._dp = _dp;
        if (_neg != null) this._neg = _neg;
        if (_trunc != null) this._trunc = _trunc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decimal(_d, _nd, _dp, _neg, _trunc);
    }
}
@:structInit @:private class T_leftCheat {
    public var _delta : stdgo.GoInt = 0;
    public var _cutoff : stdgo.GoString = "";
    public function new(?_delta:stdgo.GoInt, ?_cutoff:stdgo.GoString) {
        if (_delta != null) this._delta = _delta;
        if (_cutoff != null) this._cutoff = _cutoff;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_leftCheat(_delta, _cutoff);
    }
}
@:structInit @:private class T_floatInfo {
    public var _mantbits : stdgo.GoUInt = 0;
    public var _expbits : stdgo.GoUInt = 0;
    public var _bias : stdgo.GoInt = 0;
    public function new(?_mantbits:stdgo.GoUInt, ?_expbits:stdgo.GoUInt, ?_bias:stdgo.GoInt) {
        if (_mantbits != null) this._mantbits = _mantbits;
        if (_expbits != null) this._expbits = _expbits;
        if (_bias != null) this._bias = _bias;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_floatInfo(_mantbits, _expbits, _bias);
    }
}
@:structInit @:private class T_decimalSlice {
    public var _d : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _nd : stdgo.GoInt = 0;
    public var _dp : stdgo.GoInt = 0;
    public function new(?_d:stdgo.Slice<stdgo.GoUInt8>, ?_nd:stdgo.GoInt, ?_dp:stdgo.GoInt) {
        if (_d != null) this._d = _d;
        if (_nd != null) this._nd = _nd;
        if (_dp != null) this._dp = _dp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decimalSlice(_d, _nd, _dp);
    }
}
function parseBool(_str:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        {
            final __value__ = _str;
            if (__value__ == (("1" : stdgo.GoString)) || __value__ == (("t" : stdgo.GoString)) || __value__ == (("T" : stdgo.GoString)) || __value__ == (("true" : stdgo.GoString)) || __value__ == (("TRUE" : stdgo.GoString)) || __value__ == (("True" : stdgo.GoString))) {
                return { _0 : true, _1 : (null : stdgo.Error) };
            } else if (__value__ == (("0" : stdgo.GoString)) || __value__ == (("f" : stdgo.GoString)) || __value__ == (("F" : stdgo.GoString)) || __value__ == (("false" : stdgo.GoString)) || __value__ == (("FALSE" : stdgo.GoString)) || __value__ == (("False" : stdgo.GoString))) {
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : false, _1 : stdgo.Go.asInterface(_syntaxError(("ParseBool" : stdgo.GoString), _str?.__copy__())) };
    }
function formatBool(_b:Bool):stdgo.GoString {
        if (_b) {
            return ("true" : stdgo.GoString);
        };
        return ("false" : stdgo.GoString);
    }
function appendBool(_dst:stdgo.Slice<stdgo.GoByte>, _b:Bool):stdgo.Slice<stdgo.GoByte> {
        if (_b) {
            return (_dst.__append__(...(("true" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        return (_dst.__append__(...(("false" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
    }
function _convErr(_err:stdgo.Error, _s:stdgo.GoString):{ var _0 : stdgo.Error; var _1 : stdgo.Error; } {
        var _syntax = (null : stdgo.Error), _range_ = (null : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<NumError>)) : stdgo.Ref<NumError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>), _1 : false };
            }, _x = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _x.func = ("ParseComplex" : stdgo.GoString);
                _x.num = _cloneString(_s?.__copy__())?.__copy__();
                if (stdgo.Go.toInterface(_x.err) == (stdgo.Go.toInterface(errRange))) {
                    return { _0 : (null : stdgo.Error), _1 : stdgo.Go.asInterface(_x) };
                };
            };
        };
        return { _0 : _err, _1 : (null : stdgo.Error) };
    }
function parseComplex(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoComplex128; var _1 : stdgo.Error; } {
        var _size = (64 : stdgo.GoInt);
        if (_bitSize == ((64 : stdgo.GoInt))) {
            _size = (32 : stdgo.GoInt);
        };
        var _orig = (_s?.__copy__() : stdgo.GoString);
        if (((((_s.length) >= (2 : stdgo.GoInt) : Bool) && _s[(0 : stdgo.GoInt)] == ((40 : stdgo.GoUInt8)) : Bool) && (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (41 : stdgo.GoUInt8)) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt), ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _pending:stdgo.Error = (null : stdgo.Error);
        var __tmp__ = _parseFloatPrefix(_s?.__copy__(), _size), _re:stdgo.GoFloat64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            {
                var __tmp__ = _convErr(_err, _orig?.__copy__());
                _err = __tmp__._0;
                _pending = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), _1 : _err };
            };
        };
        _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return { _0 : new stdgo.GoComplex128(_re, (0 : stdgo.GoFloat64)), _1 : _pending };
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _s[(0 : stdgo.GoInt)];
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (43 : stdgo.GoUInt8)))) {
                        if ((((_s.length) > (1 : stdgo.GoInt) : Bool) && (_s[(1 : stdgo.GoInt)] != (43 : stdgo.GoUInt8)) : Bool)) {
                            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        };
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (45 : stdgo.GoUInt8)))) {
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (105 : stdgo.GoUInt8)))) {
                        if ((_s.length) == ((1 : stdgo.GoInt))) {
                            return { _0 : new stdgo.GoComplex128((0 : stdgo.GoFloat64), _re), _1 : _pending };
                        };
                        @:fallthrough {
                            __switchIndex__ = 3;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else {
                        return { _0 : ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), _1 : stdgo.Go.asInterface(_syntaxError(("ParseComplex" : stdgo.GoString), _orig?.__copy__())) };
                        break;
                    };
                };
                break;
            };
        };
        var __tmp__ = _parseFloatPrefix(_s?.__copy__(), _size), _im:stdgo.GoFloat64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            {
                var __tmp__ = _convErr(_err, _orig?.__copy__());
                _err = __tmp__._0;
                _pending = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), _1 : _err };
            };
        };
        _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
        if (_s != (("i" : stdgo.GoString))) {
            return { _0 : ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), _1 : stdgo.Go.asInterface(_syntaxError(("ParseComplex" : stdgo.GoString), _orig?.__copy__())) };
        };
        return { _0 : new stdgo.GoComplex128(_re, _im), _1 : _pending };
    }
function _commonPrefixLenIgnoreCase(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoInt {
        var _n = (_prefix.length : stdgo.GoInt);
        if ((_n > (_s.length) : Bool)) {
            _n = (_s.length);
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _c = (_c + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
                if (_c != (_prefix[(_i : stdgo.GoInt)])) {
                    return _i;
                };
            });
        };
        return _n;
    }
function _special(_s:stdgo.GoString):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : Bool; } {
        var _f = (0 : stdgo.GoFloat64), _n = (0 : stdgo.GoInt), _ok = false;
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoFloat64), _1 : (0 : stdgo.GoInt), _2 : false };
        };
        var _sign = (1 : stdgo.GoInt);
        var _nsign = (0 : stdgo.GoInt);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _s[(0 : stdgo.GoInt)];
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((45 : stdgo.GoUInt8))))) {
                        if (_s[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                            _sign = (-1 : stdgo.GoInt);
                        };
                        _nsign = (1 : stdgo.GoInt);
                        _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == ((105 : stdgo.GoUInt8)) || __value__ == ((73 : stdgo.GoUInt8))))) {
                        var _n = (_commonPrefixLenIgnoreCase(_s?.__copy__(), ("infinity" : stdgo.GoString)) : stdgo.GoInt);
                        if ((((3 : stdgo.GoInt) < _n : Bool) && (_n < (8 : stdgo.GoInt) : Bool) : Bool)) {
                            _n = (3 : stdgo.GoInt);
                        };
                        if (((_n == (3 : stdgo.GoInt)) || (_n == (8 : stdgo.GoInt)) : Bool)) {
                            return { _0 : stdgo._internal.math.Math.inf(_sign), _1 : (_nsign + _n : stdgo.GoInt), _2 : true };
                        };
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((110 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8))))) {
                        if (_commonPrefixLenIgnoreCase(_s?.__copy__(), ("nan" : stdgo.GoString)) == ((3 : stdgo.GoInt))) {
                            return { _0 : stdgo._internal.math.Math.naN(), _1 : (3 : stdgo.GoInt), _2 : true };
                        };
                        break;
                        break;
                    };
                };
                break;
            };
        };
        return { _0 : (0 : stdgo.GoFloat64), _1 : (0 : stdgo.GoInt), _2 : false };
    }
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        stdgo._internal.internal.Macro.controlFlow({
            var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
            var _underscores = (false : Bool);
            if ((_i >= (_s.length) : Bool)) {
                return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
            };
            if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                _i++;
            } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                _neg = true;
                _i++;
            };
            var _base = ((10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _maxMantDigits = (19 : stdgo.GoInt);
            var _expChar = (((101 : stdgo.GoUInt8) : stdgo.GoByte) : stdgo.GoUInt8);
            if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (_lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                _base = (16i64 : stdgo.GoUInt64);
                _maxMantDigits = (16 : stdgo.GoInt);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                _expChar = (112 : stdgo.GoUInt8);
                _hex = true;
            };
            var _sawdot = (false : Bool);
            var _sawdigits = (false : Bool);
            var _nd = (0 : stdgo.GoInt);
            var _ndMant = (0 : stdgo.GoInt);
            var _dp = (0 : stdgo.GoInt);
            @:label("loop") stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                {
                    var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    {
                        var __continue__ = false;
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = true;
                                if (__value__ == (_c == (95 : stdgo.GoUInt8))) {
                                    _underscores = true;
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (_c == (46 : stdgo.GoUInt8))) {
                                    if (_sawdot) {
                                        @:jump("loop") break;
                                    };
                                    _sawdot = true;
                                    _dp = _nd;
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                    _sawdigits = true;
                                    if (((_c == (48 : stdgo.GoUInt8)) && (_nd == (0 : stdgo.GoInt)) : Bool)) {
                                        _dp--;
                                        {
                                            __continue__ = true;
                                            break;
                                        };
                                    };
                                    _nd++;
                                    if ((_ndMant < _maxMantDigits : Bool)) {
                                        _mantissa = (_mantissa * (_base) : stdgo.GoUInt64);
                                        _mantissa = (_mantissa + (((_c - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                                        _ndMant++;
                                    } else if (_c != ((48 : stdgo.GoUInt8))) {
                                        _trunc = true;
                                    };
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (((_base == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= _lower(_c) : Bool) : Bool) && (_lower(_c) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                    _sawdigits = true;
                                    _nd++;
                                    if ((_ndMant < _maxMantDigits : Bool)) {
                                        _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                                        _mantissa = (_mantissa + ((((_lower(_c) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                                        _ndMant++;
                                    } else {
                                        _trunc = true;
                                    };
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                };
                            };
                            break;
                        };
                        if (__continue__) continue;
                    };
                };
                break;
            });
            if (!_sawdigits) {
                return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
            };
            if (!_sawdot) {
                _dp = _nd;
            };
            if (_base == ((16i64 : stdgo.GoUInt64))) {
                _dp = (_dp * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                _ndMant = (_ndMant * ((4 : stdgo.GoInt)) : stdgo.GoInt);
            };
            if (((_i < (_s.length) : Bool) && (_lower(_s[(_i : stdgo.GoInt)]) == _expChar) : Bool)) {
                _i++;
                if ((_i >= (_s.length) : Bool)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                };
                var _esign = (1 : stdgo.GoInt);
                if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                    _i++;
                } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                    _i++;
                    _esign = (-1 : stdgo.GoInt);
                };
                if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                };
                var _e = (0 : stdgo.GoInt);
                stdgo.Go.cfor(((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool), _i++, {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _underscores = true;
                        continue;
                    };
                    if ((_e < (10000 : stdgo.GoInt) : Bool)) {
                        _e = (((_e * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    };
                });
                _dp = (_dp + ((_e * _esign : stdgo.GoInt)) : stdgo.GoInt);
            } else if (_base == ((16i64 : stdgo.GoUInt64))) {
                return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
            };
            if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                _exp = (_dp - _ndMant : stdgo.GoInt);
            };
            if ((_underscores && !_underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
            };
            _ok = true;
            return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
        });
        throw "controlFlow did not return";
    }
function _atof64exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } {
        var _f = (0 : stdgo.GoFloat64), _ok = false;
        if ((_mantissa >> _float64info._mantbits : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            return { _0 : _f, _1 : _ok };
        };
        _f = (_mantissa : stdgo.GoFloat64);
        if (_neg) {
            _f = -_f;
        };
        if (_exp == ((0 : stdgo.GoInt))) {
            return { _0 : _f, _1 : true };
        } else if (((_exp > (0 : stdgo.GoInt) : Bool) && (_exp <= (37 : stdgo.GoInt) : Bool) : Bool)) {
            if ((_exp > (22 : stdgo.GoInt) : Bool)) {
                _f = (_f * (_float64pow10[((_exp - (22 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoFloat64);
                _exp = (22 : stdgo.GoInt);
            };
            if (((_f > (1e+15 : stdgo.GoFloat64) : Bool) || (_f < (-1e+15 : stdgo.GoFloat64) : Bool) : Bool)) {
                return { _0 : _f, _1 : _ok };
            };
            return { _0 : (_f * _float64pow10[(_exp : stdgo.GoInt)] : stdgo.GoFloat64), _1 : true };
        } else if (((_exp < (0 : stdgo.GoInt) : Bool) && (_exp >= (-22 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : (_f / _float64pow10[(-_exp : stdgo.GoInt)] : stdgo.GoFloat64), _1 : true };
        };
        return { _0 : _f, _1 : _ok };
    }
function _atof32exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):{ var _0 : stdgo.GoFloat32; var _1 : Bool; } {
        var _f = (0 : stdgo.GoFloat32), _ok = false;
        if ((_mantissa >> _float32info._mantbits : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            return { _0 : _f, _1 : _ok };
        };
        _f = (_mantissa : stdgo.GoFloat32);
        if (_neg) {
            _f = -_f;
        };
        if (_exp == ((0 : stdgo.GoInt))) {
            return { _0 : _f, _1 : true };
        } else if (((_exp > (0 : stdgo.GoInt) : Bool) && (_exp <= (17 : stdgo.GoInt) : Bool) : Bool)) {
            if ((_exp > (10 : stdgo.GoInt) : Bool)) {
                _f = (_f * (_float32pow10[((_exp - (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoFloat32);
                _exp = (10 : stdgo.GoInt);
            };
            if (((_f > (1e+07 : stdgo.GoFloat64) : Bool) || (_f < (-1e+07 : stdgo.GoFloat64) : Bool) : Bool)) {
                return { _0 : _f, _1 : _ok };
            };
            return { _0 : (_f * _float32pow10[(_exp : stdgo.GoInt)] : stdgo.GoFloat32), _1 : true };
        } else if (((_exp < (0 : stdgo.GoInt) : Bool) && (_exp >= (-10 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : (_f / _float32pow10[(-_exp : stdgo.GoInt)] : stdgo.GoFloat32), _1 : true };
        };
        return { _0 : _f, _1 : _ok };
    }
function _atofHex(_s:stdgo.GoString, _flt:stdgo.Ref<T_floatInfo>, _mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool, _trunc:Bool):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.Error; } {
        var _maxExp = ((((1 : stdgo.GoInt) << _flt._expbits : stdgo.GoInt) + _flt._bias : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt);
        var _minExp = (_flt._bias + (1 : stdgo.GoInt) : stdgo.GoInt);
        _exp = (_exp + ((_flt._mantbits : stdgo.GoInt)) : stdgo.GoInt);
        while (((_mantissa != (0i64 : stdgo.GoUInt64)) && ((_mantissa >> ((_flt._mantbits + (2u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) : Bool)) {
            _mantissa = (_mantissa << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _exp--;
        };
        if (_trunc) {
            _mantissa = (_mantissa | ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        while ((_mantissa >> ((((1u32 : stdgo.GoUInt) + _flt._mantbits : stdgo.GoUInt) + (2u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _mantissa = ((_mantissa >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_mantissa & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
            _exp++;
        };
        while (((_mantissa > (1i64 : stdgo.GoUInt64) : Bool) && (_exp < (_minExp - (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
            _mantissa = ((_mantissa >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_mantissa & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
            _exp++;
        };
        var _round = (_mantissa & (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _mantissa = (_mantissa >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _round = (_round | ((_mantissa & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _exp = (_exp + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        if (_round == ((3i64 : stdgo.GoUInt64))) {
            _mantissa++;
            if (_mantissa == (((1i64 : stdgo.GoUInt64) << (((1u32 : stdgo.GoUInt) + _flt._mantbits : stdgo.GoUInt)) : stdgo.GoUInt64))) {
                _mantissa = (_mantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _exp++;
            };
        };
        if ((_mantissa >> _flt._mantbits : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
            _exp = _flt._bias;
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((_exp > _maxExp : Bool)) {
            _mantissa = ((1i64 : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64);
            _exp = (_maxExp + (1 : stdgo.GoInt) : stdgo.GoInt);
            _err = stdgo.Go.asInterface(_rangeError(("ParseFloat" : stdgo.GoString), _s?.__copy__()));
        };
        var _bits = (_mantissa & ((((1i64 : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _bits = (_bits | ((((((_exp - _flt._bias : stdgo.GoInt)) & ((((1 : stdgo.GoInt) << _flt._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if (_neg) {
            _bits = (_bits | ((((1i64 : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64) << _flt._expbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        if (_flt == ((stdgo.Go.setRef(_float32info) : stdgo.Ref<stdgo._internal.strconv.Strconv.T_floatInfo>))) {
            return { _0 : (stdgo._internal.math.Math.float32frombits((_bits : stdgo.GoUInt32)) : stdgo.GoFloat64), _1 : _err };
        };
        return { _0 : stdgo._internal.math.Math.float64frombits(_bits), _1 : _err };
    }
function _atof32(_s:stdgo.GoString):{ var _0 : stdgo.GoFloat32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _f = (0 : stdgo.GoFloat32), _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = _special(_s?.__copy__()), _val:stdgo.GoFloat64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                return { _0 : (_val : stdgo.GoFloat32), _1 : _n, _2 : (null : stdgo.Error) };
            };
        };
        var __tmp__ = _readFloat(_s?.__copy__()), _mantissa:stdgo.GoUInt64 = __tmp__._0, _exp:stdgo.GoInt = __tmp__._1, _neg:Bool = __tmp__._2, _trunc:Bool = __tmp__._3, _hex:Bool = __tmp__._4, _n:stdgo.GoInt = __tmp__._5, _ok:Bool = __tmp__._6;
        if (!_ok) {
            return { _0 : (0 : stdgo.GoFloat64), _1 : _n, _2 : stdgo.Go.asInterface(_syntaxError(("ParseFloat" : stdgo.GoString), _s?.__copy__())) };
        };
        if (_hex) {
            var __tmp__ = _atofHex((_s.__slice__(0, _n) : stdgo.GoString)?.__copy__(), (stdgo.Go.setRef(_float32info) : stdgo.Ref<stdgo._internal.strconv.Strconv.T_floatInfo>), _mantissa, _exp, _neg, _trunc), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            return { _0 : (_f : stdgo.GoFloat32), _1 : _n, _2 : _err };
        };
        if (_optimize) {
            if (!_trunc) {
                {
                    var __tmp__ = _atof32exact(_mantissa, _exp, _neg), _f:stdgo.GoFloat32 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return { _0 : _f, _1 : _n, _2 : (null : stdgo.Error) };
                    };
                };
            };
            var __tmp__ = _eiselLemire32(_mantissa, _exp, _neg), _f:stdgo.GoFloat32 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (!_trunc) {
                    return { _0 : _f, _1 : _n, _2 : (null : stdgo.Error) };
                };
                var __tmp__ = _eiselLemire32((_mantissa + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64), _exp, _neg), _fUp:stdgo.GoFloat32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && (_f == _fUp) : Bool)) {
                    return { _0 : _f, _1 : _n, _2 : (null : stdgo.Error) };
                };
            };
        };
        var _d:T_decimal = ({} : stdgo._internal.strconv.Strconv.T_decimal);
        if (!_d._set((_s.__slice__(0, _n) : stdgo.GoString)?.__copy__())) {
            return { _0 : (0 : stdgo.GoFloat64), _1 : _n, _2 : stdgo.Go.asInterface(_syntaxError(("ParseFloat" : stdgo.GoString), _s?.__copy__())) };
        };
        var __tmp__ = _d._floatBits((stdgo.Go.setRef(_float32info) : stdgo.Ref<stdgo._internal.strconv.Strconv.T_floatInfo>)), _b:stdgo.GoUInt64 = __tmp__._0, _ovf:Bool = __tmp__._1;
        _f = stdgo._internal.math.Math.float32frombits((_b : stdgo.GoUInt32));
        if (_ovf) {
            _err = stdgo.Go.asInterface(_rangeError(("ParseFloat" : stdgo.GoString), _s?.__copy__()));
        };
        return { _0 : _f, _1 : _n, _2 : _err };
    }
function _atof64(_s:stdgo.GoString):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _f = (0 : stdgo.GoFloat64), _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = _special(_s?.__copy__()), _val:stdgo.GoFloat64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                return { _0 : _val, _1 : _n, _2 : (null : stdgo.Error) };
            };
        };
        var __tmp__ = _readFloat(_s?.__copy__()), _mantissa:stdgo.GoUInt64 = __tmp__._0, _exp:stdgo.GoInt = __tmp__._1, _neg:Bool = __tmp__._2, _trunc:Bool = __tmp__._3, _hex:Bool = __tmp__._4, _n:stdgo.GoInt = __tmp__._5, _ok:Bool = __tmp__._6;
        if (!_ok) {
            return { _0 : (0 : stdgo.GoFloat64), _1 : _n, _2 : stdgo.Go.asInterface(_syntaxError(("ParseFloat" : stdgo.GoString), _s?.__copy__())) };
        };
        if (_hex) {
            var __tmp__ = _atofHex((_s.__slice__(0, _n) : stdgo.GoString)?.__copy__(), (stdgo.Go.setRef(_float64info) : stdgo.Ref<stdgo._internal.strconv.Strconv.T_floatInfo>), _mantissa, _exp, _neg, _trunc), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            return { _0 : _f, _1 : _n, _2 : _err };
        };
        if (_optimize) {
            if (!_trunc) {
                {
                    var __tmp__ = _atof64exact(_mantissa, _exp, _neg), _f:stdgo.GoFloat64 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return { _0 : _f, _1 : _n, _2 : (null : stdgo.Error) };
                    };
                };
            };
            var __tmp__ = _eiselLemire64(_mantissa, _exp, _neg), _f:stdgo.GoFloat64 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (!_trunc) {
                    return { _0 : _f, _1 : _n, _2 : (null : stdgo.Error) };
                };
                var __tmp__ = _eiselLemire64((_mantissa + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64), _exp, _neg), _fUp:stdgo.GoFloat64 = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && (_f == _fUp) : Bool)) {
                    return { _0 : _f, _1 : _n, _2 : (null : stdgo.Error) };
                };
            };
        };
        var _d:T_decimal = ({} : stdgo._internal.strconv.Strconv.T_decimal);
        if (!_d._set((_s.__slice__(0, _n) : stdgo.GoString)?.__copy__())) {
            return { _0 : (0 : stdgo.GoFloat64), _1 : _n, _2 : stdgo.Go.asInterface(_syntaxError(("ParseFloat" : stdgo.GoString), _s?.__copy__())) };
        };
        var __tmp__ = _d._floatBits((stdgo.Go.setRef(_float64info) : stdgo.Ref<stdgo._internal.strconv.Strconv.T_floatInfo>)), _b:stdgo.GoUInt64 = __tmp__._0, _ovf:Bool = __tmp__._1;
        _f = stdgo._internal.math.Math.float64frombits(_b);
        if (_ovf) {
            _err = stdgo.Go.asInterface(_rangeError(("ParseFloat" : stdgo.GoString), _s?.__copy__()));
        };
        return { _0 : _f, _1 : _n, _2 : _err };
    }
function parseFloat(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.Error; } {
        var __tmp__ = _parseFloatPrefix(_s?.__copy__(), _bitSize), _f:stdgo.GoFloat64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (((_n != (_s.length)) && (((_err == null) || (stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<NumError>)) : stdgo.Ref<NumError>).err) != stdgo.Go.toInterface(errSyntax)) : Bool)) : Bool)) {
            return { _0 : (0 : stdgo.GoFloat64), _1 : stdgo.Go.asInterface(_syntaxError(("ParseFloat" : stdgo.GoString), _s?.__copy__())) };
        };
        return { _0 : _f, _1 : _err };
    }
function _parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        if (_bitSize == ((32 : stdgo.GoInt))) {
            var __tmp__ = _atof32(_s?.__copy__()), _f:stdgo.GoFloat32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            return { _0 : (_f : stdgo.GoFloat64), _1 : _n, _2 : _err };
        };
        return _atof64(_s?.__copy__());
    }
function _lower(_c:stdgo.GoByte):stdgo.GoByte {
        return (_c | (32 : stdgo.GoUInt8) : stdgo.GoUInt8);
    }
function _cloneString(_x:stdgo.GoString):stdgo.GoString {
        return ((_x : stdgo.Slice<stdgo.GoByte>) : stdgo.GoString)?.__copy__();
    }
function _syntaxError(_fn:stdgo.GoString, _str:stdgo.GoString):stdgo.Ref<NumError> {
        return (stdgo.Go.setRef((new stdgo._internal.strconv.Strconv.NumError(_fn?.__copy__(), _cloneString(_str?.__copy__())?.__copy__(), errSyntax) : stdgo._internal.strconv.Strconv.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>);
    }
function _rangeError(_fn:stdgo.GoString, _str:stdgo.GoString):stdgo.Ref<NumError> {
        return (stdgo.Go.setRef((new stdgo._internal.strconv.Strconv.NumError(_fn?.__copy__(), _cloneString(_str?.__copy__())?.__copy__(), errRange) : stdgo._internal.strconv.Strconv.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>);
    }
function _baseError(_fn:stdgo.GoString, _str:stdgo.GoString, _base:stdgo.GoInt):stdgo.Ref<NumError> {
        return (stdgo.Go.setRef((new stdgo._internal.strconv.Strconv.NumError(_fn?.__copy__(), _cloneString(_str?.__copy__())?.__copy__(), stdgo._internal.errors.Errors.new_((("invalid base " : stdgo.GoString) + itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__())) : stdgo._internal.strconv.Strconv.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>);
    }
function _bitSizeError(_fn:stdgo.GoString, _str:stdgo.GoString, _bitSize:stdgo.GoInt):stdgo.Ref<NumError> {
        return (stdgo.Go.setRef((new stdgo._internal.strconv.Strconv.NumError(_fn?.__copy__(), _cloneString(_str?.__copy__())?.__copy__(), stdgo._internal.errors.Errors.new_((("invalid bit size " : stdgo.GoString) + itoa(_bitSize)?.__copy__() : stdgo.GoString)?.__copy__())) : stdgo._internal.strconv.Strconv.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>);
    }
function parseUint(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        {};
        if (_s == (stdgo.Go.str())) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo.Go.asInterface(_syntaxError(("ParseUint" : stdgo.GoString), _s?.__copy__())) };
        };
        var _base0 = (_base == ((0 : stdgo.GoInt)) : Bool);
        var _s0 = (_s?.__copy__() : stdgo.GoString);
        if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {} else if (_base == ((0 : stdgo.GoInt))) {
            _base = (10 : stdgo.GoInt);
            if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                if ((((_s.length) >= (3 : stdgo.GoInt) : Bool) && (_lower(_s[(1 : stdgo.GoInt)]) == (98 : stdgo.GoUInt8)) : Bool)) {
                    _base = (2 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                } else if ((((_s.length) >= (3 : stdgo.GoInt) : Bool) && (_lower(_s[(1 : stdgo.GoInt)]) == (111 : stdgo.GoUInt8)) : Bool)) {
                    _base = (8 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                } else if ((((_s.length) >= (3 : stdgo.GoInt) : Bool) && (_lower(_s[(1 : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                } else {
                    _base = (8 : stdgo.GoInt);
                    _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                };
            };
        } else {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo.Go.asInterface(_baseError(("ParseUint" : stdgo.GoString), _s0?.__copy__(), _base)) };
        };
        if (_bitSize == ((0 : stdgo.GoInt))) {
            _bitSize = (32 : stdgo.GoInt);
        } else if (((_bitSize < (0 : stdgo.GoInt) : Bool) || (_bitSize > (64 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo.Go.asInterface(_bitSizeError(("ParseUint" : stdgo.GoString), _s0?.__copy__(), _bitSize)) };
        };
        var _cutoff:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            final __value__ = _base;
            if (__value__ == ((10 : stdgo.GoInt))) {
                _cutoff = (1844674407370955162i64 : stdgo.GoUInt64);
            } else if (__value__ == ((16 : stdgo.GoInt))) {
                _cutoff = (1152921504606846976i64 : stdgo.GoUInt64);
            } else {
                _cutoff = (((-1i64 : stdgo.GoUInt64) / (_base : stdgo.GoUInt64) : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            };
        };
        var _maxVal = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _underscores = (false : Bool);
        var _n:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        for (__0 => _c in (_s : stdgo.Slice<stdgo.GoByte>)) {
            var _d:stdgo.GoByte = (0 : stdgo.GoUInt8);
            if (((_c == (95 : stdgo.GoUInt8)) && _base0 : Bool)) {
                _underscores = true;
                continue;
            } else if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _d = (_c - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else if ((((97 : stdgo.GoUInt8) <= _lower(_c) : Bool) && (_lower(_c) <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                _d = ((_lower(_c) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else {
                return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo.Go.asInterface(_syntaxError(("ParseUint" : stdgo.GoString), _s0?.__copy__())) };
            };
            if ((_d >= (_base : stdgo.GoByte) : Bool)) {
                return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo.Go.asInterface(_syntaxError(("ParseUint" : stdgo.GoString), _s0?.__copy__())) };
            };
            if ((_n >= _cutoff : Bool)) {
                return { _0 : _maxVal, _1 : stdgo.Go.asInterface(_rangeError(("ParseUint" : stdgo.GoString), _s0?.__copy__())) };
            };
            _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
            var _n1 = (_n + (_d : stdgo.GoUInt64) : stdgo.GoUInt64);
            if (((_n1 < _n : Bool) || (_n1 > _maxVal : Bool) : Bool)) {
                return { _0 : _maxVal, _1 : stdgo.Go.asInterface(_rangeError(("ParseUint" : stdgo.GoString), _s0?.__copy__())) };
            };
            _n = _n1;
        };
        if ((_underscores && !_underscoreOK(_s0?.__copy__()) : Bool)) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo.Go.asInterface(_syntaxError(("ParseUint" : stdgo.GoString), _s0?.__copy__())) };
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
function parseInt(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _i = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        {};
        if (_s == (stdgo.Go.str())) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo.Go.asInterface(_syntaxError(("ParseInt" : stdgo.GoString), _s?.__copy__())) };
        };
        var _s0 = (_s?.__copy__() : stdgo.GoString);
        var _neg = (false : Bool);
        if (_s[(0 : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else if (_s[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _neg = true;
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _un:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = parseUint(_s?.__copy__(), _base, _bitSize);
            _un = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_err != null) && (stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<NumError>)) : stdgo.Ref<NumError>).err) != stdgo.Go.toInterface(errRange)) : Bool)) {
            (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<NumError>)) : stdgo.Ref<NumError>).func = ("ParseInt" : stdgo.GoString);
            (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<NumError>)) : stdgo.Ref<NumError>).num = _cloneString(_s0?.__copy__())?.__copy__();
            return { _0 : (0i64 : stdgo.GoInt64), _1 : _err };
        };
        if (_bitSize == ((0 : stdgo.GoInt))) {
            _bitSize = (32 : stdgo.GoInt);
        };
        var _cutoff = (((1i64 : stdgo.GoUInt64) << ((_bitSize - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64) : stdgo.GoUInt64);
        if ((!_neg && (_un >= _cutoff : Bool) : Bool)) {
            return { _0 : ((_cutoff - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64), _1 : stdgo.Go.asInterface(_rangeError(("ParseInt" : stdgo.GoString), _s0?.__copy__())) };
        };
        if ((_neg && (_un > _cutoff : Bool) : Bool)) {
            return { _0 : -(_cutoff : stdgo.GoInt64), _1 : stdgo.Go.asInterface(_rangeError(("ParseInt" : stdgo.GoString), _s0?.__copy__())) };
        };
        var _n = (_un : stdgo.GoInt64);
        if (_neg) {
            _n = -_n;
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
function atoi(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        {};
        var _sLen = (_s.length : stdgo.GoInt);
        if (((true && ((((0 : stdgo.GoInt) < _sLen : Bool) && (_sLen < (10 : stdgo.GoInt) : Bool) : Bool)) : Bool) || (false && ((((0 : stdgo.GoInt) < _sLen : Bool) && (_sLen < (19 : stdgo.GoInt) : Bool) : Bool)) : Bool) : Bool)) {
            var _s0 = (_s?.__copy__() : stdgo.GoString);
            if (((_s[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (_s[(0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) : Bool)) {
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface(_syntaxError(("Atoi" : stdgo.GoString), _s0?.__copy__())) };
                };
            };
            var _n = (0 : stdgo.GoInt);
            for (__0 => _ch in (_s : stdgo.Slice<stdgo.GoByte>)) {
                _ch = (_ch - ((48 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                if ((_ch > (9 : stdgo.GoUInt8) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface(_syntaxError(("Atoi" : stdgo.GoString), _s0?.__copy__())) };
                };
                _n = ((_n * (10 : stdgo.GoInt) : stdgo.GoInt) + (_ch : stdgo.GoInt) : stdgo.GoInt);
            };
            if (_s0[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                _n = -_n;
            };
            return { _0 : _n, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = parseInt(_s?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _i64:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<NumError>)) : stdgo.Ref<NumError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>), _1 : false };
            }, _nerr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _nerr.func = ("Atoi" : stdgo.GoString);
            };
        };
        return { _0 : (_i64 : stdgo.GoInt), _1 : _err };
    }
function _underscoreOK(_s:stdgo.GoString):Bool {
        var _saw = (94 : stdgo.GoInt32);
        var _i = (0 : stdgo.GoInt);
        if ((((_s.length) >= (1 : stdgo.GoInt) : Bool) && (((_s[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (_s[(0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _hex = (false : Bool);
        if (((((_s.length) >= (2 : stdgo.GoInt) : Bool) && _s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (((_lower(_s[(1 : stdgo.GoInt)]) == ((98 : stdgo.GoUInt8)) || _lower(_s[(1 : stdgo.GoInt)]) == ((111 : stdgo.GoUInt8)) : Bool) || (_lower(_s[(1 : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _i = (2 : stdgo.GoInt);
            _saw = (48 : stdgo.GoInt32);
            _hex = _lower(_s[(1 : stdgo.GoInt)]) == ((120 : stdgo.GoUInt8));
        };
        stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
            if (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || ((_hex && ((97 : stdgo.GoUInt8) <= _lower(_s[(_i : stdgo.GoInt)]) : Bool) : Bool) && (_lower(_s[(_i : stdgo.GoInt)]) <= (102 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                _saw = (48 : stdgo.GoInt32);
                continue;
            };
            if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                if (_saw != ((48 : stdgo.GoInt32))) {
                    return false;
                };
                _saw = (95 : stdgo.GoInt32);
                continue;
            };
            if (_saw == ((95 : stdgo.GoInt32))) {
                return false;
            };
            _saw = (33 : stdgo.GoInt32);
        });
        return _saw != ((95 : stdgo.GoInt32));
    }
function _index(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt {
        return stdgo._internal.internal.bytealg.Bytealg.indexByteString(_s?.__copy__(), _c);
    }
function formatComplex(_c:stdgo.GoComplex128, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString {
        if (((_bitSize != (64 : stdgo.GoInt)) && (_bitSize != (128 : stdgo.GoInt)) : Bool)) {
            throw stdgo.Go.toInterface(("invalid bitSize" : stdgo.GoString));
        };
        _bitSize = (_bitSize >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        var _im = (formatFloat(_c.imag, _fmt, _prec, _bitSize)?.__copy__() : stdgo.GoString);
        if (((_im[(0 : stdgo.GoInt)] != (43 : stdgo.GoUInt8)) && (_im[(0 : stdgo.GoInt)] != (45 : stdgo.GoUInt8)) : Bool)) {
            _im = (("+" : stdgo.GoString) + _im?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (((("(" : stdgo.GoString) + formatFloat(_c.real, _fmt, _prec, _bitSize)?.__copy__() : stdgo.GoString) + _im?.__copy__() : stdgo.GoString) + ("i)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
function _digitZero(_dst:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        for (_i => _ in _dst) {
            _dst[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
        };
        return (_dst.length);
    }
function _trim(_a:stdgo.Ref<T_decimal>):Void {
        while (((_a._nd > (0 : stdgo.GoInt) : Bool) && (_a._d[(_a._nd - (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            _a._nd--;
        };
        if (_a._nd == ((0 : stdgo.GoInt))) {
            _a._dp = (0 : stdgo.GoInt);
        };
    }
function _rightShift(_a:stdgo.Ref<T_decimal>, _k:stdgo.GoUInt):Void {
        var _r = (0 : stdgo.GoInt);
        var _w = (0 : stdgo.GoInt);
        var _n:stdgo.GoUInt = (0 : stdgo.GoUInt);
        stdgo.Go.cfor((_n >> _k : stdgo.GoUInt) == ((0u32 : stdgo.GoUInt)), _r++, {
            if ((_r >= _a._nd : Bool)) {
                if (_n == ((0u32 : stdgo.GoUInt))) {
                    _a._nd = (0 : stdgo.GoInt);
                    return;
                };
                while ((_n >> _k : stdgo.GoUInt) == ((0u32 : stdgo.GoUInt))) {
                    _n = (_n * (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
                    _r++;
                };
                break;
            };
            var _c = (_a._d[(_r : stdgo.GoInt)] : stdgo.GoUInt);
            _n = (((_n * (10u32 : stdgo.GoUInt) : stdgo.GoUInt) + _c : stdgo.GoUInt) - (48u32 : stdgo.GoUInt) : stdgo.GoUInt);
        });
        _a._dp = (_a._dp - ((_r - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var _mask:stdgo.GoUInt = ((((1u32 : stdgo.GoUInt) << _k : stdgo.GoUInt)) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
        stdgo.Go.cfor((_r < _a._nd : Bool), _r++, {
            var _c = (_a._d[(_r : stdgo.GoInt)] : stdgo.GoUInt);
            var _dig = (_n >> _k : stdgo.GoUInt);
            _n = (_n & (_mask) : stdgo.GoUInt);
            _a._d[(_w : stdgo.GoInt)] = ((_dig + (48u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoByte);
            _w++;
            _n = (((_n * (10u32 : stdgo.GoUInt) : stdgo.GoUInt) + _c : stdgo.GoUInt) - (48u32 : stdgo.GoUInt) : stdgo.GoUInt);
        });
        while ((_n > (0u32 : stdgo.GoUInt) : Bool)) {
            var _dig = (_n >> _k : stdgo.GoUInt);
            _n = (_n & (_mask) : stdgo.GoUInt);
            if ((_w < (_a._d.length) : Bool)) {
                _a._d[(_w : stdgo.GoInt)] = ((_dig + (48u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoByte);
                _w++;
            } else if ((_dig > (0u32 : stdgo.GoUInt) : Bool)) {
                _a._trunc = true;
            };
            _n = (_n * (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
        };
        _a._nd = _w;
        _trim(_a);
    }
function _prefixIsLessThan(_b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                if ((_i >= (_b.length) : Bool)) {
                    return true;
                };
                if (_b[(_i : stdgo.GoInt)] != (_s[(_i : stdgo.GoInt)])) {
                    return (_b[(_i : stdgo.GoInt)] < _s[(_i : stdgo.GoInt)] : Bool);
                };
            });
        };
        return false;
    }
function _leftShift(_a:stdgo.Ref<T_decimal>, _k:stdgo.GoUInt):Void {
        var _delta = (_leftcheats[(_k : stdgo.GoInt)]._delta : stdgo.GoInt);
        if (_prefixIsLessThan((_a._d.__slice__((0 : stdgo.GoInt), _a._nd) : stdgo.Slice<stdgo.GoUInt8>), _leftcheats[(_k : stdgo.GoInt)]._cutoff?.__copy__())) {
            _delta--;
        };
        var _r = (_a._nd : stdgo.GoInt);
        var _w = (_a._nd + _delta : stdgo.GoInt);
        var _n:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            _r--;
            stdgo.Go.cfor((_r >= (0 : stdgo.GoInt) : Bool), _r--, {
                _n = (_n + (((((_a._d[(_r : stdgo.GoInt)] : stdgo.GoUInt) - (48u32 : stdgo.GoUInt) : stdgo.GoUInt)) << _k : stdgo.GoUInt)) : stdgo.GoUInt);
                var _quo = (_n / (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
                var _rem = (_n - ((10u32 : stdgo.GoUInt) * _quo : stdgo.GoUInt) : stdgo.GoUInt);
                _w--;
                if ((_w < (_a._d.length) : Bool)) {
                    _a._d[(_w : stdgo.GoInt)] = ((_rem + (48u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoByte);
                } else if (_rem != ((0u32 : stdgo.GoUInt))) {
                    _a._trunc = true;
                };
                _n = _quo;
            });
        };
        while ((_n > (0u32 : stdgo.GoUInt) : Bool)) {
            var _quo = (_n / (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
            var _rem = (_n - ((10u32 : stdgo.GoUInt) * _quo : stdgo.GoUInt) : stdgo.GoUInt);
            _w--;
            if ((_w < (_a._d.length) : Bool)) {
                _a._d[(_w : stdgo.GoInt)] = ((_rem + (48u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoByte);
            } else if (_rem != ((0u32 : stdgo.GoUInt))) {
                _a._trunc = true;
            };
            _n = _quo;
        };
        _a._nd = (_a._nd + (_delta) : stdgo.GoInt);
        if ((_a._nd >= (_a._d.length) : Bool)) {
            _a._nd = (_a._d.length);
        };
        _a._dp = (_a._dp + (_delta) : stdgo.GoInt);
        _trim(_a);
    }
function _shouldRoundUp(_a:stdgo.Ref<T_decimal>, _nd:stdgo.GoInt):Bool {
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= _a._nd : Bool) : Bool)) {
            return false;
        };
        if (((_a._d[(_nd : stdgo.GoInt)] == (53 : stdgo.GoUInt8)) && ((_nd + (1 : stdgo.GoInt) : stdgo.GoInt) == _a._nd) : Bool)) {
            if (_a._trunc) {
                return true;
            };
            return ((_nd > (0 : stdgo.GoInt) : Bool) && ((((_a._d[(_nd - (1 : stdgo.GoInt) : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) % (2 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool);
        };
        return (_a._d[(_nd : stdgo.GoInt)] >= (53 : stdgo.GoUInt8) : Bool);
    }
function _eiselLemire64(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } {
        var _f = (0 : stdgo.GoFloat64), _ok = false;
        if (_man == ((0i64 : stdgo.GoUInt64))) {
            if (_neg) {
                _f = stdgo._internal.math.Math.float64frombits((-9223372036854775808i64 : stdgo.GoUInt64));
            };
            return { _0 : _f, _1 : true };
        };
        if (((_exp10 < (-348 : stdgo.GoInt) : Bool) || ((347 : stdgo.GoInt) < _exp10 : Bool) : Bool)) {
            return { _0 : (0 : stdgo.GoFloat64), _1 : false };
        };
        var _clz = (stdgo._internal.math.bits.Bits.leadingZeros64(_man) : stdgo.GoInt);
        _man = (_man << ((_clz : stdgo.GoUInt)) : stdgo.GoUInt64);
        {};
        var _retExp2 = (((((((217706 : stdgo.GoInt) * _exp10 : stdgo.GoInt) >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) + (64 : stdgo.GoInt) : stdgo.GoInt) + (1023 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64) - (_clz : stdgo.GoUInt64) : stdgo.GoUInt64);
        var __tmp__ = stdgo._internal.math.bits.Bits.mul64(_man, _detailedPowersOfTen[(_exp10 - (-348 : stdgo.GoInt) : stdgo.GoInt)][(1 : stdgo.GoInt)]), _xHi:stdgo.GoUInt64 = __tmp__._0, _xLo:stdgo.GoUInt64 = __tmp__._1;
        if ((((_xHi & (511i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (511i64 : stdgo.GoUInt64)) && ((_xLo + _man : stdgo.GoUInt64) < _man : Bool) : Bool)) {
            var __tmp__ = stdgo._internal.math.bits.Bits.mul64(_man, _detailedPowersOfTen[(_exp10 - (-348 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)]), _yHi:stdgo.GoUInt64 = __tmp__._0, _yLo:stdgo.GoUInt64 = __tmp__._1;
            var __0 = (_xHi : stdgo.GoUInt64), __1 = (_xLo + _yHi : stdgo.GoUInt64);
var _mergedLo = __1, _mergedHi = __0;
            if ((_mergedLo < _xLo : Bool)) {
                _mergedHi++;
            };
            if ((((_mergedHi & (511i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((511i64 : stdgo.GoUInt64)) && (_mergedLo + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64)) : Bool) && ((_yLo + _man : stdgo.GoUInt64) < _man : Bool) : Bool)) {
                return { _0 : (0 : stdgo.GoFloat64), _1 : false };
            };
            {
                final __tmp__0 = _mergedHi;
                final __tmp__1 = _mergedLo;
                _xHi = __tmp__0;
                _xLo = __tmp__1;
            };
        };
        var _msb = (_xHi >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _retMantissa = (_xHi >> ((_msb + (9i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _retExp2 = (_retExp2 - (((1i64 : stdgo.GoUInt64) ^ _msb : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if (((_xLo == ((0i64 : stdgo.GoUInt64)) && (_xHi & (511i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64)) : Bool) && ((_retMantissa & (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (1i64 : stdgo.GoUInt64)) : Bool)) {
            return { _0 : (0 : stdgo.GoFloat64), _1 : false };
        };
        _retMantissa = (_retMantissa + ((_retMantissa & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _retMantissa = (_retMantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if (((_retMantissa >> (53i64 : stdgo.GoUInt64) : stdgo.GoUInt64) > (0i64 : stdgo.GoUInt64) : Bool)) {
            _retMantissa = (_retMantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _retExp2 = (_retExp2 + ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        if (((_retExp2 - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (2046i64 : stdgo.GoUInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoFloat64), _1 : false };
        };
        var _retBits = ((_retExp2 << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_retMantissa & (4503599627370495i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        if (_neg) {
            _retBits = (_retBits | ((-9223372036854775808i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        return { _0 : stdgo._internal.math.Math.float64frombits(_retBits), _1 : true };
    }
function _eiselLemire32(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):{ var _0 : stdgo.GoFloat32; var _1 : Bool; } {
        var _f = (0 : stdgo.GoFloat32), _ok = false;
        if (_man == ((0i64 : stdgo.GoUInt64))) {
            if (_neg) {
                _f = stdgo._internal.math.Math.float32frombits((-2147483648u32 : stdgo.GoUInt32));
            };
            return { _0 : _f, _1 : true };
        };
        if (((_exp10 < (-348 : stdgo.GoInt) : Bool) || ((347 : stdgo.GoInt) < _exp10 : Bool) : Bool)) {
            return { _0 : (0 : stdgo.GoFloat64), _1 : false };
        };
        var _clz = (stdgo._internal.math.bits.Bits.leadingZeros64(_man) : stdgo.GoInt);
        _man = (_man << ((_clz : stdgo.GoUInt)) : stdgo.GoUInt64);
        {};
        var _retExp2 = (((((((217706 : stdgo.GoInt) * _exp10 : stdgo.GoInt) >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) + (64 : stdgo.GoInt) : stdgo.GoInt) + (127 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64) - (_clz : stdgo.GoUInt64) : stdgo.GoUInt64);
        var __tmp__ = stdgo._internal.math.bits.Bits.mul64(_man, _detailedPowersOfTen[(_exp10 - (-348 : stdgo.GoInt) : stdgo.GoInt)][(1 : stdgo.GoInt)]), _xHi:stdgo.GoUInt64 = __tmp__._0, _xLo:stdgo.GoUInt64 = __tmp__._1;
        if ((((_xHi & (274877906943i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (274877906943i64 : stdgo.GoUInt64)) && ((_xLo + _man : stdgo.GoUInt64) < _man : Bool) : Bool)) {
            var __tmp__ = stdgo._internal.math.bits.Bits.mul64(_man, _detailedPowersOfTen[(_exp10 - (-348 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)]), _yHi:stdgo.GoUInt64 = __tmp__._0, _yLo:stdgo.GoUInt64 = __tmp__._1;
            var __0 = (_xHi : stdgo.GoUInt64), __1 = (_xLo + _yHi : stdgo.GoUInt64);
var _mergedLo = __1, _mergedHi = __0;
            if ((_mergedLo < _xLo : Bool)) {
                _mergedHi++;
            };
            if ((((_mergedHi & (274877906943i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((274877906943i64 : stdgo.GoUInt64)) && (_mergedLo + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64)) : Bool) && ((_yLo + _man : stdgo.GoUInt64) < _man : Bool) : Bool)) {
                return { _0 : (0 : stdgo.GoFloat64), _1 : false };
            };
            {
                final __tmp__0 = _mergedHi;
                final __tmp__1 = _mergedLo;
                _xHi = __tmp__0;
                _xLo = __tmp__1;
            };
        };
        var _msb = (_xHi >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _retMantissa = (_xHi >> ((_msb + (38i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _retExp2 = (_retExp2 - (((1i64 : stdgo.GoUInt64) ^ _msb : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if (((_xLo == ((0i64 : stdgo.GoUInt64)) && (_xHi & (274877906943i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64)) : Bool) && ((_retMantissa & (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (1i64 : stdgo.GoUInt64)) : Bool)) {
            return { _0 : (0 : stdgo.GoFloat64), _1 : false };
        };
        _retMantissa = (_retMantissa + ((_retMantissa & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _retMantissa = (_retMantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if (((_retMantissa >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) > (0i64 : stdgo.GoUInt64) : Bool)) {
            _retMantissa = (_retMantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _retExp2 = (_retExp2 + ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        if (((_retExp2 - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (254i64 : stdgo.GoUInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoFloat64), _1 : false };
        };
        var _retBits = ((_retExp2 << (23i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_retMantissa & (8388607i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        if (_neg) {
            _retBits = (_retBits | ((2147483648i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        return { _0 : stdgo._internal.math.Math.float32frombits((_retBits : stdgo.GoUInt32)), _1 : true };
    }
function formatFloat(_f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString {
        return (_genericFtoa((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _max((_prec + (4 : stdgo.GoInt) : stdgo.GoInt), (24 : stdgo.GoInt))).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _f, _fmt, _prec, _bitSize) : stdgo.GoString)?.__copy__();
    }
function appendFloat(_dst:stdgo.Slice<stdgo.GoByte>, _f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        return _genericFtoa(_dst, _f, _fmt, _prec, _bitSize);
    }
function _genericFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _val:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        var _bits:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _flt:stdgo.Ref<T_floatInfo> = (null : stdgo.Ref<stdgo._internal.strconv.Strconv.T_floatInfo>);
        {
            final __value__ = _bitSize;
            if (__value__ == ((32 : stdgo.GoInt))) {
                _bits = (stdgo._internal.math.Math.float32bits((_val : stdgo.GoFloat32)) : stdgo.GoUInt64);
                _flt = (stdgo.Go.setRef(_float32info) : stdgo.Ref<stdgo._internal.strconv.Strconv.T_floatInfo>);
            } else if (__value__ == ((64 : stdgo.GoInt))) {
                _bits = stdgo._internal.math.Math.float64bits(_val);
                _flt = (stdgo.Go.setRef(_float64info) : stdgo.Ref<stdgo._internal.strconv.Strconv.T_floatInfo>);
            } else {
                throw stdgo.Go.toInterface(("strconv: illegal AppendFloat/FormatFloat bitSize" : stdgo.GoString));
            };
        };
        var _neg = ((_bits >> ((_flt._expbits + _flt._mantbits : stdgo.GoUInt)) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64)) : Bool);
        var _exp = (((_bits >> _flt._mantbits : stdgo.GoUInt64) : stdgo.GoInt) & ((((1 : stdgo.GoInt) << _flt._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var _mant = (_bits & ((((1i64 : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        {
            final __value__ = _exp;
            if (__value__ == ((((1 : stdgo.GoInt) << _flt._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                var _s:stdgo.GoString = ("" : stdgo.GoString);
                if (_mant != ((0i64 : stdgo.GoUInt64))) {
                    _s = ("NaN" : stdgo.GoString);
                } else if (_neg) {
                    _s = ("-Inf" : stdgo.GoString);
                } else {
                    _s = ("+Inf" : stdgo.GoString);
                };
                return (_dst.__append__(...(_s : Array<stdgo.GoUInt8>)));
            } else if (__value__ == ((0 : stdgo.GoInt))) {
                _exp++;
            } else {
                _mant = (_mant | (((1i64 : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
        };
        _exp = (_exp + (_flt._bias) : stdgo.GoInt);
        if (_fmt == ((98 : stdgo.GoUInt8))) {
            return _fmtB(_dst, _neg, _mant, _exp, _flt);
        };
        if (((_fmt == (120 : stdgo.GoUInt8)) || (_fmt == (88 : stdgo.GoUInt8)) : Bool)) {
            return _fmtX(_dst, _prec, _fmt, _neg, _mant, _exp, _flt);
        };
        if (!_optimize) {
            return _bigFtoa(_dst, _prec, _fmt, _neg, _mant, _exp, _flt);
        };
        var _digs:T_decimalSlice = ({} : stdgo._internal.strconv.Strconv.T_decimalSlice);
        var _ok = (false : Bool);
        var _shortest = (_prec < (0 : stdgo.GoInt) : Bool);
        if (_shortest) {
            var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
            _digs._d = (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
            _ryuFtoaShortest((stdgo.Go.setRef(_digs) : stdgo.Ref<stdgo._internal.strconv.Strconv.T_decimalSlice>), _mant, (_exp - (_flt._mantbits : stdgo.GoInt) : stdgo.GoInt), _flt);
            _ok = true;
            {
                final __value__ = _fmt;
                if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                    _prec = _max((_digs._nd - (1 : stdgo.GoInt) : stdgo.GoInt), (0 : stdgo.GoInt));
                } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                    _prec = _max((_digs._nd - _digs._dp : stdgo.GoInt), (0 : stdgo.GoInt));
                } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                    _prec = _digs._nd;
                };
            };
        } else if (_fmt != ((102 : stdgo.GoUInt8))) {
            var _digits = (_prec : stdgo.GoInt);
            {
                final __value__ = _fmt;
                if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                    _digits++;
                } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                    if (_prec == ((0 : stdgo.GoInt))) {
                        _prec = (1 : stdgo.GoInt);
                    };
                    _digits = _prec;
                } else {
                    _digits = (1 : stdgo.GoInt);
                };
            };
            var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(24, 24, ...[for (i in 0 ... 24) (0 : stdgo.GoUInt8)]);
            if (((_bitSize == (32 : stdgo.GoInt)) && (_digits <= (9 : stdgo.GoInt) : Bool) : Bool)) {
                _digs._d = (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
                _ryuFtoaFixed32((stdgo.Go.setRef(_digs) : stdgo.Ref<stdgo._internal.strconv.Strconv.T_decimalSlice>), (_mant : stdgo.GoUInt32), (_exp - (_flt._mantbits : stdgo.GoInt) : stdgo.GoInt), _digits);
                _ok = true;
            } else if ((_digits <= (18 : stdgo.GoInt) : Bool)) {
                _digs._d = (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
                _ryuFtoaFixed64((stdgo.Go.setRef(_digs) : stdgo.Ref<stdgo._internal.strconv.Strconv.T_decimalSlice>), _mant, (_exp - (_flt._mantbits : stdgo.GoInt) : stdgo.GoInt), _digits);
                _ok = true;
            };
        };
        if (!_ok) {
            return _bigFtoa(_dst, _prec, _fmt, _neg, _mant, _exp, _flt);
        };
        return _formatDigits(_dst, _shortest, _neg, _digs?.__copy__(), _prec, _fmt);
    }
function _bigFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<T_floatInfo>):stdgo.Slice<stdgo.GoByte> {
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.strconv.Strconv.T_decimal)) : stdgo.Ref<stdgo._internal.strconv.Strconv.T_decimal>);
        _d.assign(_mant);
        _d.shift((_exp - (_flt._mantbits : stdgo.GoInt) : stdgo.GoInt));
        var _digs:T_decimalSlice = ({} : stdgo._internal.strconv.Strconv.T_decimalSlice);
        var _shortest = (_prec < (0 : stdgo.GoInt) : Bool);
        if (_shortest) {
            _roundShortest(_d, _mant, _exp, _flt);
            _digs = ({ _d : (_d._d.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _nd : _d._nd, _dp : _d._dp } : stdgo._internal.strconv.Strconv.T_decimalSlice);
            {
                final __value__ = _fmt;
                if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                    _prec = (_digs._nd - (1 : stdgo.GoInt) : stdgo.GoInt);
                } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                    _prec = _max((_digs._nd - _digs._dp : stdgo.GoInt), (0 : stdgo.GoInt));
                } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                    _prec = _digs._nd;
                };
            };
        } else {
            {
                final __value__ = _fmt;
                if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                    _d.round((_prec + (1 : stdgo.GoInt) : stdgo.GoInt));
                } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                    _d.round((_d._dp + _prec : stdgo.GoInt));
                } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                    if (_prec == ((0 : stdgo.GoInt))) {
                        _prec = (1 : stdgo.GoInt);
                    };
                    _d.round(_prec);
                };
            };
            _digs = ({ _d : (_d._d.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _nd : _d._nd, _dp : _d._dp } : stdgo._internal.strconv.Strconv.T_decimalSlice);
        };
        return _formatDigits(_dst, _shortest, _neg, _digs?.__copy__(), _prec, _fmt);
    }
function _formatDigits(_dst:stdgo.Slice<stdgo.GoByte>, _shortest:Bool, _neg:Bool, _digs:T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):stdgo.Slice<stdgo.GoByte> {
        {
            final __value__ = _fmt;
            if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                return _fmtE(_dst, _neg, _digs?.__copy__(), _prec, _fmt);
            } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                return _fmtF(_dst, _neg, _digs?.__copy__(), _prec);
            } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                var _eprec = (_prec : stdgo.GoInt);
                if (((_eprec > _digs._nd : Bool) && (_digs._nd >= _digs._dp : Bool) : Bool)) {
                    _eprec = _digs._nd;
                };
                if (_shortest) {
                    _eprec = (6 : stdgo.GoInt);
                };
                var _exp = (_digs._dp - (1 : stdgo.GoInt) : stdgo.GoInt);
                if (((_exp < (-4 : stdgo.GoInt) : Bool) || (_exp >= _eprec : Bool) : Bool)) {
                    if ((_prec > _digs._nd : Bool)) {
                        _prec = _digs._nd;
                    };
                    return _fmtE(_dst, _neg, _digs?.__copy__(), (_prec - (1 : stdgo.GoInt) : stdgo.GoInt), ((_fmt + (101 : stdgo.GoUInt8) : stdgo.GoUInt8) - (103 : stdgo.GoUInt8) : stdgo.GoUInt8));
                };
                if ((_prec > _digs._dp : Bool)) {
                    _prec = _digs._nd;
                };
                return _fmtF(_dst, _neg, _digs?.__copy__(), _max((_prec - _digs._dp : stdgo.GoInt), (0 : stdgo.GoInt)));
            };
        };
        return (_dst.__append__((37 : stdgo.GoUInt8), _fmt));
    }
function _roundShortest(_d:stdgo.Ref<T_decimal>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<T_floatInfo>):Void {
        if (_mant == ((0i64 : stdgo.GoUInt64))) {
            _d._nd = (0 : stdgo.GoInt);
            return;
        };
        var _minexp = (_flt._bias + (1 : stdgo.GoInt) : stdgo.GoInt);
        if (((_exp > _minexp : Bool) && (((332 : stdgo.GoInt) * ((_d._dp - _d._nd : stdgo.GoInt)) : stdgo.GoInt) >= ((100 : stdgo.GoInt) * ((_exp - (_flt._mantbits : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : Bool) : Bool)) {
            return;
        };
        var _upper = (stdgo.Go.setRef(({} : stdgo._internal.strconv.Strconv.T_decimal)) : stdgo.Ref<stdgo._internal.strconv.Strconv.T_decimal>);
        _upper.assign(((_mant * (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        _upper.shift(((_exp - (_flt._mantbits : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt));
        var _mantlo:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _explo:stdgo.GoInt = (0 : stdgo.GoInt);
        if (((_mant > ((1i64 : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64) : Bool) || (_exp == _minexp) : Bool)) {
            _mantlo = (_mant - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _explo = _exp;
        } else {
            _mantlo = ((_mant * (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _explo = (_exp - (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _lower = (stdgo.Go.setRef(({} : stdgo._internal.strconv.Strconv.T_decimal)) : stdgo.Ref<stdgo._internal.strconv.Strconv.T_decimal>);
        _lower.assign(((_mantlo * (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        _lower.shift(((_explo - (_flt._mantbits : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt));
        var _inclusive = ((_mant % (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64)) : Bool);
        var _upperdelta:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        {
            var _ui = (0 : stdgo.GoInt);
            stdgo.Go.cfor(true, _ui++, {
                var _mi = ((_ui - _upper._dp : stdgo.GoInt) + _d._dp : stdgo.GoInt);
                if ((_mi >= _d._nd : Bool)) {
                    break;
                };
                var _li = ((_ui - _upper._dp : stdgo.GoInt) + _lower._dp : stdgo.GoInt);
                var _l = (((48 : stdgo.GoUInt8) : stdgo.GoByte) : stdgo.GoUInt8);
                if (((_li >= (0 : stdgo.GoInt) : Bool) && (_li < _lower._nd : Bool) : Bool)) {
                    _l = _lower._d[(_li : stdgo.GoInt)];
                };
                var _m = (((48 : stdgo.GoUInt8) : stdgo.GoByte) : stdgo.GoUInt8);
                if ((_mi >= (0 : stdgo.GoInt) : Bool)) {
                    _m = _d._d[(_mi : stdgo.GoInt)];
                };
                var _u = (((48 : stdgo.GoUInt8) : stdgo.GoByte) : stdgo.GoUInt8);
                if ((_ui < _upper._nd : Bool)) {
                    _u = _upper._d[(_ui : stdgo.GoInt)];
                };
                var _okdown = ((_l != _m) || (_inclusive && (_li + (1 : stdgo.GoInt) : stdgo.GoInt) == (_lower._nd) : Bool) : Bool);
                if (((_upperdelta == (0 : stdgo.GoUInt8)) && ((_m + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) < _u : Bool) : Bool)) {
                    _upperdelta = (2 : stdgo.GoUInt8);
                } else if (((_upperdelta == (0 : stdgo.GoUInt8)) && (_m != _u) : Bool)) {
                    _upperdelta = (1 : stdgo.GoUInt8);
                } else if (((_upperdelta == (1 : stdgo.GoUInt8)) && (((_m != (57 : stdgo.GoUInt8)) || (_u != (48 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    _upperdelta = (2 : stdgo.GoUInt8);
                };
                var _okup = ((_upperdelta > (0 : stdgo.GoUInt8) : Bool) && (((_inclusive || (_upperdelta > (1 : stdgo.GoUInt8) : Bool) : Bool) || ((_ui + (1 : stdgo.GoInt) : stdgo.GoInt) < _upper._nd : Bool) : Bool)) : Bool);
                if ((_okdown && _okup : Bool)) {
                    _d.round((_mi + (1 : stdgo.GoInt) : stdgo.GoInt));
                    return;
                } else if (_okdown) {
                    _d.roundDown((_mi + (1 : stdgo.GoInt) : stdgo.GoInt));
                    return;
                } else if (_okup) {
                    _d.roundUp((_mi + (1 : stdgo.GoInt) : stdgo.GoInt));
                    return;
                };
            });
        };
    }
function _fmtE(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):stdgo.Slice<stdgo.GoByte> {
        if (_neg) {
            _dst = (_dst.__append__((45 : stdgo.GoUInt8)));
        };
        var _ch = (((48 : stdgo.GoUInt8) : stdgo.GoByte) : stdgo.GoUInt8);
        if (_d._nd != ((0 : stdgo.GoInt))) {
            _ch = _d._d[(0 : stdgo.GoInt)];
        };
        _dst = (_dst.__append__(_ch));
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((46 : stdgo.GoUInt8)));
            var _i = (1 : stdgo.GoInt);
            var _m = (_min(_d._nd, (_prec + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            if ((_i < _m : Bool)) {
                _dst = (_dst.__append__(...((_d._d.__slice__(_i, _m) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                _i = _m;
            };
            stdgo.Go.cfor((_i <= _prec : Bool), _i++, {
                _dst = (_dst.__append__((48 : stdgo.GoUInt8)));
            });
        };
        _dst = (_dst.__append__(_fmt));
        var _exp = (_d._dp - (1 : stdgo.GoInt) : stdgo.GoInt);
        if (_d._nd == ((0 : stdgo.GoInt))) {
            _exp = (0 : stdgo.GoInt);
        };
        if ((_exp < (0 : stdgo.GoInt) : Bool)) {
            _ch = (45 : stdgo.GoUInt8);
            _exp = -_exp;
        } else {
            _ch = (43 : stdgo.GoUInt8);
        };
        _dst = (_dst.__append__(_ch));
        if ((_exp < (10 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((48 : stdgo.GoUInt8), ((_exp : stdgo.GoByte) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)));
        } else if ((_exp < (100 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((((_exp / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((_exp % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)));
        } else {
            _dst = (_dst.__append__((((_exp / (100 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), ((((_exp / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) % (10 : stdgo.GoUInt8) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((_exp % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)));
        };
        return _dst;
    }
function _fmtF(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:T_decimalSlice, _prec:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        if (_neg) {
            _dst = (_dst.__append__((45 : stdgo.GoUInt8)));
        };
        if ((_d._dp > (0 : stdgo.GoInt) : Bool)) {
            var _m = (_min(_d._nd, _d._dp) : stdgo.GoInt);
            _dst = (_dst.__append__(...((_d._d.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            stdgo.Go.cfor((_m < _d._dp : Bool), _m++, {
                _dst = (_dst.__append__((48 : stdgo.GoUInt8)));
            });
        } else {
            _dst = (_dst.__append__((48 : stdgo.GoUInt8)));
        };
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((46 : stdgo.GoUInt8)));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _prec : Bool), _i++, {
                    var _ch = (((48 : stdgo.GoUInt8) : stdgo.GoByte) : stdgo.GoUInt8);
                    {
                        var _j = (_d._dp + _i : stdgo.GoInt);
                        if ((((0 : stdgo.GoInt) <= _j : Bool) && (_j < _d._nd : Bool) : Bool)) {
                            _ch = _d._d[(_j : stdgo.GoInt)];
                        };
                    };
                    _dst = (_dst.__append__(_ch));
                });
            };
        };
        return _dst;
    }
function _fmtB(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<T_floatInfo>):stdgo.Slice<stdgo.GoByte> {
        if (_neg) {
            _dst = (_dst.__append__((45 : stdgo.GoUInt8)));
        };
        {
            var __tmp__ = _formatBits(_dst, _mant, (10 : stdgo.GoInt), false, true);
            _dst = __tmp__._0;
        };
        _dst = (_dst.__append__((112 : stdgo.GoUInt8)));
        _exp = (_exp - ((_flt._mantbits : stdgo.GoInt)) : stdgo.GoInt);
        if ((_exp >= (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((43 : stdgo.GoUInt8)));
        };
        {
            var __tmp__ = _formatBits(_dst, (_exp : stdgo.GoUInt64), (10 : stdgo.GoInt), (_exp < (0 : stdgo.GoInt) : Bool), true);
            _dst = __tmp__._0;
        };
        return _dst;
    }
function _fmtX(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<T_floatInfo>):stdgo.Slice<stdgo.GoByte> {
        if (_mant == ((0i64 : stdgo.GoUInt64))) {
            _exp = (0 : stdgo.GoInt);
        };
        _mant = (_mant << (((60u32 : stdgo.GoUInt) - _flt._mantbits : stdgo.GoUInt)) : stdgo.GoUInt64);
        while (((_mant != (0i64 : stdgo.GoUInt64)) && ((_mant & (1152921504606846976i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) : Bool)) {
            _mant = (_mant << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _exp--;
        };
        if (((_prec >= (0 : stdgo.GoInt) : Bool) && (_prec < (15 : stdgo.GoInt) : Bool) : Bool)) {
            var _shift = ((_prec * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt);
            var _extra = (((_mant << _shift : stdgo.GoUInt64)) & (1152921504606846975i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _mant = (_mant >> (((60u32 : stdgo.GoUInt) - _shift : stdgo.GoUInt)) : stdgo.GoUInt64);
            if (((_extra | ((_mant & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64) > (576460752303423488i64 : stdgo.GoUInt64) : Bool)) {
                _mant++;
            };
            _mant = (_mant << (((60u32 : stdgo.GoUInt) - _shift : stdgo.GoUInt)) : stdgo.GoUInt64);
            if ((_mant & (2305843009213693952i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                _mant = (_mant >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _exp++;
            };
        };
        var _hex = ("0123456789abcdef" : stdgo.GoString);
        if (_fmt == ((88 : stdgo.GoUInt8))) {
            _hex = ("0123456789ABCDEF" : stdgo.GoString);
        };
        if (_neg) {
            _dst = (_dst.__append__((45 : stdgo.GoUInt8)));
        };
        _dst = (_dst.__append__((48 : stdgo.GoUInt8), _fmt, ((48 : stdgo.GoUInt8) + ((((_mant >> (60i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte) : stdgo.GoUInt8)));
        _mant = (_mant << ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if (((_prec < (0 : stdgo.GoInt) : Bool) && (_mant != (0i64 : stdgo.GoUInt64)) : Bool)) {
            _dst = (_dst.__append__((46 : stdgo.GoUInt8)));
            while (_mant != ((0i64 : stdgo.GoUInt64))) {
                _dst = (_dst.__append__(_hex[((((_mant >> (60i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (15i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]));
                _mant = (_mant << ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
        } else if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((46 : stdgo.GoUInt8)));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _prec : Bool), _i++, {
                    _dst = (_dst.__append__(_hex[((((_mant >> (60i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (15i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]));
                    _mant = (_mant << ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                });
            };
        };
        var _ch = (((80 : stdgo.GoUInt8) : stdgo.GoByte) : stdgo.GoUInt8);
        if (_fmt == (_lower(_fmt))) {
            _ch = (112 : stdgo.GoUInt8);
        };
        _dst = (_dst.__append__(_ch));
        if ((_exp < (0 : stdgo.GoInt) : Bool)) {
            _ch = (45 : stdgo.GoUInt8);
            _exp = -_exp;
        } else {
            _ch = (43 : stdgo.GoUInt8);
        };
        _dst = (_dst.__append__(_ch));
        if ((_exp < (100 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((((_exp / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((_exp % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)));
        } else if ((_exp < (1000 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((((_exp / (100 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((((_exp / (10 : stdgo.GoInt) : stdgo.GoInt)) % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((_exp % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)));
        } else {
            _dst = (_dst.__append__((((_exp / (1000 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), ((((_exp / (100 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) % (10 : stdgo.GoUInt8) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((((_exp / (10 : stdgo.GoInt) : stdgo.GoInt)) % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((_exp % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)));
        };
        return _dst;
    }
function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
        if ((_a < _b : Bool)) {
            return _a;
        };
        return _b;
    }
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
        if ((_a > _b : Bool)) {
            return _a;
        };
        return _b;
    }
function _ryuFtoaFixed32(_d:stdgo.Ref<T_decimalSlice>, _mant:stdgo.GoUInt32, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void {
        if ((_prec < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("ryuFtoaFixed32 called with negative prec" : stdgo.GoString));
        };
        if ((_prec > (9 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("ryuFtoaFixed32 called with prec > 9" : stdgo.GoString));
        };
        if (_mant == ((0u32 : stdgo.GoUInt32))) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                _d._nd = __tmp__0;
                _d._dp = __tmp__1;
            };
            return;
        };
        var _e2 = (_exp : stdgo.GoInt);
        {
            var _b = (stdgo._internal.math.bits.Bits.len32(_mant) : stdgo.GoInt);
            if ((_b < (25 : stdgo.GoInt) : Bool)) {
                _mant = (_mant << ((((25 : stdgo.GoInt) - _b : stdgo.GoInt) : stdgo.GoUInt)) : stdgo.GoUInt32);
                _e2 = (_e2 + ((_b - (25 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        var _q = ((-_mulByLog2Log10((_e2 + (24 : stdgo.GoInt) : stdgo.GoInt)) + _prec : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _exact = ((_q <= (27 : stdgo.GoInt) : Bool) && (_q >= (0 : stdgo.GoInt) : Bool) : Bool);
        var __tmp__ = _mult64bitPow10(_mant, _e2, _q), _di:stdgo.GoUInt32 = __tmp__._0, _dexp2:stdgo.GoInt = __tmp__._1, _d0:Bool = __tmp__._2;
        if ((_dexp2 >= (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("not enough significant bits after mult64bitPow10" : stdgo.GoString));
        };
        if ((((_q < (0 : stdgo.GoInt) : Bool) && (_q >= (-10 : stdgo.GoInt) : Bool) : Bool) && _divisibleByPower5((_mant : stdgo.GoUInt64), -_q) : Bool)) {
            _exact = true;
            _d0 = true;
        };
        var _extra = (-_dexp2 : stdgo.GoUInt);
        var _extraMask = ((((1u32 : stdgo.GoUInt32) << _extra : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32);
        var __0 = (_di >> _extra : stdgo.GoUInt32), __1 = (_di & _extraMask : stdgo.GoUInt32);
var _dfrac = __1, _di = __0;
        var _roundUp = (false : Bool);
        if (_exact) {
            _roundUp = (((_dfrac > ((1u32 : stdgo.GoUInt32) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32) : Bool) || (((_dfrac == ((1u32 : stdgo.GoUInt32) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) && !_d0 : Bool)) : Bool) || (((_dfrac == (((1u32 : stdgo.GoUInt32) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) && _d0 : Bool) && ((_di & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == (1u32 : stdgo.GoUInt32)) : Bool)) : Bool);
        } else {
            _roundUp = (_dfrac >> ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32) == ((1u32 : stdgo.GoUInt32));
        };
        if (_dfrac != ((0u32 : stdgo.GoUInt32))) {
            _d0 = false;
        };
        _formatDecimal(_d, (_di : stdgo.GoUInt64), !_d0, _roundUp, _prec);
        _d._dp = (_d._dp - (_q) : stdgo.GoInt);
    }
function _ryuFtoaFixed64(_d:stdgo.Ref<T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void {
        if ((_prec > (18 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("ryuFtoaFixed64 called with prec > 18" : stdgo.GoString));
        };
        if (_mant == ((0i64 : stdgo.GoUInt64))) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                _d._nd = __tmp__0;
                _d._dp = __tmp__1;
            };
            return;
        };
        var _e2 = (_exp : stdgo.GoInt);
        {
            var _b = (stdgo._internal.math.bits.Bits.len64(_mant) : stdgo.GoInt);
            if ((_b < (55 : stdgo.GoInt) : Bool)) {
                _mant = (_mant << (((55 : stdgo.GoInt) - _b : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64);
                _e2 = (_e2 + ((_b - (55 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        var _q = ((-_mulByLog2Log10((_e2 + (54 : stdgo.GoInt) : stdgo.GoInt)) + _prec : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _exact = ((_q <= (55 : stdgo.GoInt) : Bool) && (_q >= (0 : stdgo.GoInt) : Bool) : Bool);
        var __tmp__ = _mult128bitPow10(_mant, _e2, _q), _di:stdgo.GoUInt64 = __tmp__._0, _dexp2:stdgo.GoInt = __tmp__._1, _d0:Bool = __tmp__._2;
        if ((_dexp2 >= (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("not enough significant bits after mult128bitPow10" : stdgo.GoString));
        };
        if ((((_q < (0 : stdgo.GoInt) : Bool) && (_q >= (-22 : stdgo.GoInt) : Bool) : Bool) && _divisibleByPower5(_mant, -_q) : Bool)) {
            _exact = true;
            _d0 = true;
        };
        var _extra = (-_dexp2 : stdgo.GoUInt);
        var _extraMask = ((((1i64 : stdgo.GoUInt64) << _extra : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var __0 = (_di >> _extra : stdgo.GoUInt64), __1 = (_di & _extraMask : stdgo.GoUInt64);
var _dfrac = __1, _di = __0;
        var _roundUp = (false : Bool);
        if (_exact) {
            _roundUp = (((_dfrac > ((1i64 : stdgo.GoUInt64) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) : Bool) || (((_dfrac == ((1i64 : stdgo.GoUInt64) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64)) && !_d0 : Bool)) : Bool) || (((_dfrac == (((1i64 : stdgo.GoUInt64) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64)) && _d0 : Bool) && ((_di & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (1i64 : stdgo.GoUInt64)) : Bool)) : Bool);
        } else {
            _roundUp = (_dfrac >> ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64));
        };
        if (_dfrac != ((0i64 : stdgo.GoUInt64))) {
            _d0 = false;
        };
        _formatDecimal(_d, _di, !_d0, _roundUp, _prec);
        _d._dp = (_d._dp - (_q) : stdgo.GoInt);
    }
function _formatDecimal(_d:stdgo.Ref<T_decimalSlice>, _m:stdgo.GoUInt64, _trunc:Bool, _roundUp:Bool, _prec:stdgo.GoInt):Void {
        var _max = (_uint64pow10[(_prec : stdgo.GoInt)] : stdgo.GoUInt64);
        var _trimmed = (0 : stdgo.GoInt);
        while ((_m >= _max : Bool)) {
            var __0 = (_m / (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __1 = (_m % (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
var _b = __1, _a = __0;
            _m = _a;
            _trimmed++;
            if ((_b > (5i64 : stdgo.GoUInt64) : Bool)) {
                _roundUp = true;
            } else if ((_b < (5i64 : stdgo.GoUInt64) : Bool)) {
                _roundUp = false;
            } else {
                _roundUp = (_trunc || ((_m & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (1i64 : stdgo.GoUInt64)) : Bool);
            };
            if (_b != ((0i64 : stdgo.GoUInt64))) {
                _trunc = true;
            };
        };
        if (_roundUp) {
            _m++;
        };
        if ((_m >= _max : Bool)) {
            _m = (_m / ((10i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _trimmed++;
        };
        var _n = (_prec : stdgo.GoUInt);
        _d._nd = _prec;
        var _v = (_m : stdgo.GoUInt64);
        while ((_v >= (100i64 : stdgo.GoUInt64) : Bool)) {
            var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _v2 = __1, _v1 = __0;
            if ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
                {
                    final __tmp__0 = (((_v : stdgo.GoUInt32) / (100u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt64);
                    final __tmp__1 = (((_v : stdgo.GoUInt32) % (100u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt64);
                    _v1 = __tmp__0;
                    _v2 = __tmp__1;
                };
            } else {
                {
                    final __tmp__0 = (_v / (100i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    final __tmp__1 = (_v % (100i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _v1 = __tmp__0;
                    _v2 = __tmp__1;
                };
            };
            _n = (_n - ((2u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            _d._d[((_n + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((((2i64 : stdgo.GoUInt64) * _v2 : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)];
            _d._d[((_n + (0u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((((2i64 : stdgo.GoUInt64) * _v2 : stdgo.GoUInt64) + (0i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)];
            _v = _v1;
        };
        if ((_v > (0i64 : stdgo.GoUInt64) : Bool)) {
            _n--;
            _d._d[(_n : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((((2i64 : stdgo.GoUInt64) * _v : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)];
        };
        if ((_v >= (10i64 : stdgo.GoUInt64) : Bool)) {
            _n--;
            _d._d[(_n : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[(((2i64 : stdgo.GoUInt64) * _v : stdgo.GoUInt64) : stdgo.GoInt)];
        };
        while (_d._d[(_d._nd - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
            _d._nd--;
            _trimmed++;
        };
        _d._dp = (_d._nd + _trimmed : stdgo.GoInt);
    }
function _ryuFtoaShortest(_d:stdgo.Ref<T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<T_floatInfo>):Void {
        if (_mant == ((0i64 : stdgo.GoUInt64))) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                _d._nd = __tmp__0;
                _d._dp = __tmp__1;
            };
            return;
        };
        if (((_exp <= (0 : stdgo.GoInt) : Bool) && (stdgo._internal.math.bits.Bits.trailingZeros64(_mant) >= -_exp : Bool) : Bool)) {
            _mant = (_mant >> ((-_exp : stdgo.GoUInt)) : stdgo.GoUInt64);
            _ryuDigits(_d, _mant, _mant, _mant, true, false);
            return;
        };
        var __tmp__ = _computeBounds(_mant, _exp, _flt), _ml:stdgo.GoUInt64 = __tmp__._0, _mc:stdgo.GoUInt64 = __tmp__._1, _mu:stdgo.GoUInt64 = __tmp__._2, _e2:stdgo.GoInt = __tmp__._3;
        if (_e2 == ((0 : stdgo.GoInt))) {
            _ryuDigits(_d, _ml, _mc, _mu, true, false);
            return;
        };
        var _q = (_mulByLog2Log10(-_e2) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _du = __2, _dc = __1, _dl = __0;
        var __0:Bool = false, __1:Bool = false, __2:Bool = false;
var _du0 = __2, _dc0 = __1, _dl0 = __0;
        if (_flt == ((stdgo.Go.setRef(_float32info) : stdgo.Ref<stdgo._internal.strconv.Strconv.T_floatInfo>))) {
            var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __2:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _du32 = __2, _dc32 = __1, _dl32 = __0;
            {
                var __tmp__ = _mult64bitPow10((_ml : stdgo.GoUInt32), _e2, _q);
                _dl32 = __tmp__._0;
                _dl0 = __tmp__._2;
            };
            {
                var __tmp__ = _mult64bitPow10((_mc : stdgo.GoUInt32), _e2, _q);
                _dc32 = __tmp__._0;
                _dc0 = __tmp__._2;
            };
            {
                var __tmp__ = _mult64bitPow10((_mu : stdgo.GoUInt32), _e2, _q);
                _du32 = __tmp__._0;
                _e2 = __tmp__._1;
                _du0 = __tmp__._2;
            };
            {
                final __tmp__0 = (_dl32 : stdgo.GoUInt64);
                final __tmp__1 = (_dc32 : stdgo.GoUInt64);
                final __tmp__2 = (_du32 : stdgo.GoUInt64);
                _dl = __tmp__0;
                _dc = __tmp__1;
                _du = __tmp__2;
            };
        } else {
            {
                var __tmp__ = _mult128bitPow10(_ml, _e2, _q);
                _dl = __tmp__._0;
                _dl0 = __tmp__._2;
            };
            {
                var __tmp__ = _mult128bitPow10(_mc, _e2, _q);
                _dc = __tmp__._0;
                _dc0 = __tmp__._2;
            };
            {
                var __tmp__ = _mult128bitPow10(_mu, _e2, _q);
                _du = __tmp__._0;
                _e2 = __tmp__._1;
                _du0 = __tmp__._2;
            };
        };
        if ((_e2 >= (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("not enough significant bits after mult128bitPow10" : stdgo.GoString));
        };
        if ((_q > (55 : stdgo.GoInt) : Bool)) {
            {
                final __tmp__0 = false;
                final __tmp__1 = false;
                final __tmp__2 = false;
                _dl0 = __tmp__0;
                _dc0 = __tmp__1;
                _du0 = __tmp__2;
            };
        };
        if (((_q < (0 : stdgo.GoInt) : Bool) && (_q >= (-24 : stdgo.GoInt) : Bool) : Bool)) {
            if (_divisibleByPower5(_ml, -_q)) {
                _dl0 = true;
            };
            if (_divisibleByPower5(_mc, -_q)) {
                _dc0 = true;
            };
            if (_divisibleByPower5(_mu, -_q)) {
                _du0 = true;
            };
        };
        var _extra = (-_e2 : stdgo.GoUInt);
        var _extraMask = ((((1i64 : stdgo.GoUInt64) << _extra : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var __0 = (_dl >> _extra : stdgo.GoUInt64), __1 = (_dl & _extraMask : stdgo.GoUInt64);
var _fracl = __1, _dl = __0;
        var __0 = (_dc >> _extra : stdgo.GoUInt64), __1 = (_dc & _extraMask : stdgo.GoUInt64);
var _fracc = __1, _dc = __0;
        var __0 = (_du >> _extra : stdgo.GoUInt64), __1 = (_du & _extraMask : stdgo.GoUInt64);
var _fracu = __1, _du = __0;
        var _uok = (!_du0 || (_fracu > (0i64 : stdgo.GoUInt64) : Bool) : Bool);
        if ((_du0 && (_fracu == (0i64 : stdgo.GoUInt64)) : Bool)) {
            _uok = (_mant & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64));
        };
        if (!_uok) {
            _du--;
        };
        var _cup = (false : Bool);
        if (_dc0) {
            _cup = ((_fracc > ((1i64 : stdgo.GoUInt64) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) : Bool) || (((_fracc == ((1i64 : stdgo.GoUInt64) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64)) && ((_dc & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (1i64 : stdgo.GoUInt64)) : Bool)) : Bool);
        } else {
            _cup = (_fracc >> ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64));
        };
        var _lok = ((_dl0 && _fracl == ((0i64 : stdgo.GoUInt64)) : Bool) && ((_mant & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) : Bool);
        if (!_lok) {
            _dl++;
        };
        var _c0 = (_dc0 && (_fracc == (0i64 : stdgo.GoUInt64)) : Bool);
        _ryuDigits(_d, _dl, _dc, _du, _c0, _cup);
        _d._dp = (_d._dp - (_q) : stdgo.GoInt);
    }
function _mulByLog2Log10(_x:stdgo.GoInt):stdgo.GoInt {
        return (((_x * (78913 : stdgo.GoInt) : stdgo.GoInt)) >> (18i64 : stdgo.GoUInt64) : stdgo.GoInt);
    }
function _mulByLog10Log2(_x:stdgo.GoInt):stdgo.GoInt {
        return (((_x * (108853 : stdgo.GoInt) : stdgo.GoInt)) >> (15i64 : stdgo.GoUInt64) : stdgo.GoInt);
    }
function _computeBounds(_mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<T_floatInfo>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.GoInt; } {
        var _lower = (0 : stdgo.GoUInt64), _central = (0 : stdgo.GoUInt64), _upper = (0 : stdgo.GoUInt64), _e2 = (0 : stdgo.GoInt);
        if (((_mant != ((1i64 : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64)) || (_exp == ((_flt._bias + (1 : stdgo.GoInt) : stdgo.GoInt) - (_flt._mantbits : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
            {
                final __tmp__0 = (((2i64 : stdgo.GoUInt64) * _mant : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                final __tmp__1 = ((2i64 : stdgo.GoUInt64) * _mant : stdgo.GoUInt64);
                final __tmp__2 = (((2i64 : stdgo.GoUInt64) * _mant : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                _lower = __tmp__0;
                _central = __tmp__1;
                _upper = __tmp__2;
            };
            _e2 = (_exp - (1 : stdgo.GoInt) : stdgo.GoInt);
            return { _0 : _lower, _1 : _central, _2 : _upper, _3 : _e2 };
        } else {
            {
                final __tmp__0 = (((4i64 : stdgo.GoUInt64) * _mant : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                final __tmp__1 = ((4i64 : stdgo.GoUInt64) * _mant : stdgo.GoUInt64);
                final __tmp__2 = (((4i64 : stdgo.GoUInt64) * _mant : stdgo.GoUInt64) + (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                _lower = __tmp__0;
                _central = __tmp__1;
                _upper = __tmp__2;
            };
            _e2 = (_exp - (2 : stdgo.GoInt) : stdgo.GoInt);
            return { _0 : _lower, _1 : _central, _2 : _upper, _3 : _e2 };
        };
    }
function _ryuDigits(_d:stdgo.Ref<T_decimalSlice>, _lower:stdgo.GoUInt64, _central:stdgo.GoUInt64, _upper:stdgo.GoUInt64, _c0:Bool, _cup:Bool):Void {
        var __tmp__ = _divmod1e9(_lower), _lhi:stdgo.GoUInt32 = __tmp__._0, _llo:stdgo.GoUInt32 = __tmp__._1;
        var __tmp__ = _divmod1e9(_central), _chi:stdgo.GoUInt32 = __tmp__._0, _clo:stdgo.GoUInt32 = __tmp__._1;
        var __tmp__ = _divmod1e9(_upper), _uhi:stdgo.GoUInt32 = __tmp__._0, _ulo:stdgo.GoUInt32 = __tmp__._1;
        if (_uhi == ((0u32 : stdgo.GoUInt32))) {
            _ryuDigits32(_d, _llo, _clo, _ulo, _c0, _cup, (8 : stdgo.GoInt));
        } else if ((_lhi < _uhi : Bool)) {
            if (_llo != ((0u32 : stdgo.GoUInt32))) {
                _lhi++;
            };
            _c0 = (_c0 && (_clo == (0u32 : stdgo.GoUInt32)) : Bool);
            _cup = (((_clo > (500000000u32 : stdgo.GoUInt32) : Bool)) || (((_clo == (500000000u32 : stdgo.GoUInt32)) && _cup : Bool)) : Bool);
            _ryuDigits32(_d, _lhi, _chi, _uhi, _c0, _cup, (8 : stdgo.GoInt));
            _d._dp = (_d._dp + ((9 : stdgo.GoInt)) : stdgo.GoInt);
        } else {
            _d._nd = (0 : stdgo.GoInt);
            var _n = ((9u32 : stdgo.GoUInt) : stdgo.GoUInt);
            {
                var _v = (_chi : stdgo.GoUInt32);
                while ((_v > (0u32 : stdgo.GoUInt32) : Bool)) {
                    var __0 = (_v / (10u32 : stdgo.GoUInt32) : stdgo.GoUInt32), __1 = (_v % (10u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _v2 = __1, _v1 = __0;
                    _v = _v1;
                    _n--;
                    _d._d[(_n : stdgo.GoInt)] = ((_v2 + (48u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoByte);
                };
            };
            _d._d = (_d._d.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _d._nd = (((9u32 : stdgo.GoUInt) - _n : stdgo.GoUInt) : stdgo.GoInt);
            _ryuDigits32(_d, _llo, _clo, _ulo, _c0, _cup, (_d._nd + (8 : stdgo.GoInt) : stdgo.GoInt));
        };
        while (((_d._nd > (0 : stdgo.GoInt) : Bool) && (_d._d[(_d._nd - (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            _d._nd--;
        };
        while (((_d._nd > (0 : stdgo.GoInt) : Bool) && (_d._d[(0 : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            _d._nd--;
            _d._dp--;
            _d._d = (_d._d.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
function _ryuDigits32(_d:stdgo.Ref<T_decimalSlice>, _lower:stdgo.GoUInt32, _central:stdgo.GoUInt32, _upper:stdgo.GoUInt32, _c0:Bool, _cup:Bool, _endindex:stdgo.GoInt):Void {
        if (_upper == ((0u32 : stdgo.GoUInt32))) {
            _d._dp = (_endindex + (1 : stdgo.GoInt) : stdgo.GoInt);
            return;
        };
        var _trimmed = (0 : stdgo.GoInt);
        var _cNextDigit = (0 : stdgo.GoInt);
        while ((_upper > (0u32 : stdgo.GoUInt32) : Bool)) {
            var _l = (((_lower + (9u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / (10u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            var __0 = (_central / (10u32 : stdgo.GoUInt32) : stdgo.GoUInt32), __1 = (_central % (10u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _cdigit = __1, _c = __0;
            var _u = (_upper / (10u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            if ((_l > _u : Bool)) {
                break;
            };
            if (((_l == (_c + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) && (_c < _u : Bool) : Bool)) {
                _c++;
                _cdigit = (0u32 : stdgo.GoUInt32);
                _cup = false;
            };
            _trimmed++;
            _c0 = (_c0 && (_cNextDigit == (0 : stdgo.GoInt)) : Bool);
            _cNextDigit = (_cdigit : stdgo.GoInt);
            {
                final __tmp__0 = _l;
                final __tmp__1 = _c;
                final __tmp__2 = _u;
                _lower = __tmp__0;
                _central = __tmp__1;
                _upper = __tmp__2;
            };
        };
        if ((_trimmed > (0 : stdgo.GoInt) : Bool)) {
            _cup = (((_cNextDigit > (5 : stdgo.GoInt) : Bool) || (((_cNextDigit == (5 : stdgo.GoInt)) && !_c0 : Bool)) : Bool) || (((_cNextDigit == ((5 : stdgo.GoInt)) && _c0 : Bool) && ((_central & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == (1u32 : stdgo.GoUInt32)) : Bool)) : Bool);
        };
        if (((_central < _upper : Bool) && _cup : Bool)) {
            _central++;
        };
        _endindex = (_endindex - (_trimmed) : stdgo.GoInt);
        var _v = (_central : stdgo.GoUInt32);
        var _n = (_endindex : stdgo.GoInt);
        while ((_n > _d._nd : Bool)) {
            var __0 = (_v / (100u32 : stdgo.GoUInt32) : stdgo.GoUInt32), __1 = (_v % (100u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _v2 = __1, _v1 = __0;
            _d._d[(_n : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((((2u32 : stdgo.GoUInt32) * _v2 : stdgo.GoUInt32) + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
            _d._d[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((((2u32 : stdgo.GoUInt32) * _v2 : stdgo.GoUInt32) + (0u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
            _n = (_n - ((2 : stdgo.GoInt)) : stdgo.GoInt);
            _v = _v1;
        };
        if (_n == (_d._nd)) {
            _d._d[(_n : stdgo.GoInt)] = ((_v + (48u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoByte);
        };
        _d._nd = (_endindex + (1 : stdgo.GoInt) : stdgo.GoInt);
        _d._dp = (_d._nd + _trimmed : stdgo.GoInt);
    }
function _mult64bitPow10(_m:stdgo.GoUInt32, _e2:stdgo.GoInt, _q:stdgo.GoInt):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoInt; var _2 : Bool; } {
        var _resM = (0 : stdgo.GoUInt32), _resE = (0 : stdgo.GoInt), _exact = false;
        if (_q == ((0 : stdgo.GoInt))) {
            return { _0 : (_m << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32), _1 : (_e2 - (6 : stdgo.GoInt) : stdgo.GoInt), _2 : true };
        };
        if (((_q < (-348 : stdgo.GoInt) : Bool) || ((347 : stdgo.GoInt) < _q : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("mult64bitPow10: power of 10 is out of range" : stdgo.GoString));
        };
        var _pow = (_detailedPowersOfTen[(_q - (-348 : stdgo.GoInt) : stdgo.GoInt)][(1 : stdgo.GoInt)] : stdgo.GoUInt64);
        if ((_q < (0 : stdgo.GoInt) : Bool)) {
            _pow = (_pow + ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        var __tmp__ = stdgo._internal.math.bits.Bits.mul64((_m : stdgo.GoUInt64), _pow), _hi:stdgo.GoUInt64 = __tmp__._0, _lo:stdgo.GoUInt64 = __tmp__._1;
        _e2 = (_e2 + (((_mulByLog10Log2(_q) - (63 : stdgo.GoInt) : stdgo.GoInt) + (57 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        return { _0 : (((_hi << (7i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_lo >> (57i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32), _1 : _e2, _2 : (_lo << (7i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64)) };
    }
function _mult128bitPow10(_m:stdgo.GoUInt64, _e2:stdgo.GoInt, _q:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; } {
        var _resM = (0 : stdgo.GoUInt64), _resE = (0 : stdgo.GoInt), _exact = false;
        if (_q == ((0 : stdgo.GoInt))) {
            return { _0 : (_m << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : (_e2 - (8 : stdgo.GoInt) : stdgo.GoInt), _2 : true };
        };
        if (((_q < (-348 : stdgo.GoInt) : Bool) || ((347 : stdgo.GoInt) < _q : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("mult128bitPow10: power of 10 is out of range" : stdgo.GoString));
        };
        var _pow = _detailedPowersOfTen[(_q - (-348 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__();
        if ((_q < (0 : stdgo.GoInt) : Bool)) {
            _pow[(0 : stdgo.GoInt)] = (_pow[(0 : stdgo.GoInt)] + ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        _e2 = (_e2 + (((_mulByLog10Log2(_q) - (127 : stdgo.GoInt) : stdgo.GoInt) + (119 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var __tmp__ = stdgo._internal.math.bits.Bits.mul64(_m, _pow[(0 : stdgo.GoInt)]), _l1:stdgo.GoUInt64 = __tmp__._0, _l0:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits.mul64(_m, _pow[(1 : stdgo.GoInt)]), _h1:stdgo.GoUInt64 = __tmp__._0, _h0:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits.add64(_l1, _h0, (0i64 : stdgo.GoUInt64)), _mid:stdgo.GoUInt64 = __tmp__._0, _carry:stdgo.GoUInt64 = __tmp__._1;
        _h1 = (_h1 + (_carry) : stdgo.GoUInt64);
        return { _0 : ((_h1 << (9i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_mid >> (55i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : _e2, _2 : (((_mid << (9i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) && (_l0 == (0i64 : stdgo.GoUInt64)) : Bool) };
    }
function _divisibleByPower5(_m:stdgo.GoUInt64, _k:stdgo.GoInt):Bool {
        if (_m == ((0i64 : stdgo.GoUInt64))) {
            return true;
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _k : Bool), _i++, {
                if ((_m % (5i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                    return false;
                };
                _m = (_m / ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            });
        };
        return true;
    }
function _divmod1e9(_x:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        if (false) {
            return { _0 : ((_x / (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32), _1 : ((_x % (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32) };
        };
        var __tmp__ = stdgo._internal.math.bits.Bits.mul64((_x >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64), (-8543223759426509416i64 : stdgo.GoUInt64)), _hi:stdgo.GoUInt64 = __tmp__._0, __0:stdgo.GoUInt64 = __tmp__._1;
        var _q = (_hi >> (28i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        return { _0 : (_q : stdgo.GoUInt32), _1 : ((_x - (_q * (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32) };
    }
function newDecimal(_i:stdgo.GoUInt64):stdgo.Ref<T_decimal> {
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.strconv.Strconv.T_decimal)) : stdgo.Ref<stdgo._internal.strconv.Strconv.T_decimal>);
        _d.assign(_i);
        return _d;
    }
function setOptimize(_b:Bool):Bool {
        var _old = (_optimize : Bool);
        _optimize = _b;
        return _old;
    }
function parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        return _parseFloatPrefix(_s?.__copy__(), _bitSize);
    }
function mulByLog2Log10(_x:stdgo.GoInt):stdgo.GoInt {
        return _mulByLog2Log10(_x);
    }
function mulByLog10Log2(_x:stdgo.GoInt):stdgo.GoInt {
        return _mulByLog10Log2(_x);
    }
function formatUint(_i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.GoString {
        if (((true && (_i < (100i64 : stdgo.GoUInt64) : Bool) : Bool) && (_base == (10 : stdgo.GoInt)) : Bool)) {
            return _small((_i : stdgo.GoInt))?.__copy__();
        };
        var __tmp__ = _formatBits((null : stdgo.Slice<stdgo.GoUInt8>), _i, _base, false, false), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _s:stdgo.GoString = __tmp__._1;
        return _s?.__copy__();
    }
function formatInt(_i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.GoString {
        if ((((true && ((0i64 : stdgo.GoInt64) <= _i : Bool) : Bool) && (_i < (100i64 : stdgo.GoInt64) : Bool) : Bool) && (_base == (10 : stdgo.GoInt)) : Bool)) {
            return _small((_i : stdgo.GoInt))?.__copy__();
        };
        var __tmp__ = _formatBits((null : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt64), _base, (_i < (0i64 : stdgo.GoInt64) : Bool), false), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _s:stdgo.GoString = __tmp__._1;
        return _s?.__copy__();
    }
function itoa(_i:stdgo.GoInt):stdgo.GoString {
        return formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__();
    }
function appendInt(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        if ((((true && ((0i64 : stdgo.GoInt64) <= _i : Bool) : Bool) && (_i < (100i64 : stdgo.GoInt64) : Bool) : Bool) && (_base == (10 : stdgo.GoInt)) : Bool)) {
            return (_dst.__append__(...(_small((_i : stdgo.GoInt)) : Array<stdgo.GoUInt8>)));
        };
        {
            var __tmp__ = _formatBits(_dst, (_i : stdgo.GoUInt64), _base, (_i < (0i64 : stdgo.GoInt64) : Bool), true);
            _dst = __tmp__._0;
        };
        return _dst;
    }
function appendUint(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        if (((true && (_i < (100i64 : stdgo.GoUInt64) : Bool) : Bool) && (_base == (10 : stdgo.GoInt)) : Bool)) {
            return (_dst.__append__(...(_small((_i : stdgo.GoInt)) : Array<stdgo.GoUInt8>)));
        };
        {
            var __tmp__ = _formatBits(_dst, _i, _base, false, true);
            _dst = __tmp__._0;
        };
        return _dst;
    }
function _small(_i:stdgo.GoInt):stdgo.GoString {
        if ((_i < (10 : stdgo.GoInt) : Bool)) {
            return (("0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString).__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return (("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString).__slice__((_i * (2 : stdgo.GoInt) : stdgo.GoInt), ((_i * (2 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
    }
function _formatBits(_dst:stdgo.Slice<stdgo.GoByte>, _u:stdgo.GoUInt64, _base:stdgo.GoInt, _neg:Bool, _append_:Bool):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.GoString; } {
        var _d = (null : stdgo.Slice<stdgo.GoUInt8>), _s = ("" : stdgo.GoString);
        if (((_base < (2 : stdgo.GoInt) : Bool) || (_base > (("0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString).length) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("strconv: illegal AppendInt/FormatInt base" : stdgo.GoString));
        };
        var _a:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(65, 65, ...[for (i in 0 ... 65) (0 : stdgo.GoUInt8)]);
        var _i = (_a.length : stdgo.GoInt);
        if (_neg) {
            _u = -_u;
        };
        if (_base == ((10 : stdgo.GoInt))) {
            if (true) {
                while ((_u >= (1000000000i64 : stdgo.GoUInt64) : Bool)) {
                    var _q = (_u / (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    var _us = ((_u - (_q * (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt);
                    {
                        var _j = (4 : stdgo.GoInt);
                        stdgo.Go.cfor((_j > (0 : stdgo.GoInt) : Bool), _j--, {
                            var _is = ((_us % (100u32 : stdgo.GoUInt) : stdgo.GoUInt) * (2u32 : stdgo.GoUInt) : stdgo.GoUInt);
                            _us = (_us / ((100u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                            _i = (_i - ((2 : stdgo.GoInt)) : stdgo.GoInt);
                            _a[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((_is + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
                            _a[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((_is + (0u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
                        });
                    };
                    _i--;
                    _a[(_i : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[(((_us * (2u32 : stdgo.GoUInt) : stdgo.GoUInt) + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
                    _u = _q;
                };
            };
            var _us = (_u : stdgo.GoUInt);
            while ((_us >= (100u32 : stdgo.GoUInt) : Bool)) {
                var _is = ((_us % (100u32 : stdgo.GoUInt) : stdgo.GoUInt) * (2u32 : stdgo.GoUInt) : stdgo.GoUInt);
                _us = (_us / ((100u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                _i = (_i - ((2 : stdgo.GoInt)) : stdgo.GoInt);
                _a[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((_is + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
                _a[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((_is + (0u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            };
            var _is = (_us * (2u32 : stdgo.GoUInt) : stdgo.GoUInt);
            _i--;
            _a[(_i : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[((_is + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            if ((_us >= (10u32 : stdgo.GoUInt) : Bool)) {
                _i--;
                _a[(_i : stdgo.GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString)[(_is : stdgo.GoInt)];
            };
        } else if (_isPowerOfTwo(_base)) {
            var _shift = ((stdgo._internal.math.bits.Bits.trailingZeros((_base : stdgo.GoUInt)) : stdgo.GoUInt) & (7u32 : stdgo.GoUInt) : stdgo.GoUInt);
            var _b = (_base : stdgo.GoUInt64);
            var _m = ((_base : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            while ((_u >= _b : Bool)) {
                _i--;
                _a[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)[(((_u : stdgo.GoUInt) & _m : stdgo.GoUInt) : stdgo.GoInt)];
                _u = (_u >> (_shift) : stdgo.GoUInt64);
            };
            _i--;
            _a[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)[((_u : stdgo.GoUInt) : stdgo.GoInt)];
        } else {
            var _b = (_base : stdgo.GoUInt64);
            while ((_u >= _b : Bool)) {
                _i--;
                var _q = (_u / _b : stdgo.GoUInt64);
                _a[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)[(((_u - (_q * _b : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt)];
                _u = _q;
            };
            _i--;
            _a[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)[((_u : stdgo.GoUInt) : stdgo.GoInt)];
        };
        if (_neg) {
            _i--;
            _a[(_i : stdgo.GoInt)] = (45 : stdgo.GoUInt8);
        };
        if (_append_) {
            _d = (_dst.__append__(...((_a.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            return { _0 : _d, _1 : _s };
        };
        _s = ((_a.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
        return { _0 : _d, _1 : _s };
    }
function _isPowerOfTwo(_x:stdgo.GoInt):Bool {
        return (_x & ((_x - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) == ((0 : stdgo.GoInt));
    }
function _contains(_s:stdgo.GoString, _c:stdgo.GoByte):Bool {
        return _index(_s?.__copy__(), _c) != ((-1 : stdgo.GoInt));
    }
function _quoteWith(_s:stdgo.GoString, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.GoString {
        return (_appendQuotedWith((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (((3 : stdgo.GoInt) * (_s.length) : stdgo.GoInt) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), _quote, asciionly, _graphicOnly) : stdgo.GoString)?.__copy__();
    }
function _quoteRuneWith(_r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.GoString {
        return (_appendQuotedRuneWith((null : stdgo.Slice<stdgo.GoUInt8>), _r, _quote, asciionly, _graphicOnly) : stdgo.GoString)?.__copy__();
    }
function _appendQuotedWith(_buf:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoByte> {
        if (((_buf.capacity - (_buf.length) : stdgo.GoInt) < (_s.length) : Bool)) {
            var _nBuf = (new stdgo.Slice<stdgo.GoUInt8>((_buf.length : stdgo.GoInt).toBasic(), ((((_buf.length) + (1 : stdgo.GoInt) : stdgo.GoInt) + (_s.length) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            stdgo.Go.copySlice(_nBuf, _buf);
            _buf = _nBuf;
        };
        _buf = (_buf.__append__(_quote));
        {
            var _width = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_s.length) > (0 : stdgo.GoInt) : Bool), _s = (_s.__slice__(_width) : stdgo.GoString)?.__copy__(), {
                var _r = ((_s[(0 : stdgo.GoInt)] : stdgo.GoRune) : stdgo.GoInt32);
                _width = (1 : stdgo.GoInt);
                if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__());
                        _r = __tmp__._0;
                        _width = __tmp__._1;
                    };
                };
                if (((_width == (1 : stdgo.GoInt)) && (_r == (65533 : stdgo.GoInt32)) : Bool)) {
                    _buf = (_buf.__append__(...(("\\x" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[((_s[(0 : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)]));
                    _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[((_s[(0 : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]));
                    continue;
                };
                _buf = _appendEscapedRune(_buf, _r, _quote, asciionly, _graphicOnly);
            });
        };
        _buf = (_buf.__append__(_quote));
        return _buf;
    }
function _appendQuotedRuneWith(_buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoByte> {
        _buf = (_buf.__append__(_quote));
        if (!stdgo._internal.unicode.utf8.Utf8.validRune(_r)) {
            _r = (65533 : stdgo.GoInt32);
        };
        _buf = _appendEscapedRune(_buf, _r, _quote, asciionly, _graphicOnly);
        _buf = (_buf.__append__(_quote));
        return _buf;
    }
function _appendEscapedRune(_buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoByte> {
        var _runeTmp:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
        if (((_r == (_quote : stdgo.GoRune)) || (_r == (92 : stdgo.GoInt32)) : Bool)) {
            _buf = (_buf.__append__((92 : stdgo.GoUInt8)));
            _buf = (_buf.__append__((_r : stdgo.GoByte)));
            return _buf;
        };
        if (asciionly) {
            if (((_r < (128 : stdgo.GoInt32) : Bool) && isPrint(_r) : Bool)) {
                _buf = (_buf.__append__((_r : stdgo.GoByte)));
                return _buf;
            };
        } else if ((isPrint(_r) || (_graphicOnly && _isInGraphicList(_r) : Bool) : Bool)) {
            var _n = (stdgo._internal.unicode.utf8.Utf8.encodeRune((_runeTmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _r) : stdgo.GoInt);
            _buf = (_buf.__append__(...((_runeTmp.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            return _buf;
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _r;
                    if (__value__ == ((7 : stdgo.GoInt32))) {
                        _buf = (_buf.__append__(...(("\\a" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        break;
                    } else if (__value__ == ((8 : stdgo.GoInt32))) {
                        _buf = (_buf.__append__(...(("\\b" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        break;
                    } else if (__value__ == ((12 : stdgo.GoInt32))) {
                        _buf = (_buf.__append__(...(("\\f" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        break;
                    } else if (__value__ == ((10 : stdgo.GoInt32))) {
                        _buf = (_buf.__append__(...(("\\n" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        break;
                    } else if (__value__ == ((13 : stdgo.GoInt32))) {
                        _buf = (_buf.__append__(...(("\\r" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        break;
                    } else if (__value__ == ((9 : stdgo.GoInt32))) {
                        _buf = (_buf.__append__(...(("\\t" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        break;
                    } else if (__value__ == ((11 : stdgo.GoInt32))) {
                        _buf = (_buf.__append__(...(("\\v" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        break;
                    } else {
                        {
                            var __switchIndex__ = -1;
                            var __run__ = true;
                            while (__run__) {
                                __run__ = false;
                                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && ((_r < (32 : stdgo.GoInt32) : Bool) || (_r == (127 : stdgo.GoInt32)) : Bool))) {
                                    _buf = (_buf.__append__(...(("\\x" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                                    _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[(((_r : stdgo.GoByte) >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)]));
                                    _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[(((_r : stdgo.GoByte) & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]));
                                    break;
                                    break;
                                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && !stdgo._internal.unicode.utf8.Utf8.validRune(_r))) {
                                    _r = (65533 : stdgo.GoInt32);
                                    @:fallthrough {
                                        __switchIndex__ = 2;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_r < (65536 : stdgo.GoInt32) : Bool))) {
                                    _buf = (_buf.__append__(...(("\\u" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                                    {
                                        var _s = (12 : stdgo.GoInt);
                                        stdgo.Go.cfor((_s >= (0 : stdgo.GoInt) : Bool), _s = (_s - ((4 : stdgo.GoInt)) : stdgo.GoInt), {
                                            _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[(((_r >> (_s : stdgo.GoUInt) : stdgo.GoInt32) & (15 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]));
                                        });
                                    };
                                    break;
                                    break;
                                } else {
                                    _buf = (_buf.__append__(...(("\\U" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                                    {
                                        var _s = (28 : stdgo.GoInt);
                                        stdgo.Go.cfor((_s >= (0 : stdgo.GoInt) : Bool), _s = (_s - ((4 : stdgo.GoInt)) : stdgo.GoInt), {
                                            _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[(((_r >> (_s : stdgo.GoUInt) : stdgo.GoInt32) & (15 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]));
                                        });
                                    };
                                    break;
                                };
                                break;
                            };
                        };
                    };
                };
                break;
            };
        };
        return _buf;
    }
function quote(_s:stdgo.GoString):stdgo.GoString {
        return _quoteWith(_s?.__copy__(), (34 : stdgo.GoUInt8), false, false)?.__copy__();
    }
function appendQuote(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte> {
        return _appendQuotedWith(_dst, _s?.__copy__(), (34 : stdgo.GoUInt8), false, false);
    }
function quoteToASCII(_s:stdgo.GoString):stdgo.GoString {
        return _quoteWith(_s?.__copy__(), (34 : stdgo.GoUInt8), true, false)?.__copy__();
    }
function appendQuoteToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte> {
        return _appendQuotedWith(_dst, _s?.__copy__(), (34 : stdgo.GoUInt8), true, false);
    }
function quoteToGraphic(_s:stdgo.GoString):stdgo.GoString {
        return _quoteWith(_s?.__copy__(), (34 : stdgo.GoUInt8), false, true)?.__copy__();
    }
function appendQuoteToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte> {
        return _appendQuotedWith(_dst, _s?.__copy__(), (34 : stdgo.GoUInt8), false, true);
    }
function quoteRune(_r:stdgo.GoRune):stdgo.GoString {
        return _quoteRuneWith(_r, (39 : stdgo.GoUInt8), false, false)?.__copy__();
    }
function appendQuoteRune(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte> {
        return _appendQuotedRuneWith(_dst, _r, (39 : stdgo.GoUInt8), false, false);
    }
function quoteRuneToASCII(_r:stdgo.GoRune):stdgo.GoString {
        return _quoteRuneWith(_r, (39 : stdgo.GoUInt8), true, false)?.__copy__();
    }
function appendQuoteRuneToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte> {
        return _appendQuotedRuneWith(_dst, _r, (39 : stdgo.GoUInt8), true, false);
    }
function quoteRuneToGraphic(_r:stdgo.GoRune):stdgo.GoString {
        return _quoteRuneWith(_r, (39 : stdgo.GoUInt8), false, true)?.__copy__();
    }
function appendQuoteRuneToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte> {
        return _appendQuotedRuneWith(_dst, _r, (39 : stdgo.GoUInt8), false, true);
    }
function canBackquote(_s:stdgo.GoString):Bool {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
            _s = (_s.__slice__(_wid) : stdgo.GoString)?.__copy__();
            if ((_wid > (1 : stdgo.GoInt) : Bool)) {
                if (_r == ((65279 : stdgo.GoInt32))) {
                    return false;
                };
                continue;
            };
            if (_r == ((65533 : stdgo.GoInt32))) {
                return false;
            };
            if ((((((_r < (32 : stdgo.GoInt32) : Bool) && (_r != (9 : stdgo.GoInt32)) : Bool)) || _r == ((96 : stdgo.GoInt32)) : Bool) || (_r == (127 : stdgo.GoInt32)) : Bool)) {
                return false;
            };
        };
        return true;
    }
function _unhex(_b:stdgo.GoByte):{ var _0 : stdgo.GoRune; var _1 : Bool; } {
        var _v = (0 : stdgo.GoInt32), _ok = false;
        var _c = ((_b : stdgo.GoRune) : stdgo.GoInt32);
        if ((((48 : stdgo.GoInt32) <= _c : Bool) && (_c <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            return { _0 : (_c - (48 : stdgo.GoInt32) : stdgo.GoInt32), _1 : true };
        } else if ((((97 : stdgo.GoInt32) <= _c : Bool) && (_c <= (102 : stdgo.GoInt32) : Bool) : Bool)) {
            return { _0 : ((_c - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32), _1 : true };
        } else if ((((65 : stdgo.GoInt32) <= _c : Bool) && (_c <= (70 : stdgo.GoInt32) : Bool) : Bool)) {
            return { _0 : ((_c - (65 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32), _1 : true };
        };
        return { _0 : _v, _1 : _ok };
    }
function unquoteChar(_s:stdgo.GoString, _quote:stdgo.GoByte):{ var _0 : stdgo.GoRune; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } {
        var _value = (0 : stdgo.GoInt32), _multibyte = false, _tail = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            _err = errSyntax;
            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
        };
        {
            var _c = (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c == _quote) && (((_quote == (39 : stdgo.GoUInt8)) || (_quote == (34 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                _err = errSyntax;
                return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
            } else if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                return { _0 : _r, _1 : true, _2 : (_s.__slice__(_size) : stdgo.GoString)?.__copy__(), _3 : (null : stdgo.Error) };
            } else if (_c != ((92 : stdgo.GoUInt8))) {
                return { _0 : (_s[(0 : stdgo.GoInt)] : stdgo.GoRune), _1 : false, _2 : (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _3 : (null : stdgo.Error) };
            };
        };
        if (((_s.length) <= (1 : stdgo.GoInt) : Bool)) {
            _err = errSyntax;
            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
        };
        var _c = (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _c;
                    if (__value__ == ((97 : stdgo.GoUInt8))) {
                        _value = (7 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                        _value = (8 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                        _value = (12 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((110 : stdgo.GoUInt8))) {
                        _value = (10 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((114 : stdgo.GoUInt8))) {
                        _value = (13 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((116 : stdgo.GoUInt8))) {
                        _value = (9 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((118 : stdgo.GoUInt8))) {
                        _value = (11 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((120 : stdgo.GoUInt8)) || __value__ == ((117 : stdgo.GoUInt8)) || __value__ == ((85 : stdgo.GoUInt8))) {
                        var _n = (0 : stdgo.GoInt);
                        {
                            final __value__ = _c;
                            if (__value__ == ((120 : stdgo.GoUInt8))) {
                                _n = (2 : stdgo.GoInt);
                            } else if (__value__ == ((117 : stdgo.GoUInt8))) {
                                _n = (4 : stdgo.GoInt);
                            } else if (__value__ == ((85 : stdgo.GoUInt8))) {
                                _n = (8 : stdgo.GoInt);
                            };
                        };
                        var _v:stdgo.GoRune = (0 : stdgo.GoInt32);
                        if (((_s.length) < _n : Bool)) {
                            _err = errSyntax;
                            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                        };
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < _n : Bool), _j++, {
                                var __tmp__ = _unhex(_s[(_j : stdgo.GoInt)]), _x:stdgo.GoInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    _err = errSyntax;
                                    return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                                };
                                _v = ((_v << (4i64 : stdgo.GoUInt64) : stdgo.GoInt32) | _x : stdgo.GoInt32);
                            });
                        };
                        _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
                        if (_c == ((120 : stdgo.GoUInt8))) {
                            _value = _v;
                            break;
                        };
                        if (!stdgo._internal.unicode.utf8.Utf8.validRune(_v)) {
                            _err = errSyntax;
                            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                        };
                        _value = _v;
                        _multibyte = true;
                        break;
                    } else if (__value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8))) {
                        var _v = ((_c : stdgo.GoRune) - (48 : stdgo.GoInt32) : stdgo.GoInt32);
                        if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                            _err = errSyntax;
                            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                        };
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (2 : stdgo.GoInt) : Bool), _j++, {
                                var _x = ((_s[(_j : stdgo.GoInt)] : stdgo.GoRune) - (48 : stdgo.GoInt32) : stdgo.GoInt32);
                                if (((_x < (0 : stdgo.GoInt32) : Bool) || (_x > (7 : stdgo.GoInt32) : Bool) : Bool)) {
                                    _err = errSyntax;
                                    return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                                };
                                _v = (((_v << (3i64 : stdgo.GoUInt64) : stdgo.GoInt32)) | _x : stdgo.GoInt32);
                            });
                        };
                        _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if ((_v > (255 : stdgo.GoInt32) : Bool)) {
                            _err = errSyntax;
                            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                        };
                        _value = _v;
                        break;
                    } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                        _value = (92 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((39 : stdgo.GoUInt8)) || __value__ == ((34 : stdgo.GoUInt8))) {
                        if (_c != (_quote)) {
                            _err = errSyntax;
                            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                        };
                        _value = (_c : stdgo.GoRune);
                        break;
                    } else {
                        _err = errSyntax;
                        return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                    };
                };
                break;
            };
        };
        _tail = _s?.__copy__();
        return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
    }
function quotedPrefix(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var __tmp__ = _unquote(_s?.__copy__(), false), _out:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return { _0 : _out?.__copy__(), _1 : _err };
    }
function unquote(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var __tmp__ = _unquote(_s?.__copy__(), true), _out:stdgo.GoString = __tmp__._0, _rem:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (((_rem.length) > (0 : stdgo.GoInt) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : errSyntax };
        };
        return { _0 : _out?.__copy__(), _1 : _err };
    }
function _unquote(_in:stdgo.GoString, _unescape:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _out = ("" : stdgo.GoString), _rem = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        if (((_in.length) < (2 : stdgo.GoInt) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _in?.__copy__(), _2 : errSyntax };
        };
        var _quote = (_in[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        var _end = (_index((_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _quote) : stdgo.GoInt);
        if ((_end < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _in?.__copy__(), _2 : errSyntax };
        };
        _end = (_end + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _quote;
                    if (__value__ == ((96 : stdgo.GoUInt8))) {
                        if (!_unescape) {
                            _out = (_in.__slice__(0, _end) : stdgo.GoString)?.__copy__();
                        } else if (!_contains((_in.__slice__(0, _end) : stdgo.GoString)?.__copy__(), (13 : stdgo.GoUInt8))) {
                            _out = (_in.__slice__((("`" : stdgo.GoString).length), (_end - (("`" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        } else {
                            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (((_end - (("`" : stdgo.GoString).length) : stdgo.GoInt) - (("\r" : stdgo.GoString).length) : stdgo.GoInt) - (("`" : stdgo.GoString).length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                            {
                                var _i = (("`" : stdgo.GoString).length : stdgo.GoInt);
                                stdgo.Go.cfor((_i < (_end - (("`" : stdgo.GoString).length) : stdgo.GoInt) : Bool), _i++, {
                                    if (_in[(_i : stdgo.GoInt)] != ((13 : stdgo.GoUInt8))) {
                                        _buf = (_buf.__append__(_in[(_i : stdgo.GoInt)]));
                                    };
                                });
                            };
                            _out = (_buf : stdgo.GoString)?.__copy__();
                        };
                        return { _0 : _out?.__copy__(), _1 : (_in.__slice__(_end) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((34 : stdgo.GoUInt8)) || __value__ == ((39 : stdgo.GoUInt8))) {
                        if ((!_contains((_in.__slice__(0, _end) : stdgo.GoString)?.__copy__(), (92 : stdgo.GoUInt8)) && !_contains((_in.__slice__(0, _end) : stdgo.GoString)?.__copy__(), (10 : stdgo.GoUInt8)) : Bool)) {
                            var _valid:Bool = false;
                            {
                                final __value__ = _quote;
                                if (__value__ == ((34 : stdgo.GoUInt8))) {
                                    _valid = stdgo._internal.unicode.utf8.Utf8.validString((_in.__slice__((("\"" : stdgo.GoString).length), (_end - (("\"" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                                } else if (__value__ == ((39 : stdgo.GoUInt8))) {
                                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_in.__slice__((("\'" : stdgo.GoString).length), (_end - (("\'" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                                    _valid = (((((("\'" : stdgo.GoString).length) + _n : stdgo.GoInt) + (("\'" : stdgo.GoString).length) : stdgo.GoInt) == _end) && (((_r != (65533 : stdgo.GoInt32)) || (_n != (1 : stdgo.GoInt)) : Bool)) : Bool);
                                };
                            };
                            if (_valid) {
                                _out = (_in.__slice__(0, _end) : stdgo.GoString)?.__copy__();
                                if (_unescape) {
                                    _out = (_out.__slice__((1 : stdgo.GoInt), (_end - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                };
                                return { _0 : _out?.__copy__(), _1 : (_in.__slice__(_end) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
                            };
                        };
                        var _buf:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        var _in0 = (_in?.__copy__() : stdgo.GoString);
                        _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_unescape) {
                            _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (((3 : stdgo.GoInt) * _end : stdgo.GoInt) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        };
                        while ((((_in.length) > (0 : stdgo.GoInt) : Bool) && (_in[(0 : stdgo.GoInt)] != _quote) : Bool)) {
                            var __tmp__ = unquoteChar(_in?.__copy__(), _quote), _r:stdgo.GoInt32 = __tmp__._0, _multibyte:Bool = __tmp__._1, _rem:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                            if (((_in[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) || (_err != null) : Bool)) {
                                return { _0 : stdgo.Go.str()?.__copy__(), _1 : _in0?.__copy__(), _2 : errSyntax };
                            };
                            _in = _rem?.__copy__();
                            if (_unescape) {
                                if (((_r < (128 : stdgo.GoInt32) : Bool) || !_multibyte : Bool)) {
                                    _buf = (_buf.__append__((_r : stdgo.GoByte)));
                                } else {
                                    var _arr:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
                                    var _n = (stdgo._internal.unicode.utf8.Utf8.encodeRune((_arr.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _r) : stdgo.GoInt);
                                    _buf = (_buf.__append__(...((_arr.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                                };
                            };
                            if (_quote == ((39 : stdgo.GoUInt8))) {
                                break;
                            };
                        };
                        if (!((((_in.length) > (0 : stdgo.GoInt) : Bool) && (_in[(0 : stdgo.GoInt)] == _quote) : Bool))) {
                            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _in0?.__copy__(), _2 : errSyntax };
                        };
                        _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_unescape) {
                            return { _0 : (_buf : stdgo.GoString)?.__copy__(), _1 : _in?.__copy__(), _2 : (null : stdgo.Error) };
                        };
                        return { _0 : (_in0.__slice__(0, ((_in0.length) - (_in.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : _in?.__copy__(), _2 : (null : stdgo.Error) };
                        break;
                    } else {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : _in?.__copy__(), _2 : errSyntax };
                    };
                };
                break;
            };
            return { _0 : _out, _1 : _rem, _2 : _err };
        };
    }
function _bsearch16(_a:stdgo.Slice<stdgo.GoUInt16>, _x:stdgo.GoUInt16):stdgo.GoInt {
        var __0 = (0 : stdgo.GoInt), __1 = (_a.length : stdgo.GoInt);
var _j = __1, _i = __0;
        while ((_i < _j : Bool)) {
            var _h = (_i + (((_j - _i : stdgo.GoInt)) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
            if ((_a[(_h : stdgo.GoInt)] < _x : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        return _i;
    }
function _bsearch32(_a:stdgo.Slice<stdgo.GoUInt32>, _x:stdgo.GoUInt32):stdgo.GoInt {
        var __0 = (0 : stdgo.GoInt), __1 = (_a.length : stdgo.GoInt);
var _j = __1, _i = __0;
        while ((_i < _j : Bool)) {
            var _h = (_i + (((_j - _i : stdgo.GoInt)) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
            if ((_a[(_h : stdgo.GoInt)] < _x : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        return _i;
    }
function isPrint(_r:stdgo.GoRune):Bool {
        if ((_r <= (255 : stdgo.GoInt32) : Bool)) {
            if ((((32 : stdgo.GoInt32) <= _r : Bool) && (_r <= (126 : stdgo.GoInt32) : Bool) : Bool)) {
                return true;
            };
            if ((((161 : stdgo.GoInt32) <= _r : Bool) && (_r <= (255 : stdgo.GoInt32) : Bool) : Bool)) {
                return _r != ((173 : stdgo.GoInt32));
            };
            return false;
        };
        if ((((0 : stdgo.GoInt32) <= _r : Bool) && (_r < (65536 : stdgo.GoInt32) : Bool) : Bool)) {
            var __0 = (_r : stdgo.GoUInt16), __1 = _isPrint16, __2 = _isNotPrint16;
var _isNotPrint = __2, _isPrint = __1, _rr = __0;
            var _i = (_bsearch16(_isPrint, _rr) : stdgo.GoInt);
            if ((((_i >= (_isPrint.length) : Bool) || (_rr < _isPrint[(_i & (((1 : stdgo.GoInt) ^ (-1i32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)] : Bool) : Bool) || (_isPrint[(_i | (1 : stdgo.GoInt) : stdgo.GoInt)] < _rr : Bool) : Bool)) {
                return false;
            };
            var _j = (_bsearch16(_isNotPrint, _rr) : stdgo.GoInt);
            return ((_j >= (_isNotPrint.length) : Bool) || (_isNotPrint[(_j : stdgo.GoInt)] != _rr) : Bool);
        };
        var __0 = (_r : stdgo.GoUInt32), __1 = _isPrint32, __2 = _isNotPrint32;
var _isNotPrint = __2, _isPrint = __1, _rr = __0;
        var _i = (_bsearch32(_isPrint, _rr) : stdgo.GoInt);
        if ((((_i >= (_isPrint.length) : Bool) || (_rr < _isPrint[(_i & (((1 : stdgo.GoInt) ^ (-1i32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)] : Bool) : Bool) || (_isPrint[(_i | (1 : stdgo.GoInt) : stdgo.GoInt)] < _rr : Bool) : Bool)) {
            return false;
        };
        if ((_r >= (131072 : stdgo.GoInt32) : Bool)) {
            return true;
        };
        _r = (_r - ((65536 : stdgo.GoInt32)) : stdgo.GoInt32);
        var _j = (_bsearch16(_isNotPrint, (_r : stdgo.GoUInt16)) : stdgo.GoInt);
        return ((_j >= (_isNotPrint.length) : Bool) || (_isNotPrint[(_j : stdgo.GoInt)] != (_r : stdgo.GoUInt16)) : Bool);
    }
function isGraphic(_r:stdgo.GoRune):Bool {
        if (isPrint(_r)) {
            return true;
        };
        return _isInGraphicList(_r);
    }
function _isInGraphicList(_r:stdgo.GoRune):Bool {
        if ((_r > (65535 : stdgo.GoInt32) : Bool)) {
            return false;
        };
        var _rr = (_r : stdgo.GoUInt16);
        var _i = (_bsearch16(_isGraphic, _rr) : stdgo.GoInt);
        return ((_i < (_isGraphic.length) : Bool) && (_rr == _isGraphic[(_i : stdgo.GoInt)]) : Bool);
    }
class NumError_asInterface {
    @:keep
    public dynamic function unwrap():stdgo.Error return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<NumError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strconv.Strconv.NumError_asInterface) class NumError_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.Ref<NumError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<NumError> = _e;
        return _e.err;
    }
    @:keep
    static public function error( _e:stdgo.Ref<NumError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<NumError> = _e;
        return ((((((("strconv." : stdgo.GoString) + _e.func?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("parsing " : stdgo.GoString)?.__copy__() : stdgo.GoString) + quote(_e.num?.__copy__())?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
class T_decimal_asInterface {
    @:keep
    public dynamic function roundedInteger():stdgo.GoUInt64 return __self__.value.roundedInteger();
    @:keep
    public dynamic function roundUp(_nd:stdgo.GoInt):Void __self__.value.roundUp(_nd);
    @:keep
    public dynamic function roundDown(_nd:stdgo.GoInt):Void __self__.value.roundDown(_nd);
    @:keep
    public dynamic function round(_nd:stdgo.GoInt):Void __self__.value.round(_nd);
    @:keep
    public dynamic function shift(_k:stdgo.GoInt):Void __self__.value.shift(_k);
    @:keep
    public dynamic function assign(_v:stdgo.GoUInt64):Void __self__.value.assign(_v);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function _floatBits(_flt:stdgo.Ref<T_floatInfo>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } return __self__.value._floatBits(_flt);
    @:keep
    public dynamic function _set(_s:stdgo.GoString):Bool return __self__.value._set(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_decimal>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strconv.Strconv.T_decimal_asInterface) class T_decimal_static_extension {
    @:keep
    static public function roundedInteger( _a:stdgo.Ref<T_decimal>):stdgo.GoUInt64 {
        @:recv var _a:stdgo.Ref<T_decimal> = _a;
        if ((_a._dp > (20 : stdgo.GoInt) : Bool)) {
            return (-1i64 : stdgo.GoUInt64);
        };
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        {
            _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_i < _a._dp : Bool) && (_i < _a._nd : Bool) : Bool), _i++, {
                _n = ((_n * (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + ((_a._d[(_i : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) : stdgo.GoUInt64);
            });
        };
        stdgo.Go.cfor((_i < _a._dp : Bool), _i++, {
            _n = (_n * ((10i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        });
        if (_shouldRoundUp(_a, _a._dp)) {
            _n++;
        };
        return _n;
    }
    @:keep
    static public function roundUp( _a:stdgo.Ref<T_decimal>, _nd:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<T_decimal> = _a;
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= _a._nd : Bool) : Bool)) {
            return;
        };
        {
            var _i = (_nd - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                var _c = (_a._d[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_c < (57 : stdgo.GoUInt8) : Bool)) {
                    _a._d[(_i : stdgo.GoInt)]++;
                    _a._nd = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    return;
                };
            });
        };
        _a._d[(0 : stdgo.GoInt)] = (49 : stdgo.GoUInt8);
        _a._nd = (1 : stdgo.GoInt);
        _a._dp++;
    }
    @:keep
    static public function roundDown( _a:stdgo.Ref<T_decimal>, _nd:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<T_decimal> = _a;
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= _a._nd : Bool) : Bool)) {
            return;
        };
        _a._nd = _nd;
        _trim(_a);
    }
    @:keep
    static public function round( _a:stdgo.Ref<T_decimal>, _nd:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<T_decimal> = _a;
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= _a._nd : Bool) : Bool)) {
            return;
        };
        if (_shouldRoundUp(_a, _nd)) {
            _a.roundUp(_nd);
        } else {
            _a.roundDown(_nd);
        };
    }
    @:keep
    static public function shift( _a:stdgo.Ref<T_decimal>, _k:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<T_decimal> = _a;
        if (_a._nd == ((0 : stdgo.GoInt))) {} else if ((_k > (0 : stdgo.GoInt) : Bool)) {
            while ((_k > (28 : stdgo.GoInt) : Bool)) {
                _leftShift(_a, (28u32 : stdgo.GoUInt));
                _k = (_k - ((28 : stdgo.GoInt)) : stdgo.GoInt);
            };
            _leftShift(_a, (_k : stdgo.GoUInt));
        } else if ((_k < (0 : stdgo.GoInt) : Bool)) {
            while ((_k < (-28 : stdgo.GoInt) : Bool)) {
                _rightShift(_a, (28u32 : stdgo.GoUInt));
                _k = (_k + ((28 : stdgo.GoInt)) : stdgo.GoInt);
            };
            _rightShift(_a, (-_k : stdgo.GoUInt));
        };
    }
    @:keep
    static public function assign( _a:stdgo.Ref<T_decimal>, _v:stdgo.GoUInt64):Void {
        @:recv var _a:stdgo.Ref<T_decimal> = _a;
        var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(24, 24, ...[for (i in 0 ... 24) (0 : stdgo.GoUInt8)]);
        var _n = (0 : stdgo.GoInt);
        while ((_v > (0i64 : stdgo.GoUInt64) : Bool)) {
            var _v1 = (_v / (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _v = (_v - (((10i64 : stdgo.GoUInt64) * _v1 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _buf[(_n : stdgo.GoInt)] = ((_v + (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _n++;
            _v = _v1;
        };
        _a._nd = (0 : stdgo.GoInt);
        {
            _n--;
            stdgo.Go.cfor((_n >= (0 : stdgo.GoInt) : Bool), _n--, {
                _a._d[(_a._nd : stdgo.GoInt)] = _buf[(_n : stdgo.GoInt)];
                _a._nd++;
            });
        };
        _a._dp = _a._nd;
        _trim(_a);
    }
    @:keep
    static public function string( _a:stdgo.Ref<T_decimal>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<T_decimal> = _a;
        var _n = ((10 : stdgo.GoInt) + _a._nd : stdgo.GoInt);
        if ((_a._dp > (0 : stdgo.GoInt) : Bool)) {
            _n = (_n + (_a._dp) : stdgo.GoInt);
        };
        if ((_a._dp < (0 : stdgo.GoInt) : Bool)) {
            _n = (_n + (-_a._dp) : stdgo.GoInt);
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _w = (0 : stdgo.GoInt);
        if (_a._nd == ((0 : stdgo.GoInt))) {
            return ("0" : stdgo.GoString);
        } else if ((_a._dp <= (0 : stdgo.GoInt) : Bool)) {
            _buf[(_w : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
            _w++;
            _buf[(_w : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
            _w++;
            _w = (_w + (_digitZero((_buf.__slice__(_w, (_w + -_a._dp : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _w = (_w + (stdgo.Go.copySlice((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>), (_a._d.__slice__((0 : stdgo.GoInt), _a._nd) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        } else if ((_a._dp < _a._nd : Bool)) {
            _w = (_w + (stdgo.Go.copySlice((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>), (_a._d.__slice__((0 : stdgo.GoInt), _a._dp) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _buf[(_w : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
            _w++;
            _w = (_w + (stdgo.Go.copySlice((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>), (_a._d.__slice__(_a._dp, _a._nd) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        } else {
            _w = (_w + (stdgo.Go.copySlice((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>), (_a._d.__slice__((0 : stdgo.GoInt), _a._nd) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _w = (_w + (_digitZero((_buf.__slice__(_w, ((_w + _a._dp : stdgo.GoInt) - _a._nd : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        };
        return ((_buf.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _floatBits( _d:stdgo.Ref<T_decimal>, _flt:stdgo.Ref<T_floatInfo>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _d:stdgo.Ref<T_decimal> = _d;
            var _b = (0 : stdgo.GoUInt64), _overflow = false;
            var _exp:stdgo.GoInt = (0 : stdgo.GoInt);
            var _mant:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            if (_d._nd == ((0 : stdgo.GoInt))) {
                _mant = (0i64 : stdgo.GoUInt64);
                _exp = _flt._bias;
                @:goto "out";
            };
            if ((_d._dp > (310 : stdgo.GoInt) : Bool)) {
                @:goto "overflow";
            };
            if ((_d._dp < (-330 : stdgo.GoInt) : Bool)) {
                _mant = (0i64 : stdgo.GoUInt64);
                _exp = _flt._bias;
                @:goto "out";
            };
            _exp = (0 : stdgo.GoInt);
            while ((_d._dp > (0 : stdgo.GoInt) : Bool)) {
                var _n:stdgo.GoInt = (0 : stdgo.GoInt);
                if ((_d._dp >= (_powtab.length) : Bool)) {
                    _n = (27 : stdgo.GoInt);
                } else {
                    _n = _powtab[(_d._dp : stdgo.GoInt)];
                };
                _d.shift(-_n);
                _exp = (_exp + (_n) : stdgo.GoInt);
            };
            while (((_d._dp < (0 : stdgo.GoInt) : Bool) || (_d._dp == ((0 : stdgo.GoInt)) && (_d._d[(0 : stdgo.GoInt)] < (53 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                var _n:stdgo.GoInt = (0 : stdgo.GoInt);
                if ((-_d._dp >= (_powtab.length) : Bool)) {
                    _n = (27 : stdgo.GoInt);
                } else {
                    _n = _powtab[(-_d._dp : stdgo.GoInt)];
                };
                _d.shift(_n);
                _exp = (_exp - (_n) : stdgo.GoInt);
            };
            _exp--;
            if ((_exp < (_flt._bias + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                var _n = ((_flt._bias + (1 : stdgo.GoInt) : stdgo.GoInt) - _exp : stdgo.GoInt);
                _d.shift(-_n);
                _exp = (_exp + (_n) : stdgo.GoInt);
            };
            if (((_exp - _flt._bias : stdgo.GoInt) >= (((1 : stdgo.GoInt) << _flt._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                @:goto "overflow";
            };
            _d.shift((((1u32 : stdgo.GoUInt) + _flt._mantbits : stdgo.GoUInt) : stdgo.GoInt));
            _mant = _d.roundedInteger();
            if (_mant == (((2i64 : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64))) {
                _mant = (_mant >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _exp++;
                if (((_exp - _flt._bias : stdgo.GoInt) >= (((1 : stdgo.GoInt) << _flt._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    @:goto "overflow";
                };
            };
            if ((_mant & (((1i64 : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64)) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
                _exp = _flt._bias;
            };
            @:goto "out";
            @:label("overflow") _mant = (0i64 : stdgo.GoUInt64);
            _exp = ((((1 : stdgo.GoInt) << _flt._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) + _flt._bias : stdgo.GoInt);
            _overflow = true;
            @:label("out") var _bits = (_mant & ((((1i64 : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _bits = (_bits | ((((((_exp - _flt._bias : stdgo.GoInt)) & ((((1 : stdgo.GoInt) << _flt._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
            if (_d._neg) {
                _bits = (_bits | ((((1i64 : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64) << _flt._expbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
            return { _0 : _bits, _1 : _overflow };
        });
        throw "controlFlow did not return";
    }
    @:keep
    static public function _set( _b:stdgo.Ref<T_decimal>, _s:stdgo.GoString):Bool {
        @:recv var _b:stdgo.Ref<T_decimal> = _b;
        var _ok = false;
        var _i = (0 : stdgo.GoInt);
        _b._neg = false;
        _b._trunc = false;
        if ((_i >= (_s.length) : Bool)) {
            return _ok;
        };
        if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
            _i++;
        } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _b._neg = true;
            _i++;
        };
        var _sawdot = (false : Bool);
        var _sawdigits = (false : Bool);
        stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
            if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                continue;
            } else if (_s[(_i : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                if (_sawdot) {
                    return _ok;
                };
                _sawdot = true;
                _b._dp = _b._nd;
                continue;
            } else if ((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _sawdigits = true;
                if (((_s[(_i : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) && (_b._nd == (0 : stdgo.GoInt)) : Bool)) {
                    _b._dp--;
                    continue;
                };
                if ((_b._nd < (_b._d.length) : Bool)) {
                    _b._d[(_b._nd : stdgo.GoInt)] = _s[(_i : stdgo.GoInt)];
                    _b._nd++;
                } else if (_s[(_i : stdgo.GoInt)] != ((48 : stdgo.GoUInt8))) {
                    _b._trunc = true;
                };
                continue;
            };
            break;
        });
        if (!_sawdigits) {
            return _ok;
        };
        if (!_sawdot) {
            _b._dp = _b._nd;
        };
        if (((_i < (_s.length) : Bool) && (_lower(_s[(_i : stdgo.GoInt)]) == (101 : stdgo.GoUInt8)) : Bool)) {
            _i++;
            if ((_i >= (_s.length) : Bool)) {
                return _ok;
            };
            var _esign = (1 : stdgo.GoInt);
            if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                _i++;
            } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                _i++;
                _esign = (-1 : stdgo.GoInt);
            };
            if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                return _ok;
            };
            var _e = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool), _i++, {
                if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                    continue;
                };
                if ((_e < (10000 : stdgo.GoInt) : Bool)) {
                    _e = (((_e * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                };
            });
            _b._dp = (_b._dp + ((_e * _esign : stdgo.GoInt)) : stdgo.GoInt);
        };
        if (_i != ((_s.length))) {
            return _ok;
        };
        _ok = true;
        return _ok;
    }
}
