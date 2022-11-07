package stdgo.strconv;

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
	// Package strconv implements conversions to and from string representations
	// of basic data types.
	//
	// # Numeric Conversions
	//
	// The most common numeric conversions are Atoi (string to int) and Itoa (int to string).
	//
	//	i, err := strconv.Atoi("-42")
	//	s := strconv.Itoa(-42)
	//
	// These assume decimal and the Go int type.
	//
	// ParseBool, ParseFloat, ParseInt, and ParseUint convert strings to values:
	//
	//	b, err := strconv.ParseBool("true")
	//	f, err := strconv.ParseFloat("3.1415", 64)
	//	i, err := strconv.ParseInt("-42", 10, 64)
	//	u, err := strconv.ParseUint("42", 10, 64)
	//
	// The parse functions return the widest type (float64, int64, and uint64),
	// but if the size argument specifies a narrower width the result can be
	// converted to that narrower type without data loss:
	//
	//	s := "2147483647" // biggest int32
	//	i64, err := strconv.ParseInt(s, 10, 32)
	//	...
	//	i := int32(i64)
	//
	// FormatBool, FormatFloat, FormatInt, and FormatUint convert values to strings:
	//
	//	s := strconv.FormatBool(true)
	//	s := strconv.FormatFloat(3.1415, 'E', -1, 64)
	//	s := strconv.FormatInt(-42, 16)
	//	s := strconv.FormatUint(42, 16)
	//
	// AppendBool, AppendFloat, AppendInt, and AppendUint are similar but
	// append the formatted value to a destination slice.
	//
	// # String Conversions
	//
	// Quote and QuoteToASCII convert strings to quoted Go string literals.
	// The latter guarantees that the result is an ASCII string, by escaping
	// any non-ASCII Unicode with \u:
	//
	//	q := strconv.Quote("Hello, 世界")
	//	q := strconv.QuoteToASCII("Hello, 世界")
	//
	// QuoteRune and QuoteRuneToASCII are similar but accept runes and
	// return quoted Go rune literals.
	//
	// Unquote and UnquoteChar unquote Go string and rune literals.
**/
private var __go2hxdoc__package:Bool;

/**
	// set to false to force slow-path conversions for testing
**/
private var _optimize:InvalidType = true;

/**
	// decimal power of ten to binary power of two.
**/
private var _powtab:Slice<GoInt> = (new Slice<GoInt>(0, 0, (1 : GoInt), (3 : GoInt), (6 : GoInt), (9 : GoInt), (13 : GoInt), (16 : GoInt), (19 : GoInt),
	(23 : GoInt), (26 : GoInt)) : Slice<GoInt>);

/**
	// Exact powers of 10.
**/
private var _float64pow10:Slice<GoFloat64> = (new Slice<GoFloat64>(0, 0, (1 : GoFloat64), (10 : GoFloat64), (100 : GoFloat64), (1000 : GoFloat64),
	(10000 : GoFloat64), (100000 : GoFloat64), (1e+06 : GoFloat64), (1e+07 : GoFloat64), (1e+08 : GoFloat64), (1e+09 : GoFloat64), (1e+10 : GoFloat64),
	(1e+11 : GoFloat64), (1e+12 : GoFloat64), (1e+13 : GoFloat64), (1e+14 : GoFloat64), (1e+15 : GoFloat64), (1e+16 : GoFloat64), (1e+17 : GoFloat64),
	(1e+18 : GoFloat64), (1e+19 : GoFloat64), (1e+20 : GoFloat64), (1e+21 : GoFloat64), (1e+22 : GoFloat64)) : Slice<GoFloat64>);

private var _float32pow10:Slice<GoFloat32> = (new Slice<GoFloat32>(0, 0, (1 : GoFloat64), (10 : GoFloat64), (100 : GoFloat64), (1000 : GoFloat64),
	(10000 : GoFloat64), (100000 : GoFloat64), (1e+06 : GoFloat64), (1e+07 : GoFloat64), (1e+08 : GoFloat64), (1e+09 : GoFloat64),
	(1e+10 : GoFloat64)) : Slice<GoFloat32>);

/**
	// ErrRange indicates that a value is out of range for the target type.
**/
var errRange:Error = stdgo.errors.Errors.new_(Go.str("value out of range"));

/**
	// ErrSyntax indicates that a value does not have the right syntax for the target type.
**/
var errSyntax:Error = stdgo.errors.Errors.new_(Go.str("invalid syntax"));

private var _leftcheats:Slice<T_leftCheat> = (new Slice<T_leftCheat>(0, 0, (new T_leftCheat((0 : GoInt), Go.str()) : T_leftCheat),
	(new T_leftCheat((1 : GoInt), Go.str("5")) : T_leftCheat), (new T_leftCheat((1 : GoInt), Go.str("25")) : T_leftCheat),
	(new T_leftCheat((1 : GoInt), Go.str("125")) : T_leftCheat), (new T_leftCheat((2 : GoInt), Go.str("625")) : T_leftCheat),
	(new T_leftCheat((2 : GoInt), Go.str("3125")) : T_leftCheat), (new T_leftCheat((2 : GoInt), Go.str("15625")) : T_leftCheat),
	(new T_leftCheat((3 : GoInt), Go.str("78125")) : T_leftCheat), (new T_leftCheat((3 : GoInt), Go.str("390625")) : T_leftCheat),
	(new T_leftCheat((3 : GoInt), Go.str("1953125")) : T_leftCheat), (new T_leftCheat((4 : GoInt), Go.str("9765625")) : T_leftCheat),
	(new T_leftCheat((4 : GoInt), Go.str("48828125")) : T_leftCheat), (new T_leftCheat((4 : GoInt), Go.str("244140625")) : T_leftCheat),
	(new T_leftCheat((4 : GoInt), Go.str("1220703125")) : T_leftCheat), (new T_leftCheat((5 : GoInt), Go.str("6103515625")) : T_leftCheat),
	(new T_leftCheat((5 : GoInt), Go.str("30517578125")) : T_leftCheat), (new T_leftCheat((5 : GoInt), Go.str("152587890625")) : T_leftCheat),
	(new T_leftCheat((6 : GoInt), Go.str("762939453125")) : T_leftCheat), (new T_leftCheat((6 : GoInt), Go.str("3814697265625")) : T_leftCheat),
	(new T_leftCheat((6 : GoInt), Go.str("19073486328125")) : T_leftCheat), (new T_leftCheat((7 : GoInt), Go.str("95367431640625")) : T_leftCheat),
	(new T_leftCheat((7 : GoInt), Go.str("476837158203125")) : T_leftCheat), (new T_leftCheat((7 : GoInt), Go.str("2384185791015625")) : T_leftCheat),
	(new T_leftCheat((7 : GoInt), Go.str("11920928955078125")) : T_leftCheat), (new T_leftCheat((8 : GoInt), Go.str("59604644775390625")) : T_leftCheat),
	(new T_leftCheat((8 : GoInt), Go.str("298023223876953125")) : T_leftCheat), (new T_leftCheat((8 : GoInt), Go.str("1490116119384765625")) : T_leftCheat),
	(new T_leftCheat((9 : GoInt), Go.str("7450580596923828125")) : T_leftCheat), (new T_leftCheat((9 : GoInt), Go.str("37252902984619140625")) : T_leftCheat),
	(new T_leftCheat((9 : GoInt), Go.str("186264514923095703125")) : T_leftCheat),
	(new T_leftCheat((10 : GoInt), Go.str("931322574615478515625")) : T_leftCheat),
	(new T_leftCheat((10 : GoInt), Go.str("4656612873077392578125")) : T_leftCheat),
	(new T_leftCheat((10 : GoInt), Go.str("23283064365386962890625")) : T_leftCheat),
	(new T_leftCheat((10 : GoInt), Go.str("116415321826934814453125")) : T_leftCheat),
	(new T_leftCheat((11 : GoInt), Go.str("582076609134674072265625")) : T_leftCheat),
	(new T_leftCheat((11 : GoInt), Go.str("2910383045673370361328125")) : T_leftCheat),
	(new T_leftCheat((11 : GoInt), Go.str("14551915228366851806640625")) : T_leftCheat),
	(new T_leftCheat((12 : GoInt), Go.str("72759576141834259033203125")) : T_leftCheat),
	(new T_leftCheat((12 : GoInt), Go.str("363797880709171295166015625")) : T_leftCheat),
	(new T_leftCheat((12 : GoInt), Go.str("1818989403545856475830078125")) : T_leftCheat),
	(new T_leftCheat((13 : GoInt), Go.str("9094947017729282379150390625")) : T_leftCheat),
	(new T_leftCheat((13 : GoInt), Go.str("45474735088646411895751953125")) : T_leftCheat),
	(new T_leftCheat((13 : GoInt), Go.str("227373675443232059478759765625")) : T_leftCheat),
	(new T_leftCheat((13 : GoInt), Go.str("1136868377216160297393798828125")) : T_leftCheat),
	(new T_leftCheat((14 : GoInt), Go.str("5684341886080801486968994140625")) : T_leftCheat),
	(new T_leftCheat((14 : GoInt), Go.str("28421709430404007434844970703125")) : T_leftCheat),
	(new T_leftCheat((14 : GoInt), Go.str("142108547152020037174224853515625")) : T_leftCheat),
	(new T_leftCheat((15 : GoInt), Go.str("710542735760100185871124267578125")) : T_leftCheat),
	(new T_leftCheat((15 : GoInt), Go.str("3552713678800500929355621337890625")) : T_leftCheat),
	(new T_leftCheat((15 : GoInt), Go.str("17763568394002504646778106689453125")) : T_leftCheat),
	(new T_leftCheat((16 : GoInt), Go.str("88817841970012523233890533447265625")) : T_leftCheat),
	(new T_leftCheat((16 : GoInt), Go.str("444089209850062616169452667236328125")) : T_leftCheat),
	(new T_leftCheat((16 : GoInt), Go.str("2220446049250313080847263336181640625")) : T_leftCheat),
	(new T_leftCheat((16 : GoInt), Go.str("11102230246251565404236316680908203125")) : T_leftCheat),
	(new T_leftCheat((17 : GoInt), Go.str("55511151231257827021181583404541015625")) : T_leftCheat),
	(new T_leftCheat((17 : GoInt), Go.str("277555756156289135105907917022705078125")) : T_leftCheat),
	(new T_leftCheat((17 : GoInt), Go.str("1387778780781445675529539585113525390625")) : T_leftCheat),
	(new T_leftCheat((18 : GoInt), Go.str("6938893903907228377647697925567626953125")) : T_leftCheat),
	(new T_leftCheat((18 : GoInt), Go.str("34694469519536141888238489627838134765625")) : T_leftCheat),
	(new T_leftCheat((18 : GoInt), Go.str("173472347597680709441192448139190673828125")) : T_leftCheat),
	(new T_leftCheat((19 : GoInt), Go.str("867361737988403547205962240695953369140625")) : T_leftCheat)) : Slice<T_leftCheat>);

/**
	// detailedPowersOfTen contains 128-bit mantissa approximations (rounded down)
	// to the powers of 10. For example:
	//
	//   - 1e43 ≈ (0xE596B7B0_C643C719                   * (2 ** 79))
	//   - 1e43 = (0xE596B7B0_C643C719_6D9CCD05_D0000000 * (2 ** 15))
	//
	// The mantissas are explicitly listed. The exponents are implied by a linear
	// expression with slope 217706.0/65536.0 ≈ log(10)/log(2).
	//
	// The table was generated by
	// https://github.com/google/wuffs/blob/ba3818cb6b473a2ed0b38ecfc07dbbd3a97e8ae7/script/print-mpb-powers-of-10.go
**/
private var _detailedPowersOfTen:GoArray<GoArray<GoUInt64>> = (new GoArray<GoArray<GoUInt64>>((new GoArray<GoUInt64>(("1671618768450675795" : GoUInt64),
	("18054884314459144840" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1044761730281672372" : GoUInt64), ("11284302696536965525" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5917638181279478369" : GoUInt64), ("14105378370671206906" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16620419763454123769" : GoUInt64), ("17631722963339008632" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10387762352158827356" : GoUInt64), ("11019826852086880395" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8373016921771146291" : GoUInt64), ("13774783565108600494" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1242899115359157055" : GoUInt64), ("17218479456385750618" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5388497965526861063" : GoUInt64), ("10761549660241094136" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6735622456908576329" : GoUInt64), ("13451937075301367670" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17642900107990496220" : GoUInt64), ("16814921344126709587" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8720969558280366185" : GoUInt64), ("10509325840079193492" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10901211947850457732" : GoUInt64), ("13136657300098991865" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18238200953240460069" : GoUInt64), ("16420821625123739831" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18316404623416369399" : GoUInt64), ("10263013515702337394" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13672133742415685941" : GoUInt64), ("12828766894627921743" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12478481159592219522" : GoUInt64), ("16035958618284902179" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5493207715531443249" : GoUInt64), ("10022474136428063862" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16089881681269079869" : GoUInt64), ("12528092670535079827" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15500666083158961933" : GoUInt64), ("15660115838168849784" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9687916301974351208" : GoUInt64), ("9787572398855531115" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7498209359040551106" : GoUInt64), ("12234465498569413894" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("149389661945913074" : GoUInt64), ("15293081873211767368" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("93368538716195671" : GoUInt64), ("9558176170757354605" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4728396691822632493" : GoUInt64), ("11947720213446693256" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5910495864778290617" : GoUInt64), ("14934650266808366570" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8305745933913819539" : GoUInt64), ("9334156416755229106" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1158810380537498616" : GoUInt64), ("11667695520944036383" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15283571030954036982" : GoUInt64), ("14584619401180045478" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9881091751837770420" : GoUInt64), ("18230774251475056848" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6175682344898606512" : GoUInt64), ("11394233907171910530" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16942974967978033949" : GoUInt64), ("14242792383964888162" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11955346673117766628" : GoUInt64), ("17803490479956110203" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5166248661484910190" : GoUInt64), ("11127181549972568877" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11069496845283525642" : GoUInt64), ("13908976937465711096" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13836871056604407053" : GoUInt64), ("17386221171832138870" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4036358391950366504" : GoUInt64), ("10866388232395086794" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14268820026792733938" : GoUInt64), ("13582985290493858492" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17836025033490917422" : GoUInt64), ("16978731613117323115" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8841672636718129437" : GoUInt64), ("10611707258198326947" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6440404777470273892" : GoUInt64), ("13264634072747908684" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8050505971837842365" : GoUInt64), ("16580792590934885855" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11949095260039733334" : GoUInt64), ("10362995369334303659" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10324683056622278764" : GoUInt64), ("12953744211667879574" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3682481783923072647" : GoUInt64), ("16192180264584849468" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11524923151806696212" : GoUInt64), ("10120112665365530917" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("571095884476206553" : GoUInt64), ("12650140831706913647" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14548927910877421904" : GoUInt64), ("15812676039633642058" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13704765962725776594" : GoUInt64), ("9882922524771026286" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7907585416552444934" : GoUInt64), ("12353653155963782858" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("661109733835780360" : GoUInt64), ("15442066444954728573" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2719036592861056677" : GoUInt64), ("9651291528096705358" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12622167777931096654" : GoUInt64), ("12064114410120881697" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1942651667131707105" : GoUInt64), ("15080143012651102122" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5825843310384704845" : GoUInt64), ("9425089382906938826" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16505676174835656864" : GoUInt64), ("11781361728633673532" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2185351144835019464" : GoUInt64), ("14726702160792091916" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2731688931043774330" : GoUInt64), ("18408377700990114895" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8624834609543440812" : GoUInt64), ("11505236063118821809" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15392729280356688919" : GoUInt64), ("14381545078898527261" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5405853545163697437" : GoUInt64), ("17976931348623159077" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5684501474941004850" : GoUInt64), ("11235582092889474423" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2493940825248868159" : GoUInt64), ("14044477616111843029" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7729112049988473103" : GoUInt64), ("17555597020139803786" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9442381049670183593" : GoUInt64), ("10972248137587377366" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2579604275232953683" : GoUInt64), ("13715310171984221708" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3224505344041192104" : GoUInt64), ("17144137714980277135" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8932844867666826921" : GoUInt64), ("10715086071862673209" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15777742103010921555" : GoUInt64), ("13393857589828341511" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15110491610336264040" : GoUInt64), ("16742321987285426889" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2526528228819083169" : GoUInt64), ("10463951242053391806" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12381532322878629770" : GoUInt64), ("13079939052566739757" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1641857348316123500" : GoUInt64), ("16349923815708424697" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12555375888766046947" : GoUInt64), ("10218702384817765435" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11082533842530170780" : GoUInt64), ("12773377981022206794" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4629795266307937667" : GoUInt64), ("15966722476277758493" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5199465050656154994" : GoUInt64), ("9979201547673599058" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15722703350174969551" : GoUInt64), ("12474001934591998822" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10430007150863936130" : GoUInt64), ("15592502418239998528" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6518754469289960081" : GoUInt64), ("9745314011399999080" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8148443086612450102" : GoUInt64), ("12181642514249998850" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("962181821410786819" : GoUInt64), ("15227053142812498563" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16742264702877599426" : GoUInt64), ("9516908214257811601" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7092772823314835570" : GoUInt64), ("11896135267822264502" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18089338065998320271" : GoUInt64), ("14870169084777830627" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8999993282035256217" : GoUInt64), ("9293855677986144142" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2026619565689294464" : GoUInt64), ("11617319597482680178" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11756646493966393888" : GoUInt64), ("14521649496853350222" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5472436080603216552" : GoUInt64), ("18152061871066687778" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8031958568804398249" : GoUInt64), ("11345038669416679861" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14651634229432885715" : GoUInt64), ("14181298336770849826" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9091170749936331336" : GoUInt64), ("17726622920963562283" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3376138709496513133" : GoUInt64), ("11079139325602226427" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18055231442152805128" : GoUInt64), ("13848924157002783033" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8733981247408842698" : GoUInt64), ("17311155196253478792" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5458738279630526686" : GoUInt64), ("10819471997658424245" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11435108867965546262" : GoUInt64), ("13524339997073030306" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5070514048102157020" : GoUInt64), ("16905424996341287883" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("863228270850154185" : GoUInt64), ("10565890622713304927" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14914093393844856443" : GoUInt64), ("13207363278391631158" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9419244705451294746" : GoUInt64), ("16509204097989538948" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15110399977761835024" : GoUInt64), ("10318252561243461842" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9664627935347517973" : GoUInt64), ("12897815701554327303" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7469098900757009562" : GoUInt64), ("16122269626942909129" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16197401859041600736" : GoUInt64), ("10076418516839318205" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6411694268519837208" : GoUInt64), ("12595523146049147757" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12626303854077184414" : GoUInt64), ("15744403932561434696" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7891439908798240259" : GoUInt64), ("9840252457850896685" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14475985904425188227" : GoUInt64), ("12300315572313620856" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18094982380531485284" : GoUInt64), ("15375394465392026070" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6697677969404790399" : GoUInt64), ("9609621540870016294" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17595469498610763806" : GoUInt64), ("12012026926087520367" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17382650854836066854" : GoUInt64), ("15015033657609400459" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8558313775058847832" : GoUInt64), ("9384396036005875287" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6086206200396171886" : GoUInt64), ("11730495045007344109" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12219443768922602761" : GoUInt64), ("14663118806259180136" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15274304711153253452" : GoUInt64), ("18328898507823975170" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14158126462898171311" : GoUInt64), ("11455561567389984481" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3862600023340550427" : GoUInt64), ("14319451959237480602" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14051622066030463842" : GoUInt64), ("17899314949046850752" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8782263791269039901" : GoUInt64), ("11187071843154281720" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10977829739086299876" : GoUInt64), ("13983839803942852150" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4498915137003099037" : GoUInt64), ("17479799754928565188" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12035193997481712706" : GoUInt64), ("10924874846830353242" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5820620459997365075" : GoUInt64), ("13656093558537941553" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11887461593424094248" : GoUInt64), ("17070116948172426941" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9735506505103752857" : GoUInt64), ("10668823092607766838" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2946011094524915263" : GoUInt64), ("13336028865759708548" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3682513868156144079" : GoUInt64), ("16670036082199635685" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4607414176811284001" : GoUInt64), ("10418772551374772303" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1147581702586717097" : GoUInt64), ("13023465689218465379" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15269535183515560084" : GoUInt64), ("16279332111523081723" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7237616480483531100" : GoUInt64), ("10174582569701926077" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13658706619031801779" : GoUInt64), ("12718228212127407596" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17073383273789752224" : GoUInt64), ("15897785265159259495" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17588393573759676996" : GoUInt64), ("9936115790724537184" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3538747893490044629" : GoUInt64), ("12420144738405671481" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9035120885289943691" : GoUInt64), ("15525180923007089351" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12564479580947296663" : GoUInt64), ("9703238076879430844" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15705599476184120828" : GoUInt64), ("12129047596099288555" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15020313326802763131" : GoUInt64), ("15161309495124110694" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4776009810824339053" : GoUInt64), ("9475818434452569184" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5970012263530423816" : GoUInt64), ("11844773043065711480" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7462515329413029771" : GoUInt64), ("14805966303832139350" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("52386062455755702" : GoUInt64), ("9253728939895087094" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9288854614924470436" : GoUInt64), ("11567161174868858867" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6999382250228200141" : GoUInt64), ("14458951468586073584" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8749227812785250177" : GoUInt64), ("18073689335732591980" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14691639419845557168" : GoUInt64), ("11296055834832869987" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13752863256379558556" : GoUInt64), ("14120069793541087484" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17191079070474448196" : GoUInt64), ("17650087241926359355" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8438581409832836170" : GoUInt64), ("11031304526203974597" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15159912780718433117" : GoUInt64), ("13789130657754968246" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9726518939043265588" : GoUInt64), ("17236413322193710308" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15302446373756816800" : GoUInt64), ("10772758326371068942" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9904685930341245193" : GoUInt64), ("13465947907963836178" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3157485376071780683" : GoUInt64), ("16832434884954795223" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8890957387685944783" : GoUInt64), ("10520271803096747014" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1890324697752655170" : GoUInt64), ("13150339753870933768" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2362905872190818963" : GoUInt64), ("16437924692338667210" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6088502188546649756" : GoUInt64), ("10273702932711667006" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16833999772538088003" : GoUInt64), ("12842128665889583757" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7207441660390446292" : GoUInt64), ("16052660832361979697" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16033866083812498692" : GoUInt64), ("10032913020226237310" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10818960567910847557" : GoUInt64), ("12541141275282796638" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4300328673033783639" : GoUInt64), ("15676426594103495798" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16522763475928278486" : GoUInt64), ("9797766621314684873" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6818396289628184396" : GoUInt64), ("12247208276643356092" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8522995362035230495" : GoUInt64), ("15309010345804195115" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3021029092058325107" : GoUInt64), ("9568131466127621947" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17611344420355070096" : GoUInt64), ("11960164332659527433" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8179122470161673908" : GoUInt64), ("14950205415824409292" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14335323580705822000" : GoUInt64), ("9343878384890255807" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13307468457454889596" : GoUInt64), ("11679847981112819759" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12022649553391224092" : GoUInt64), ("14599809976391024699" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10416625923311642211" : GoUInt64), ("18249762470488780874" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11122077220497164286" : GoUInt64), ("11406101544055488046" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4679224488766679549" : GoUInt64), ("14257626930069360058" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15072402647813125244" : GoUInt64), ("17822033662586700072" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9420251654883203278" : GoUInt64), ("11138771039116687545" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16387000587031392001" : GoUInt64), ("13923463798895859431" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15872064715361852097" : GoUInt64), ("17404329748619824289" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3002511419460075705" : GoUInt64), ("10877706092887390181" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8364825292752482535" : GoUInt64), ("13597132616109237726" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1232659579085827361" : GoUInt64), ("16996415770136547158" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14605470292210805812" : GoUInt64), ("10622759856335341973" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4421779809981343554" : GoUInt64), ("13278449820419177467" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("915538744049291538" : GoUInt64), ("16598062275523971834" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5183897733458195115" : GoUInt64), ("10373788922202482396" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6479872166822743894" : GoUInt64), ("12967236152753102995" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3488154190101041964" : GoUInt64), ("16209045190941378744" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2180096368813151227" : GoUInt64), ("10130653244338361715" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16560178516298602746" : GoUInt64), ("12663316555422952143" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16088537126945865529" : GoUInt64), ("15829145694278690179" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7749492695127472003" : GoUInt64), ("9893216058924181362" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("463493832054564196" : GoUInt64), ("12366520073655226703" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14414425345350368957" : GoUInt64), ("15458150092069033378" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13620701859271368502" : GoUInt64), ("9661343807543145861" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3190819268807046916" : GoUInt64), ("12076679759428932327" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17823582141290972357" : GoUInt64), ("15095849699286165408" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11139738838306857723" : GoUInt64), ("9434906062053853380" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13924673547883572154" : GoUInt64), ("11793632577567316725" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3570783879572301480" : GoUInt64), ("14742040721959145907" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18298537904747540562" : GoUInt64), ("18427550902448932383" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18354115218108294707" : GoUInt64), ("11517219314030582739" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18330958004207980480" : GoUInt64), ("14396524142538228424" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4466953431550423984" : GoUInt64), ("17995655178172785531" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("486002885505321038" : GoUInt64), ("11247284486357990957" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5219189625309039202" : GoUInt64), ("14059105607947488696" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6523987031636299002" : GoUInt64), ("17573882009934360870" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17912549950054850588" : GoUInt64), ("10983676256208975543" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17779001419141175331" : GoUInt64), ("13729595320261219429" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8388693718644305452" : GoUInt64), ("17161994150326524287" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12160462601793772764" : GoUInt64), ("10726246343954077679" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10588892233814828051" : GoUInt64), ("13407807929942597099" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8624429273841147159" : GoUInt64), ("16759759912428246374" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("778582277723329070" : GoUInt64), ("10474849945267653984" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("973227847154161338" : GoUInt64), ("13093562431584567480" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1216534808942701673" : GoUInt64), ("16366953039480709350" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14595392310871352257" : GoUInt64), ("10229345649675443343" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13632554370161802418" : GoUInt64), ("12786682062094304179" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12429006944274865118" : GoUInt64), ("15983352577617880224" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7768129340171790699" : GoUInt64), ("9989595361011175140" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9710161675214738374" : GoUInt64), ("12486994201263968925" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16749388112445810871" : GoUInt64), ("15608742751579961156" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1244995533423855986" : GoUInt64), ("9755464219737475723" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15391302472061983695" : GoUInt64), ("12194330274671844653" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5404070034795315907" : GoUInt64), ("15242912843339805817" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14906758817815542202" : GoUInt64), ("9526820527087378635" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14021762503842039848" : GoUInt64), ("11908525658859223294" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8303831092947774002" : GoUInt64), ("14885657073574029118" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("578208414664970847" : GoUInt64), ("9303535670983768199" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14557818573613377271" : GoUInt64), ("11629419588729710248" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18197273217016721589" : GoUInt64), ("14536774485912137810" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13523219484416126178" : GoUInt64), ("18170968107390172263" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15369541205401160717" : GoUInt64), ("11356855067118857664" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("765182433041899281" : GoUInt64), ("14196068833898572081" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5568164059729762005" : GoUInt64), ("17745086042373215101" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5785945546544795205" : GoUInt64), ("11090678776483259438" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16455803970035769814" : GoUInt64), ("13863348470604074297" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6734696907262548556" : GoUInt64), ("17329185588255092872" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4209185567039092847" : GoUInt64), ("10830740992659433045" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9873167977226253963" : GoUInt64), ("13538426240824291306" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3118087934678041646" : GoUInt64), ("16923032801030364133" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4254647968387469981" : GoUInt64), ("10576895500643977583" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("706623942056949572" : GoUInt64), ("13221119375804971979" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14718337982853350677" : GoUInt64), ("16526399219756214973" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11504804248497038125" : GoUInt64), ("10328999512347634358" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5157633273766521849" : GoUInt64), ("12911249390434542948" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6447041592208152311" : GoUInt64), ("16139061738043178685" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6335244004343789146" : GoUInt64), ("10086913586276986678" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17142427042284512241" : GoUInt64), ("12608641982846233347" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16816347784428252397" : GoUInt64), ("15760802478557791684" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1286845328412881940" : GoUInt64), ("9850501549098619803" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15443614715798266137" : GoUInt64), ("12313126936373274753" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5469460339465668959" : GoUInt64), ("15391408670466593442" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8030098730593431003" : GoUInt64), ("9619630419041620901" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14649309431669176658" : GoUInt64), ("12024538023802026126" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9088264752731695015" : GoUInt64), ("15030672529752532658" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10291851488884697288" : GoUInt64), ("9394170331095332911" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8253128342678483706" : GoUInt64), ("11742712913869166139" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5704724409920716729" : GoUInt64), ("14678391142336457674" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16354277549255671720" : GoUInt64), ("18347988927920572092" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("998051431430019017" : GoUInt64), ("11467493079950357558" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10470936326142299579" : GoUInt64), ("14334366349937946947" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8476984389250486570" : GoUInt64), ("17917957937422433684" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14521487280136329914" : GoUInt64), ("11198723710889021052" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18151859100170412392" : GoUInt64), ("13998404638611276315" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18078137856785627587" : GoUInt64), ("17498005798264095394" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15910522178918405146" : GoUInt64), ("10936253623915059621" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6053094668365842720" : GoUInt64), ("13670317029893824527" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2954682317029915496" : GoUInt64), ("17087896287367280659" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17987577512639554849" : GoUInt64), ("10679935179604550411" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17872785872372055657" : GoUInt64), ("13349918974505688014" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13117610303610293764" : GoUInt64), ("16687398718132110018" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12810192458183821506" : GoUInt64), ("10429624198832568761" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2177682517447613171" : GoUInt64), ("13037030248540710952" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2722103146809516464" : GoUInt64), ("16296287810675888690" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6313000485183335694" : GoUInt64), ("10185179881672430431" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3279564588051781713" : GoUInt64), ("12731474852090538039" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17934513790346890853" : GoUInt64), ("15914343565113172548" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1985699082112030975" : GoUInt64), ("9946464728195732843" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16317181907922202431" : GoUInt64), ("12433080910244666053" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6561419329620589327" : GoUInt64), ("15541351137805832567" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11018416108653950185" : GoUInt64), ("9713344461128645354" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4549648098962661924" : GoUInt64), ("12141680576410806693" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10298746142130715309" : GoUInt64), ("15177100720513508366" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1825030320404309164" : GoUInt64), ("9485687950320942729" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6892973918932774359" : GoUInt64), ("11857109937901178411" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4004531380238580045" : GoUInt64), ("14821387422376473014" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16337890167931276240" : GoUInt64), ("9263367138985295633" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6587304654631931588" : GoUInt64), ("11579208923731619542" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17457502855144690293" : GoUInt64), ("14474011154664524427" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17210192550503474962" : GoUInt64), ("18092513943330655534" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6144684325637283947" : GoUInt64), ("11307821214581659709" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12292541425473992838" : GoUInt64), ("14134776518227074636" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15365676781842491048" : GoUInt64), ("17668470647783843295" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16521077016292638761" : GoUInt64), ("11042794154864902059" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16039660251938410547" : GoUInt64), ("13803492693581127574" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10826203278068237376" : GoUInt64), ("17254365866976409468" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15989749085647424168" : GoUInt64), ("10783978666860255917" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6152128301777116498" : GoUInt64), ("13479973333575319897" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12301846395648783526" : GoUInt64), ("16849966666969149871" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14606183024921571560" : GoUInt64), ("10531229166855718669" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4422670725869800738" : GoUInt64), ("13164036458569648337" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10140024425764638826" : GoUInt64), ("16455045573212060421" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8643358275316593218" : GoUInt64), ("10284403483257537763" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6192511825718353619" : GoUInt64), ("12855504354071922204" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7740639782147942024" : GoUInt64), ("16069380442589902755" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2532056854628769813" : GoUInt64), ("10043362776618689222" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12388443105140738074" : GoUInt64), ("12554203470773361527" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10873867862998534689" : GoUInt64), ("15692754338466701909" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9102010423587778132" : GoUInt64), ("9807971461541688693" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15989199047912110569" : GoUInt64), ("12259964326927110866" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10763126773035362404" : GoUInt64), ("15324955408658888583" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13644483260788183358" : GoUInt64), ("9578097130411805364" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17055604075985229198" : GoUInt64), ("11972621413014756705" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7484447039699372786" : GoUInt64), ("14965776766268445882" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9289465418239495895" : GoUInt64), ("9353610478917778676" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11611831772799369869" : GoUInt64), ("11692013098647223345" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("679731660717048624" : GoUInt64), ("14615016373309029182" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10073036612751086588" : GoUInt64), ("18268770466636286477" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8601490892183123069" : GoUInt64), ("11417981541647679048" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10751863615228903837" : GoUInt64), ("14272476927059598810" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4216457482181353988" : GoUInt64), ("17840596158824498513" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14164500972431816002" : GoUInt64), ("11150372599265311570" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8482254178684994195" : GoUInt64), ("13937965749081639463" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5991131704928854840" : GoUInt64), ("17422457186352049329" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15273672361649004035" : GoUInt64), ("10889035741470030830" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9868718415206479236" : GoUInt64), ("13611294676837538538" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3112525982153323237" : GoUInt64), ("17014118346046923173" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4251171748059520975" : GoUInt64), ("10633823966279326983" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("702278666647013314" : GoUInt64), ("13292279957849158729" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5489534351736154547" : GoUInt64), ("16615349947311448411" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1125115960621402640" : GoUInt64), ("10384593717069655257" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6018080969204141204" : GoUInt64), ("12980742146337069071" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2910915193077788601" : GoUInt64), ("16225927682921336339" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17960223060169475539" : GoUInt64), ("10141204801825835211" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17838592806784456520" : GoUInt64), ("12676506002282294014" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13074868971625794843" : GoUInt64), ("15845632502852867518" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3560107088838733872" : GoUInt64), ("9903520314283042199" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18285191916330581053" : GoUInt64), ("12379400392853802748" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4409745821703674700" : GoUInt64), ("15474250491067253436" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11979463175419572495" : GoUInt64), ("9671406556917033397" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1139270913992301907" : GoUInt64), ("12089258196146291747" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15259146697772541096" : GoUInt64), ("15111572745182864683" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7231123676894144233" : GoUInt64), ("9444732965739290427" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4427218577690292387" : GoUInt64), ("11805916207174113034" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14757395258967641292" : GoUInt64), ("14757395258967641292" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("9223372036854775808" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("11529215046068469760" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("14411518807585587200" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("18014398509481984000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("11258999068426240000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("14073748835532800000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("17592186044416000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("10995116277760000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("13743895347200000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("17179869184000000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("10737418240000000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("13421772800000000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("16777216000000000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("10485760000000000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("13107200000000000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("16384000000000000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("10240000000000000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("12800000000000000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("16000000000000000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("10000000000000000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("12500000000000000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("15625000000000000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("9765625000000000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("12207031250000000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("15258789062500000000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("9536743164062500000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("11920928955078125000" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("0" : GoUInt64), ("14901161193847656250" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4611686018427387904" : GoUInt64), ("9313225746154785156" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5764607523034234880" : GoUInt64), ("11641532182693481445" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11817445422220181504" : GoUInt64), ("14551915228366851806" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5548434740920451072" : GoUInt64), ("18189894035458564758" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17302829768357445632" : GoUInt64), ("11368683772161602973" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7793479155164643328" : GoUInt64), ("14210854715202003717" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14353534962383192064" : GoUInt64), ("17763568394002504646" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4359273333062107136" : GoUInt64), ("11102230246251565404" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5449091666327633920" : GoUInt64), ("13877787807814456755" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2199678564482154496" : GoUInt64), ("17347234759768070944" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1374799102801346560" : GoUInt64), ("10842021724855044340" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1718498878501683200" : GoUInt64), ("13552527156068805425" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6759809616554491904" : GoUInt64), ("16940658945086006781" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6530724019560251392" : GoUInt64), ("10587911840678754238" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17386777061305090048" : GoUInt64), ("13234889800848442797" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7898413271349198848" : GoUInt64), ("16543612251060553497" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16465723340661719040" : GoUInt64), ("10339757656912845935" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15970468157399760896" : GoUInt64), ("12924697071141057419" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15351399178322313216" : GoUInt64), ("16155871338926321774" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4982938468024057856" : GoUInt64), ("10097419586828951109" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10840359103457460224" : GoUInt64), ("12621774483536188886" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4327076842467049472" : GoUInt64), ("15777218104420236108" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11927795063396681728" : GoUInt64), ("9860761315262647567" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10298057810818464256" : GoUInt64), ("12325951644078309459" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8260886245095692416" : GoUInt64), ("15407439555097886824" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5163053903184807760" : GoUInt64), ("9629649721936179265" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11065503397408397604" : GoUInt64), ("12037062152420224081" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18443565265187884909" : GoUInt64), ("15046327690525280101" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13833071299956122020" : GoUInt64), ("9403954806578300063" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12679653106517764621" : GoUInt64), ("11754943508222875079" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11237880364719817872" : GoUInt64), ("14693679385278593849" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("212292400617608628" : GoUInt64), ("18367099231598242312" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("132682750386005392" : GoUInt64), ("11479437019748901445" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4777539456409894645" : GoUInt64), ("14349296274686126806" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15195296357367144114" : GoUInt64), ("17936620343357658507" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7191217214140771119" : GoUInt64), ("11210387714598536567" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4377335499248575995" : GoUInt64), ("14012984643248170709" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10083355392488107898" : GoUInt64), ("17516230804060213386" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10913783138732455340" : GoUInt64), ("10947644252537633366" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4418856886560793367" : GoUInt64), ("13684555315672041708" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5523571108200991709" : GoUInt64), ("17105694144590052135" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10369760970266701674" : GoUInt64), ("10691058840368782584" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12962201212833377092" : GoUInt64), ("13363823550460978230" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6979379479186945558" : GoUInt64), ("16704779438076222788" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13585484211346616781" : GoUInt64), ("10440487148797639242" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7758483227328495169" : GoUInt64), ("13050608935997049053" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14309790052588006865" : GoUInt64), ("16313261169996311316" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18166990819722280098" : GoUInt64), ("10195788231247694572" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4261994450943298507" : GoUInt64), ("12744735289059618216" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5327493063679123134" : GoUInt64), ("15930919111324522770" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7941369183226839863" : GoUInt64), ("9956824444577826731" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5315025460606161924" : GoUInt64), ("12446030555722283414" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15867153862612478214" : GoUInt64), ("15557538194652854267" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7611128154919104931" : GoUInt64), ("9723461371658033917" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14125596212076269068" : GoUInt64), ("12154326714572542396" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17656995265095336336" : GoUInt64), ("15192908393215677995" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8729779031470891258" : GoUInt64), ("9495567745759798747" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6300537770911226168" : GoUInt64), ("11869459682199748434" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17099044250493808518" : GoUInt64), ("14836824602749685542" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6075216638131242420" : GoUInt64), ("9273015376718553464" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7594020797664053025" : GoUInt64), ("11591269220898191830" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("269153960225290473" : GoUInt64), ("14489086526122739788" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("336442450281613091" : GoUInt64), ("18111358157653424735" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7127805559067090038" : GoUInt64), ("11319598848533390459" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4298070930406474644" : GoUInt64), ("14149498560666738074" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14595960699862869113" : GoUInt64), ("17686873200833422592" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9122475437414293195" : GoUInt64), ("11054295750520889120" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11403094296767866494" : GoUInt64), ("13817869688151111400" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14253867870959833118" : GoUInt64), ("17272337110188889250" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13520353437777283602" : GoUInt64), ("10795210693868055781" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3065383741939440791" : GoUInt64), ("13494013367335069727" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17666787732706464701" : GoUInt64), ("16867516709168837158" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6430056314514152534" : GoUInt64), ("10542197943230523224" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8037570393142690668" : GoUInt64), ("13177747429038154030" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("823590954573587527" : GoUInt64), ("16472184286297692538" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5126430365035880108" : GoUInt64), ("10295115178936057836" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6408037956294850135" : GoUInt64), ("12868893973670072295" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3398361426941174765" : GoUInt64), ("16086117467087590369" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13653190937906703988" : GoUInt64), ("10053823416929743980" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17066488672383379985" : GoUInt64), ("12567279271162179975" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16721424822051837077" : GoUInt64), ("15709099088952724969" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3533361486141316317" : GoUInt64), ("9818186930595453106" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13640073894531421205" : GoUInt64), ("12272733663244316382" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7826720331309500698" : GoUInt64), ("15340917079055395478" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("280014188641050032" : GoUInt64), ("9588073174409622174" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9573389772656088348" : GoUInt64), ("11985091468012027717" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16578423234247498339" : GoUInt64), ("14981364335015034646" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5749828502977298558" : GoUInt64), ("9363352709384396654" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16410657665576399005" : GoUInt64), ("11704190886730495817" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6678264026688335045" : GoUInt64), ("14630238608413119772" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8347830033360418806" : GoUInt64), ("18287798260516399715" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2911550761636567802" : GoUInt64), ("11429873912822749822" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12862810488900485560" : GoUInt64), ("14287342391028437277" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2243455055843443238" : GoUInt64), ("17859177988785546597" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3708002419115845976" : GoUInt64), ("11161986242990966623" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("23317005467419566" : GoUInt64), ("13952482803738708279" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13864204312116438170" : GoUInt64), ("17440603504673385348" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17888499731927549664" : GoUInt64), ("10900377190420865842" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13137252628054661272" : GoUInt64), ("13625471488026082303" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11809879766640938686" : GoUInt64), ("17031839360032602879" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14298703881791668535" : GoUInt64), ("10644899600020376799" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13261693833812197764" : GoUInt64), ("13306124500025470999" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11965431273837859301" : GoUInt64), ("16632655625031838749" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9784237555362356015" : GoUInt64), ("10395409765644899218" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3006924907348169211" : GoUInt64), ("12994262207056124023" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17593714189467375226" : GoUInt64), ("16242827758820155028" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1772699331562333708" : GoUInt64), ("10151767349262596893" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6827560182880305039" : GoUInt64), ("12689709186578246116" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8534450228600381299" : GoUInt64), ("15862136483222807645" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7639874402088932264" : GoUInt64), ("9913835302014254778" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("326470965756389522" : GoUInt64), ("12392294127517818473" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5019774725622874806" : GoUInt64), ("15490367659397273091" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("831516194300602802" : GoUInt64), ("9681479787123295682" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10262767279730529310" : GoUInt64), ("12101849733904119602" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3605087062808385830" : GoUInt64), ("15127312167380149503" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9170708441896323000" : GoUInt64), ("9454570104612593439" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6851699533943015846" : GoUInt64), ("11818212630765741799" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3952938399001381903" : GoUInt64), ("14772765788457177249" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13999801545444333449" : GoUInt64), ("9232978617785735780" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17499751931805416812" : GoUInt64), ("11541223272232169725" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8039631859474607303" : GoUInt64), ("14426529090290212157" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14661225842770647033" : GoUInt64), ("18033161362862765196" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18386638188586430203" : GoUInt64), ("11270725851789228247" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18371611717305649850" : GoUInt64), ("14088407314736535309" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9129456591349898601" : GoUInt64), ("17610509143420669137" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17235125415662156385" : GoUInt64), ("11006568214637918210" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12320534732722919674" : GoUInt64), ("13758210268297397763" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10788982397476261688" : GoUInt64), ("17197762835371747204" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15966486035277439363" : GoUInt64), ("10748601772107342002" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10734735507242023396" : GoUInt64), ("13435752215134177503" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8806733365625141341" : GoUInt64), ("16794690268917721879" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12421737381156795194" : GoUInt64), ("10496681418073576174" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6303799689591218185" : GoUInt64), ("13120851772591970218" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17103121648843798539" : GoUInt64), ("16401064715739962772" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1466078993672598279" : GoUInt64), ("10250665447337476733" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6444284760518135752" : GoUInt64), ("12813331809171845916" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8055355950647669691" : GoUInt64), ("16016664761464807395" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2728754459941099604" : GoUInt64), ("10010415475915504622" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12634315111781150314" : GoUInt64), ("12513019344894380777" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1957835834444274180" : GoUInt64), ("15641274181117975972" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10447019433382447170" : GoUInt64), ("9775796363198734982" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3835402254873283155" : GoUInt64), ("12219745453998418728" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4794252818591603944" : GoUInt64), ("15274681817498023410" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7608094030047140369" : GoUInt64), ("9546676135936264631" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4898431519131537557" : GoUInt64), ("11933345169920330789" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10734725417341809851" : GoUInt64), ("14916681462400413486" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2097517367411243253" : GoUInt64), ("9322925914000258429" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7233582727691441970" : GoUInt64), ("11653657392500323036" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9041978409614302462" : GoUInt64), ("14567071740625403795" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6690786993590490174" : GoUInt64), ("18208839675781754744" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4181741870994056359" : GoUInt64), ("11380524797363596715" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("615491320315182544" : GoUInt64), ("14225655996704495894" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9992736187248753989" : GoUInt64), ("17782069995880619867" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3939617107816777291" : GoUInt64), ("11113793747425387417" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9536207403198359517" : GoUInt64), ("13892242184281734271" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7308573235570561493" : GoUInt64), ("17365302730352167839" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11485387299872682789" : GoUInt64), ("10853314206470104899" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9745048106413465582" : GoUInt64), ("13566642758087631124" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12181310133016831978" : GoUInt64), ("16958303447609538905" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("695789805494438130" : GoUInt64), ("10598939654755961816" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("869737256868047663" : GoUInt64), ("13248674568444952270" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10310543607939835386" : GoUInt64), ("16560843210556190337" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17973304801030866876" : GoUInt64), ("10350527006597618960" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4019886927579031980" : GoUInt64), ("12938158758247023701" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9636544677901177879" : GoUInt64), ("16172698447808779626" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10634526442115624078" : GoUInt64), ("10107936529880487266" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4069786015789754290" : GoUInt64), ("12634920662350609083" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("475546501309804958" : GoUInt64), ("15793650827938261354" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4908902581746016003" : GoUInt64), ("9871031767461413346" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15359500264037295811" : GoUInt64), ("12338789709326766682" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9976003293191843956" : GoUInt64), ("15423487136658458353" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17764217104313372233" : GoUInt64), ("9639679460411536470" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12981899343536939483" : GoUInt64), ("12049599325514420588" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16227374179421174354" : GoUInt64), ("15061999156893025735" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17059637889779315827" : GoUInt64), ("9413749473058141084" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2877803288514593168" : GoUInt64), ("11767186841322676356" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3597254110643241460" : GoUInt64), ("14708983551653345445" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9108253656731439729" : GoUInt64), ("18386229439566681806" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1080972517029761926" : GoUInt64), ("11491393399729176129" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5962901664714590312" : GoUInt64), ("14364241749661470161" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12065313099320625794" : GoUInt64), ("17955302187076837701" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9846663696289085073" : GoUInt64), ("11222063866923023563" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7696643601933968437" : GoUInt64), ("14027579833653779454" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("397432465562684739" : GoUInt64), ("17534474792067224318" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14083453346258841674" : GoUInt64), ("10959046745042015198" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8380944645968776284" : GoUInt64), ("13698808431302518998" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1252808770606194547" : GoUInt64), ("17123510539128148748" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10006377518483647400" : GoUInt64), ("10702194086955092967" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7896285879677171346" : GoUInt64), ("13377742608693866209" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14482043368023852087" : GoUInt64), ("16722178260867332761" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2133748077373825698" : GoUInt64), ("10451361413042082976" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2667185096717282123" : GoUInt64), ("13064201766302603720" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3333981370896602653" : GoUInt64), ("16330252207878254650" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6695424375237764562" : GoUInt64), ("10206407629923909156" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8369280469047205703" : GoUInt64), ("12758009537404886445" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15073286604736395033" : GoUInt64), ("15947511921756108056" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9420804127960246895" : GoUInt64), ("9967194951097567535" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7164319141522920715" : GoUInt64), ("12458993688871959419" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4343712908476262990" : GoUInt64), ("15573742111089949274" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7326506586225052273" : GoUInt64), ("9733588819431218296" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9158133232781315341" : GoUInt64), ("12166986024289022870" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2224294504121868368" : GoUInt64), ("15208732530361278588" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10613556101930943538" : GoUInt64), ("9505457831475799117" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17878631145841067327" : GoUInt64), ("11881822289344748896" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3901544858591782542" : GoUInt64), ("14852277861680936121" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13967680582688333849" : GoUInt64), ("9282673663550585075" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12847914709933029407" : GoUInt64), ("11603342079438231344" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16059893387416286759" : GoUInt64), ("14504177599297789180" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1628122660560806833" : GoUInt64), ("18130221999122236476" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10240948699705280078" : GoUInt64), ("11331388749451397797" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17412871893058988002" : GoUInt64), ("14164235936814247246" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12542717829468959195" : GoUInt64), ("17705294921017809058" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12450884661845487401" : GoUInt64), ("11065809325636130661" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1728547772024695539" : GoUInt64), ("13832261657045163327" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15995742770313033136" : GoUInt64), ("17290327071306454158" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5385653213018257806" : GoUInt64), ("10806454419566533849" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11343752534700210161" : GoUInt64), ("13508068024458167311" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9568004649947874797" : GoUInt64), ("16885085030572709139" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3674159897003727796" : GoUInt64), ("10553178144107943212" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4592699871254659745" : GoUInt64), ("13191472680134929015" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1129188820640936778" : GoUInt64), ("16489340850168661269" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3011586022114279438" : GoUInt64), ("10305838031355413293" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8376168546070237202" : GoUInt64), ("12882297539194266616" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10470210682587796502" : GoUInt64), ("16102871923992833270" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1932195658189984910" : GoUInt64), ("10064294952495520794" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11638616609592256945" : GoUInt64), ("12580368690619400992" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14548270761990321182" : GoUInt64), ("15725460863274251240" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9092669226243950738" : GoUInt64), ("9828413039546407025" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15977522551232326327" : GoUInt64), ("12285516299433008781" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6136845133758244197" : GoUInt64), ("15356895374291260977" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15364743254667372383" : GoUInt64), ("9598059608932038110" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9982557031479439671" : GoUInt64), ("11997574511165047638" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3254824252494523781" : GoUInt64), ("14996968138956309548" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11257637194663853171" : GoUInt64), ("9373105086847693467" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9460360474902428559" : GoUInt64), ("11716381358559616834" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2602078556773259891" : GoUInt64), ("14645476698199521043" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17087656251248738576" : GoUInt64), ("18306845872749401303" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17597314184671543466" : GoUInt64), ("11441778670468375814" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12773270693984653525" : GoUInt64), ("14302223338085469768" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15966588367480816906" : GoUInt64), ("17877779172606837210" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14590803748102898470" : GoUInt64), ("11173611982879273256" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18238504685128623088" : GoUInt64), ("13967014978599091570" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13574758819556003052" : GoUInt64), ("17458768723248864463" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15401753289863583763" : GoUInt64), ("10911730452030540289" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5417133557047315992" : GoUInt64), ("13639663065038175362" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15994788983163920798" : GoUInt64), ("17049578831297719202" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14608429132904838403" : GoUInt64), ("10655986769561074501" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4425478360848884291" : GoUInt64), ("13319983461951343127" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("920161932633717460" : GoUInt64), ("16649979327439178909" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2880944217109767365" : GoUInt64), ("10406237079649486818" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12824552308241985014" : GoUInt64), ("13007796349561858522" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6807318348447705459" : GoUInt64), ("16259745436952323153" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15783789013848285672" : GoUInt64), ("10162340898095201970" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10506364230455581282" : GoUInt64), ("12702926122619002463" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8521269269642088699" : GoUInt64), ("15878657653273753079" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12243322321167387293" : GoUInt64), ("9924161033296095674" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6080780864604458308" : GoUInt64), ("12405201291620119593" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12212662099182960789" : GoUInt64), ("15506501614525149491" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5327070802775656541" : GoUInt64), ("9691563509078218432" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6658838503469570676" : GoUInt64), ("12114454386347773040" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8323548129336963345" : GoUInt64), ("15143067982934716300" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14425589617690377899" : GoUInt64), ("9464417489334197687" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13420301003685584469" : GoUInt64), ("11830521861667747109" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2940318199324816875" : GoUInt64), ("14788152327084683887" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8755227902219092403" : GoUInt64), ("9242595204427927429" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15555720896201253407" : GoUInt64), ("11553244005534909286" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10221279083396790951" : GoUInt64), ("14441555006918636608" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12776598854245988689" : GoUInt64), ("18051943758648295760" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7985374283903742931" : GoUInt64), ("11282464849155184850" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("758345818024902856" : GoUInt64), ("14103081061443981063" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14782990327813292282" : GoUInt64), ("17628851326804976328" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9239368954883307676" : GoUInt64), ("11018032079253110205" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16160897212031522499" : GoUInt64), ("13772540099066387756" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1754377441329851508" : GoUInt64), ("17215675123832984696" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1096485900831157192" : GoUInt64), ("10759796952395615435" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15205665431321110202" : GoUInt64), ("13449746190494519293" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5172023733869224041" : GoUInt64), ("16812182738118149117" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5538357842881958977" : GoUInt64), ("10507614211323843198" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16146319340457224530" : GoUInt64), ("13134517764154803997" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6347841120289366950" : GoUInt64), ("16418147205193504997" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6273243709394548296" : GoUInt64), ("10261342003245940623" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("3229868618315797466" : GoUInt64), ("12826677504057425779" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17872393828176910545" : GoUInt64), ("16033346880071782223" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("18087775170251650946" : GoUInt64), ("10020841800044863889" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8774660907532399971" : GoUInt64), ("12526052250056079862" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1744954097560724156" : GoUInt64), ("15657565312570099828" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10313968347830228405" : GoUInt64), ("9785978320356312392" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12892460434787785506" : GoUInt64), ("12232472900445390490" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6892203506629956075" : GoUInt64), ("15290591125556738113" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15836842237712192307" : GoUInt64), ("9556619453472961320" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("1349308723430688768" : GoUInt64), ("11945774316841201651" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("15521693959570524672" : GoUInt64), ("14932217896051502063" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16618587752372659776" : GoUInt64), ("9332636185032188789" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6938176635183661008" : GoUInt64), ("11665795231290235987" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("4061034775552188356" : GoUInt64), ("14582244039112794984" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5076293469440235445" : GoUInt64), ("18227805048890993730" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7784369436827535057" : GoUInt64), ("11392378155556871081" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14342147814461806725" : GoUInt64), ("14240472694446088851" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13315998749649870503" : GoUInt64), ("17800590868057611064" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8322499218531169064" : GoUInt64), ("11125369292536006915" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5791438004736573426" : GoUInt64), ("13906711615670008644" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7239297505920716783" : GoUInt64), ("17383389519587510805" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("6830403950414141941" : GoUInt64), ("10864618449742194253" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13149690956445065330" : GoUInt64), ("13580773062177742816" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16437113695556331663" : GoUInt64), ("16975966327722178520" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10273196059722707289" : GoUInt64), ("10609978954826361575" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8229809056225996208" : GoUInt64), ("13262473693532951969" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("14898947338709883164" : GoUInt64), ("16578092116916189961" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("2394313059052595121" : GoUInt64), ("10361307573072618726" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("12216263360670519709" : GoUInt64), ("12951634466340773407" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("10658643182410761733" : GoUInt64), ("16189543082925966759" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("13579181016647807939" : GoUInt64), ("10118464426828729224" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("16973976270809759924" : GoUInt64), ("12648080533535911530" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("11994098301657424097" : GoUInt64), ("15810100666919889413" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9802154447749584012" : GoUInt64), ("9881312916824930883" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("7641007041259592112" : GoUInt64), ("12351641146031163604" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("9551258801574490140" : GoUInt64), ("15439551432538954505" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("17498751797052526097" : GoUInt64), ("9649719645336846565" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("8038381691033493909" : GoUInt64), ("12062149556671058207" : GoUInt64)) : GoArray<GoUInt64>),
	(new GoArray<GoUInt64>(("5436291095364479483" : GoUInt64), ("15077686945838822759" : GoUInt64)) : GoArray<GoUInt64>)) : GoArray<GoArray<GoUInt64>>);

private var _float32info:T_floatInfo = (new T_floatInfo(("23" : GoUInt), ("8" : GoUInt), (-127 : GoInt)) : T_floatInfo);
private var _float64info:T_floatInfo = (new T_floatInfo(("52" : GoUInt), ("11" : GoUInt), (-1023 : GoInt)) : T_floatInfo);

private var _uint64pow10:GoArray<GoUInt64> = (new GoArray<GoUInt64>(("1" : GoUInt64), ("10" : GoUInt64), ("100" : GoUInt64), ("1000" : GoUInt64),
	("10000" : GoUInt64), ("100000" : GoUInt64), ("1000000" : GoUInt64), ("10000000" : GoUInt64), ("100000000" : GoUInt64), ("1000000000" : GoUInt64),
	("10000000000" : GoUInt64), ("100000000000" : GoUInt64), ("1000000000000" : GoUInt64), ("10000000000000" : GoUInt64), ("100000000000000" : GoUInt64),
	("1000000000000000" : GoUInt64), ("10000000000000000" : GoUInt64), ("100000000000000000" : GoUInt64), ("1000000000000000000" : GoUInt64),
	("10000000000000000000" : GoUInt64)) : GoArray<GoUInt64>);

private var _isPrint16:Slice<GoUInt16> = (new Slice<GoUInt16>(0, 0, (32 : GoUInt16), (126 : GoUInt16), (161 : GoUInt16), (887 : GoUInt16), (890 : GoUInt16),
	(895 : GoUInt16), (900 : GoUInt16), (1366 : GoUInt16), (1369 : GoUInt16), (1418 : GoUInt16), (1421 : GoUInt16), (1479 : GoUInt16), (1488 : GoUInt16),
	(1514 : GoUInt16), (1519 : GoUInt16), (1524 : GoUInt16), (1542 : GoUInt16), (1563 : GoUInt16), (1566 : GoUInt16), (1805 : GoUInt16), (1808 : GoUInt16),
	(1866 : GoUInt16), (1869 : GoUInt16), (1969 : GoUInt16), (1984 : GoUInt16), (2042 : GoUInt16), (2045 : GoUInt16), (2093 : GoUInt16), (2096 : GoUInt16),
	(2139 : GoUInt16), (2142 : GoUInt16), (2154 : GoUInt16), (2208 : GoUInt16), (2247 : GoUInt16), (2259 : GoUInt16), (2444 : GoUInt16), (2447 : GoUInt16),
	(2448 : GoUInt16), (2451 : GoUInt16), (2482 : GoUInt16), (2486 : GoUInt16), (2489 : GoUInt16), (2492 : GoUInt16), (2500 : GoUInt16), (2503 : GoUInt16),
	(2504 : GoUInt16), (2507 : GoUInt16), (2510 : GoUInt16), (2519 : GoUInt16), (2519 : GoUInt16), (2524 : GoUInt16), (2531 : GoUInt16), (2534 : GoUInt16),
	(2558 : GoUInt16), (2561 : GoUInt16), (2570 : GoUInt16), (2575 : GoUInt16), (2576 : GoUInt16), (2579 : GoUInt16), (2617 : GoUInt16), (2620 : GoUInt16),
	(2626 : GoUInt16), (2631 : GoUInt16), (2632 : GoUInt16), (2635 : GoUInt16), (2637 : GoUInt16), (2641 : GoUInt16), (2641 : GoUInt16), (2649 : GoUInt16),
	(2654 : GoUInt16), (2662 : GoUInt16), (2678 : GoUInt16), (2689 : GoUInt16), (2745 : GoUInt16), (2748 : GoUInt16), (2765 : GoUInt16), (2768 : GoUInt16),
	(2768 : GoUInt16), (2784 : GoUInt16), (2787 : GoUInt16), (2790 : GoUInt16), (2801 : GoUInt16), (2809 : GoUInt16), (2828 : GoUInt16), (2831 : GoUInt16),
	(2832 : GoUInt16), (2835 : GoUInt16), (2873 : GoUInt16), (2876 : GoUInt16), (2884 : GoUInt16), (2887 : GoUInt16), (2888 : GoUInt16), (2891 : GoUInt16),
	(2893 : GoUInt16), (2901 : GoUInt16), (2903 : GoUInt16), (2908 : GoUInt16), (2915 : GoUInt16), (2918 : GoUInt16), (2935 : GoUInt16), (2946 : GoUInt16),
	(2954 : GoUInt16), (2958 : GoUInt16), (2965 : GoUInt16), (2969 : GoUInt16), (2975 : GoUInt16), (2979 : GoUInt16), (2980 : GoUInt16), (2984 : GoUInt16),
	(2986 : GoUInt16), (2990 : GoUInt16), (3001 : GoUInt16), (3006 : GoUInt16), (3010 : GoUInt16), (3014 : GoUInt16), (3021 : GoUInt16), (3024 : GoUInt16),
	(3024 : GoUInt16), (3031 : GoUInt16), (3031 : GoUInt16), (3046 : GoUInt16), (3066 : GoUInt16), (3072 : GoUInt16), (3129 : GoUInt16), (3133 : GoUInt16),
	(3149 : GoUInt16), (3157 : GoUInt16), (3162 : GoUInt16), (3168 : GoUInt16), (3171 : GoUInt16), (3174 : GoUInt16), (3183 : GoUInt16), (3191 : GoUInt16),
	(3257 : GoUInt16), (3260 : GoUInt16), (3277 : GoUInt16), (3285 : GoUInt16), (3286 : GoUInt16), (3294 : GoUInt16), (3299 : GoUInt16), (3302 : GoUInt16),
	(3314 : GoUInt16), (3328 : GoUInt16), (3407 : GoUInt16), (3412 : GoUInt16), (3427 : GoUInt16), (3430 : GoUInt16), (3478 : GoUInt16), (3482 : GoUInt16),
	(3517 : GoUInt16), (3520 : GoUInt16), (3526 : GoUInt16), (3530 : GoUInt16), (3530 : GoUInt16), (3535 : GoUInt16), (3551 : GoUInt16), (3558 : GoUInt16),
	(3567 : GoUInt16), (3570 : GoUInt16), (3572 : GoUInt16), (3585 : GoUInt16), (3642 : GoUInt16), (3647 : GoUInt16), (3675 : GoUInt16), (3713 : GoUInt16),
	(3773 : GoUInt16), (3776 : GoUInt16), (3789 : GoUInt16), (3792 : GoUInt16), (3801 : GoUInt16), (3804 : GoUInt16), (3807 : GoUInt16), (3840 : GoUInt16),
	(3948 : GoUInt16), (3953 : GoUInt16), (4058 : GoUInt16), (4096 : GoUInt16), (4295 : GoUInt16), (4301 : GoUInt16), (4301 : GoUInt16), (4304 : GoUInt16),
	(4685 : GoUInt16), (4688 : GoUInt16), (4701 : GoUInt16), (4704 : GoUInt16), (4749 : GoUInt16), (4752 : GoUInt16), (4789 : GoUInt16), (4792 : GoUInt16),
	(4805 : GoUInt16), (4808 : GoUInt16), (4885 : GoUInt16), (4888 : GoUInt16), (4954 : GoUInt16), (4957 : GoUInt16), (4988 : GoUInt16), (4992 : GoUInt16),
	(5017 : GoUInt16), (5024 : GoUInt16), (5109 : GoUInt16), (5112 : GoUInt16), (5117 : GoUInt16), (5120 : GoUInt16), (5788 : GoUInt16), (5792 : GoUInt16),
	(5880 : GoUInt16), (5888 : GoUInt16), (5908 : GoUInt16), (5920 : GoUInt16), (5942 : GoUInt16), (5952 : GoUInt16), (5971 : GoUInt16), (5984 : GoUInt16),
	(6003 : GoUInt16), (6016 : GoUInt16), (6109 : GoUInt16), (6112 : GoUInt16), (6121 : GoUInt16), (6128 : GoUInt16), (6137 : GoUInt16), (6144 : GoUInt16),
	(6157 : GoUInt16), (6160 : GoUInt16), (6169 : GoUInt16), (6176 : GoUInt16), (6264 : GoUInt16), (6272 : GoUInt16), (6314 : GoUInt16), (6320 : GoUInt16),
	(6389 : GoUInt16), (6400 : GoUInt16), (6443 : GoUInt16), (6448 : GoUInt16), (6459 : GoUInt16), (6464 : GoUInt16), (6464 : GoUInt16), (6468 : GoUInt16),
	(6509 : GoUInt16), (6512 : GoUInt16), (6516 : GoUInt16), (6528 : GoUInt16), (6571 : GoUInt16), (6576 : GoUInt16), (6601 : GoUInt16), (6608 : GoUInt16),
	(6618 : GoUInt16), (6622 : GoUInt16), (6683 : GoUInt16), (6686 : GoUInt16), (6780 : GoUInt16), (6783 : GoUInt16), (6793 : GoUInt16), (6800 : GoUInt16),
	(6809 : GoUInt16), (6816 : GoUInt16), (6829 : GoUInt16), (6832 : GoUInt16), (6848 : GoUInt16), (6912 : GoUInt16), (6987 : GoUInt16), (6992 : GoUInt16),
	(7036 : GoUInt16), (7040 : GoUInt16), (7155 : GoUInt16), (7164 : GoUInt16), (7223 : GoUInt16), (7227 : GoUInt16), (7241 : GoUInt16), (7245 : GoUInt16),
	(7304 : GoUInt16), (7312 : GoUInt16), (7354 : GoUInt16), (7357 : GoUInt16), (7367 : GoUInt16), (7376 : GoUInt16), (7418 : GoUInt16), (7424 : GoUInt16),
	(7957 : GoUInt16), (7960 : GoUInt16), (7965 : GoUInt16), (7968 : GoUInt16), (8005 : GoUInt16), (8008 : GoUInt16), (8013 : GoUInt16), (8016 : GoUInt16),
	(8061 : GoUInt16), (8064 : GoUInt16), (8147 : GoUInt16), (8150 : GoUInt16), (8175 : GoUInt16), (8178 : GoUInt16), (8190 : GoUInt16), (8208 : GoUInt16),
	(8231 : GoUInt16), (8240 : GoUInt16), (8286 : GoUInt16), (8304 : GoUInt16), (8305 : GoUInt16), (8308 : GoUInt16), (8348 : GoUInt16), (8352 : GoUInt16),
	(8383 : GoUInt16), (8400 : GoUInt16), (8432 : GoUInt16), (8448 : GoUInt16), (8587 : GoUInt16), (8592 : GoUInt16), (9254 : GoUInt16), (9280 : GoUInt16),
	(9290 : GoUInt16), (9312 : GoUInt16), (11123 : GoUInt16), (11126 : GoUInt16), (11507 : GoUInt16), (11513 : GoUInt16), (11559 : GoUInt16),
	(11565 : GoUInt16), (11565 : GoUInt16), (11568 : GoUInt16), (11623 : GoUInt16), (11631 : GoUInt16), (11632 : GoUInt16), (11647 : GoUInt16),
	(11670 : GoUInt16), (11680 : GoUInt16), (11858 : GoUInt16), (11904 : GoUInt16), (12019 : GoUInt16), (12032 : GoUInt16), (12245 : GoUInt16),
	(12272 : GoUInt16), (12283 : GoUInt16), (12289 : GoUInt16), (12438 : GoUInt16), (12441 : GoUInt16), (12543 : GoUInt16), (12549 : GoUInt16),
	(12771 : GoUInt16), (12784 : GoUInt16), (40956 : GoUInt16), (40960 : GoUInt16), (42124 : GoUInt16), (42128 : GoUInt16), (42182 : GoUInt16),
	(42192 : GoUInt16), (42539 : GoUInt16), (42560 : GoUInt16), (42743 : GoUInt16), (42752 : GoUInt16), (42943 : GoUInt16), (42946 : GoUInt16),
	(42954 : GoUInt16), (42997 : GoUInt16), (43052 : GoUInt16), (43056 : GoUInt16), (43065 : GoUInt16), (43072 : GoUInt16), (43127 : GoUInt16),
	(43136 : GoUInt16), (43205 : GoUInt16), (43214 : GoUInt16), (43225 : GoUInt16), (43232 : GoUInt16), (43347 : GoUInt16), (43359 : GoUInt16),
	(43388 : GoUInt16), (43392 : GoUInt16), (43481 : GoUInt16), (43486 : GoUInt16), (43574 : GoUInt16), (43584 : GoUInt16), (43597 : GoUInt16),
	(43600 : GoUInt16), (43609 : GoUInt16), (43612 : GoUInt16), (43714 : GoUInt16), (43739 : GoUInt16), (43766 : GoUInt16), (43777 : GoUInt16),
	(43782 : GoUInt16), (43785 : GoUInt16), (43790 : GoUInt16), (43793 : GoUInt16), (43798 : GoUInt16), (43808 : GoUInt16), (43883 : GoUInt16),
	(43888 : GoUInt16), (44013 : GoUInt16), (44016 : GoUInt16), (44025 : GoUInt16), (44032 : GoUInt16), (55203 : GoUInt16), (55216 : GoUInt16),
	(55238 : GoUInt16), (55243 : GoUInt16), (55291 : GoUInt16), (63744 : GoUInt16), (64109 : GoUInt16), (64112 : GoUInt16), (64217 : GoUInt16),
	(64256 : GoUInt16), (64262 : GoUInt16), (64275 : GoUInt16), (64279 : GoUInt16), (64285 : GoUInt16), (64449 : GoUInt16), (64467 : GoUInt16),
	(64831 : GoUInt16), (64848 : GoUInt16), (64911 : GoUInt16), (64914 : GoUInt16), (64967 : GoUInt16), (65008 : GoUInt16), (65021 : GoUInt16),
	(65024 : GoUInt16), (65049 : GoUInt16), (65056 : GoUInt16), (65131 : GoUInt16), (65136 : GoUInt16), (65276 : GoUInt16), (65281 : GoUInt16),
	(65470 : GoUInt16), (65474 : GoUInt16), (65479 : GoUInt16), (65482 : GoUInt16), (65487 : GoUInt16), (65490 : GoUInt16), (65495 : GoUInt16),
	(65498 : GoUInt16), (65500 : GoUInt16), (65504 : GoUInt16), (65518 : GoUInt16), (65532 : GoUInt16), (65533 : GoUInt16)) : Slice<GoUInt16>);

private var _isNotPrint16:Slice<GoUInt16> = (new Slice<GoUInt16>(0, 0, (173 : GoUInt16), (907 : GoUInt16), (909 : GoUInt16), (930 : GoUInt16),
	(1328 : GoUInt16), (1424 : GoUInt16), (1757 : GoUInt16), (2111 : GoUInt16), (2143 : GoUInt16), (2229 : GoUInt16), (2274 : GoUInt16), (2436 : GoUInt16),
	(2473 : GoUInt16), (2481 : GoUInt16), (2526 : GoUInt16), (2564 : GoUInt16), (2601 : GoUInt16), (2609 : GoUInt16), (2612 : GoUInt16), (2615 : GoUInt16),
	(2621 : GoUInt16), (2653 : GoUInt16), (2692 : GoUInt16), (2702 : GoUInt16), (2706 : GoUInt16), (2729 : GoUInt16), (2737 : GoUInt16), (2740 : GoUInt16),
	(2758 : GoUInt16), (2762 : GoUInt16), (2816 : GoUInt16), (2820 : GoUInt16), (2857 : GoUInt16), (2865 : GoUInt16), (2868 : GoUInt16), (2910 : GoUInt16),
	(2948 : GoUInt16), (2961 : GoUInt16), (2971 : GoUInt16), (2973 : GoUInt16), (3017 : GoUInt16), (3085 : GoUInt16), (3089 : GoUInt16), (3113 : GoUInt16),
	(3141 : GoUInt16), (3145 : GoUInt16), (3159 : GoUInt16), (3213 : GoUInt16), (3217 : GoUInt16), (3241 : GoUInt16), (3252 : GoUInt16), (3269 : GoUInt16),
	(3273 : GoUInt16), (3295 : GoUInt16), (3312 : GoUInt16), (3341 : GoUInt16), (3345 : GoUInt16), (3397 : GoUInt16), (3401 : GoUInt16), (3456 : GoUInt16),
	(3460 : GoUInt16), (3506 : GoUInt16), (3516 : GoUInt16), (3541 : GoUInt16), (3543 : GoUInt16), (3715 : GoUInt16), (3717 : GoUInt16), (3723 : GoUInt16),
	(3748 : GoUInt16), (3750 : GoUInt16), (3781 : GoUInt16), (3783 : GoUInt16), (3912 : GoUInt16), (3992 : GoUInt16), (4029 : GoUInt16), (4045 : GoUInt16),
	(4294 : GoUInt16), (4681 : GoUInt16), (4695 : GoUInt16), (4697 : GoUInt16), (4745 : GoUInt16), (4785 : GoUInt16), (4799 : GoUInt16), (4801 : GoUInt16),
	(4823 : GoUInt16), (4881 : GoUInt16), (5760 : GoUInt16), (5901 : GoUInt16), (5997 : GoUInt16), (6001 : GoUInt16), (6431 : GoUInt16), (6751 : GoUInt16),
	(7674 : GoUInt16), (8024 : GoUInt16), (8026 : GoUInt16), (8028 : GoUInt16), (8030 : GoUInt16), (8117 : GoUInt16), (8133 : GoUInt16), (8156 : GoUInt16),
	(8181 : GoUInt16), (8335 : GoUInt16), (11158 : GoUInt16), (11311 : GoUInt16), (11359 : GoUInt16), (11558 : GoUInt16), (11687 : GoUInt16),
	(11695 : GoUInt16), (11703 : GoUInt16), (11711 : GoUInt16), (11719 : GoUInt16), (11727 : GoUInt16), (11735 : GoUInt16), (11743 : GoUInt16),
	(11930 : GoUInt16), (12352 : GoUInt16), (12592 : GoUInt16), (12687 : GoUInt16), (12831 : GoUInt16), (43470 : GoUInt16), (43519 : GoUInt16),
	(43815 : GoUInt16), (43823 : GoUInt16), (64311 : GoUInt16), (64317 : GoUInt16), (64319 : GoUInt16), (64322 : GoUInt16), (64325 : GoUInt16),
	(65107 : GoUInt16), (65127 : GoUInt16), (65141 : GoUInt16), (65511 : GoUInt16)) : Slice<GoUInt16>);

private var _isPrint32:Slice<GoUInt32> = (new Slice<GoUInt32>(0, 0, ("65536" : GoUInt32), ("65613" : GoUInt32), ("65616" : GoUInt32), ("65629" : GoUInt32),
	("65664" : GoUInt32), ("65786" : GoUInt32), ("65792" : GoUInt32), ("65794" : GoUInt32), ("65799" : GoUInt32), ("65843" : GoUInt32), ("65847" : GoUInt32),
	("65948" : GoUInt32), ("65952" : GoUInt32), ("65952" : GoUInt32), ("66000" : GoUInt32), ("66045" : GoUInt32), ("66176" : GoUInt32), ("66204" : GoUInt32),
	("66208" : GoUInt32), ("66256" : GoUInt32), ("66272" : GoUInt32), ("66299" : GoUInt32), ("66304" : GoUInt32), ("66339" : GoUInt32), ("66349" : GoUInt32),
	("66378" : GoUInt32), ("66384" : GoUInt32), ("66426" : GoUInt32), ("66432" : GoUInt32), ("66499" : GoUInt32), ("66504" : GoUInt32), ("66517" : GoUInt32),
	("66560" : GoUInt32), ("66717" : GoUInt32), ("66720" : GoUInt32), ("66729" : GoUInt32), ("66736" : GoUInt32), ("66771" : GoUInt32), ("66776" : GoUInt32),
	("66811" : GoUInt32), ("66816" : GoUInt32), ("66855" : GoUInt32), ("66864" : GoUInt32), ("66915" : GoUInt32), ("66927" : GoUInt32), ("66927" : GoUInt32),
	("67072" : GoUInt32), ("67382" : GoUInt32), ("67392" : GoUInt32), ("67413" : GoUInt32), ("67424" : GoUInt32), ("67431" : GoUInt32), ("67584" : GoUInt32),
	("67589" : GoUInt32), ("67592" : GoUInt32), ("67640" : GoUInt32), ("67644" : GoUInt32), ("67644" : GoUInt32), ("67647" : GoUInt32), ("67742" : GoUInt32),
	("67751" : GoUInt32), ("67759" : GoUInt32), ("67808" : GoUInt32), ("67829" : GoUInt32), ("67835" : GoUInt32), ("67867" : GoUInt32), ("67871" : GoUInt32),
	("67897" : GoUInt32), ("67903" : GoUInt32), ("67903" : GoUInt32), ("67968" : GoUInt32), ("68023" : GoUInt32), ("68028" : GoUInt32), ("68047" : GoUInt32),
	("68050" : GoUInt32), ("68102" : GoUInt32), ("68108" : GoUInt32), ("68149" : GoUInt32), ("68152" : GoUInt32), ("68154" : GoUInt32), ("68159" : GoUInt32),
	("68168" : GoUInt32), ("68176" : GoUInt32), ("68184" : GoUInt32), ("68192" : GoUInt32), ("68255" : GoUInt32), ("68288" : GoUInt32), ("68326" : GoUInt32),
	("68331" : GoUInt32), ("68342" : GoUInt32), ("68352" : GoUInt32), ("68405" : GoUInt32), ("68409" : GoUInt32), ("68437" : GoUInt32), ("68440" : GoUInt32),
	("68466" : GoUInt32), ("68472" : GoUInt32), ("68497" : GoUInt32), ("68505" : GoUInt32), ("68508" : GoUInt32), ("68521" : GoUInt32), ("68527" : GoUInt32),
	("68608" : GoUInt32), ("68680" : GoUInt32), ("68736" : GoUInt32), ("68786" : GoUInt32), ("68800" : GoUInt32), ("68850" : GoUInt32), ("68858" : GoUInt32),
	("68903" : GoUInt32), ("68912" : GoUInt32), ("68921" : GoUInt32), ("69216" : GoUInt32), ("69293" : GoUInt32), ("69296" : GoUInt32), ("69297" : GoUInt32),
	("69376" : GoUInt32), ("69415" : GoUInt32), ("69424" : GoUInt32), ("69465" : GoUInt32), ("69552" : GoUInt32), ("69579" : GoUInt32), ("69600" : GoUInt32),
	("69622" : GoUInt32), ("69632" : GoUInt32), ("69709" : GoUInt32), ("69714" : GoUInt32), ("69743" : GoUInt32), ("69759" : GoUInt32), ("69825" : GoUInt32),
	("69840" : GoUInt32), ("69864" : GoUInt32), ("69872" : GoUInt32), ("69881" : GoUInt32), ("69888" : GoUInt32), ("69959" : GoUInt32), ("69968" : GoUInt32),
	("70006" : GoUInt32), ("70016" : GoUInt32), ("70132" : GoUInt32), ("70144" : GoUInt32), ("70206" : GoUInt32), ("70272" : GoUInt32), ("70313" : GoUInt32),
	("70320" : GoUInt32), ("70378" : GoUInt32), ("70384" : GoUInt32), ("70393" : GoUInt32), ("70400" : GoUInt32), ("70412" : GoUInt32), ("70415" : GoUInt32),
	("70416" : GoUInt32), ("70419" : GoUInt32), ("70468" : GoUInt32), ("70471" : GoUInt32), ("70472" : GoUInt32), ("70475" : GoUInt32), ("70477" : GoUInt32),
	("70480" : GoUInt32), ("70480" : GoUInt32), ("70487" : GoUInt32), ("70487" : GoUInt32), ("70493" : GoUInt32), ("70499" : GoUInt32), ("70502" : GoUInt32),
	("70508" : GoUInt32), ("70512" : GoUInt32), ("70516" : GoUInt32), ("70656" : GoUInt32), ("70753" : GoUInt32), ("70784" : GoUInt32), ("70855" : GoUInt32),
	("70864" : GoUInt32), ("70873" : GoUInt32), ("71040" : GoUInt32), ("71093" : GoUInt32), ("71096" : GoUInt32), ("71133" : GoUInt32), ("71168" : GoUInt32),
	("71236" : GoUInt32), ("71248" : GoUInt32), ("71257" : GoUInt32), ("71264" : GoUInt32), ("71276" : GoUInt32), ("71296" : GoUInt32), ("71352" : GoUInt32),
	("71360" : GoUInt32), ("71369" : GoUInt32), ("71424" : GoUInt32), ("71450" : GoUInt32), ("71453" : GoUInt32), ("71467" : GoUInt32), ("71472" : GoUInt32),
	("71487" : GoUInt32), ("71680" : GoUInt32), ("71739" : GoUInt32), ("71840" : GoUInt32), ("71922" : GoUInt32), ("71935" : GoUInt32), ("71942" : GoUInt32),
	("71945" : GoUInt32), ("71945" : GoUInt32), ("71948" : GoUInt32), ("71992" : GoUInt32), ("71995" : GoUInt32), ("72006" : GoUInt32), ("72016" : GoUInt32),
	("72025" : GoUInt32), ("72096" : GoUInt32), ("72103" : GoUInt32), ("72106" : GoUInt32), ("72151" : GoUInt32), ("72154" : GoUInt32), ("72164" : GoUInt32),
	("72192" : GoUInt32), ("72263" : GoUInt32), ("72272" : GoUInt32), ("72354" : GoUInt32), ("72384" : GoUInt32), ("72440" : GoUInt32), ("72704" : GoUInt32),
	("72773" : GoUInt32), ("72784" : GoUInt32), ("72812" : GoUInt32), ("72816" : GoUInt32), ("72847" : GoUInt32), ("72850" : GoUInt32), ("72886" : GoUInt32),
	("72960" : GoUInt32), ("73014" : GoUInt32), ("73018" : GoUInt32), ("73031" : GoUInt32), ("73040" : GoUInt32), ("73049" : GoUInt32), ("73056" : GoUInt32),
	("73112" : GoUInt32), ("73120" : GoUInt32), ("73129" : GoUInt32), ("73440" : GoUInt32), ("73464" : GoUInt32), ("73648" : GoUInt32), ("73648" : GoUInt32),
	("73664" : GoUInt32), ("73713" : GoUInt32), ("73727" : GoUInt32), ("74649" : GoUInt32), ("74752" : GoUInt32), ("74868" : GoUInt32), ("74880" : GoUInt32),
	("75075" : GoUInt32), ("77824" : GoUInt32), ("78894" : GoUInt32), ("82944" : GoUInt32), ("83526" : GoUInt32), ("92160" : GoUInt32), ("92728" : GoUInt32),
	("92736" : GoUInt32), ("92777" : GoUInt32), ("92782" : GoUInt32), ("92783" : GoUInt32), ("92880" : GoUInt32), ("92909" : GoUInt32), ("92912" : GoUInt32),
	("92917" : GoUInt32), ("92928" : GoUInt32), ("92997" : GoUInt32), ("93008" : GoUInt32), ("93047" : GoUInt32), ("93053" : GoUInt32), ("93071" : GoUInt32),
	("93760" : GoUInt32), ("93850" : GoUInt32), ("93952" : GoUInt32), ("94026" : GoUInt32), ("94031" : GoUInt32), ("94087" : GoUInt32), ("94095" : GoUInt32),
	("94111" : GoUInt32), ("94176" : GoUInt32), ("94180" : GoUInt32), ("94192" : GoUInt32), ("94193" : GoUInt32), ("94208" : GoUInt32), ("100343" : GoUInt32),
	("100352" : GoUInt32), ("101589" : GoUInt32), ("101632" : GoUInt32), ("101640" : GoUInt32), ("110592" : GoUInt32), ("110878" : GoUInt32),
	("110928" : GoUInt32), ("110930" : GoUInt32), ("110948" : GoUInt32), ("110951" : GoUInt32), ("110960" : GoUInt32), ("111355" : GoUInt32),
	("113664" : GoUInt32), ("113770" : GoUInt32), ("113776" : GoUInt32), ("113788" : GoUInt32), ("113792" : GoUInt32), ("113800" : GoUInt32),
	("113808" : GoUInt32), ("113817" : GoUInt32), ("113820" : GoUInt32), ("113823" : GoUInt32), ("118784" : GoUInt32), ("119029" : GoUInt32),
	("119040" : GoUInt32), ("119078" : GoUInt32), ("119081" : GoUInt32), ("119154" : GoUInt32), ("119163" : GoUInt32), ("119272" : GoUInt32),
	("119296" : GoUInt32), ("119365" : GoUInt32), ("119520" : GoUInt32), ("119539" : GoUInt32), ("119552" : GoUInt32), ("119638" : GoUInt32),
	("119648" : GoUInt32), ("119672" : GoUInt32), ("119808" : GoUInt32), ("119967" : GoUInt32), ("119970" : GoUInt32), ("119970" : GoUInt32),
	("119973" : GoUInt32), ("119974" : GoUInt32), ("119977" : GoUInt32), ("120074" : GoUInt32), ("120077" : GoUInt32), ("120134" : GoUInt32),
	("120138" : GoUInt32), ("120485" : GoUInt32), ("120488" : GoUInt32), ("120779" : GoUInt32), ("120782" : GoUInt32), ("121483" : GoUInt32),
	("121499" : GoUInt32), ("121519" : GoUInt32), ("122880" : GoUInt32), ("122904" : GoUInt32), ("122907" : GoUInt32), ("122922" : GoUInt32),
	("123136" : GoUInt32), ("123180" : GoUInt32), ("123184" : GoUInt32), ("123197" : GoUInt32), ("123200" : GoUInt32), ("123209" : GoUInt32),
	("123214" : GoUInt32), ("123215" : GoUInt32), ("123584" : GoUInt32), ("123641" : GoUInt32), ("123647" : GoUInt32), ("123647" : GoUInt32),
	("124928" : GoUInt32), ("125124" : GoUInt32), ("125127" : GoUInt32), ("125142" : GoUInt32), ("125184" : GoUInt32), ("125259" : GoUInt32),
	("125264" : GoUInt32), ("125273" : GoUInt32), ("125278" : GoUInt32), ("125279" : GoUInt32), ("126065" : GoUInt32), ("126132" : GoUInt32),
	("126209" : GoUInt32), ("126269" : GoUInt32), ("126464" : GoUInt32), ("126500" : GoUInt32), ("126503" : GoUInt32), ("126523" : GoUInt32),
	("126530" : GoUInt32), ("126530" : GoUInt32), ("126535" : GoUInt32), ("126548" : GoUInt32), ("126551" : GoUInt32), ("126564" : GoUInt32),
	("126567" : GoUInt32), ("126619" : GoUInt32), ("126625" : GoUInt32), ("126651" : GoUInt32), ("126704" : GoUInt32), ("126705" : GoUInt32),
	("126976" : GoUInt32), ("127019" : GoUInt32), ("127024" : GoUInt32), ("127123" : GoUInt32), ("127136" : GoUInt32), ("127150" : GoUInt32),
	("127153" : GoUInt32), ("127221" : GoUInt32), ("127232" : GoUInt32), ("127405" : GoUInt32), ("127462" : GoUInt32), ("127490" : GoUInt32),
	("127504" : GoUInt32), ("127547" : GoUInt32), ("127552" : GoUInt32), ("127560" : GoUInt32), ("127568" : GoUInt32), ("127569" : GoUInt32),
	("127584" : GoUInt32), ("127589" : GoUInt32), ("127744" : GoUInt32), ("128727" : GoUInt32), ("128736" : GoUInt32), ("128748" : GoUInt32),
	("128752" : GoUInt32), ("128764" : GoUInt32), ("128768" : GoUInt32), ("128883" : GoUInt32), ("128896" : GoUInt32), ("128984" : GoUInt32),
	("128992" : GoUInt32), ("129003" : GoUInt32), ("129024" : GoUInt32), ("129035" : GoUInt32), ("129040" : GoUInt32), ("129095" : GoUInt32),
	("129104" : GoUInt32), ("129113" : GoUInt32), ("129120" : GoUInt32), ("129159" : GoUInt32), ("129168" : GoUInt32), ("129197" : GoUInt32),
	("129200" : GoUInt32), ("129201" : GoUInt32), ("129280" : GoUInt32), ("129619" : GoUInt32), ("129632" : GoUInt32), ("129645" : GoUInt32),
	("129648" : GoUInt32), ("129652" : GoUInt32), ("129656" : GoUInt32), ("129658" : GoUInt32), ("129664" : GoUInt32), ("129670" : GoUInt32),
	("129680" : GoUInt32), ("129704" : GoUInt32), ("129712" : GoUInt32), ("129718" : GoUInt32), ("129728" : GoUInt32), ("129730" : GoUInt32),
	("129744" : GoUInt32), ("129750" : GoUInt32), ("129792" : GoUInt32), ("129994" : GoUInt32), ("130032" : GoUInt32), ("130041" : GoUInt32),
	("131072" : GoUInt32), ("173789" : GoUInt32), ("173824" : GoUInt32), ("177972" : GoUInt32), ("177984" : GoUInt32), ("178205" : GoUInt32),
	("178208" : GoUInt32), ("183969" : GoUInt32), ("183984" : GoUInt32), ("191456" : GoUInt32), ("194560" : GoUInt32), ("195101" : GoUInt32),
	("196608" : GoUInt32), ("201546" : GoUInt32), ("917760" : GoUInt32), ("917999" : GoUInt32)) : Slice<GoUInt32>);

private var _isNotPrint32:Slice<GoUInt16> = (new Slice<GoUInt16>(0, 0, (12 : GoUInt16), (39 : GoUInt16), (59 : GoUInt16), (62 : GoUInt16), (399 : GoUInt16),
	(926 : GoUInt16), (2057 : GoUInt16), (2102 : GoUInt16), (2134 : GoUInt16), (2291 : GoUInt16), (2564 : GoUInt16), (2580 : GoUInt16), (2584 : GoUInt16),
	(3711 : GoUInt16), (3754 : GoUInt16), (4285 : GoUInt16), (4405 : GoUInt16), (4576 : GoUInt16), (4626 : GoUInt16), (4743 : GoUInt16), (4745 : GoUInt16),
	(4750 : GoUInt16), (4766 : GoUInt16), (4868 : GoUInt16), (4905 : GoUInt16), (4913 : GoUInt16), (4916 : GoUInt16), (4922 : GoUInt16), (5212 : GoUInt16),
	(6420 : GoUInt16), (6423 : GoUInt16), (6454 : GoUInt16), (7177 : GoUInt16), (7223 : GoUInt16), (7336 : GoUInt16), (7431 : GoUInt16), (7434 : GoUInt16),
	(7483 : GoUInt16), (7486 : GoUInt16), (7526 : GoUInt16), (7529 : GoUInt16), (7567 : GoUInt16), (7570 : GoUInt16), (9327 : GoUInt16), (27231 : GoUInt16),
	(27482 : GoUInt16), (27490 : GoUInt16), (54357 : GoUInt16), (54429 : GoUInt16), (54445 : GoUInt16), (54458 : GoUInt16), (54460 : GoUInt16),
	(54468 : GoUInt16), (54534 : GoUInt16), (54549 : GoUInt16), (54557 : GoUInt16), (54586 : GoUInt16), (54591 : GoUInt16), (54597 : GoUInt16),
	(54609 : GoUInt16), (55968 : GoUInt16), (57351 : GoUInt16), (57378 : GoUInt16), (57381 : GoUInt16), (60932 : GoUInt16), (60960 : GoUInt16),
	(60963 : GoUInt16), (60968 : GoUInt16), (60979 : GoUInt16), (60984 : GoUInt16), (60986 : GoUInt16), (61000 : GoUInt16), (61002 : GoUInt16),
	(61004 : GoUInt16), (61008 : GoUInt16), (61011 : GoUInt16), (61016 : GoUInt16), (61018 : GoUInt16), (61020 : GoUInt16), (61022 : GoUInt16),
	(61024 : GoUInt16), (61027 : GoUInt16), (61035 : GoUInt16), (61043 : GoUInt16), (61048 : GoUInt16), (61053 : GoUInt16), (61055 : GoUInt16),
	(61066 : GoUInt16), (61092 : GoUInt16), (61098 : GoUInt16), (61632 : GoUInt16), (61648 : GoUInt16), (63865 : GoUInt16), (63948 : GoUInt16),
	(64403 : GoUInt16)) : Slice<GoUInt16>);

/**
	// isGraphic lists the graphic runes not matched by IsPrint.
**/
private var _isGraphic:Slice<GoUInt16> = (new Slice<GoUInt16>(0, 0, (160 : GoUInt16), (5760 : GoUInt16), (8192 : GoUInt16), (8193 : GoUInt16),
	(8194 : GoUInt16), (8195 : GoUInt16), (8196 : GoUInt16), (8197 : GoUInt16), (8198 : GoUInt16), (8199 : GoUInt16), (8200 : GoUInt16), (8201 : GoUInt16),
	(8202 : GoUInt16), (8239 : GoUInt16), (8287 : GoUInt16), (12288 : GoUInt16)) : Slice<GoUInt16>);

var bitSizeError:(GoString, GoString, GoInt) -> Ref<NumError> = _bitSizeError;
var baseError:(GoString, GoString, GoInt) -> Ref<NumError> = _baseError;
private final _fnParseComplex:GoString = Go.str("ParseComplex");
private final _fnParseFloat:GoString = Go.str("ParseFloat");
private final _intSize:GoUInt64 = ("32" : GoUInt64);

/**
	// IntSize is the size in bits of an int or uint value.
**/
final intSize:GoUInt64 = ("32" : GoUInt64);

private final _maxUint64:GoUInt64 = ("18446744073709551615" : GoUInt64);

/**
	// Maximum shift that we can do in one pass without overflow.
	// A uint has 32 or 64 bits, and we have to be able to accommodate 9<<k.
**/
private final _uintSize:GoUInt64 = ("32" : GoUInt64);

private final _maxShift:GoUInt64 = ("28" : GoUInt64);

/**
	// detailedPowersOfTen{Min,Max}Exp10 is the power of 10 represented by the
	// first and last rows of detailedPowersOfTen. Both bounds are inclusive.
**/
private final _detailedPowersOfTenMinExp10:GoUInt64 = ("0" : GoUInt64);

/**
	// detailedPowersOfTen{Min,Max}Exp10 is the power of 10 represented by the
	// first and last rows of detailedPowersOfTen. Both bounds are inclusive.
**/
private final _detailedPowersOfTenMaxExp10:GoUInt64 = ("347" : GoUInt64);

/**
	// enable fast path for small integers
**/
private final _fastSmalls:InvalidType = true;

private final _nSmalls:GoUInt64 = ("100" : GoUInt64);
private final _smallsString:GoString = Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899");
private final _host32bit:InvalidType = true;
private final _digits:GoString = Go.str("0123456789abcdefghijklmnopqrstuvwxyz");
private final _lowerhex:GoString = Go.str("0123456789abcdef");
private final _upperhex:GoString = Go.str("0123456789ABCDEF");

/**
	// A NumError records a failed conversion.
**/
@:structInit @:using(stdgo.strconv.Strconv.NumError_static_extension) class NumError {
	/**
		// the failing function (ParseBool, ParseInt, ParseUint, ParseFloat, ParseComplex)
	**/
	public var func:GoString = "";

	/**
		// the input
	**/
	public var num:GoString = "";

	/**
		// the reason the conversion failed (e.g. ErrRange, ErrSyntax, etc.)
	**/
	public var err:Error = (null : Error);

	public function new(?func:GoString, ?num:GoString, ?err:Error) {
		if (func != null)
			this.func = func;
		if (num != null)
			this.num = num;
		if (err != null)
			this.err = err;
	}

	public function __copy__() {
		return new NumError(func, num, err);
	}
}

@:structInit @:using(stdgo.strconv.Strconv.T_decimal_static_extension) private class T_decimal {
	/**
		// digits, big-endian representation
	**/
	public var _d:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...800) (0 : GoUInt8)]);

	/**
		// number of digits used
	**/
	public var _nd:GoInt = 0;

	/**
		// decimal point
	**/
	public var _dp:GoInt = 0;

	/**
		// negative flag
	**/
	public var _neg:Bool = false;

	/**
		// discarded nonzero digits beyond d[:nd]
	**/
	public var _trunc:Bool = false;

	public function new(?_d:GoArray<GoUInt8>, ?_nd:GoInt, ?_dp:GoInt, ?_neg:Bool, ?_trunc:Bool) {
		if (_d != null)
			this._d = _d;
		if (_nd != null)
			this._nd = _nd;
		if (_dp != null)
			this._dp = _dp;
		if (_neg != null)
			this._neg = _neg;
		if (_trunc != null)
			this._trunc = _trunc;
	}

	public function __copy__() {
		return new T_decimal(_d, _nd, _dp, _neg, _trunc);
	}
}

@:structInit private class T_leftCheat {
	/**
		// number of new digits
	**/
	public var _delta:GoInt = 0;

	/**
		// minus one digit if original < a.
	**/
	public var _cutoff:GoString = "";

	public function new(?_delta:GoInt, ?_cutoff:GoString) {
		if (_delta != null)
			this._delta = _delta;
		if (_cutoff != null)
			this._cutoff = _cutoff;
	}

	public function __copy__() {
		return new T_leftCheat(_delta, _cutoff);
	}
}

/**
	// TODO: move elsewhere?
**/
@:structInit private class T_floatInfo {
	public var _mantbits:GoUInt = 0;
	public var _expbits:GoUInt = 0;
	public var _bias:GoInt = 0;

	public function new(?_mantbits:GoUInt, ?_expbits:GoUInt, ?_bias:GoInt) {
		if (_mantbits != null)
			this._mantbits = _mantbits;
		if (_expbits != null)
			this._expbits = _expbits;
		if (_bias != null)
			this._bias = _bias;
	}

	public function __copy__() {
		return new T_floatInfo(_mantbits, _expbits, _bias);
	}
}

@:structInit private class T_decimalSlice {
	public var _d:Slice<GoUInt8> = (null : Slice<GoUInt8>);
	public var _nd:GoInt = 0;
	public var _dp:GoInt = 0;
	public var _neg:Bool = false;

	public function new(?_d:Slice<GoUInt8>, ?_nd:GoInt, ?_dp:GoInt, ?_neg:Bool) {
		if (_d != null)
			this._d = _d;
		if (_nd != null)
			this._nd = _nd;
		if (_dp != null)
			this._dp = _dp;
		if (_neg != null)
			this._neg = _neg;
	}

	public function __copy__() {
		return new T_decimalSlice(_d, _nd, _dp, _neg);
	}
}

/**
	// ParseBool returns the boolean value represented by the string.
	// It accepts 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False.
	// Any other value returns an error.
**/
function parseBool(_str:GoString):{var _0:Bool; var _1:Error;} {
	if (_str == (Go.str("1")) || _str == (Go.str("t")) || _str == (Go.str("T")) || _str == (Go.str("true")) || _str == (Go.str("TRUE"))
		|| _str == (Go.str("True"))) {
		return {_0: true, _1: (null : Error)};
	} else if (_str == (Go.str("0")) || _str == (Go.str("f")) || _str == (Go.str("F")) || _str == (Go.str("false")) || _str == (Go.str("FALSE"))
		|| _str == (Go.str("False"))) {
		return {_0: false, _1: (null : Error)};
	};
	return {_0: false, _1: Go.asInterface(_syntaxError(Go.str("ParseBool"), _str))};
}

/**
	// FormatBool returns "true" or "false" according to the value of b.
**/
function formatBool(_b:Bool):GoString {
	if (_b) {
		return Go.str("true");
	};
	return Go.str("false");
}

/**
	// AppendBool appends "true" or "false", according to the value of b,
	// to dst and returns the extended buffer.
**/
function appendBool(_dst:Slice<GoByte>, _b:Bool):Slice<GoByte> {
	if (_b) {
		return (_dst.__append__(...Go.str("true").__toArray__()));
	};
	return (_dst.__append__(...Go.str("false").__toArray__()));
}

/**
	// convErr splits an error returned by parseFloatPrefix
	// into a syntax or range error for ParseComplex.
**/
function _convErr(_err:Error, _s:GoString):{var _0:Error; var _1:Error;} {
	var _syntax:Error = (null : Error), _range_:Error = (null : Error);
	{
		var __tmp__ = try {
			{value: Go.typeAssert((Go.toInterface(_err) : Ref<NumError>)), ok: true};
		} catch (_) {
			{value: (null : NumError), ok: false};
		}, _x = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			_x.func = Go.str("ParseComplex");
			_x.num = _s;
			if (Go.toInterface(_x.err) == (Go.toInterface(errRange))) {
				return {_0: (null : Error), _1: Go.asInterface(_x)};
			};
		};
	};
	return {_0: _err, _1: (null : Error)};
}

/**
	// ParseComplex converts the string s to a complex number
	// with the precision specified by bitSize: 64 for complex64, or 128 for complex128.
	// When bitSize=64, the result still has type complex128, but it will be
	// convertible to complex64 without changing its value.
	//
	// The number represented by s must be of the form N, Ni, or N±Ni, where N stands
	// for a floating-point number as recognized by ParseFloat, and i is the imaginary
	// component. If the second N is unsigned, a + sign is required between the two components
	// as indicated by the ±. If the second N is NaN, only a + sign is accepted.
	// The form may be parenthesized and cannot contain any spaces.
	// The resulting complex number consists of the two components converted by ParseFloat.
	//
	// The errors that ParseComplex returns have concrete type *NumError
	// and include err.Num = s.
	//
	// If s is not syntactically well-formed, ParseComplex returns err.Err = ErrSyntax.
	//
	// If s is syntactically well-formed but either component is more than 1/2 ULP
	// away from the largest floating point number of the given component's size,
	// ParseComplex returns err.Err = ErrRange and c = ±Inf for the respective component.
**/
function parseComplex(_s:GoString, _bitSize:GoInt):{var _0:GoComplex128; var _1:Error;} {
	var _size:GoInt = (64 : GoInt);
	if (_bitSize == ((64 : GoInt))) {
		_size = (32 : GoInt);
	};
	var _orig:GoString = _s;
	if (((_s.length >= (2 : GoInt)) && (_s[(0 : GoInt)] == ("(".code : GoRune)))
		&& (_s[(_s.length) - (1 : GoInt)] == (")".code : GoRune))) {
		_s = (_s.__slice__((1 : GoInt), (_s.length) - (1 : GoInt)) : GoString);
	};
	var _pending:Error = (null : Error);
	var __tmp__ = _parseFloatPrefix(_s, _size),
		_re:GoFloat64 = __tmp__._0,
		_n:GoInt = __tmp__._1,
		_err:Error = __tmp__._2;
	if (_err != null) {
		{
			var __tmp__ = _convErr(_err, _orig);
			_err = __tmp__._0;
			_pending = __tmp__._1;
		};
		if (_err != null) {
			return {_0: new GoComplex128(0, 0), _1: _err};
		};
	};
	_s = (_s.__slice__(_n) : GoString);
	if ((_s.length) == ((0 : GoInt))) {
		return {_0: new GoComplex128(_re, (0 : GoFloat64)), _1: _pending};
	};
	{
		var __switchIndex__ = -1;
		while (true) {
			if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _s[(0 : GoInt)] == (("+".code : GoRune)))) {
				if ((_s.length > (1 : GoInt)) && (_s[(1 : GoInt)] != ("+".code : GoRune))) {
					_s = (_s.__slice__((1 : GoInt)) : GoString);
				};
				break;
				break;
			} else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _s[(0 : GoInt)] == (("-".code : GoRune)))) {
				break;
			} else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _s[(0 : GoInt)] == (("i".code : GoRune)))) {
				if ((_s.length) == ((1 : GoInt))) {
					return {_0: new GoComplex128((0 : GoFloat64), _re), _1: _pending};
				};
				@:fallthrough {
					__switchIndex__ = 3;
					continue;
				};
				break;
			} else {
				return {_0: new GoComplex128(0, 0), _1: Go.asInterface(_syntaxError(Go.str("ParseComplex"), _orig))};
				break;
			};
			break;
		};
	};
	var __tmp__ = _parseFloatPrefix(_s, _size),
		_im:GoFloat64 = __tmp__._0,
		_n:GoInt = __tmp__._1,
		_err:Error = __tmp__._2;
	if (_err != null) {
		{
			var __tmp__ = _convErr(_err, _orig);
			_err = __tmp__._0;
			_pending = __tmp__._1;
		};
		if (_err != null) {
			return {_0: new GoComplex128(0, 0), _1: _err};
		};
	};
	_s = (_s.__slice__(_n) : GoString);
	if (_s != (Go.str("i"))) {
		return {_0: new GoComplex128(0, 0), _1: Go.asInterface(_syntaxError(Go.str("ParseComplex"), _orig))};
	};
	return {_0: new GoComplex128(_re, _im), _1: _pending};
}

/**
	// commonPrefixLenIgnoreCase returns the length of the common
	// prefix of s and prefix, with the character case of s ignored.
	// The prefix argument must be all lower-case.
**/
function _commonPrefixLenIgnoreCase(_s:GoString, _prefix:GoString):GoInt {
	var _n:GoInt = (_prefix.length);
	if (_n > (_s.length)) {
		_n = (_s.length);
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _n, _i++, {
			var _c:GoUInt8 = _s[_i];
			if ((("A".code : GoRune) <= _c) && (_c <= ("Z".code : GoRune))) {
				_c = _c + ((32 : GoUInt8));
			};
			if (_c != (_prefix[_i])) {
				return _i;
			};
		});
	};
	return _n;
}

/**
	// special returns the floating-point value for the special,
	// possibly signed floating-point representations inf, infinity,
	// and NaN. The result is ok if a prefix of s contains one
	// of these representations and n is the length of that prefix.
	// The character case is ignored.
**/
function _special(_s:GoString):{var _0:GoFloat64; var _1:GoInt; var _2:Bool;} {
	var _f:GoFloat64 = (0 : GoFloat64),
		_n:GoInt = (0 : GoInt),
		_ok:Bool = false;
	if ((_s.length) == ((0 : GoInt))) {
		return {_0: (0 : GoFloat64), _1: (0 : GoInt), _2: false};
	};
	var _sign:GoInt = (1 : GoInt);
	var _nsign:GoInt = (0 : GoInt);
	{
		var __switchIndex__ = -1;
		while (true) {
			if (__switchIndex__ == 0
				|| (__switchIndex__ == -1 && _s[(0 : GoInt)] == (("+".code : GoRune)) || _s[(0 : GoInt)] == (("-".code : GoRune)))) {
				if (_s[(0 : GoInt)] == (("-".code : GoRune))) {
					_sign = (-1 : GoInt);
				};
				_nsign = (1 : GoInt);
				_s = (_s.__slice__((1 : GoInt)) : GoString);
				@:fallthrough {
					__switchIndex__ = 1;
					continue;
				};
				break;
			} else if (__switchIndex__ == 1
				|| (__switchIndex__ == -1 && _s[(0 : GoInt)] == (("i".code : GoRune)) || _s[(0 : GoInt)] == (("I".code : GoRune)))) {
				var _n:GoInt = _commonPrefixLenIgnoreCase(_s, Go.str("infinity"));
				if (((3 : GoInt) < _n) && (_n < (8:GoInt))) {
					_n = (3 : GoInt);
				};
				if ((_n == (3 : GoInt)) || (_n == (8 : GoInt))) {
					return {_0: stdgo.math.Math.inf(_sign), _1: _nsign + _n, _2: true};
				};
				break;
				break;
			} else if (__switchIndex__ == 2
				|| (__switchIndex__ == -1 && _s[(0 : GoInt)] == (("n".code : GoRune)) || _s[(0 : GoInt)] == (("N".code : GoRune)))) {
				if (_commonPrefixLenIgnoreCase(_s, Go.str("nan")) == ((3 : GoInt))) {
					return {_0: stdgo.math.Math.naN(), _1: (3 : GoInt), _2: true};
				};
				break;
				break;
			};
			break;
		};
	};
	return {_0: (0 : GoFloat64), _1: (0 : GoInt), _2: false};
}

/**
	// readFloat reads a decimal or hexadecimal mantissa and exponent from a float
	// string representation in s; the number may be followed by other characters.
	// readFloat reports the number of bytes consumed (i), and whether the number
	// is valid (ok).
**/
function _readFloat(_s:GoString):{
	var _0:GoUInt64;
	var _1:GoInt;
	var _2:Bool;
	var _3:Bool;
	var _4:Bool;
	var _5:GoInt;
	var _6:Bool;
} {
	return stdgo.internal.Macro.controlFlow({
		var _mantissa:GoUInt64 = (0 : GoUInt64),
			_exp:GoInt = (0 : GoInt),
			_neg:Bool = false,
			_trunc:Bool = false,
			_hex:Bool = false,
			_i:GoInt = (0 : GoInt),
			_ok:Bool = false;
		var _underscores:Bool = false;
		if (_i >= (_s.length)) {
			return {
				_0: _mantissa,
				_1: _exp,
				_2: _neg,
				_3: _trunc,
				_4: _hex,
				_5: _i,
				_6: _ok
			};
		};
		if (_s[_i] == (("+".code : GoRune))) {
			_i++;
		} else if (_s[_i] == (("-".code : GoRune))) {
			_neg = true;
			_i++;
		};
		var _base:GoUInt64 = (("10" : GoUInt64) : GoUInt64);
		var _maxMantDigits:GoInt = (19 : GoInt);
		var _expChar:GoUInt8 = (("e".code : GoRune) : GoByte);
		if ((((_i + (2 : GoInt)) < _s.length) && (_s[_i] == ("0".code : GoRune)))
			&& (_lower(_s[_i + (1 : GoInt)]) == ("x".code : GoRune))) {
			_base = ("16" : GoUInt64);
			_maxMantDigits = (16 : GoInt);
			_i = _i + ((2 : GoInt));
			_expChar = ("p".code : GoRune);
			_hex = true;
		};
		var _sawdot:Bool = false;
		var _sawdigits:Bool = false;
		var _nd:GoInt = (0 : GoInt);
		var _ndMant:GoInt = (0 : GoInt);
		var _dp:GoInt = (0 : GoInt);
		@:label("loop") Go.cfor(_i < (_s.length), _i++, {
			{
				var _c:GoUInt8 = _s[_i];
				{
					var __switchIndex__ = -1;
					while (true) {
						if (true == (_c == ("_".code : GoRune))) {
							_underscores = true;
							continue;
							break;
						} else if (true == (_c == (".".code : GoRune))) {
							if (_sawdot) {
								@:break {
									____exit____ = true;
									____break____ = true;
									break;
								};
							};
							_sawdot = true;
							_dp = _nd;
							continue;
							break;
						} else if (true == ((("0".code : GoRune) <= _c) && (_c <= ("9".code : GoRune)))) {
							_sawdigits = true;
							if ((_c == ("0".code : GoRune)) && (_nd == (0 : GoInt))) {
								_dp--;
								continue;
							};
							_nd++;
							if (_ndMant < _maxMantDigits) {
								_mantissa = _mantissa * (_base);
								_mantissa = _mantissa + ((_c - ("0".code : GoRune) : GoUInt64));
								_ndMant++;
							} else if (_c != (("0".code : GoRune))) {
								_trunc = true;
							};
							continue;
							break;
						} else if (true == (((_base == ("16" : GoUInt64)) && (("a".code : GoRune) <= _lower(_c)))
							&& (_lower(_c) <= ("f".code : GoRune)))) {
							_sawdigits = true;
							_nd++;
							if (_ndMant < _maxMantDigits) {
								_mantissa = _mantissa * (("16" : GoUInt64));
								_mantissa = _mantissa + (((_lower(_c) - ("a".code : GoRune)) + (10 : GoUInt8) : GoUInt64));
								_ndMant++;
							} else {
								_trunc = true;
							};
							continue;
							break;
						};
						break;
					};
				};
			};
			break;
		});
		if (!_sawdigits) {
			return {
				_0: _mantissa,
				_1: _exp,
				_2: _neg,
				_3: _trunc,
				_4: _hex,
				_5: _i,
				_6: _ok
			};
		};
		if (!_sawdot) {
			_dp = _nd;
		};
		if (_base == (("16" : GoUInt64))) {
			_dp = _dp * ((4 : GoInt));
			_ndMant = _ndMant * ((4 : GoInt));
		};
		if ((_i < _s.length) && (_lower(_s[_i]) == _expChar)) {
			_i++;
			if (_i >= (_s.length)) {
				return {
					_0: _mantissa,
					_1: _exp,
					_2: _neg,
					_3: _trunc,
					_4: _hex,
					_5: _i,
					_6: _ok
				};
			};
			var _esign:GoInt = (1 : GoInt);
			if (_s[_i] == (("+".code : GoRune))) {
				_i++;
			} else if (_s[_i] == (("-".code : GoRune))) {
				_i++;
				_esign = (-1 : GoInt);
			};
			if (((_i >= _s.length) || (_s[_i] < ("0".code : GoRune))) || (_s[_i] > ("9".code : GoRune))) {
				return {
					_0: _mantissa,
					_1: _exp,
					_2: _neg,
					_3: _trunc,
					_4: _hex,
					_5: _i,
					_6: _ok
				};
			};
			var _e:GoInt = (0 : GoInt);
			Go.cfor((_i < _s.length)
				&& (((("0".code : GoRune) <= _s[_i]) && (_s[_i] <= ("9".code : GoRune))) || (_s[_i] == ("_".code : GoRune))), _i++, {
					if (_s[_i] == (("_".code : GoRune))) {
						_underscores = true;
						continue;
					};
					if (_e < (10000:GoInt)) {
						_e = ((_e * (10 : GoInt)) + (_s[_i] : GoInt)) - ("0".code : GoRune);
					};
				});
			_dp = _dp + (_e * _esign);
		} else if (_base == (("16" : GoUInt64))) {
			return {
				_0: _mantissa,
				_1: _exp,
				_2: _neg,
				_3: _trunc,
				_4: _hex,
				_5: _i,
				_6: _ok
			};
		};
		if (_mantissa != (("0" : GoUInt64))) {
			_exp = _dp - _ndMant;
		};
		if (_underscores && !_underscoreOK((_s.__slice__(0, _i) : GoString))) {
			return {
				_0: _mantissa,
				_1: _exp,
				_2: _neg,
				_3: _trunc,
				_4: _hex,
				_5: _i,
				_6: _ok
			};
		};
		_ok = true;
		return {
			_0: _mantissa,
			_1: _exp,
			_2: _neg,
			_3: _trunc,
			_4: _hex,
			_5: _i,
			_6: _ok
		};
	});
}

/**
	// If possible to convert decimal representation to 64-bit float f exactly,
	// entirely in floating-point math, do so, avoiding the expense of decimalToFloatBits.
	// Three common cases:
	//
	//	value is exact integer
	//	value is exact integer * exact power of ten
	//	value is exact integer / exact power of ten
	//
	// These all produce potentially inexact but correctly rounded answers.
**/
function _atof64exact(_mantissa:GoUInt64, _exp:GoInt, _neg:Bool):{var _0:GoFloat64; var _1:Bool;} {
	var _f:GoFloat64 = (0 : GoFloat64), _ok:Bool = false;
	if (_mantissa >> _float64info._mantbits != (("0" : GoUInt64))) {
		return {_0: _f, _1: _ok};
	};
	_f = (_mantissa : GoFloat64);
	if (_neg) {
		_f = -_f;
	};
	if (_exp == ((0 : GoInt))) {
		return {_0: _f, _1: true};
	} else if ((_exp > (0 : GoInt)) && (_exp <= (37 : GoInt))) {
		if (_exp > (22 : GoInt)) {
			_f = _f * (_float64pow10[_exp - (22 : GoInt)]);
			_exp = (22 : GoInt);
		};
		if ((_f > (1e+15 : GoFloat64)) || (_f < (-1e+15:GoFloat64))) {
			return {_0: _f, _1: _ok};
		};
		return {_0: _f * _float64pow10[_exp], _1: true};
	} else if ((_exp < (0:GoInt)) && (_exp >= (-22 : GoInt))) {
		return {_0: _f / _float64pow10[-_exp], _1: true};
	};
	return {_0: _f, _1: _ok};
}

/**
	// If possible to compute mantissa*10^exp to 32-bit float f exactly,
	// entirely in floating-point math, do so, avoiding the machinery above.
**/
function _atof32exact(_mantissa:GoUInt64, _exp:GoInt, _neg:Bool):{var _0:GoFloat32; var _1:Bool;} {
	var _f:GoFloat32 = (0 : GoFloat32), _ok:Bool = false;
	if (_mantissa >> _float32info._mantbits != (("0" : GoUInt64))) {
		return {_0: _f, _1: _ok};
	};
	_f = (_mantissa : GoFloat32);
	if (_neg) {
		_f = -_f;
	};
	if (_exp == ((0 : GoInt))) {
		return {_0: _f, _1: true};
	} else if ((_exp > (0 : GoInt)) && (_exp <= (17 : GoInt))) {
		if (_exp > (10 : GoInt)) {
			_f = _f * (_float32pow10[_exp - (10 : GoInt)]);
			_exp = (10 : GoInt);
		};
		if ((_f > (1e+07 : GoFloat64)) || (_f < (-1e+07:GoFloat64))) {
			return {_0: _f, _1: _ok};
		};
		return {_0: _f * _float32pow10[_exp], _1: true};
	} else if ((_exp < (0:GoInt)) && (_exp >= (-10 : GoInt))) {
		return {_0: _f / _float32pow10[-_exp], _1: true};
	};
	return {_0: _f, _1: _ok};
}

/**
	// atofHex converts the hex floating-point string s
	// to a rounded float32 or float64 value (depending on flt==&float32info or flt==&float64info)
	// and returns it as a float64.
	// The string s has already been parsed into a mantissa, exponent, and sign (neg==true for negative).
	// If trunc is true, trailing non-zero bits have been omitted from the mantissa.
**/
function _atofHex(_s:GoString, _flt:Ref<T_floatInfo>, _mantissa:GoUInt64, _exp:GoInt, _neg:Bool, _trunc:Bool):{var _0:GoFloat64; var _1:Error;} {
	var _maxExp:GoInt = (((1 : GoInt) << _flt._expbits) + _flt._bias) - (2 : GoInt);
	var _minExp:GoInt = _flt._bias + (1 : GoInt);
	_exp = _exp + ((_flt._mantbits : GoInt));
	while ((_mantissa != ("0" : GoUInt64)) && ((_mantissa >> (_flt._mantbits + (("2" : GoUInt) : GoUInt))) == ("0" : GoUInt64))) {
		_mantissa = _mantissa << (("1" : GoUInt64));
		_exp--;
	};
	if (_trunc) {
		_mantissa = _mantissa | (("1" : GoUInt64));
	};
	while (_mantissa >> (((("1" : GoUInt) : GoUInt) + _flt._mantbits) + (("2" : GoUInt) : GoUInt)) != (("0" : GoUInt64))) {
		_mantissa = (_mantissa >> (("1" : GoUInt64) : GoUInt64)) | (_mantissa & (("1" : GoUInt64) : GoUInt64));
		_exp++;
	};
	while ((_mantissa > (("1" : GoUInt64) : GoUInt64)) && (_exp < (_minExp - (2 : GoInt)))) {
		_mantissa = (_mantissa >> (("1" : GoUInt64) : GoUInt64)) | (_mantissa & (("1" : GoUInt64) : GoUInt64));
		_exp++;
	};
	var _round:GoUInt64 = _mantissa & ("3" : GoUInt64);
	_mantissa = _mantissa >> (("2" : GoUInt64));
	_round = _round | (_mantissa & (("1" : GoUInt64) : GoUInt64));
	_exp = _exp + ((2 : GoInt));
	if (_round == (("3" : GoUInt64))) {
		_mantissa++;
		if (_mantissa == ((("1" : GoUInt64) : GoUInt64) << ((("1" : GoUInt) : GoUInt) + _flt._mantbits))) {
			_mantissa = _mantissa >> (("1" : GoUInt64));
			_exp++;
		};
	};
	if (_mantissa >> _flt._mantbits == (("0" : GoUInt64))) {
		_exp = _flt._bias;
	};
	var _err:Error = (null : Error);
	if (_exp > _maxExp) {
		_mantissa = ("1" : GoUInt64) << _flt._mantbits;
		_exp = _maxExp + (1 : GoInt);
		_err = Go.asInterface(_rangeError(Go.str("ParseFloat"), _s));
	};
	var _bits:GoUInt64 = _mantissa & (((("1" : GoUInt64) : GoUInt64) << _flt._mantbits) - (("1" : GoUInt64) : GoUInt64));
	_bits = _bits | (((_exp - _flt._bias) & (((1 : GoInt) << _flt._expbits) - (1 : GoInt)) : GoUInt64) << _flt._mantbits);
	if (_neg) {
		_bits = _bits | (((("1" : GoUInt64) : GoUInt64) << _flt._mantbits) << _flt._expbits);
	};
	if (_flt == ((_float32info : Ref<T_floatInfo>))) {
		return {_0: (stdgo.math.Math.float32frombits((_bits : GoUInt32)) : GoFloat64), _1: _err};
	};
	return {_0: stdgo.math.Math.float64frombits(_bits), _1: _err};
}

function _atof32(_s:GoString):{var _0:GoFloat32; var _1:GoInt; var _2:Error;} {
	var _f:GoFloat32 = (0 : GoFloat32),
		_n:GoInt = (0 : GoInt),
		_err:Error = (null : Error);
	{
		var __tmp__ = _special(_s),
			_val:GoFloat64 = __tmp__._0,
			_n:GoInt = __tmp__._1,
			_ok:Bool = __tmp__._2;
		if (_ok) {
			return {_0: (_val : GoFloat32), _1: _n, _2: (null : Error)};
		};
	};
	var __tmp__ = _readFloat(_s),
		_mantissa:GoUInt64 = __tmp__._0,
		_exp:GoInt = __tmp__._1,
		_neg:Bool = __tmp__._2,
		_trunc:Bool = __tmp__._3,
		_hex:Bool = __tmp__._4,
		_n:GoInt = __tmp__._5,
		_ok:Bool = __tmp__._6;
	if (!_ok) {
		return {_0: (0 : GoFloat64), _1: _n, _2: Go.asInterface(_syntaxError(Go.str("ParseFloat"), _s))};
	};
	if (_hex) {
		var __tmp__ = _atofHex((_s.__slice__(0, _n) : GoString), (_float32info : Ref<T_floatInfo>), _mantissa, _exp, _neg, _trunc),
			_f:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
		return {_0: (_f : GoFloat32), _1: _n, _2: _err};
	};
	if (_optimize) {
		if (!_trunc) {
			{
				var __tmp__ = _atof32exact(_mantissa, _exp, _neg),
					_f:GoFloat32 = __tmp__._0,
					_ok:Bool = __tmp__._1;
				if (_ok) {
					return {_0: _f, _1: _n, _2: (null : Error)};
				};
			};
		};
		var __tmp__ = _eiselLemire32(_mantissa, _exp, _neg),
			_f:GoFloat32 = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (_ok) {
			if (!_trunc) {
				return {_0: _f, _1: _n, _2: (null : Error)};
			};
			var __tmp__ = _eiselLemire32(_mantissa + ("1" : GoUInt64), _exp, _neg),
				_fUp:GoFloat32 = __tmp__._0,
				_ok:Bool = __tmp__._1;
			if (_ok && (_f == _fUp)) {
				return {_0: _f, _1: _n, _2: (null : Error)};
			};
		};
	};
	var _d:T_decimal = ({} : T_decimal);
	if (!_d._set((_s.__slice__(0, _n) : GoString))) {
		return {_0: (0 : GoFloat64), _1: _n, _2: Go.asInterface(_syntaxError(Go.str("ParseFloat"), _s))};
	};
	var __tmp__ = _d._floatBits((_float32info : Ref<T_floatInfo>)),
		_b:GoUInt64 = __tmp__._0,
		_ovf:Bool = __tmp__._1;
	_f = stdgo.math.Math.float32frombits((_b : GoUInt32));
	if (_ovf) {
		_err = Go.asInterface(_rangeError(Go.str("ParseFloat"), _s));
	};
	return {_0: _f, _1: _n, _2: _err};
}

function _atof64(_s:GoString):{var _0:GoFloat64; var _1:GoInt; var _2:Error;} {
	var _f:GoFloat64 = (0 : GoFloat64),
		_n:GoInt = (0 : GoInt),
		_err:Error = (null : Error);
	{
		var __tmp__ = _special(_s),
			_val:GoFloat64 = __tmp__._0,
			_n:GoInt = __tmp__._1,
			_ok:Bool = __tmp__._2;
		if (_ok) {
			return {_0: _val, _1: _n, _2: (null : Error)};
		};
	};
	var __tmp__ = _readFloat(_s),
		_mantissa:GoUInt64 = __tmp__._0,
		_exp:GoInt = __tmp__._1,
		_neg:Bool = __tmp__._2,
		_trunc:Bool = __tmp__._3,
		_hex:Bool = __tmp__._4,
		_n:GoInt = __tmp__._5,
		_ok:Bool = __tmp__._6;
	if (!_ok) {
		return {_0: (0 : GoFloat64), _1: _n, _2: Go.asInterface(_syntaxError(Go.str("ParseFloat"), _s))};
	};
	if (_hex) {
		var __tmp__ = _atofHex((_s.__slice__(0, _n) : GoString), (_float64info : Ref<T_floatInfo>), _mantissa, _exp, _neg, _trunc),
			_f:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
		return {_0: _f, _1: _n, _2: _err};
	};
	if (_optimize) {
		if (!_trunc) {
			{
				var __tmp__ = _atof64exact(_mantissa, _exp, _neg),
					_f:GoFloat64 = __tmp__._0,
					_ok:Bool = __tmp__._1;
				if (_ok) {
					return {_0: _f, _1: _n, _2: (null : Error)};
				};
			};
		};
		var __tmp__ = _eiselLemire64(_mantissa, _exp, _neg),
			_f:GoFloat64 = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (_ok) {
			if (!_trunc) {
				return {_0: _f, _1: _n, _2: (null : Error)};
			};
			var __tmp__ = _eiselLemire64(_mantissa + ("1" : GoUInt64), _exp, _neg),
				_fUp:GoFloat64 = __tmp__._0,
				_ok:Bool = __tmp__._1;
			if (_ok && (_f == _fUp)) {
				return {_0: _f, _1: _n, _2: (null : Error)};
			};
		};
	};
	var _d:T_decimal = ({} : T_decimal);
	if (!_d._set((_s.__slice__(0, _n) : GoString))) {
		return {_0: (0 : GoFloat64), _1: _n, _2: Go.asInterface(_syntaxError(Go.str("ParseFloat"), _s))};
	};
	var __tmp__ = _d._floatBits((_float64info : Ref<T_floatInfo>)),
		_b:GoUInt64 = __tmp__._0,
		_ovf:Bool = __tmp__._1;
	_f = stdgo.math.Math.float64frombits(_b);
	if (_ovf) {
		_err = Go.asInterface(_rangeError(Go.str("ParseFloat"), _s));
	};
	return {_0: _f, _1: _n, _2: _err};
}

/**
	// ParseFloat converts the string s to a floating-point number
	// with the precision specified by bitSize: 32 for float32, or 64 for float64.
	// When bitSize=32, the result still has type float64, but it will be
	// convertible to float32 without changing its value.
	//
	// ParseFloat accepts decimal and hexadecimal floating-point numbers
	// as defined by the Go syntax for [floating-point literals].
	// If s is well-formed and near a valid floating-point number,
	// ParseFloat returns the nearest floating-point number rounded
	// using IEEE754 unbiased rounding.
	// (Parsing a hexadecimal floating-point value only rounds when
	// there are more bits in the hexadecimal representation than
	// will fit in the mantissa.)
	//
	// The errors that ParseFloat returns have concrete type *NumError
	// and include err.Num = s.
	//
	// If s is not syntactically well-formed, ParseFloat returns err.Err = ErrSyntax.
	//
	// If s is syntactically well-formed but is more than 1/2 ULP
	// away from the largest floating point number of the given size,
	// ParseFloat returns f = ±Inf, err.Err = ErrRange.
	//
	// ParseFloat recognizes the string "NaN", and the (possibly signed) strings "Inf" and "Infinity"
	// as their respective special floating point values. It ignores case when matching.
	//
	// [floating-point literals]: https://go.dev/ref/spec#Floating-point_literals
**/
function parseFloat(_s:GoString, _bitSize:GoInt):{var _0:GoFloat64; var _1:Error;} {
	var __tmp__ = _parseFloatPrefix(_s, _bitSize),
		_f:GoFloat64 = __tmp__._0,
		_n:GoInt = __tmp__._1,
		_err:Error = __tmp__._2;
	if ((_n != (_s.length))
		&& ((_err == null) || (Go.toInterface(Go.typeAssert((Go.toInterface(_err) : Ref<NumError>)).err) != Go.toInterface(errSyntax)))) {
		return {_0: (0 : GoFloat64), _1: Go.asInterface(_syntaxError(Go.str("ParseFloat"), _s))};
	};
	return {_0: _f, _1: _err};
}

function _parseFloatPrefix(_s:GoString, _bitSize:GoInt):{var _0:GoFloat64; var _1:GoInt; var _2:Error;} {
	if (_bitSize == ((32 : GoInt))) {
		var __tmp__ = _atof32(_s),
			_f:GoFloat32 = __tmp__._0,
			_n:GoInt = __tmp__._1,
			_err:Error = __tmp__._2;
		return {_0: (_f : GoFloat64), _1: _n, _2: _err};
	};
	return _atof64(_s);
}

/**
	// lower(c) is a lower-case letter if and only if
	// c is either that lower-case letter or the equivalent upper-case letter.
	// Instead of writing c == 'x' || c == 'X' one can write lower(c) == 'x'.
	// Note that lower of non-letters can produce other non-letters.
**/
function _lower(_c:GoByte):GoByte {
	return _c | (32 : GoUInt8);
}

function _syntaxError(_fn:GoString, _str:GoString):Ref<NumError> {
	return ((new NumError(_fn, _str, errSyntax) : NumError) : Ref<NumError>);
}

function _rangeError(_fn:GoString, _str:GoString):Ref<NumError> {
	return ((new NumError(_fn, _str, errRange) : NumError) : Ref<NumError>);
}

function _baseError(_fn:GoString, _str:GoString, _base:GoInt):Ref<NumError> {
	return ((new NumError(_fn, _str, stdgo.errors.Errors.new_(Go.str("invalid base ") + itoa(_base))) : NumError) : Ref<NumError>);
}

function _bitSizeError(_fn:GoString, _str:GoString, _bitSize:GoInt):Ref<NumError> {
	return ((new NumError(_fn, _str, stdgo.errors.Errors.new_(Go.str("invalid bit size ") + itoa(_bitSize))) : NumError) : Ref<NumError>);
}

/**
	// ParseUint is like ParseInt but for unsigned numbers.
	//
	// A sign prefix is not permitted.
**/
function parseUint(_s:GoString, _base:GoInt, _bitSize:GoInt):{var _0:GoUInt64; var _1:Error;} {
	{};
	if (_s == (Go.str())) {
		return {_0: ("0" : GoUInt64), _1: Go.asInterface(_syntaxError(Go.str("ParseUint"), _s))};
	};
	var _base0:Bool = _base == ((0 : GoInt));
	var _s0:GoString = _s;
	if (((2 : GoInt) <= _base) && (_base <= (36 : GoInt))) {} else if (_base == ((0 : GoInt))) {
		_base = (10 : GoInt);
		if (_s[(0 : GoInt)] == (("0".code : GoRune))) {
			if ((_s.length >= (3 : GoInt)) && (_lower(_s[(1 : GoInt)]) == ("b".code : GoRune))) {
				_base = (2 : GoInt);
				_s = (_s.__slice__((2 : GoInt)) : GoString);
			} else if ((_s.length >= (3 : GoInt)) && (_lower(_s[(1 : GoInt)]) == ("o".code : GoRune))) {
				_base = (8 : GoInt);
				_s = (_s.__slice__((2 : GoInt)) : GoString);
			} else if ((_s.length >= (3 : GoInt)) && (_lower(_s[(1 : GoInt)]) == ("x".code : GoRune))) {
				_base = (16 : GoInt);
				_s = (_s.__slice__((2 : GoInt)) : GoString);
			} else {
				_base = (8 : GoInt);
				_s = (_s.__slice__((1 : GoInt)) : GoString);
			};
		};
	} else {
		return {_0: ("0" : GoUInt64), _1: Go.asInterface(_baseError(Go.str("ParseUint"), _s0, _base))};
	};
	if (_bitSize == ((0 : GoInt))) {
		_bitSize = (32 : GoInt);
	} else if ((_bitSize < (0:GoInt)) || (_bitSize > (64 : GoInt))) {
		return {_0: ("0" : GoUInt64), _1: Go.asInterface(_bitSizeError(Go.str("ParseUint"), _s0, _bitSize))};
	};
	var _cutoff:GoUInt64 = (0 : GoUInt64);
	if (_base == ((10 : GoInt))) {
		_cutoff = ("1844674407370955162" : GoUInt64);
	} else if (_base == ((16 : GoInt))) {
		_cutoff = ("1152921504606846976" : GoUInt64);
	} else {
		_cutoff = ((("18446744073709551615" : GoUInt64) : GoUInt64) / (_base : GoUInt64)) + ("1" : GoUInt64);
	};
	var _maxVal:GoUInt64 = (((("1" : GoUInt64) : GoUInt64) : GoUInt64) << (_bitSize : GoUInt)) - ("1" : GoUInt64);
	var _underscores:Bool = false;
	var _n:GoUInt64 = (0 : GoUInt64);
	for (_0 => _c in (_s : Slice<GoByte>)) {
		var _d:GoByte = (0 : GoUInt8);
		if ((_c == ("_".code : GoRune)) && _base0) {
			_underscores = true;
			continue;
		} else if ((("0".code : GoRune) <= _c) && (_c <= ("9".code : GoRune))) {
			_d = _c - ("0".code : GoRune);
		} else if ((("a".code : GoRune) <= _lower(_c)) && (_lower(_c) <= ("z".code : GoRune))) {
			_d = (_lower(_c) - ("a".code : GoRune)) + (10 : GoUInt8);
		} else {
			return {_0: ("0" : GoUInt64), _1: Go.asInterface(_syntaxError(Go.str("ParseUint"), _s0))};
		};
		if (_d >= (_base : GoByte)) {
			return {_0: ("0" : GoUInt64), _1: Go.asInterface(_syntaxError(Go.str("ParseUint"), _s0))};
		};
		if (_n >= _cutoff) {
			return {_0: _maxVal, _1: Go.asInterface(_rangeError(Go.str("ParseUint"), _s0))};
		};
		_n = _n * ((_base : GoUInt64));
		var _n1:GoUInt64 = _n + (_d : GoUInt64);
		if ((_n1 < _n) || (_n1 > _maxVal)) {
			return {_0: _maxVal, _1: Go.asInterface(_rangeError(Go.str("ParseUint"), _s0))};
		};
		_n = _n1;
	};
	if (_underscores && !_underscoreOK(_s0)) {
		return {_0: ("0" : GoUInt64), _1: Go.asInterface(_syntaxError(Go.str("ParseUint"), _s0))};
	};
	return {_0: _n, _1: (null : Error)};
}

/**
	// ParseInt interprets a string s in the given base (0, 2 to 36) and
	// bit size (0 to 64) and returns the corresponding value i.
	//
	// The string may begin with a leading sign: "+" or "-".
	//
	// If the base argument is 0, the true base is implied by the string's
	// prefix following the sign (if present): 2 for "0b", 8 for "0" or "0o",
	// 16 for "0x", and 10 otherwise. Also, for argument base 0 only,
	// underscore characters are permitted as defined by the Go syntax for
	// [integer literals].
	//
	// The bitSize argument specifies the integer type
	// that the result must fit into. Bit sizes 0, 8, 16, 32, and 64
	// correspond to int, int8, int16, int32, and int64.
	// If bitSize is below 0 or above 64, an error is returned.
	//
	// The errors that ParseInt returns have concrete type *NumError
	// and include err.Num = s. If s is empty or contains invalid
	// digits, err.Err = ErrSyntax and the returned value is 0;
	// if the value corresponding to s cannot be represented by a
	// signed integer of the given size, err.Err = ErrRange and the
	// returned value is the maximum magnitude integer of the
	// appropriate bitSize and sign.
	//
	// [integer literals]: https://go.dev/ref/spec#Integer_literals
**/
function parseInt(_s:GoString, _base:GoInt, _bitSize:GoInt):{var _0:GoInt64; var _1:Error;} {
	var _i:GoInt64 = (0 : GoInt64), _err:Error = (null : Error);
	{};
	if (_s == (Go.str())) {
		return {_0: ("0" : GoInt64), _1: Go.asInterface(_syntaxError(Go.str("ParseInt"), _s))};
	};
	var _s0:GoString = _s;
	var _neg:Bool = false;
	if (_s[(0 : GoInt)] == (("+".code : GoRune))) {
		_s = (_s.__slice__((1 : GoInt)) : GoString);
	} else if (_s[(0 : GoInt)] == (("-".code : GoRune))) {
		_neg = true;
		_s = (_s.__slice__((1 : GoInt)) : GoString);
	};
	var _un:GoUInt64 = (0 : GoUInt64);
	{
		var __tmp__ = parseUint(_s, _base, _bitSize);
		_un = __tmp__._0;
		_err = __tmp__._1;
	};
	if ((_err != null) && (Go.toInterface(Go.typeAssert((Go.toInterface(_err) : Ref<NumError>)).err) != Go.toInterface(errRange))) {
		Go.typeAssert((Go.toInterface(_err) : Ref<NumError>)).func = Go.str("ParseInt");
		Go.typeAssert((Go.toInterface(_err) : Ref<NumError>)).num = _s0;
		return {_0: ("0" : GoInt64), _1: _err};
	};
	if (_bitSize == ((0 : GoInt))) {
		_bitSize = (32 : GoInt);
	};
	var _cutoff:GoUInt64 = (("1" : GoUInt64) << (_bitSize - (1 : GoInt) : GoUInt) : GoUInt64);
	if (!_neg && (_un >= _cutoff)) {
		return {_0: (_cutoff - ("1" : GoUInt64) : GoInt64), _1: Go.asInterface(_rangeError(Go.str("ParseInt"), _s0))};
	};
	if (_neg && (_un > _cutoff)) {
		return {_0: -(_cutoff : GoInt64), _1: Go.asInterface(_rangeError(Go.str("ParseInt"), _s0))};
	};
	var _n:GoInt64 = (_un : GoInt64);
	if (_neg) {
		_n = -_n;
	};
	return {_0: _n, _1: (null : Error)};
}

/**
	// Atoi is equivalent to ParseInt(s, 10, 0), converted to type int.
**/
function atoi(_s:GoString):{var _0:GoInt; var _1:Error;} {
	{};
	var _sLen:GoInt = (_s.length);
	if ((true && (((0 : GoInt) < _sLen) && (_sLen < (10:GoInt)))) || (false && (((0 : GoInt) < _sLen) && (_sLen < (19:GoInt))))) {
		var _s0:GoString = _s;
		if ((_s[(0 : GoInt)] == ("-".code : GoRune)) || (_s[(0 : GoInt)] == ("+".code : GoRune))) {
			_s = (_s.__slice__((1 : GoInt)) : GoString);
			if ((_s.length) < (1 : GoInt)) {
				return {_0: (0 : GoInt), _1: Go.asInterface(((new NumError(Go.str("Atoi"), _s0, errSyntax) : NumError) : Ref<NumError>))};
			};
		};
		var _n:GoInt = (0 : GoInt);
		for (_0 => _ch in (_s : Slice<GoByte>)) {
			_ch = _ch - (("0".code : GoRune));
			if (_ch > (9 : GoUInt8)) {
				return {_0: (0 : GoInt), _1: Go.asInterface(((new NumError(Go.str("Atoi"), _s0, errSyntax) : NumError) : Ref<NumError>))};
			};
			_n = (_n * (10 : GoInt)) + (_ch : GoInt);
		};
		if (_s0[(0 : GoInt)] == (("-".code : GoRune))) {
			_n = -_n;
		};
		return {_0: _n, _1: (null : Error)};
	};
	var __tmp__ = parseInt(_s, (10 : GoInt), (0 : GoInt)),
		_i64:GoInt64 = __tmp__._0,
		_err:Error = __tmp__._1;
	{
		var __tmp__ = try {
			{value: Go.typeAssert((Go.toInterface(_err) : Ref<NumError>)), ok: true};
		} catch (_) {
			{value: (null : NumError), ok: false};
		}, _nerr = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			_nerr.func = Go.str("Atoi");
		};
	};
	return {_0: (_i64 : GoInt), _1: _err};
}

/**
	// underscoreOK reports whether the underscores in s are allowed.
	// Checking them in this one function lets all the parsers skip over them simply.
	// Underscore must appear only between digits or between a base prefix and a digit.
**/
function _underscoreOK(_s:GoString):Bool {
	var _saw:GoInt32 = ("^".code : GoRune);
	var _i:GoInt = (0 : GoInt);
	if ((_s.length >= (1 : GoInt)) && ((_s[(0 : GoInt)] == ("-".code : GoRune)) || (_s[(0 : GoInt)] == ("+".code : GoRune)))) {
		_s = (_s.__slice__((1 : GoInt)) : GoString);
	};
	var _hex:Bool = false;
	if (((_s.length >= (2 : GoInt)) && (_s[(0 : GoInt)] == ("0".code : GoRune)))
		&& (((_lower(_s[(1 : GoInt)]) == ("b".code : GoRune)) || (_lower(_s[(1 : GoInt)]) == ("o".code : GoRune)))
			|| (_lower(_s[(1 : GoInt)]) == ("x".code : GoRune)))) {
		_i = (2 : GoInt);
		_saw = ("0".code : GoRune);
		_hex = _lower(_s[(1 : GoInt)]) == (("x".code : GoRune));
	};
	Go.cfor(_i < (_s.length), _i++, {
		if (((("0".code : GoRune) <= _s[_i]) && (_s[_i] <= ("9".code : GoRune)))
			|| ((_hex && (("a".code : GoRune) <= _lower(_s[_i]))) && (_lower(_s[_i]) <= ("f".code : GoRune)))) {
			_saw = ("0".code : GoRune);
			continue;
		};
		if (_s[_i] == (("_".code : GoRune))) {
			if (_saw != (("0".code : GoRune))) {
				return false;
			};
			_saw = ("_".code : GoRune);
			continue;
		};
		if (_saw == (("_".code : GoRune))) {
			return false;
		};
		_saw = ("!".code : GoRune);
	});
	return _saw != (("_".code : GoRune));
}

/**
	// index returns the index of the first instance of c in s, or -1 if missing.
**/
function _index(_s:GoString, _c:GoByte):GoInt {
	return stdgo.internal.bytealg.Bytealg.indexByteString(_s, _c);
}

/**
	// FormatComplex converts the complex number c to a string of the
	// form (a+bi) where a and b are the real and imaginary parts,
	// formatted according to the format fmt and precision prec.
	//
	// The format fmt and precision prec have the same meaning as in FormatFloat.
	// It rounds the result assuming that the original was obtained from a complex
	// value of bitSize bits, which must be 64 for complex64 and 128 for complex128.
**/
function formatComplex(_c:GoComplex128, _fmt:GoByte, _prec:GoInt, _bitSize:GoInt):GoString {
	if ((_bitSize != (64 : GoInt)) && (_bitSize != (128 : GoInt))) {
		throw Go.toInterface(Go.str("invalid bitSize"));
	};
	_bitSize = _bitSize >> (("1" : GoUInt64));
	var _im:GoString = formatFloat(_c.imag, _fmt, _prec, _bitSize);
	if ((_im[(0 : GoInt)] != ("+".code : GoRune)) && (_im[(0 : GoInt)] != ("-".code : GoRune))) {
		_im = Go.str("+") + _im;
	};
	return ((Go.str("(") + formatFloat(_c.real, _fmt, _prec, _bitSize)) + _im) + Go.str("i)");
}

function _digitZero(_dst:Slice<GoByte>):GoInt {
	for (_i => _ in _dst) {
		_dst[_i] = ("0".code : GoRune);
	};
	return (_dst.length);
}

/**
	// trim trailing zeros from number.
	// (They are meaningless; the decimal point is tracked
	// independent of the number of digits.)
**/
function _trim(_a:Ref<T_decimal>):Void {
	while ((_a._nd > (0 : GoInt)) && (_a._d[_a._nd - (1 : GoInt)] == ("0".code : GoRune))) {
		_a._nd--;
	};
	if (_a._nd == ((0 : GoInt))) {
		_a._dp = (0 : GoInt);
	};
}

/**
	// Binary shift right (/ 2) by k bits.  k <= maxShift to avoid overflow.
**/
function _rightShift(_a:Ref<T_decimal>, _k:GoUInt):Void {
	var _r:GoInt = (0 : GoInt);
	var _w:GoInt = (0 : GoInt);
	var _n:GoUInt = (0 : GoUInt);
	Go.cfor(_n >> _k == (("0" : GoUInt)), _r++, {
		if (_r >= _a._nd) {
			if (_n == (("0" : GoUInt))) {
				_a._nd = (0 : GoInt);
				return;
			};
			while (_n >> _k == (("0" : GoUInt))) {
				_n = _n * ("10" : GoUInt);
				_r++;
			};
			break;
		};
		var _c:GoUInt = (_a._d[_r] : GoUInt);
		_n = ((_n * (("10" : GoUInt) : GoUInt)) + _c) - ("0".code : GoRune);
	});
	_a._dp = _a._dp - (_r - (1 : GoInt));
	var _mask:GoUInt = ((("1" : GoUInt) : GoUInt) << _k) - ("1" : GoUInt);
	Go.cfor(_r < _a._nd, _r++, {
		var _c:GoUInt = (_a._d[_r] : GoUInt);
		var _dig:GoUInt = _n >> _k;
		_n = _n & (_mask);
		_a._d[_w] = (_dig + ("0".code : GoRune) : GoByte);
		_w++;
		_n = ((_n * (("10" : GoUInt) : GoUInt)) + _c) - ("0".code : GoRune);
	});
	while (_n > ("0" : GoUInt)) {
		var _dig:GoUInt = _n >> _k;
		_n = _n & (_mask);
		if (_w < (_a._d.length)) {
			_a._d[_w] = (_dig + ("0".code : GoRune) : GoByte);
			_w++;
		} else if (_dig > ("0" : GoUInt)) {
			_a._trunc = true;
		};
		_n = _n * ("10" : GoUInt);
	};
	_a._nd = _w;
	_trim(_a);
}

/**
	// Is the leading prefix of b lexicographically less than s?
**/
function _prefixIsLessThan(_b:Slice<GoByte>, _s:GoString):Bool {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_s.length), _i++, {
			if (_i >= (_b.length)) {
				return true;
			};
			if (_b[_i] != (_s[_i])) {
				return _b[_i] < _s[_i];
			};
		});
	};
	return false;
}

/**
	// Binary shift left (* 2) by k bits.  k <= maxShift to avoid overflow.
**/
function _leftShift(_a:Ref<T_decimal>, _k:GoUInt):Void {
	var _delta:GoInt = _leftcheats[_k]._delta;
	if (_prefixIsLessThan((_a._d.__slice__((0 : GoInt), _a._nd) : Slice<GoUInt8>), _leftcheats[_k]._cutoff)) {
		_delta--;
	};
	var _r:GoInt = _a._nd;
	var _w:GoInt = _a._nd + _delta;
	var _n:GoUInt = (0 : GoUInt);
	{
		_r--;
		Go.cfor(_r >= (0 : GoInt), _r--, {
			_n = _n + (((_a._d[_r] : GoUInt) - ("0".code : GoRune)) << _k);
			var _quo:GoUInt = _n / ("10" : GoUInt);
			var _rem:GoUInt = _n - ((("10" : GoUInt) : GoUInt) * _quo);
			_w--;
			if (_w < (_a._d.length)) {
				_a._d[_w] = (_rem + ("0".code : GoRune) : GoByte);
			} else if (_rem != (("0" : GoUInt))) {
				_a._trunc = true;
			};
			_n = _quo;
		});
	};
	while (_n > ("0" : GoUInt)) {
		var _quo:GoUInt = _n / ("10" : GoUInt);
		var _rem:GoUInt = _n - ((("10" : GoUInt) : GoUInt) * _quo);
		_w--;
		if (_w < (_a._d.length)) {
			_a._d[_w] = (_rem + ("0".code : GoRune) : GoByte);
		} else if (_rem != (("0" : GoUInt))) {
			_a._trunc = true;
		};
		_n = _quo;
	};
	_a._nd = _a._nd + (_delta);
	if (_a._nd >= (_a._d.length)) {
		_a._nd = (_a._d.length);
	};
	_a._dp = _a._dp + (_delta);
	_trim(_a);
}

/**
	// If we chop a at nd digits, should we round up?
**/
function _shouldRoundUp(_a:Ref<T_decimal>, _nd:GoInt):Bool {
	if ((_nd < (0:GoInt)) || (_nd >= _a._nd)) {
		return false;
	};
	if ((_a._d[_nd] == ("5".code : GoRune)) && ((_nd + (1 : GoInt)) == _a._nd)) {
		if (_a._trunc) {
			return true;
		};
		return (_nd > (0 : GoInt)) && (((_a._d[_nd - (1 : GoInt)] - ("0".code : GoRune)) % (2 : GoUInt8)) != (0 : GoUInt8));
	};
	return _a._d[_nd] >= ("5".code : GoRune);
}

function _eiselLemire64(_man:GoUInt64, _exp10:GoInt, _neg:Bool):{var _0:GoFloat64; var _1:Bool;} {
	var _f:GoFloat64 = (0 : GoFloat64), _ok:Bool = false;
	if (_man == (("0" : GoUInt64))) {
		if (_neg) {
			_f = stdgo.math.Math.float64frombits(("9223372036854775808" : GoUInt64));
		};
		return {_0: _f, _1: true};
	};
	if ((_exp10 < (-348:GoInt)) || ((347 : GoInt) < _exp10)) {
		return {_0: (0 : GoFloat64), _1: false};
	};
	var _clz:GoInt = stdgo.math.bits.Bits.leadingZeros64(_man);
	_man = _man << ((_clz : GoUInt));
	{};
	var _retExp2:GoUInt64 = (((((217706 : GoInt) * _exp10) >> (("16" : GoUInt64) : GoUInt64)) + (64 : GoInt)) + (1023 : GoInt) : GoUInt64) - (_clz : GoUInt64);
	var __tmp__ = stdgo.math.bits.Bits.mul64(_man, _detailedPowersOfTen[_exp10 - (-348 : GoInt)][(1 : GoInt)]),
		_xHi:GoUInt64 = __tmp__._0,
		_xLo:GoUInt64 = __tmp__._1;
	if (((_xHi & (("511" : GoUInt64) : GoUInt64)) == ("511" : GoUInt64)) && ((_xLo + _man) < _man)) {
		var __tmp__ = stdgo.math.bits.Bits.mul64(_man, _detailedPowersOfTen[_exp10 - (-348 : GoInt)][(0 : GoInt)]),
			_yHi:GoUInt64 = __tmp__._0,
			_yLo:GoUInt64 = __tmp__._1;
		var _mergedHi:GoUInt64 = _xHi, _mergedLo:GoUInt64 = _xLo + _yHi;
		if (_mergedLo < _xLo) {
			_mergedHi++;
		};
		if ((((_mergedHi & (("511" : GoUInt64) : GoUInt64)) == ("511" : GoUInt64))
			&& ((_mergedLo + (("1" : GoUInt64) : GoUInt64)) == ("0" : GoUInt64)))
			&& ((_yLo + _man) < _man)) {
			return {_0: (0 : GoFloat64), _1: false};
		};
		{
			final __tmp__0 = _mergedHi;
			final __tmp__1 = _mergedLo;
			_xHi = __tmp__0;
			_xLo = __tmp__1;
		};
	};
	var _msb:GoUInt64 = _xHi >> ("63" : GoUInt64);
	var _retMantissa:GoUInt64 = _xHi >> (_msb + (("9" : GoUInt64) : GoUInt64));
	_retExp2 = _retExp2 - ((("1" : GoUInt64) : GoUInt64) ^ _msb);
	if (((_xLo == ("0" : GoUInt64)) && ((_xHi & (("511" : GoUInt64) : GoUInt64)) == ("0" : GoUInt64)))
		&& ((_retMantissa & (("3" : GoUInt64) : GoUInt64)) == ("1" : GoUInt64))) {
		return {_0: (0 : GoFloat64), _1: false};
	};
	_retMantissa = _retMantissa + (_retMantissa & (("1" : GoUInt64) : GoUInt64));
	_retMantissa = _retMantissa >> (("1" : GoUInt64));
	if ((_retMantissa >> (("53" : GoUInt64) : GoUInt64)) > ("0" : GoUInt64)) {
		_retMantissa = _retMantissa >> (("1" : GoUInt64));
		_retExp2 = _retExp2 + (("1" : GoUInt64));
	};
	if ((_retExp2 - (("1" : GoUInt64) : GoUInt64)) >= ("2046" : GoUInt64)) {
		return {_0: (0 : GoFloat64), _1: false};
	};
	var _retBits:GoUInt64 = (_retExp2 << (("52" : GoUInt64) : GoUInt64)) | (_retMantissa & (("4503599627370495" : GoUInt64) : GoUInt64));
	if (_neg) {
		_retBits = _retBits | (("9223372036854775808" : GoUInt64));
	};
	return {_0: stdgo.math.Math.float64frombits(_retBits), _1: true};
}

function _eiselLemire32(_man:GoUInt64, _exp10:GoInt, _neg:Bool):{var _0:GoFloat32; var _1:Bool;} {
	var _f:GoFloat32 = (0 : GoFloat32), _ok:Bool = false;
	if (_man == (("0" : GoUInt64))) {
		if (_neg) {
			_f = stdgo.math.Math.float32frombits(("2147483648" : GoUInt32));
		};
		return {_0: _f, _1: true};
	};
	if ((_exp10 < (-348:GoInt)) || ((347 : GoInt) < _exp10)) {
		return {_0: (0 : GoFloat64), _1: false};
	};
	var _clz:GoInt = stdgo.math.bits.Bits.leadingZeros64(_man);
	_man = _man << ((_clz : GoUInt));
	{};
	var _retExp2:GoUInt64 = (((((217706 : GoInt) * _exp10) >> (("16" : GoUInt64) : GoUInt64)) + (64 : GoInt)) + (127 : GoInt) : GoUInt64) - (_clz : GoUInt64);
	var __tmp__ = stdgo.math.bits.Bits.mul64(_man, _detailedPowersOfTen[_exp10 - (-348 : GoInt)][(1 : GoInt)]),
		_xHi:GoUInt64 = __tmp__._0,
		_xLo:GoUInt64 = __tmp__._1;
	if (((_xHi & (("274877906943" : GoUInt64) : GoUInt64)) == ("274877906943" : GoUInt64)) && ((_xLo + _man) < _man)) {
		var __tmp__ = stdgo.math.bits.Bits.mul64(_man, _detailedPowersOfTen[_exp10 - (-348 : GoInt)][(0 : GoInt)]),
			_yHi:GoUInt64 = __tmp__._0,
			_yLo:GoUInt64 = __tmp__._1;
		var _mergedHi:GoUInt64 = _xHi, _mergedLo:GoUInt64 = _xLo + _yHi;
		if (_mergedLo < _xLo) {
			_mergedHi++;
		};
		if ((((_mergedHi & (("274877906943" : GoUInt64) : GoUInt64)) == ("274877906943" : GoUInt64))
			&& ((_mergedLo + (("1" : GoUInt64) : GoUInt64)) == ("0" : GoUInt64)))
			&& ((_yLo + _man) < _man)) {
			return {_0: (0 : GoFloat64), _1: false};
		};
		{
			final __tmp__0 = _mergedHi;
			final __tmp__1 = _mergedLo;
			_xHi = __tmp__0;
			_xLo = __tmp__1;
		};
	};
	var _msb:GoUInt64 = _xHi >> ("63" : GoUInt64);
	var _retMantissa:GoUInt64 = _xHi >> (_msb + (("38" : GoUInt64) : GoUInt64));
	_retExp2 = _retExp2 - ((("1" : GoUInt64) : GoUInt64) ^ _msb);
	if (((_xLo == ("0" : GoUInt64)) && ((_xHi & (("274877906943" : GoUInt64) : GoUInt64)) == ("0" : GoUInt64)))
		&& ((_retMantissa & (("3" : GoUInt64) : GoUInt64)) == ("1" : GoUInt64))) {
		return {_0: (0 : GoFloat64), _1: false};
	};
	_retMantissa = _retMantissa + (_retMantissa & (("1" : GoUInt64) : GoUInt64));
	_retMantissa = _retMantissa >> (("1" : GoUInt64));
	if ((_retMantissa >> (("24" : GoUInt64) : GoUInt64)) > ("0" : GoUInt64)) {
		_retMantissa = _retMantissa >> (("1" : GoUInt64));
		_retExp2 = _retExp2 + (("1" : GoUInt64));
	};
	if ((_retExp2 - (("1" : GoUInt64) : GoUInt64)) >= ("254" : GoUInt64)) {
		return {_0: (0 : GoFloat64), _1: false};
	};
	var _retBits:GoUInt64 = (_retExp2 << (("23" : GoUInt64) : GoUInt64)) | (_retMantissa & (("8388607" : GoUInt64) : GoUInt64));
	if (_neg) {
		_retBits = _retBits | (("2147483648" : GoUInt64));
	};
	return {_0: stdgo.math.Math.float32frombits((_retBits : GoUInt32)), _1: true};
}

/**
	// FormatFloat converts the floating-point number f to a string,
	// according to the format fmt and precision prec. It rounds the
	// result assuming that the original was obtained from a floating-point
	// value of bitSize bits (32 for float32, 64 for float64).
	//
	// The format fmt is one of
	// 'b' (-ddddp±ddd, a binary exponent),
	// 'e' (-d.dddde±dd, a decimal exponent),
	// 'E' (-d.ddddE±dd, a decimal exponent),
	// 'f' (-ddd.dddd, no exponent),
	// 'g' ('e' for large exponents, 'f' otherwise),
	// 'G' ('E' for large exponents, 'f' otherwise),
	// 'x' (-0xd.ddddp±ddd, a hexadecimal fraction and binary exponent), or
	// 'X' (-0Xd.ddddP±ddd, a hexadecimal fraction and binary exponent).
	//
	// The precision prec controls the number of digits (excluding the exponent)
	// printed by the 'e', 'E', 'f', 'g', 'G', 'x', and 'X' formats.
	// For 'e', 'E', 'f', 'x', and 'X', it is the number of digits after the decimal point.
	// For 'g' and 'G' it is the maximum number of significant digits (trailing
	// zeros are removed).
	// The special precision -1 uses the smallest number of digits
	// necessary such that ParseFloat will return f exactly.
**/
function formatFloat(_f:GoFloat64, _fmt:GoByte, _prec:GoInt, _bitSize:GoInt):GoString {
	return (_genericFtoa(new Slice<GoUInt8>((0 : GoInt).toBasic(), _max(_prec + (4 : GoInt), (24 : GoInt)),
		...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]), _f, _fmt,
		_prec, _bitSize) : GoString);
}

/**
	// AppendFloat appends the string form of the floating-point number f,
	// as generated by FormatFloat, to dst and returns the extended buffer.
**/
function appendFloat(_dst:Slice<GoByte>, _f:GoFloat64, _fmt:GoByte, _prec:GoInt, _bitSize:GoInt):Slice<GoByte> {
	return _genericFtoa(_dst, _f, _fmt, _prec, _bitSize);
}

function _genericFtoa(_dst:Slice<GoByte>, _val:GoFloat64, _fmt:GoByte, _prec:GoInt, _bitSize:GoInt):Slice<GoByte> {
	var _bits:GoUInt64 = (0 : GoUInt64);
	var _flt:Ref<T_floatInfo> = (null : T_floatInfo);
	if (_bitSize == ((32 : GoInt))) {
		_bits = (stdgo.math.Math.float32bits((_val : GoFloat32)) : GoUInt64);
		_flt = (_float32info : Ref<T_floatInfo>);
	} else if (_bitSize == ((64 : GoInt))) {
		_bits = stdgo.math.Math.float64bits(_val);
		_flt = (_float64info : Ref<T_floatInfo>);
	} else {
		throw Go.toInterface(Go.str("strconv: illegal AppendFloat/FormatFloat bitSize"));
	};
	var _neg:Bool = _bits >> (_flt._expbits + _flt._mantbits) != (("0" : GoUInt64));
	var _exp:GoInt = (_bits >> _flt._mantbits : GoInt) & (((1 : GoInt) << _flt._expbits) - (1 : GoInt));
	var _mant:GoUInt64 = _bits & ((((("1" : GoUInt64) : GoUInt64) : GoUInt64) << _flt._mantbits) - (("1" : GoUInt64) : GoUInt64));
	if (_exp == (((1 : GoInt) << _flt._expbits) - (1 : GoInt))) {
		var _s:GoString = ("" : GoString);
		if (_mant != (("0" : GoUInt64))) {
			_s = Go.str("NaN");
		} else if (_neg) {
			_s = Go.str("-Inf");
		} else {
			_s = Go.str("+Inf");
		};
		return (_dst.__append__(..._s.__toArray__()));
	} else if (_exp == ((0 : GoInt))) {
		_exp++;
	} else {
		_mant = _mant | (((("1" : GoUInt64) : GoUInt64) : GoUInt64) << _flt._mantbits);
	};
	_exp = _exp + (_flt._bias);
	if (_fmt == (("b".code : GoRune))) {
		return _fmtB(_dst, _neg, _mant, _exp, _flt);
	};
	if ((_fmt == ("x".code : GoRune)) || (_fmt == ("X".code : GoRune))) {
		return _fmtX(_dst, _prec, _fmt, _neg, _mant, _exp, _flt);
	};
	if (!_optimize) {
		return _bigFtoa(_dst, _prec, _fmt, _neg, _mant, _exp, _flt);
	};
	var _digs:T_decimalSlice = ({} : T_decimalSlice);
	var _ok:Bool = false;
	var _shortest:Bool = _prec < (0:GoInt);
	if (_shortest) {
		var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...32) (0 : GoUInt8)]);
		_digs._d = (_buf.__slice__(0) : Slice<GoUInt8>);
		_ryuFtoaShortest((_digs : Ref<T_decimalSlice>), _mant, _exp - (_flt._mantbits : GoInt), _flt);
		_ok = true;
		if (_fmt == (("e".code : GoRune)) || _fmt == (("E".code : GoRune))) {
			_prec = _max(_digs._nd - (1 : GoInt), (0 : GoInt));
		} else if (_fmt == (("f".code : GoRune))) {
			_prec = _max(_digs._nd - _digs._dp, (0 : GoInt));
		} else if (_fmt == (("g".code : GoRune)) || _fmt == (("G".code : GoRune))) {
			_prec = _digs._nd;
		};
	} else if (_fmt != (("f".code : GoRune))) {
		var _digits:GoInt = _prec;
		if (_fmt == (("e".code : GoRune)) || _fmt == (("E".code : GoRune))) {
			_digits++;
		} else if (_fmt == (("g".code : GoRune)) || _fmt == (("G".code : GoRune))) {
			if (_prec == ((0 : GoInt))) {
				_prec = (1 : GoInt);
			};
			_digits = _prec;
		} else {
			_digits = (1 : GoInt);
		};
		var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...24) (0 : GoUInt8)]);
		if ((_bitSize == (32 : GoInt)) && (_digits <= (9 : GoInt))) {
			_digs._d = (_buf.__slice__(0) : Slice<GoUInt8>);
			_ryuFtoaFixed32((_digs : Ref<T_decimalSlice>), (_mant : GoUInt32), _exp - (_flt._mantbits : GoInt), _digits);
			_ok = true;
		} else if (_digits <= (18 : GoInt)) {
			_digs._d = (_buf.__slice__(0) : Slice<GoUInt8>);
			_ryuFtoaFixed64((_digs : Ref<T_decimalSlice>), _mant, _exp - (_flt._mantbits : GoInt), _digits);
			_ok = true;
		};
	};
	if (!_ok) {
		return _bigFtoa(_dst, _prec, _fmt, _neg, _mant, _exp, _flt);
	};
	return _formatDigits(_dst, _shortest, _neg, (_digs == null ? null : _digs.__copy__()), _prec, _fmt);
}

/**
	// bigFtoa uses multiprecision computations to format a float.
**/
function _bigFtoa(_dst:Slice<GoByte>, _prec:GoInt, _fmt:GoByte, _neg:Bool, _mant:GoUInt64, _exp:GoInt, _flt:Ref<T_floatInfo>):Slice<GoByte> {
	var _d = ({} : T_decimal);
	_d.assign(_mant);
	_d.shift(_exp - (_flt._mantbits : GoInt));
	var _digs:T_decimalSlice = ({} : T_decimalSlice);
	var _shortest:Bool = _prec < (0:GoInt);
	if (_shortest) {
		_roundShortest(_d, _mant, _exp, _flt);
		_digs = ({_d: (_d._d.__slice__(0) : Slice<GoUInt8>), _nd: _d._nd, _dp: _d._dp} : T_decimalSlice);
		if (_fmt == (("e".code : GoRune)) || _fmt == (("E".code : GoRune))) {
			_prec = _digs._nd - (1 : GoInt);
		} else if (_fmt == (("f".code : GoRune))) {
			_prec = _max(_digs._nd - _digs._dp, (0 : GoInt));
		} else if (_fmt == (("g".code : GoRune)) || _fmt == (("G".code : GoRune))) {
			_prec = _digs._nd;
		};
	} else {
		if (_fmt == (("e".code : GoRune)) || _fmt == (("E".code : GoRune))) {
			_d.round(_prec + (1 : GoInt));
		} else if (_fmt == (("f".code : GoRune))) {
			_d.round(_d._dp + _prec);
		} else if (_fmt == (("g".code : GoRune)) || _fmt == (("G".code : GoRune))) {
			if (_prec == ((0 : GoInt))) {
				_prec = (1 : GoInt);
			};
			_d.round(_prec);
		};
		_digs = ({_d: (_d._d.__slice__(0) : Slice<GoUInt8>), _nd: _d._nd, _dp: _d._dp} : T_decimalSlice);
	};
	return _formatDigits(_dst, _shortest, _neg, (_digs == null ? null : _digs.__copy__()), _prec, _fmt);
}

function _formatDigits(_dst:Slice<GoByte>, _shortest:Bool, _neg:Bool, _digs:T_decimalSlice, _prec:GoInt, _fmt:GoByte):Slice<GoByte> {
	if (_fmt == (("e".code : GoRune)) || _fmt == (("E".code : GoRune))) {
		return _fmtE(_dst, _neg, (_digs == null ? null : _digs.__copy__()), _prec, _fmt);
	} else if (_fmt == (("f".code : GoRune))) {
		return _fmtF(_dst, _neg, (_digs == null ? null : _digs.__copy__()), _prec);
	} else if (_fmt == (("g".code : GoRune)) || _fmt == (("G".code : GoRune))) {
		var _eprec:GoInt = _prec;
		if ((_eprec > _digs._nd) && (_digs._nd >= _digs._dp)) {
			_eprec = _digs._nd;
		};
		if (_shortest) {
			_eprec = (6 : GoInt);
		};
		var _exp:GoInt = _digs._dp - (1 : GoInt);
		if ((_exp < (-4:GoInt)) || (_exp >= _eprec)) {
			if (_prec > _digs._nd) {
				_prec = _digs._nd;
			};
			return _fmtE(_dst, _neg, (_digs == null ? null : _digs.__copy__()), _prec - (1 : GoInt), (_fmt + ("e".code : GoRune)) - ("g".code : GoRune));
		};
		if (_prec > _digs._dp) {
			_prec = _digs._nd;
		};
		return _fmtF(_dst, _neg, (_digs == null ? null : _digs.__copy__()), _max(_prec - _digs._dp, (0 : GoInt)));
	};
	return (_dst.__append__(("%".code : GoRune), _fmt));
}

/**
	// roundShortest rounds d (= mant * 2^exp) to the shortest number of digits
	// that will let the original floating point value be precisely reconstructed.
**/
function _roundShortest(_d:Ref<T_decimal>, _mant:GoUInt64, _exp:GoInt, _flt:Ref<T_floatInfo>):Void {
	if (_mant == (("0" : GoUInt64))) {
		_d._nd = (0 : GoInt);
		return;
	};
	var _minexp:GoInt = _flt._bias + (1 : GoInt);
	if ((_exp > _minexp) && (((332 : GoInt) * (_d._dp - _d._nd)) >= ((100 : GoInt) * (_exp - (_flt._mantbits : GoInt))))) {
		return;
	};
	var _upper = ({} : T_decimal);
	_upper.assign((_mant * (("2" : GoUInt64) : GoUInt64)) + ("1" : GoUInt64));
	_upper.shift((_exp - (_flt._mantbits : GoInt)) - (1 : GoInt));
	var _mantlo:GoUInt64 = (0 : GoUInt64);
	var _explo:GoInt = (0 : GoInt);
	if ((_mant > ((("1" : GoUInt64) : GoUInt64) << _flt._mantbits)) || (_exp == _minexp)) {
		_mantlo = _mant - ("1" : GoUInt64);
		_explo = _exp;
	} else {
		_mantlo = (_mant * (("2" : GoUInt64) : GoUInt64)) - ("1" : GoUInt64);
		_explo = _exp - (1 : GoInt);
	};
	var _lower = ({} : T_decimal);
	_lower.assign((_mantlo * (("2" : GoUInt64) : GoUInt64)) + ("1" : GoUInt64));
	_lower.shift((_explo - (_flt._mantbits : GoInt)) - (1 : GoInt));
	var _inclusive:Bool = _mant % ("2" : GoUInt64) == (("0" : GoUInt64));
	var _upperdelta:GoUInt8 = (0 : GoUInt8);
	{
		var _ui:GoInt = (0 : GoInt);
		Go.cfor(true, _ui++, {
			var _mi:GoInt = (_ui - _upper._dp) + _d._dp;
			if (_mi >= _d._nd) {
				break;
			};
			var _li:GoInt = (_ui - _upper._dp) + _lower._dp;
			var _l:GoUInt8 = (("0".code : GoRune) : GoByte);
			if ((_li >= (0 : GoInt)) && (_li < _lower._nd)) {
				_l = _lower._d[_li];
			};
			var _m:GoUInt8 = (("0".code : GoRune) : GoByte);
			if (_mi >= (0 : GoInt)) {
				_m = _d._d[_mi];
			};
			var _u:GoUInt8 = (("0".code : GoRune) : GoByte);
			if (_ui < _upper._nd) {
				_u = _upper._d[_ui];
			};
			var _okdown:Bool = (_l != _m) || (_inclusive && ((_li + (1 : GoInt)) == _lower._nd));
			if ((_upperdelta == (0 : GoUInt8)) && ((_m + (1 : GoUInt8)) < _u)) {
				_upperdelta = (2 : GoUInt8);
			} else if ((_upperdelta == (0 : GoUInt8)) && (_m != _u)) {
				_upperdelta = (1 : GoUInt8);
			} else if ((_upperdelta == (1 : GoUInt8)) && ((_m != ("9".code : GoRune)) || (_u != ("0".code : GoRune)))) {
				_upperdelta = (2 : GoUInt8);
			};
			var _okup:Bool = (_upperdelta > (0 : GoUInt8))
				&& ((_inclusive || (_upperdelta > (1 : GoUInt8))) || ((_ui + (1 : GoInt)) < _upper._nd));
			if (_okdown && _okup) {
				_d.round(_mi + (1 : GoInt));
				return;
			} else if (_okdown) {
				_d.roundDown(_mi + (1 : GoInt));
				return;
			} else if (_okup) {
				_d.roundUp(_mi + (1 : GoInt));
				return;
			};
		});
	};
}

/**
	// %e: -d.ddddde±dd
**/
function _fmtE(_dst:Slice<GoByte>, _neg:Bool, _d:T_decimalSlice, _prec:GoInt, _fmt:GoByte):Slice<GoByte> {
	if (_neg) {
		_dst = _dst.__appendref__(("-".code : GoRune));
	};
	var _ch:GoUInt8 = (("0".code : GoRune) : GoByte);
	if (_d._nd != ((0 : GoInt))) {
		_ch = _d._d[(0 : GoInt)];
	};
	_dst = _dst.__appendref__(_ch);
	if (_prec > (0 : GoInt)) {
		_dst = _dst.__appendref__((".".code : GoRune));
		var _i:GoInt = (1 : GoInt);
		var _m:GoInt = _min(_d._nd, _prec + (1 : GoInt));
		if (_i < _m) {
			_dst = _dst.__appendref__(...(_d._d.__slice__(_i, _m) : Slice<GoUInt8>).__toArray__());
			_i = _m;
		};
		Go.cfor(_i <= _prec, _i++, {
			_dst = _dst.__appendref__(("0".code : GoRune));
		});
	};
	_dst = _dst.__appendref__(_fmt);
	var _exp:GoInt = _d._dp - (1 : GoInt);
	if (_d._nd == ((0 : GoInt))) {
		_exp = (0 : GoInt);
	};
	if (_exp < (0:GoInt)) {
		_ch = ("-".code : GoRune);
		_exp = -_exp;
	} else {
		_ch = ("+".code : GoRune);
	};
	_dst = _dst.__appendref__(_ch);
	if (_exp < (10:GoInt)) {
		_dst = _dst.__appendref__(("0".code : GoRune), (_exp : GoByte) + ("0".code : GoRune));
	} else if (_exp < (100:GoInt)) {
		_dst = _dst.__appendref__((_exp / (10 : GoInt) : GoByte) + ("0".code : GoRune), (_exp % (10 : GoInt) : GoByte) + ("0".code : GoRune));
	} else {
		_dst = _dst.__appendref__((_exp / (100 : GoInt) : GoByte)
			+ ("0".code : GoRune),
			((_exp / (10 : GoInt) : GoByte) % (10 : GoUInt8))
			+ ("0".code : GoRune), (_exp % (10 : GoInt) : GoByte)
			+ ("0".code : GoRune));
	};
	return _dst;
}

/**
	// %f: -ddddddd.ddddd
**/
function _fmtF(_dst:Slice<GoByte>, _neg:Bool, _d:T_decimalSlice, _prec:GoInt):Slice<GoByte> {
	if (_neg) {
		_dst = _dst.__appendref__(("-".code : GoRune));
	};
	if (_d._dp > (0 : GoInt)) {
		var _m:GoInt = _min(_d._nd, _d._dp);
		_dst = _dst.__appendref__(...(_d._d.__slice__(0, _m) : Slice<GoUInt8>).__toArray__());
		Go.cfor(_m < _d._dp, _m++, {
			_dst = _dst.__appendref__(("0".code : GoRune));
		});
	} else {
		_dst = _dst.__appendref__(("0".code : GoRune));
	};
	if (_prec > (0 : GoInt)) {
		_dst = _dst.__appendref__((".".code : GoRune));
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _prec, _i++, {
				var _ch:GoUInt8 = (("0".code : GoRune) : GoByte);
				{
					var _j:GoInt = _d._dp + _i;
					if (((0 : GoInt) <= _j) && (_j < _d._nd)) {
						_ch = _d._d[_j];
					};
				};
				_dst = _dst.__appendref__(_ch);
			});
		};
	};
	return _dst;
}

/**
	// %b: -ddddddddp±ddd
**/
function _fmtB(_dst:Slice<GoByte>, _neg:Bool, _mant:GoUInt64, _exp:GoInt, _flt:Ref<T_floatInfo>):Slice<GoByte> {
	if (_neg) {
		_dst = _dst.__appendref__(("-".code : GoRune));
	};
	{
		var __tmp__ = _formatBits(_dst, _mant, (10 : GoInt), false, true);
		_dst = __tmp__._0;
	};
	_dst = _dst.__appendref__(("p".code : GoRune));
	_exp = _exp - ((_flt._mantbits : GoInt));
	if (_exp >= (0 : GoInt)) {
		_dst = _dst.__appendref__(("+".code : GoRune));
	};
	{
		var __tmp__ = _formatBits(_dst, (_exp : GoUInt64), (10 : GoInt), _exp < (0:GoInt), true);
		_dst = __tmp__._0;
	};
	return _dst;
}

/**
	// %x: -0x1.yyyyyyyyp±ddd or -0x0p+0. (y is hex digit, d is decimal digit)
**/
function _fmtX(_dst:Slice<GoByte>, _prec:GoInt, _fmt:GoByte, _neg:Bool, _mant:GoUInt64, _exp:GoInt, _flt:Ref<T_floatInfo>):Slice<GoByte> {
	if (_mant == (("0" : GoUInt64))) {
		_exp = (0 : GoInt);
	};
	_mant = _mant << ((("60" : GoUInt) : GoUInt) - _flt._mantbits);
	while ((_mant != ("0" : GoUInt64)) && ((_mant & (("1152921504606846976" : GoUInt64) : GoUInt64)) == ("0" : GoUInt64))) {
		_mant = _mant << (("1" : GoUInt64));
		_exp--;
	};
	if ((_prec >= (0 : GoInt)) && (_prec < (15:GoInt))) {
		var _shift:GoUInt = (_prec * (4 : GoInt) : GoUInt);
		var _extra:GoUInt64 = (_mant << _shift) & ("1152921504606846975" : GoUInt64);
		_mant = _mant >> ((("60" : GoUInt) : GoUInt) - _shift);
		if ((_extra | (_mant & (("1" : GoUInt64) : GoUInt64))) > ("576460752303423488" : GoUInt64)) {
			_mant++;
		};
		_mant = _mant << ((("60" : GoUInt) : GoUInt) - _shift);
		if (_mant & ("2305843009213693952" : GoUInt64) != (("0" : GoUInt64))) {
			_mant = _mant >> (("1" : GoUInt64));
			_exp++;
		};
	};
	var _hex:GoString = Go.str("0123456789abcdef");
	if (_fmt == (("X".code : GoRune))) {
		_hex = Go.str("0123456789ABCDEF");
	};
	if (_neg) {
		_dst = _dst.__appendref__(("-".code : GoRune));
	};
	_dst = _dst.__appendref__(("0".code : GoRune), _fmt, ("0".code : GoRune) + ((_mant >> (("60" : GoUInt64) : GoUInt64)) & ("1" : GoUInt64) : GoByte));
	_mant = _mant << (("4" : GoUInt64));
	if ((_prec < (0:GoInt)) && (_mant != ("0" : GoUInt64))) {
		_dst = _dst.__appendref__((".".code : GoRune));
		while (_mant != (("0" : GoUInt64))) {
			_dst = _dst.__appendref__(_hex[(_mant >> (("60" : GoUInt64) : GoUInt64)) & ("15" : GoUInt64)]);
			_mant = _mant << (("4" : GoUInt64));
		};
	} else if (_prec > (0 : GoInt)) {
		_dst = _dst.__appendref__((".".code : GoRune));
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _prec, _i++, {
				_dst = _dst.__appendref__(_hex[(_mant >> (("60" : GoUInt64) : GoUInt64)) & ("15" : GoUInt64)]);
				_mant = _mant << (("4" : GoUInt64));
			});
		};
	};
	var _ch:GoUInt8 = (("P".code : GoRune) : GoByte);
	if (_fmt == (_lower(_fmt))) {
		_ch = ("p".code : GoRune);
	};
	_dst = _dst.__appendref__(_ch);
	if (_exp < (0:GoInt)) {
		_ch = ("-".code : GoRune);
		_exp = -_exp;
	} else {
		_ch = ("+".code : GoRune);
	};
	_dst = _dst.__appendref__(_ch);
	if (_exp < (100:GoInt)) {
		_dst = _dst.__appendref__((_exp / (10 : GoInt) : GoByte) + ("0".code : GoRune), (_exp % (10 : GoInt) : GoByte) + ("0".code : GoRune));
	} else if (_exp < (1000:GoInt)) {
		_dst = _dst.__appendref__((_exp / (100 : GoInt) : GoByte)
			+ ("0".code : GoRune),
			((_exp / (10 : GoInt)) % (10 : GoInt) : GoByte)
			+ ("0".code : GoRune), (_exp % (10 : GoInt) : GoByte)
			+ ("0".code : GoRune));
	} else {
		_dst = _dst.__appendref__((_exp / (1000 : GoInt) : GoByte)
			+ ("0".code : GoRune),
			((_exp / (100 : GoInt) : GoByte) % (10 : GoUInt8))
			+ ("0".code : GoRune), ((_exp / (10 : GoInt)) % (10 : GoInt) : GoByte)
			+ ("0".code : GoRune),
			(_exp % (10 : GoInt) : GoByte)
			+ ("0".code : GoRune));
	};
	return _dst;
}

function _min(_a:GoInt, _b:GoInt):GoInt {
	if (_a < _b) {
		return _a;
	};
	return _b;
}

function _max(_a:GoInt, _b:GoInt):GoInt {
	if (_a > _b) {
		return _a;
	};
	return _b;
}

/**
	// ryuFtoaFixed32 formats mant*(2^exp) with prec decimal digits.
**/
function _ryuFtoaFixed32(_d:Ref<T_decimalSlice>, _mant:GoUInt32, _exp:GoInt, _prec:GoInt):Void {
	if (_prec < (0:GoInt)) {
		throw Go.toInterface(Go.str("ryuFtoaFixed32 called with negative prec"));
	};
	if (_prec > (9 : GoInt)) {
		throw Go.toInterface(Go.str("ryuFtoaFixed32 called with prec > 9"));
	};
	if (_mant == (("0" : GoUInt32))) {
		{
			final __tmp__0 = (0 : GoInt);
			final __tmp__1 = (0 : GoInt);
			_d._nd = __tmp__0;
			_d._dp = __tmp__1;
		};
		return;
	};
	var _e2:GoInt = _exp;
	{
		var _b:GoInt = stdgo.math.bits.Bits.len32(_mant);
		if (_b < (25:GoInt)) {
			_mant = _mant << (((25 : GoInt) - _b : GoUInt));
			_e2 = _e2 + ((_b : GoInt) - (25 : GoInt));
		};
	};
	var _q:GoInt = (-_mulByLog2Log10(_e2 + (24 : GoInt)) + _prec) - (1 : GoInt);
	var _exact:Bool = (_q <= (27 : GoInt)) && (_q >= (0 : GoInt));
	var __tmp__ = _mult64bitPow10(_mant, _e2, _q),
		_di:GoUInt32 = __tmp__._0,
		_dexp2:GoInt = __tmp__._1,
		_d0:Bool = __tmp__._2;
	if (_dexp2 >= (0 : GoInt)) {
		throw Go.toInterface(Go.str("not enough significant bits after mult64bitPow10"));
	};
	if (((_q < (0:GoInt)) && (_q >= (-10 : GoInt))) && _divisibleByPower5((_mant : GoUInt64), -_q)) {
		_exact = true;
		_d0 = true;
	};
	var _extra:GoUInt = (-_dexp2 : GoUInt);
	var _extraMask:GoUInt32 = (((("1" : GoUInt32) : GoUInt32) << _extra) - ("1" : GoUInt32) : GoUInt32);
	var _di:GoUInt32 = _di >> _extra, _dfrac:GoUInt32 = _di & _extraMask;
	var _roundUp:Bool = false;
	if (_exact) {
		_roundUp = ((_dfrac > ((("1" : GoUInt32) : GoUInt32) << (_extra - (("1" : GoUInt) : GoUInt))))
			|| ((_dfrac == ((("1" : GoUInt32) : GoUInt32) << (_extra - (("1" : GoUInt) : GoUInt)))) && !_d0))
			|| (((_dfrac == ((("1" : GoUInt32) : GoUInt32) << (_extra - (("1" : GoUInt) : GoUInt)))) && _d0)
				&& ((_di & (("1" : GoUInt32) : GoUInt32)) == ("1" : GoUInt32)));
	} else {
		_roundUp = _dfrac >> (_extra - (("1" : GoUInt) : GoUInt)) == (("1" : GoUInt32));
	};
	if (_dfrac != (("0" : GoUInt32))) {
		_d0 = false;
	};
	_formatDecimal(_d, (_di : GoUInt64), !_d0, _roundUp, _prec);
	_d._dp = _d._dp - (_q);
}

/**
	// ryuFtoaFixed64 formats mant*(2^exp) with prec decimal digits.
**/
function _ryuFtoaFixed64(_d:Ref<T_decimalSlice>, _mant:GoUInt64, _exp:GoInt, _prec:GoInt):Void {
	if (_prec > (18 : GoInt)) {
		throw Go.toInterface(Go.str("ryuFtoaFixed64 called with prec > 18"));
	};
	if (_mant == (("0" : GoUInt64))) {
		{
			final __tmp__0 = (0 : GoInt);
			final __tmp__1 = (0 : GoInt);
			_d._nd = __tmp__0;
			_d._dp = __tmp__1;
		};
		return;
	};
	var _e2:GoInt = _exp;
	{
		var _b:GoInt = stdgo.math.bits.Bits.len64(_mant);
		if (_b < (55:GoInt)) {
			_mant = _mant << ((55 : GoInt) - _b : GoUInt);
			_e2 = _e2 + ((_b : GoInt) - (55 : GoInt));
		};
	};
	var _q:GoInt = (-_mulByLog2Log10(_e2 + (54 : GoInt)) + _prec) - (1 : GoInt);
	var _exact:Bool = (_q <= (55 : GoInt)) && (_q >= (0 : GoInt));
	var __tmp__ = _mult128bitPow10(_mant, _e2, _q),
		_di:GoUInt64 = __tmp__._0,
		_dexp2:GoInt = __tmp__._1,
		_d0:Bool = __tmp__._2;
	if (_dexp2 >= (0 : GoInt)) {
		throw Go.toInterface(Go.str("not enough significant bits after mult128bitPow10"));
	};
	if (((_q < (0:GoInt)) && (_q >= (-22 : GoInt))) && _divisibleByPower5(_mant, -_q)) {
		_exact = true;
		_d0 = true;
	};
	var _extra:GoUInt = (-_dexp2 : GoUInt);
	var _extraMask:GoUInt64 = (((("1" : GoUInt64) : GoUInt64) << _extra) - ("1" : GoUInt64) : GoUInt64);
	var _di:GoUInt64 = _di >> _extra, _dfrac:GoUInt64 = _di & _extraMask;
	var _roundUp:Bool = false;
	if (_exact) {
		_roundUp = ((_dfrac > ((("1" : GoUInt64) : GoUInt64) << (_extra - (("1" : GoUInt) : GoUInt))))
			|| ((_dfrac == ((("1" : GoUInt64) : GoUInt64) << (_extra - (("1" : GoUInt) : GoUInt)))) && !_d0))
			|| (((_dfrac == ((("1" : GoUInt64) : GoUInt64) << (_extra - (("1" : GoUInt) : GoUInt)))) && _d0)
				&& ((_di & (("1" : GoUInt64) : GoUInt64)) == ("1" : GoUInt64)));
	} else {
		_roundUp = _dfrac >> (_extra - (("1" : GoUInt) : GoUInt)) == (("1" : GoUInt64));
	};
	if (_dfrac != (("0" : GoUInt64))) {
		_d0 = false;
	};
	_formatDecimal(_d, _di, !_d0, _roundUp, _prec);
	_d._dp = _d._dp - (_q);
}

/**
	// formatDecimal fills d with at most prec decimal digits
	// of mantissa m. The boolean trunc indicates whether m
	// is truncated compared to the original number being formatted.
**/
function _formatDecimal(_d:Ref<T_decimalSlice>, _m:GoUInt64, _trunc:Bool, _roundUp:Bool, _prec:GoInt):Void {
	var _max:GoUInt64 = _uint64pow10[_prec];
	var _trimmed:GoInt = (0 : GoInt);
	while (_m >= _max) {
		var _a:GoUInt64 = _m / ("10" : GoUInt64),
			_b:GoUInt64 = _m % ("10" : GoUInt64);
		_m = _a;
		_trimmed++;
		if (_b > ("5" : GoUInt64)) {
			_roundUp = true;
		} else if (_b < ("5":GoUInt64)) {
			_roundUp = false;
		} else {
			_roundUp = _trunc || ((_m & (("1" : GoUInt64) : GoUInt64)) == ("1" : GoUInt64));
		};
		if (_b != (("0" : GoUInt64))) {
			_trunc = true;
		};
	};
	if (_roundUp) {
		_m++;
	};
	if (_m >= _max) {
		_m = _m / (("10" : GoUInt64));
		_trimmed++;
	};
	var _n:GoUInt = (_prec : GoUInt);
	_d._nd = (_prec : GoInt);
	var _v:GoUInt64 = _m;
	while (_v >= ("100" : GoUInt64)) {
		var _v1:GoUInt64 = (0 : GoUInt64), _v2:GoUInt64 = (0 : GoUInt64);
		if (_v >> ("32" : GoUInt64) == (("0" : GoUInt64))) {
			{
				final __tmp__0 = ((_v : GoUInt32) / ("100" : GoUInt32) : GoUInt64);
				final __tmp__1 = ((_v : GoUInt32) % ("100" : GoUInt32) : GoUInt64);
				_v1 = __tmp__0;
				_v2 = __tmp__1;
			};
		} else {
			{
				final __tmp__0 = _v / ("100" : GoUInt64);
				final __tmp__1 = _v % ("100" : GoUInt64);
				_v1 = __tmp__0;
				_v2 = __tmp__1;
			};
		};
		_n = _n - (("2" : GoUInt));
		_d._d[_n + ("1" : GoUInt)] = Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")[((("2" : GoUInt64) : GoUInt64) * _v2)
			+ ("1" : GoUInt64)];
		_d._d[_n + ("0" : GoUInt)] = Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")[((("2" : GoUInt64) : GoUInt64) * _v2)
			+ ("0" : GoUInt64)];
		_v = _v1;
	};
	if (_v > ("0" : GoUInt64)) {
		_n--;
		_d._d[_n] = Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")[((("2" : GoUInt64) : GoUInt64) * _v)
			+ ("1" : GoUInt64)];
	};
	if (_v >= ("10" : GoUInt64)) {
		_n--;
		_d._d[_n] = Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")[("2" : GoUInt64) * _v];
	};
	while (_d._d[_d._nd - (1 : GoInt)] == (("0".code : GoRune))) {
		_d._nd--;
		_trimmed++;
	};
	_d._dp = _d._nd + _trimmed;
}

/**
	// ryuFtoaShortest formats mant*2^exp with prec decimal digits.
**/
function _ryuFtoaShortest(_d:Ref<T_decimalSlice>, _mant:GoUInt64, _exp:GoInt, _flt:Ref<T_floatInfo>):Void {
	if (_mant == (("0" : GoUInt64))) {
		{
			final __tmp__0 = (0 : GoInt);
			final __tmp__1 = (0 : GoInt);
			_d._nd = __tmp__0;
			_d._dp = __tmp__1;
		};
		return;
	};
	if ((_exp <= (0 : GoInt)) && (stdgo.math.bits.Bits.trailingZeros64(_mant) >= -_exp)) {
		_mant = _mant >> ((-_exp : GoUInt));
		_ryuDigits(_d, _mant, _mant, _mant, true, false);
		return;
	};
	var __tmp__ = _computeBounds(_mant, _exp, _flt),
		_ml:GoUInt64 = __tmp__._0,
		_mc:GoUInt64 = __tmp__._1,
		_mu:GoUInt64 = __tmp__._2,
		_e2:GoInt = __tmp__._3;
	if (_e2 == ((0 : GoInt))) {
		_ryuDigits(_d, _ml, _mc, _mu, true, false);
		return;
	};
	var _q:GoInt = _mulByLog2Log10(-_e2) + (1 : GoInt);
	var _dl:GoUInt64 = (0 : GoUInt64),
		_dc:GoUInt64 = (0 : GoUInt64),
		_du:GoUInt64 = (0 : GoUInt64);
	var _dl0:Bool = false, _dc0:Bool = false, _du0:Bool = false;
	if (_flt == ((_float32info : Ref<T_floatInfo>))) {
		var _dl32:GoUInt32 = (0 : GoUInt32),
			_dc32:GoUInt32 = (0 : GoUInt32),
			_du32:GoUInt32 = (0 : GoUInt32);
		{
			var __tmp__ = _mult64bitPow10((_ml : GoUInt32), _e2, _q);
			_dl32 = __tmp__._0;
			_dl0 = __tmp__._2;
		};
		{
			var __tmp__ = _mult64bitPow10((_mc : GoUInt32), _e2, _q);
			_dc32 = __tmp__._0;
			_dc0 = __tmp__._2;
		};
		{
			var __tmp__ = _mult64bitPow10((_mu : GoUInt32), _e2, _q);
			_du32 = __tmp__._0;
			_e2 = __tmp__._1;
			_du0 = __tmp__._2;
		};
		{
			final __tmp__0 = (_dl32 : GoUInt64);
			final __tmp__1 = (_dc32 : GoUInt64);
			final __tmp__2 = (_du32 : GoUInt64);
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
	if (_e2 >= (0 : GoInt)) {
		throw Go.toInterface(Go.str("not enough significant bits after mult128bitPow10"));
	};
	if (_q > (55 : GoInt)) {
		{
			final __tmp__0 = false;
			final __tmp__1 = false;
			final __tmp__2 = false;
			_dl0 = __tmp__0;
			_dc0 = __tmp__1;
			_du0 = __tmp__2;
		};
	};
	if ((_q < (0:GoInt)) && (_q >= (-24 : GoInt))) {
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
	var _extra:GoUInt = (-_e2 : GoUInt);
	var _extraMask:GoUInt64 = (((("1" : GoUInt64) : GoUInt64) << _extra) - ("1" : GoUInt64) : GoUInt64);
	var _dl:GoUInt64 = _dl >> _extra, _fracl:GoUInt64 = _dl & _extraMask;
	var _dc:GoUInt64 = _dc >> _extra, _fracc:GoUInt64 = _dc & _extraMask;
	var _du:GoUInt64 = _du >> _extra, _fracu:GoUInt64 = _du & _extraMask;
	var _uok:Bool = !_du0 || (_fracu > (("0" : GoUInt64) : GoUInt64));
	if (_du0 && (_fracu == ("0" : GoUInt64))) {
		_uok = _mant & ("1" : GoUInt64) == (("0" : GoUInt64));
	};
	if (!_uok) {
		_du--;
	};
	var _cup:Bool = false;
	if (_dc0) {
		_cup = (_fracc > ((("1" : GoUInt64) : GoUInt64) << (_extra - (("1" : GoUInt) : GoUInt))))
			|| ((_fracc == ((("1" : GoUInt64) : GoUInt64) << (_extra - (("1" : GoUInt) : GoUInt))))
				&& ((_dc & (("1" : GoUInt64) : GoUInt64)) == ("1" : GoUInt64)));
	} else {
		_cup = _fracc >> (_extra - (("1" : GoUInt) : GoUInt)) == (("1" : GoUInt64));
	};
	var _lok:Bool = (_dl0 && (_fracl == ("0" : GoUInt64))) && (_mant & ("1" : GoUInt64) == ("0" : GoUInt64));
	if (!_lok) {
		_dl++;
	};
	var _c0:Bool = _dc0 && (_fracc == ("0" : GoUInt64));
	_ryuDigits(_d, _dl, _dc, _du, _c0, _cup);
	_d._dp = _d._dp - (_q);
}

/**
	// mulByLog2Log10 returns math.Floor(x * log(2)/log(10)) for an integer x in
	// the range -1600 <= x && x <= +1600.
	//
	// The range restriction lets us work in faster integer arithmetic instead of
	// slower floating point arithmetic. Correctness is verified by unit tests.
**/
function _mulByLog2Log10(_x:GoInt):GoInt {
	return (_x * (78913 : GoInt)) >> ("18" : GoUInt64);
}

/**
	// mulByLog10Log2 returns math.Floor(x * log(10)/log(2)) for an integer x in
	// the range -500 <= x && x <= +500.
	//
	// The range restriction lets us work in faster integer arithmetic instead of
	// slower floating point arithmetic. Correctness is verified by unit tests.
**/
function _mulByLog10Log2(_x:GoInt):GoInt {
	return (_x * (108853 : GoInt)) >> ("15" : GoUInt64);
}

/**
	// computeBounds returns a floating-point vector (l, c, u)×2^e2
	// where the mantissas are 55-bit (or 26-bit) integers, describing the interval
	// represented by the input float64 or float32.
**/
function _computeBounds(_mant:GoUInt64, _exp:GoInt, _flt:Ref<T_floatInfo>):{
	var _0:GoUInt64;
	var _1:GoUInt64;
	var _2:GoUInt64;
	var _3:GoInt;
} {
	var _lower:GoUInt64 = (0 : GoUInt64),
		_central:GoUInt64 = (0 : GoUInt64),
		_upper:GoUInt64 = (0 : GoUInt64),
		_e2:GoInt = (0 : GoInt);
	if ((_mant != ((("1" : GoUInt64) : GoUInt64) << _flt._mantbits)) || (_exp == (_flt._bias + (1 : GoInt) - (_flt._mantbits : GoInt)))) {
		{
			final __tmp__0 = ((("2" : GoUInt64) : GoUInt64) * _mant) - ("1" : GoUInt64);
			final __tmp__1 = ("2" : GoUInt64) * _mant;
			final __tmp__2 = ((("2" : GoUInt64) : GoUInt64) * _mant) + ("1" : GoUInt64);
			_lower = __tmp__0;
			_central = __tmp__1;
			_upper = __tmp__2;
		};
		_e2 = _exp - (1 : GoInt);
		return {
			_0: _lower,
			_1: _central,
			_2: _upper,
			_3: _e2
		};
	} else {
		{
			final __tmp__0 = ((("4" : GoUInt64) : GoUInt64) * _mant) - ("1" : GoUInt64);
			final __tmp__1 = ("4" : GoUInt64) * _mant;
			final __tmp__2 = ((("4" : GoUInt64) : GoUInt64) * _mant) + ("2" : GoUInt64);
			_lower = __tmp__0;
			_central = __tmp__1;
			_upper = __tmp__2;
		};
		_e2 = _exp - (2 : GoInt);
		return {
			_0: _lower,
			_1: _central,
			_2: _upper,
			_3: _e2
		};
	};
}

function _ryuDigits(_d:Ref<T_decimalSlice>, _lower:GoUInt64, _central:GoUInt64, _upper:GoUInt64, _c0:Bool, _cup:Bool):Void {
	var __tmp__ = _divmod1e9(_lower),
		_lhi:GoUInt32 = __tmp__._0,
		_llo:GoUInt32 = __tmp__._1;
	var __tmp__ = _divmod1e9(_central),
		_chi:GoUInt32 = __tmp__._0,
		_clo:GoUInt32 = __tmp__._1;
	var __tmp__ = _divmod1e9(_upper),
		_uhi:GoUInt32 = __tmp__._0,
		_ulo:GoUInt32 = __tmp__._1;
	if (_uhi == (("0" : GoUInt32))) {
		_ryuDigits32(_d, _llo, _clo, _ulo, _c0, _cup, (8 : GoInt));
	} else if (_lhi < _uhi) {
		if (_llo != (("0" : GoUInt32))) {
			_lhi++;
		};
		_c0 = _c0 && (_clo == ("0" : GoUInt32));
		_cup = (_clo > (("500000000" : GoUInt32) : GoUInt32)) || ((_clo == ("500000000" : GoUInt32)) && _cup);
		_ryuDigits32(_d, _lhi, _chi, _uhi, _c0, _cup, (8 : GoInt));
		_d._dp = _d._dp + ((9 : GoInt));
	} else {
		_d._nd = (0 : GoInt);
		var _n:GoUInt = (("9" : GoUInt) : GoUInt);
		{
			var _v:GoUInt32 = _chi;
			while (_v > ("0" : GoUInt32)) {
				var _v1:GoUInt32 = _v / ("10" : GoUInt32),
					_v2:GoUInt32 = _v % ("10" : GoUInt32);
				_v = _v1;
				_n--;
				_d._d[_n] = (_v2 + ("0".code : GoRune) : GoByte);
			};
		};
		_d._d = (_d._d.__slice__(_n) : Slice<GoUInt8>);
		_d._nd = (("9" : GoUInt) - _n : GoInt);
		_ryuDigits32(_d, _llo, _clo, _ulo, _c0, _cup, _d._nd + (8 : GoInt));
	};
	while ((_d._nd > (0 : GoInt)) && (_d._d[_d._nd - (1 : GoInt)] == ("0".code : GoRune))) {
		_d._nd--;
	};
	while ((_d._nd > (0 : GoInt)) && (_d._d[(0 : GoInt)] == ("0".code : GoRune))) {
		_d._nd--;
		_d._dp--;
		_d._d = (_d._d.__slice__((1 : GoInt)) : Slice<GoUInt8>);
	};
}

/**
	// ryuDigits32 emits decimal digits for a number less than 1e9.
**/
function _ryuDigits32(_d:Ref<T_decimalSlice>, _lower:GoUInt32, _central:GoUInt32, _upper:GoUInt32, _c0:Bool, _cup:Bool, _endindex:GoInt):Void {
	if (_upper == (("0" : GoUInt32))) {
		_d._dp = _endindex + (1 : GoInt);
		return;
	};
	var _trimmed:GoInt = (0 : GoInt);
	var _cNextDigit:GoInt = (0 : GoInt);
	while (_upper > ("0" : GoUInt32)) {
		var _l:GoUInt32 = (_lower + (("9" : GoUInt32) : GoUInt32)) / ("10" : GoUInt32);
		var _c:GoUInt32 = _central / ("10" : GoUInt32),
			_cdigit:GoUInt32 = _central % ("10" : GoUInt32);
		var _u:GoUInt32 = _upper / ("10" : GoUInt32);
		if (_l > _u) {
			break;
		};
		if ((_l == (_c + (("1" : GoUInt32) : GoUInt32))) && (_c < _u)) {
			_c++;
			_cdigit = ("0" : GoUInt32);
			_cup = false;
		};
		_trimmed++;
		_c0 = _c0 && (_cNextDigit == (0 : GoInt));
		_cNextDigit = (_cdigit : GoInt);
		{
			final __tmp__0 = _l;
			final __tmp__1 = _c;
			final __tmp__2 = _u;
			_lower = __tmp__0;
			_central = __tmp__1;
			_upper = __tmp__2;
		};
	};
	if (_trimmed > (0 : GoInt)) {
		_cup = ((_cNextDigit > (5 : GoInt))
			|| ((_cNextDigit == (5 : GoInt)) && !_c0))
			|| (((_cNextDigit == (5 : GoInt)) && _c0) && ((_central & (("1" : GoUInt32) : GoUInt32)) == ("1" : GoUInt32)));
	};
	if ((_central < _upper) && _cup) {
		_central++;
	};
	_endindex = _endindex - (_trimmed);
	var _v:GoUInt32 = _central;
	var _n:GoInt = _endindex;
	while (_n > _d._nd) {
		var _v1:GoUInt32 = _v / ("100" : GoUInt32),
			_v2:GoUInt32 = _v % ("100" : GoUInt32);
		_d._d[_n] = Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")[((("2" : GoUInt32) : GoUInt32) * _v2)
			+ ("1" : GoUInt32)];
		_d._d[_n - (1 : GoInt)] = Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")[((("2" : GoUInt32) : GoUInt32) * _v2)
			+ ("0" : GoUInt32)];
		_n = _n - ((2 : GoInt));
		_v = _v1;
	};
	if (_n == (_d._nd)) {
		_d._d[_n] = (_v + ("0".code : GoRune) : GoByte);
	};
	_d._nd = _endindex + (1 : GoInt);
	_d._dp = _d._nd + _trimmed;
}

/**
	// mult64bitPow10 takes a floating-point input with a 25-bit
	// mantissa and multiplies it with 10^q. The resulting mantissa
	// is m*P >> 57 where P is a 64-bit element of the detailedPowersOfTen tables.
	// It is typically 31 or 32-bit wide.
	// The returned boolean is true if all trimmed bits were zero.
	//
	// That is:
	//
	//	m*2^e2 * round(10^q) = resM * 2^resE + ε
	//	exact = ε == 0
**/
function _mult64bitPow10(_m:GoUInt32, _e2:GoInt, _q:GoInt):{var _0:GoUInt32; var _1:GoInt; var _2:Bool;} {
	var _resM:GoUInt32 = (0 : GoUInt32),
		_resE:GoInt = (0 : GoInt),
		_exact:Bool = false;
	if (_q == ((0 : GoInt))) {
		return {_0: _m << ("6" : GoUInt64), _1: _e2 - (6 : GoInt), _2: true};
	};
	if ((_q < (-348:GoInt)) || ((347 : GoInt) < _q)) {
		throw Go.toInterface(Go.str("mult64bitPow10: power of 10 is out of range"));
	};
	var _pow:GoUInt64 = _detailedPowersOfTen[_q - (-348 : GoInt)][(1 : GoInt)];
	if (_q < (0:GoInt)) {
		_pow = _pow + (("1" : GoUInt64));
	};
	var __tmp__ = stdgo.math.bits.Bits.mul64((_m : GoUInt64), _pow),
		_hi:GoUInt64 = __tmp__._0,
		_lo:GoUInt64 = __tmp__._1;
	_e2 = _e2 + ((_mulByLog10Log2(_q) - (63 : GoInt)) + (57 : GoInt));
	return {_0: ((_hi << (("7" : GoUInt64) : GoUInt64)) | (_lo >> (("57" : GoUInt64) : GoUInt64)) : GoUInt32), _1: _e2,
		_2: _lo << ("7" : GoUInt64) == (("0" : GoUInt64))};
}

/**
	// mult128bitPow10 takes a floating-point input with a 55-bit
	// mantissa and multiplies it with 10^q. The resulting mantissa
	// is m*P >> 119 where P is a 128-bit element of the detailedPowersOfTen tables.
	// It is typically 63 or 64-bit wide.
	// The returned boolean is true is all trimmed bits were zero.
	//
	// That is:
	//
	//	m*2^e2 * round(10^q) = resM * 2^resE + ε
	//	exact = ε == 0
**/
function _mult128bitPow10(_m:GoUInt64, _e2:GoInt, _q:GoInt):{var _0:GoUInt64; var _1:GoInt; var _2:Bool;} {
	var _resM:GoUInt64 = (0 : GoUInt64),
		_resE:GoInt = (0 : GoInt),
		_exact:Bool = false;
	if (_q == ((0 : GoInt))) {
		return {_0: _m << ("8" : GoUInt64), _1: _e2 - (8 : GoInt), _2: true};
	};
	if ((_q < (-348:GoInt)) || ((347 : GoInt) < _q)) {
		throw Go.toInterface(Go.str("mult128bitPow10: power of 10 is out of range"));
	};
	var _pow = (_detailedPowersOfTen[_q - (-348 : GoInt)] == null ? null : _detailedPowersOfTen[_q - (-348 : GoInt)].__copy__());
	if (_q < (0:GoInt)) {
		_pow[(0 : GoInt)] = _pow[(0 : GoInt)] + (("1" : GoUInt64));
	};
	_e2 = _e2 + ((_mulByLog10Log2(_q) - (127 : GoInt)) + (119 : GoInt));
	var __tmp__ = stdgo.math.bits.Bits.mul64(_m, _pow[(0 : GoInt)]),
		_l1:GoUInt64 = __tmp__._0,
		_l0:GoUInt64 = __tmp__._1;
	var __tmp__ = stdgo.math.bits.Bits.mul64(_m, _pow[(1 : GoInt)]),
		_h1:GoUInt64 = __tmp__._0,
		_h0:GoUInt64 = __tmp__._1;
	var __tmp__ = stdgo.math.bits.Bits.add64(_l1, _h0, ("0" : GoUInt64)),
		_mid:GoUInt64 = __tmp__._0,
		_carry:GoUInt64 = __tmp__._1;
	_h1 = _h1 + (_carry);
	return {_0: (_h1 << (("9" : GoUInt64) : GoUInt64)) | (_mid >> (("55" : GoUInt64) : GoUInt64)), _1: _e2,
		_2: ((_mid << (("9" : GoUInt64) : GoUInt64)) == ("0" : GoUInt64))
		&& (_l0 == ("0" : GoUInt64))};
}

function _divisibleByPower5(_m:GoUInt64, _k:GoInt):Bool {
	if (_m == (("0" : GoUInt64))) {
		return true;
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _k, _i++, {
			if (_m % ("5" : GoUInt64) != (("0" : GoUInt64))) {
				return false;
			};
			_m = _m / (("5" : GoUInt64));
		});
	};
	return true;
}

/**
	// divmod1e9 computes quotient and remainder of division by 1e9,
	// avoiding runtime uint64 division on 32-bit platforms.
**/
function _divmod1e9(_x:GoUInt64):{var _0:GoUInt32; var _1:GoUInt32;} {
	if (false) {
		return {_0: (_x / ("1000000000" : GoUInt64) : GoUInt32), _1: (_x % ("1000000000" : GoUInt64) : GoUInt32)};
	};
	var __tmp__ = stdgo.math.bits.Bits.mul64(_x >> ("1" : GoUInt64), ("9903520314283042200" : GoUInt64)),
		_hi:GoUInt64 = __tmp__._0,
		_0:GoUInt64 = __tmp__._1;
	var _q:GoUInt64 = _hi >> ("28" : GoUInt64);
	return {_0: (_q : GoUInt32), _1: (_x - (_q * (("1000000000" : GoUInt64) : GoUInt64)) : GoUInt32)};
}

function newDecimal(_i:GoUInt64):Ref<T_decimal> {
	var _d = ({} : T_decimal);
	_d.assign(_i);
	return _d;
}

function setOptimize(_b:Bool):Bool {
	var _old:Bool = _optimize;
	_optimize = _b;
	return _old;
}

function parseFloatPrefix(_s:GoString, _bitSize:GoInt):{var _0:GoFloat64; var _1:GoInt; var _2:Error;} {
	return _parseFloatPrefix(_s, _bitSize);
}

function mulByLog2Log10(_x:GoInt):GoInt {
	return _mulByLog2Log10(_x);
}

function mulByLog10Log2(_x:GoInt):GoInt {
	return _mulByLog10Log2(_x);
}

/**
	// FormatUint returns the string representation of i in the given base,
	// for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
	// for digit values >= 10.
**/
function formatUint(_i:GoUInt64, _base:GoInt):GoString {
	if ((true && (_i < (("100" : GoUInt64) : GoUInt64))) && (_base == (10 : GoInt))) {
		return _small((_i : GoInt));
	};
	var __tmp__ = _formatBits((null : Slice<GoUInt8>), _i, _base, false, false),
		_0:Slice<GoUInt8> = __tmp__._0,
		_s:GoString = __tmp__._1;
	return _s;
}

/**
	// FormatInt returns the string representation of i in the given base,
	// for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
	// for digit values >= 10.
**/
function formatInt(_i:GoInt64, _base:GoInt):GoString {
	if (((true && ((("0" : GoInt64) : GoInt64) <= _i)) && (_i < (("100" : GoInt64) : GoInt64))) && (_base == (10 : GoInt))) {
		return _small((_i : GoInt));
	};
	var __tmp__ = _formatBits((null : Slice<GoUInt8>), (_i : GoUInt64), _base, _i < ("0":GoInt64), false),
		_0:Slice<GoUInt8> = __tmp__._0,
		_s:GoString = __tmp__._1;
	return _s;
}

/**
	// Itoa is equivalent to FormatInt(int64(i), 10).
**/
function itoa(_i:GoInt):GoString {
	return formatInt((_i : GoInt64), (10 : GoInt));
}

/**
	// AppendInt appends the string form of the integer i,
	// as generated by FormatInt, to dst and returns the extended buffer.
**/
function appendInt(_dst:Slice<GoByte>, _i:GoInt64, _base:GoInt):Slice<GoByte> {
	if (((true && ((("0" : GoInt64) : GoInt64) <= _i)) && (_i < (("100" : GoInt64) : GoInt64))) && (_base == (10 : GoInt))) {
		return (_dst.__append__(..._small((_i : GoInt)).__toArray__()));
	};
	{
		var __tmp__ = _formatBits(_dst, (_i : GoUInt64), _base, _i < ("0":GoInt64), true);
		_dst = __tmp__._0;
	};
	return _dst;
}

/**
	// AppendUint appends the string form of the unsigned integer i,
	// as generated by FormatUint, to dst and returns the extended buffer.
**/
function appendUint(_dst:Slice<GoByte>, _i:GoUInt64, _base:GoInt):Slice<GoByte> {
	if ((true && (_i < (("100" : GoUInt64) : GoUInt64))) && (_base == (10 : GoInt))) {
		return (_dst.__append__(..._small((_i : GoInt)).__toArray__()));
	};
	{
		var __tmp__ = _formatBits(_dst, _i, _base, false, true);
		_dst = __tmp__._0;
	};
	return _dst;
}

/**
	// small returns the string for an i with 0 <= i < nSmalls.
**/
function _small(_i:GoInt):GoString {
	if (_i < (10:GoInt)) {
		return (Go.str("0123456789abcdefghijklmnopqrstuvwxyz").__slice__(_i, _i + (1 : GoInt)) : GoString);
	};
	return
		(Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")
		.__slice__(_i * (2 : GoInt), (_i * (2 : GoInt)) + (2 : GoInt)) : GoString);
}

/**
	// formatBits computes the string representation of u in the given base.
	// If neg is set, u is treated as negative int64 value. If append_ is
	// set, the string is appended to dst and the resulting byte slice is
	// returned as the first result value; otherwise the string is returned
	// as the second result value.
**/
function _formatBits(_dst:Slice<GoByte>, _u:GoUInt64, _base:GoInt, _neg:Bool, _append_:Bool):{var _0:Slice<GoByte>; var _1:GoString;} {
	var _d:Slice<GoByte> = (null : Slice<GoUInt8>),
		_s:GoString = ("" : GoString);
	if ((_base < (2:GoInt)) || (_base > Go.str("0123456789abcdefghijklmnopqrstuvwxyz").length)) {
		throw Go.toInterface(Go.str("strconv: illegal AppendInt/FormatInt base"));
	};
	var _a:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...65) (0 : GoUInt8)]);
	var _i:GoInt = (_a.length);
	if (_neg) {
		_u = -_u;
	};
	if (_base == ((10 : GoInt))) {
		if (true) {
			while (_u >= ("1000000000" : GoUInt64)) {
				var _q:GoUInt64 = _u / ("1000000000" : GoUInt64);
				var _us:GoUInt = (_u - (_q * (("1000000000" : GoUInt64) : GoUInt64)) : GoUInt);
				{
					var _j:GoInt = (4 : GoInt);
					Go.cfor(_j > (0 : GoInt), _j--, {
						var _is:GoUInt = (_us % (("100" : GoUInt) : GoUInt)) * ("2" : GoUInt);
						_us = _us / (("100" : GoUInt));
						_i = _i - ((2 : GoInt));
						_a[_i + (1 : GoInt)] = Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")[_is
							+ ("1" : GoUInt)];
						_a[_i + (0 : GoInt)] = Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")[_is
							+ ("0" : GoUInt)];
					});
				};
				_i--;
				_a[_i] = Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")[(_us * (("2" : GoUInt) : GoUInt))
					+ ("1" : GoUInt)];
				_u = _q;
			};
		};
		var _us:GoUInt = (_u : GoUInt);
		while (_us >= ("100" : GoUInt)) {
			var _is:GoUInt = (_us % (("100" : GoUInt) : GoUInt)) * ("2" : GoUInt);
			_us = _us / (("100" : GoUInt));
			_i = _i - ((2 : GoInt));
			_a[_i + (1 : GoInt)] = Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")[_is
				+ ("1" : GoUInt)];
			_a[_i + (0 : GoInt)] = Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")[_is
				+ ("0" : GoUInt)];
		};
		var _is:GoUInt = _us * ("2" : GoUInt);
		_i--;
		_a[_i] = Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")[_is
			+ ("1" : GoUInt)];
		if (_us >= ("10" : GoUInt)) {
			_i--;
			_a[_i] = Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")[_is];
		};
	} else if (_isPowerOfTwo(_base)) {
		var _shift:GoUInt = (stdgo.math.bits.Bits.trailingZeros((_base : GoUInt)) : GoUInt) & ("7" : GoUInt);
		var _b:GoUInt64 = (_base : GoUInt64);
		var _m:GoUInt = (_base : GoUInt) - ("1" : GoUInt);
		while (_u >= _b) {
			_i--;
			_a[_i] = Go.str("0123456789abcdefghijklmnopqrstuvwxyz")[(_u : GoUInt) & _m];
			_u = _u >> (_shift);
		};
		_i--;
		_a[_i] = Go.str("0123456789abcdefghijklmnopqrstuvwxyz")[(_u : GoUInt)];
	} else {
		var _b:GoUInt64 = (_base : GoUInt64);
		while (_u >= _b) {
			_i--;
			var _q:GoUInt64 = _u / _b;
			_a[_i] = Go.str("0123456789abcdefghijklmnopqrstuvwxyz")[(_u - (_q * _b) : GoUInt)];
			_u = _q;
		};
		_i--;
		_a[_i] = Go.str("0123456789abcdefghijklmnopqrstuvwxyz")[(_u : GoUInt)];
	};
	if (_neg) {
		_i--;
		_a[_i] = ("-".code : GoRune);
	};
	if (_append_) {
		_d = (_dst.__append__(...(_a.__slice__(_i) : Slice<GoUInt8>).__toArray__()));
		return {_0: _d, _1: _s};
	};
	_s = ((_a.__slice__(_i) : Slice<GoUInt8>) : GoString);
	return {_0: _d, _1: _s};
}

function _isPowerOfTwo(_x:GoInt):Bool {
	return _x & (_x - (1 : GoInt)) == ((0 : GoInt));
}

/**
	// contains reports whether the string contains the byte c.
**/
function _contains(_s:GoString, _c:GoByte):Bool {
	return _index(_s, _c) != ((-1 : GoInt));
}

function _quoteWith(_s:GoString, _quote:GoByte, asciionly:Bool, _graphicOnly:Bool):GoString {
	return (_appendQuotedWith(new Slice<GoUInt8>((0 : GoInt).toBasic(), ((3 : GoInt) * _s.length) / (2 : GoInt),
		...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]), _s,
		_quote, asciionly, _graphicOnly) : GoString);
}

function _quoteRuneWith(_r:GoRune, _quote:GoByte, asciionly:Bool, _graphicOnly:Bool):GoString {
	return (_appendQuotedRuneWith((null : Slice<GoUInt8>), _r, _quote, asciionly, _graphicOnly) : GoString);
}

function _appendQuotedWith(_buf:Slice<GoByte>, _s:GoString, _quote:GoByte, asciionly:Bool, _graphicOnly:Bool):Slice<GoByte> {
	if ((_buf.capacity - _buf.length) < (_s.length)) {
		var _nBuf = new Slice<GoUInt8>((_buf.length : GoInt).toBasic(), ((_buf.length + (1 : GoInt)) + _s.length) + (1 : GoInt),
			...[for (i in 0...(_buf.length : GoInt).toBasic()) (0 : GoUInt8)]);
		Go.copySlice(_nBuf, _buf);
		_buf = _nBuf;
	};
	_buf = _buf.__appendref__(_quote);
	{
		var _width:GoInt = (0 : GoInt);
		Go.cfor((_s.length) > (0 : GoInt), _s = (_s.__slice__(_width) : GoString), {
			var _r:GoInt32 = (_s[(0 : GoInt)] : GoRune);
			_width = (1 : GoInt);
			if (_r >= (128 : GoInt32)) {
				{
					var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s);
					_r = __tmp__._0;
					_width = __tmp__._1;
				};
			};
			if ((_width == (1 : GoInt)) && (_r == (65533 : GoInt32))) {
				_buf = _buf.__appendref__(...("\\x" : GoString).__toArray__());
				_buf = _buf.__appendref__(Go.str("0123456789abcdef")[_s[(0 : GoInt)] >> ("4" : GoUInt64)]);
				_buf = _buf.__appendref__(Go.str("0123456789abcdef")[_s[(0 : GoInt)] & (15 : GoUInt8)]);
				continue;
			};
			_buf = _appendEscapedRune(_buf, _r, _quote, asciionly, _graphicOnly);
		});
	};
	_buf = _buf.__appendref__(_quote);
	return _buf;
}

function _appendQuotedRuneWith(_buf:Slice<GoByte>, _r:GoRune, _quote:GoByte, asciionly:Bool, _graphicOnly:Bool):Slice<GoByte> {
	_buf = _buf.__appendref__(_quote);
	if (!stdgo.unicode.utf8.Utf8.validRune(_r)) {
		_r = (65533 : GoInt32);
	};
	_buf = _appendEscapedRune(_buf, _r, _quote, asciionly, _graphicOnly);
	_buf = _buf.__appendref__(_quote);
	return _buf;
}

function _appendEscapedRune(_buf:Slice<GoByte>, _r:GoRune, _quote:GoByte, asciionly:Bool, _graphicOnly:Bool):Slice<GoByte> {
	var _runeTmp:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...4) (0 : GoUInt8)]);
	if ((_r == (_quote : GoRune)) || (_r == ("\\".code : GoRune))) {
		_buf = _buf.__appendref__(("\\".code : GoRune));
		_buf = _buf.__appendref__((_r : GoByte));
		return _buf;
	};
	if (asciionly) {
		if ((_r < (128:GoInt32)) && isPrint(_r)) {
			_buf = _buf.__appendref__((_r : GoByte));
			return _buf;
		};
	} else if (isPrint(_r) || (_graphicOnly && _isInGraphicList(_r))) {
		var _n:GoInt = stdgo.unicode.utf8.Utf8.encodeRune((_runeTmp.__slice__(0) : Slice<GoUInt8>), _r);
		_buf = _buf.__appendref__(...(_runeTmp.__slice__(0, _n) : Slice<GoUInt8>).__toArray__());
		return _buf;
	};
	{
		var __switchIndex__ = -1;
		while (true) {
			if (_r == (("\x07".code : GoRune))) {
				_buf = _buf.__appendref__(...("\\a" : GoString).__toArray__());
				break;
			} else if (_r == (("\u0008".code : GoRune))) {
				_buf = _buf.__appendref__(...("\\b" : GoString).__toArray__());
				break;
			} else if (_r == (("\x0C".code : GoRune))) {
				_buf = _buf.__appendref__(...("\\f" : GoString).__toArray__());
				break;
			} else if (_r == (("\n".code : GoRune))) {
				_buf = _buf.__appendref__(...("\\n" : GoString).__toArray__());
				break;
			} else if (_r == (("\r".code : GoRune))) {
				_buf = _buf.__appendref__(...("\\r" : GoString).__toArray__());
				break;
			} else if (_r == (("\t".code : GoRune))) {
				_buf = _buf.__appendref__(...("\\t" : GoString).__toArray__());
				break;
			} else if (_r == (("\x0B".code : GoRune))) {
				_buf = _buf.__appendref__(...("\\v" : GoString).__toArray__());
				break;
			} else {
				{
					var __switchIndex__ = -1;
					while (true) {
						if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_r < (" ".code:GoRune)) || (_r == (127 : GoInt32)))) {
							_buf = _buf.__appendref__(...("\\x" : GoString).__toArray__());
							_buf = _buf.__appendref__(Go.str("0123456789abcdef")[(_r : GoByte) >> ("4" : GoUInt64)]);
							_buf = _buf.__appendref__(Go.str("0123456789abcdef")[(_r : GoByte) & (15 : GoUInt8)]);
							break;
							break;
						} else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && !stdgo.unicode.utf8.Utf8.validRune(_r))) {
							_r = (65533 : GoInt32);
							@:fallthrough {
								__switchIndex__ = 2;
								continue;
							};
							break;
						} else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _r < (65536:GoInt32))) {
							_buf = _buf.__appendref__(...("\\u" : GoString).__toArray__());
							{
								var _s:GoInt = (12 : GoInt);
								Go.cfor(_s >= (0 : GoInt), _s = _s - ((4 : GoInt)), {
									_buf = _buf.__appendref__(Go.str("0123456789abcdef")[(_r >> (_s : GoUInt)) & (15 : GoInt32)]);
								});
							};
							break;
							break;
						} else {
							_buf = _buf.__appendref__(...("\\U" : GoString).__toArray__());
							{
								var _s:GoInt = (28 : GoInt);
								Go.cfor(_s >= (0 : GoInt), _s = _s - ((4 : GoInt)), {
									_buf = _buf.__appendref__(Go.str("0123456789abcdef")[(_r >> (_s : GoUInt)) & (15 : GoInt32)]);
								});
							};
							break;
						};
						break;
					};
				};
			};
			break;
		};
	};
	return _buf;
}

/**
	// Quote returns a double-quoted Go string literal representing s. The
	// returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
	// control characters and non-printable characters as defined by
	// IsPrint.
**/
function quote(_s:GoString):GoString {
	return _quoteWith(_s, ("\"".code : GoRune), false, false);
}

/**
	// AppendQuote appends a double-quoted Go string literal representing s,
	// as generated by Quote, to dst and returns the extended buffer.
**/
function appendQuote(_dst:Slice<GoByte>, _s:GoString):Slice<GoByte> {
	return _appendQuotedWith(_dst, _s, ("\"".code : GoRune), false, false);
}

/**
	// QuoteToASCII returns a double-quoted Go string literal representing s.
	// The returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
	// non-ASCII characters and non-printable characters as defined by IsPrint.
**/
function quoteToASCII(_s:GoString):GoString {
	return _quoteWith(_s, ("\"".code : GoRune), true, false);
}

/**
	// AppendQuoteToASCII appends a double-quoted Go string literal representing s,
	// as generated by QuoteToASCII, to dst and returns the extended buffer.
**/
function appendQuoteToASCII(_dst:Slice<GoByte>, _s:GoString):Slice<GoByte> {
	return _appendQuotedWith(_dst, _s, ("\"".code : GoRune), true, false);
}

/**
	// QuoteToGraphic returns a double-quoted Go string literal representing s.
	// The returned string leaves Unicode graphic characters, as defined by
	// IsGraphic, unchanged and uses Go escape sequences (\t, \n, \xFF, \u0100)
	// for non-graphic characters.
**/
function quoteToGraphic(_s:GoString):GoString {
	return _quoteWith(_s, ("\"".code : GoRune), false, true);
}

/**
	// AppendQuoteToGraphic appends a double-quoted Go string literal representing s,
	// as generated by QuoteToGraphic, to dst and returns the extended buffer.
**/
function appendQuoteToGraphic(_dst:Slice<GoByte>, _s:GoString):Slice<GoByte> {
	return _appendQuotedWith(_dst, _s, ("\"".code : GoRune), false, true);
}

/**
	// QuoteRune returns a single-quoted Go character literal representing the
	// rune. The returned string uses Go escape sequences (\t, \n, \xFF, \u0100)
	// for control characters and non-printable characters as defined by IsPrint.
	// If r is not a valid Unicode code point, it is interpreted as the Unicode
	// replacement character U+FFFD.
**/
function quoteRune(_r:GoRune):GoString {
	return _quoteRuneWith(_r, ("\'".code : GoRune), false, false);
}

/**
	// AppendQuoteRune appends a single-quoted Go character literal representing the rune,
	// as generated by QuoteRune, to dst and returns the extended buffer.
**/
function appendQuoteRune(_dst:Slice<GoByte>, _r:GoRune):Slice<GoByte> {
	return _appendQuotedRuneWith(_dst, _r, ("\'".code : GoRune), false, false);
}

/**
	// QuoteRuneToASCII returns a single-quoted Go character literal representing
	// the rune. The returned string uses Go escape sequences (\t, \n, \xFF,
	// \u0100) for non-ASCII characters and non-printable characters as defined
	// by IsPrint.
	// If r is not a valid Unicode code point, it is interpreted as the Unicode
	// replacement character U+FFFD.
**/
function quoteRuneToASCII(_r:GoRune):GoString {
	return _quoteRuneWith(_r, ("\'".code : GoRune), true, false);
}

/**
	// AppendQuoteRuneToASCII appends a single-quoted Go character literal representing the rune,
	// as generated by QuoteRuneToASCII, to dst and returns the extended buffer.
**/
function appendQuoteRuneToASCII(_dst:Slice<GoByte>, _r:GoRune):Slice<GoByte> {
	return _appendQuotedRuneWith(_dst, _r, ("\'".code : GoRune), true, false);
}

/**
	// QuoteRuneToGraphic returns a single-quoted Go character literal representing
	// the rune. If the rune is not a Unicode graphic character,
	// as defined by IsGraphic, the returned string will use a Go escape sequence
	// (\t, \n, \xFF, \u0100).
	// If r is not a valid Unicode code point, it is interpreted as the Unicode
	// replacement character U+FFFD.
**/
function quoteRuneToGraphic(_r:GoRune):GoString {
	return _quoteRuneWith(_r, ("\'".code : GoRune), false, true);
}

/**
	// AppendQuoteRuneToGraphic appends a single-quoted Go character literal representing the rune,
	// as generated by QuoteRuneToGraphic, to dst and returns the extended buffer.
**/
function appendQuoteRuneToGraphic(_dst:Slice<GoByte>, _r:GoRune):Slice<GoByte> {
	return _appendQuotedRuneWith(_dst, _r, ("\'".code : GoRune), false, true);
}

/**
	// CanBackquote reports whether the string s can be represented
	// unchanged as a single-line backquoted string without control
	// characters other than tab.
**/
function canBackquote(_s:GoString):Bool {
	while ((_s.length) > (0 : GoInt)) {
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s),
			_r:GoInt32 = __tmp__._0,
			_wid:GoInt = __tmp__._1;
		_s = (_s.__slice__(_wid) : GoString);
		if (_wid > (1 : GoInt)) {
			if (_r == (("\ufeff".code : GoRune))) {
				return false;
			};
			continue;
		};
		if (_r == ((65533 : GoInt32))) {
			return false;
		};
		if ((((_r < (" ".code:GoRune)) && (_r != ("\t".code : GoRune))) || (_r == ("`".code : GoRune)))
			|| (_r == ("\u007F".code : GoRune))) {
			return false;
		};
	};
	return true;
}

function _unhex(_b:GoByte):{var _0:GoRune; var _1:Bool;} {
	var _v:GoRune = (0 : GoInt32), _ok:Bool = false;
	var _c:GoInt32 = (_b : GoRune);
	if ((("0".code : GoRune) <= _c) && (_c <= ("9".code : GoRune))) {
		return {_0: _c - ("0".code : GoRune), _1: true};
	} else if ((("a".code : GoRune) <= _c) && (_c <= ("f".code : GoRune))) {
		return {_0: (_c - ("a".code : GoRune)) + (10 : GoInt32), _1: true};
	} else if ((("A".code : GoRune) <= _c) && (_c <= ("F".code : GoRune))) {
		return {_0: (_c - ("A".code : GoRune)) + (10 : GoInt32), _1: true};
	};
	return {_0: _v, _1: _ok};
}

/**
	// UnquoteChar decodes the first character or byte in the escaped string
	// or character literal represented by the string s.
	// It returns four values:
	//
	//  1. value, the decoded Unicode code point or byte value;
	//  2. multibyte, a boolean indicating whether the decoded character requires a multibyte UTF-8 representation;
	//  3. tail, the remainder of the string after the character; and
	//  4. an error that will be nil if the character is syntactically valid.
	//
	// The second argument, quote, specifies the type of literal being parsed
	// and therefore which escaped quote character is permitted.
	// If set to a single quote, it permits the sequence \' and disallows unescaped '.
	// If set to a double quote, it permits \" and disallows unescaped ".
	// If set to zero, it does not permit either escape and allows both quote characters to appear unescaped.
**/
function unquoteChar(_s:GoString, _quote:GoByte):{
	var _0:GoRune;
	var _1:Bool;
	var _2:GoString;
	var _3:Error;
} {
	var _value:GoRune = (0 : GoInt32),
		_multibyte:Bool = false,
		_tail:GoString = ("" : GoString),
		_err:Error = (null : Error);
	if ((_s.length) == ((0 : GoInt))) {
		_err = errSyntax;
		return {
			_0: _value,
			_1: _multibyte,
			_2: _tail,
			_3: _err
		};
	};
	{
		var _c:GoUInt8 = _s[(0 : GoInt)];
		if ((_c == _quote) && ((_quote == ("\'".code : GoRune)) || (_quote == ("\"".code : GoRune)))) {
			_err = errSyntax;
			return {
				_0: _value,
				_1: _multibyte,
				_2: _tail,
				_3: _err
			};
		} else if (_c >= (128 : GoUInt8)) {
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s),
				_r:GoInt32 = __tmp__._0,
				_size:GoInt = __tmp__._1;
			return {
				_0: _r,
				_1: true,
				_2: (_s.__slice__(_size) : GoString),
				_3: (null : Error)
			};
		} else if (_c != (("\\".code : GoRune))) {
			return {
				_0: (_s[(0 : GoInt)] : GoRune),
				_1: false,
				_2: (_s.__slice__((1 : GoInt)) : GoString),
				_3: (null : Error)
			};
		};
	};
	if ((_s.length) <= (1 : GoInt)) {
		_err = errSyntax;
		return {
			_0: _value,
			_1: _multibyte,
			_2: _tail,
			_3: _err
		};
	};
	var _c:GoUInt8 = _s[(1 : GoInt)];
	_s = (_s.__slice__((2 : GoInt)) : GoString);
	{
		var __switchIndex__ = -1;
		while (true) {
			if (_c == (("a".code : GoRune))) {
				_value = ("\x07".code : GoRune);
				break;
			} else if (_c == (("b".code : GoRune))) {
				_value = ("\u0008".code : GoRune);
				break;
			} else if (_c == (("f".code : GoRune))) {
				_value = ("\x0C".code : GoRune);
				break;
			} else if (_c == (("n".code : GoRune))) {
				_value = ("\n".code : GoRune);
				break;
			} else if (_c == (("r".code : GoRune))) {
				_value = ("\r".code : GoRune);
				break;
			} else if (_c == (("t".code : GoRune))) {
				_value = ("\t".code : GoRune);
				break;
			} else if (_c == (("v".code : GoRune))) {
				_value = ("\x0B".code : GoRune);
				break;
			} else if (_c == (("x".code : GoRune)) || _c == (("u".code : GoRune)) || _c == (("U".code : GoRune))) {
				var _n:GoInt = (0 : GoInt);
				if (_c == (("x".code : GoRune))) {
					_n = (2 : GoInt);
				} else if (_c == (("u".code : GoRune))) {
					_n = (4 : GoInt);
				} else if (_c == (("U".code : GoRune))) {
					_n = (8 : GoInt);
				};
				var _v:GoRune = (0 : GoInt32);
				if ((_s.length) < _n) {
					_err = errSyntax;
					return {
						_0: _value,
						_1: _multibyte,
						_2: _tail,
						_3: _err
					};
				};
				{
					var _j:GoInt = (0 : GoInt);
					Go.cfor(_j < _n, _j++, {
						var __tmp__ = _unhex(_s[_j]),
							_x:GoInt32 = __tmp__._0,
							_ok:Bool = __tmp__._1;
						if (!_ok) {
							_err = errSyntax;
							return {
								_0: _value,
								_1: _multibyte,
								_2: _tail,
								_3: _err
							};
						};
						_v = (_v << (("4" : GoUInt64) : GoUInt64)) | _x;
					});
				};
				_s = (_s.__slice__(_n) : GoString);
				if (_c == (("x".code : GoRune))) {
					_value = _v;
					break;
				};
				if (!stdgo.unicode.utf8.Utf8.validRune(_v)) {
					_err = errSyntax;
					return {
						_0: _value,
						_1: _multibyte,
						_2: _tail,
						_3: _err
					};
				};
				_value = _v;
				_multibyte = true;
				break;
			} else if (_c == (("0".code : GoRune)) || _c == (("1".code : GoRune)) || _c == (("2".code : GoRune)) || _c == (("3".code : GoRune))
				|| _c == (("4".code : GoRune)) || _c == (("5".code : GoRune)) || _c == (("6".code : GoRune)) || _c == (("7".code : GoRune))) {
				var _v:GoInt32 = (_c : GoRune) - ("0".code : GoRune);
				if ((_s.length) < (2 : GoInt)) {
					_err = errSyntax;
					return {
						_0: _value,
						_1: _multibyte,
						_2: _tail,
						_3: _err
					};
				};
				{
					var _j:GoInt = (0 : GoInt);
					Go.cfor(_j < (2:GoInt), _j++, {
						var _x:GoInt32 = (_s[_j] : GoRune) - ("0".code : GoRune);
						if ((_x < (0:GoInt32)) || (_x > (7 : GoInt32))) {
							_err = errSyntax;
							return {
								_0: _value,
								_1: _multibyte,
								_2: _tail,
								_3: _err
							};
						};
						_v = (_v << (("3" : GoUInt64) : GoUInt64)) | _x;
					});
				};
				_s = (_s.__slice__((2 : GoInt)) : GoString);
				if (_v > (255 : GoInt32)) {
					_err = errSyntax;
					return {
						_0: _value,
						_1: _multibyte,
						_2: _tail,
						_3: _err
					};
				};
				_value = _v;
				break;
			} else if (_c == (("\\".code : GoRune))) {
				_value = ("\\".code : GoRune);
				break;
			} else if (_c == (("\'".code : GoRune)) || _c == (("\"".code : GoRune))) {
				if (_c != (_quote)) {
					_err = errSyntax;
					return {
						_0: _value,
						_1: _multibyte,
						_2: _tail,
						_3: _err
					};
				};
				_value = (_c : GoRune);
				break;
			} else {
				_err = errSyntax;
				return {
					_0: _value,
					_1: _multibyte,
					_2: _tail,
					_3: _err
				};
			};
			break;
		};
	};
	_tail = _s;
	return {
		_0: _value,
		_1: _multibyte,
		_2: _tail,
		_3: _err
	};
}

/**
	// QuotedPrefix returns the quoted string (as understood by Unquote) at the prefix of s.
	// If s does not start with a valid quoted string, QuotedPrefix returns an error.
**/
function quotedPrefix(_s:GoString):{var _0:GoString; var _1:Error;} {
	var __tmp__ = _unquote(_s, false),
		_out:GoString = __tmp__._0,
		_0:GoString = __tmp__._1,
		_err:Error = __tmp__._2;
	return {_0: _out, _1: _err};
}

/**
	// Unquote interprets s as a single-quoted, double-quoted,
	// or backquoted Go string literal, returning the string value
	// that s quotes.  (If s is single-quoted, it would be a Go
	// character literal; Unquote returns the corresponding
	// one-character string.)
**/
function unquote(_s:GoString):{var _0:GoString; var _1:Error;} {
	var __tmp__ = _unquote(_s, true),
		_out:GoString = __tmp__._0,
		_rem:GoString = __tmp__._1,
		_err:Error = __tmp__._2;
	if ((_rem.length) > (0 : GoInt)) {
		return {_0: Go.str(), _1: errSyntax};
	};
	return {_0: _out, _1: _err};
}

/**
	// unquote parses a quoted string at the start of the input,
	// returning the parsed prefix, the remaining suffix, and any parse errors.
	// If unescape is true, the parsed prefix is unescaped,
	// otherwise the input prefix is provided verbatim.
**/
function _unquote(_in:GoString, _unescape:Bool):{var _0:GoString; var _1:GoString; var _2:Error;} {
	var _out:GoString = ("" : GoString),
		_rem:GoString = ("" : GoString),
		_err:Error = (null : Error);
	if ((_in.length) < (2 : GoInt)) {
		return {_0: Go.str(), _1: _in, _2: errSyntax};
	};
	var _quote:GoUInt8 = _in[(0 : GoInt)];
	var _end:GoInt = _index((_in.__slice__((1 : GoInt)) : GoString), _quote);
	if (_end < (0:GoInt)) {
		return {_0: Go.str(), _1: _in, _2: errSyntax};
	};
	_end = _end + ((2 : GoInt));
	{
		var __switchIndex__ = -1;
		while (true) {
			if (_quote == (("`".code : GoRune))) {
				if (!_unescape) {
					_out = (_in.__slice__(0, _end) : GoString);
				} else if (!_contains((_in.__slice__(0, _end) : GoString), ("\r".code : GoRune))) {
					_out = (_in.__slice__((Go.str("`").length), _end - (Go.str("`").length)) : GoString);
				} else {
					var _buf = new Slice<GoUInt8>((0 : GoInt).toBasic(), ((_end - Go.str("`").length) - Go.str("\r").length) - (Go.str("`").length),
						...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
					{
						var _i:GoInt = (Go.str("`").length);
						Go.cfor(_i < (_end - Go.str("`").length), _i++, {
							if (_in[_i] != (("\r".code : GoRune))) {
								_buf = _buf.__appendref__(_in[_i]);
							};
						});
					};
					_out = (_buf : GoString);
				};
				return {_0: _out, _1: (_in.__slice__(_end) : GoString), _2: (null : Error)};
				break;
			} else if (_quote == (("\"".code : GoRune)) || _quote == (("\'".code : GoRune))) {
				if (!_contains((_in.__slice__(0, _end) : GoString), ("\\".code : GoRune))
					&& !_contains((_in.__slice__(0, _end) : GoString), ("\n".code : GoRune))) {
					var _valid:Bool = false;
					if (_quote == (("\"".code : GoRune))) {
						_valid = stdgo.unicode.utf8.Utf8.validString((_in.__slice__(("\"".length), _end - ("\"".length)) : GoString));
					} else if (_quote == (("\'".code : GoRune))) {
						var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_in.__slice__((Go.str("\'").length),
							_end - (Go.str("\'").length)) : GoString)),
							_r:GoInt32 = __tmp__._0,
							_n:GoInt = __tmp__._1;
						_valid = (((Go.str("\'").length + _n) + Go.str("\'").length) == _end)
							&& ((_r != (65533 : GoInt32)) || (_n != (1 : GoInt)));
					};
					if (_valid) {
						_out = (_in.__slice__(0, _end) : GoString);
						if (_unescape) {
							_out = (_out.__slice__((1 : GoInt), _end - (1 : GoInt)) : GoString);
						};
						return {_0: _out, _1: (_in.__slice__(_end) : GoString), _2: (null : Error)};
					};
				};
				var _buf:Slice<GoByte> = (null : Slice<GoUInt8>);
				var _in0:GoString = _in;
				_in = (_in.__slice__((1 : GoInt)) : GoString);
				if (_unescape) {
					_buf = new Slice<GoUInt8>((0 : GoInt).toBasic(), ((3 : GoInt) * _end) / (2 : GoInt),
						...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
				};
				while ((_in.length > (0 : GoInt)) && (_in[(0 : GoInt)] != _quote)) {
					var __tmp__ = unquoteChar(_in, _quote),
						_r:GoInt32 = __tmp__._0,
						_multibyte:Bool = __tmp__._1,
						_rem:GoString = __tmp__._2,
						_err:Error = __tmp__._3;
					if ((_in[(0 : GoInt)] == ("\n".code : GoRune)) || (_err != null)) {
						return {_0: Go.str(), _1: _in0, _2: errSyntax};
					};
					_in = _rem;
					if (_unescape) {
						if ((_r < (128:GoInt32)) || !_multibyte) {
							_buf = _buf.__appendref__((_r : GoByte));
						} else {
							var _arr:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...4) (0 : GoUInt8)]);
							var _n:GoInt = stdgo.unicode.utf8.Utf8.encodeRune((_arr.__slice__(0) : Slice<GoUInt8>), _r);
							_buf = _buf.__appendref__(...(_arr.__slice__(0, _n) : Slice<GoUInt8>).__toArray__());
						};
					};
					if (_quote == (("\'".code : GoRune))) {
						break;
					};
				};
				if (!((_in.length > (0 : GoInt)) && (_in[(0 : GoInt)] == _quote))) {
					return {_0: Go.str(), _1: _in0, _2: errSyntax};
				};
				_in = (_in.__slice__((1 : GoInt)) : GoString);
				if (_unescape) {
					return {_0: (_buf : GoString), _1: _in, _2: (null : Error)};
				};
				return {_0: (_in0.__slice__(0, (_in0.length) - (_in.length)) : GoString), _1: _in, _2: (null : Error)};
				break;
			} else {
				return {_0: Go.str(), _1: _in, _2: errSyntax};
			};
			break;
		};
		return {_0: _out, _1: _rem, _2: _err};
	};
}

/**
	// bsearch16 returns the smallest i such that a[i] >= x.
	// If there is no such i, bsearch16 returns len(a).
**/
function _bsearch16(_a:Slice<GoUInt16>, _x:GoUInt16):GoInt {
	var _i:GoInt = (0 : GoInt), _j:GoInt = (_a.length);
	while (_i < _j) {
		var _h:GoInt = _i + ((_j - _i) >> (("1" : GoUInt64) : GoUInt64));
		if (_a[_h] < _x) {
			_i = _h + (1 : GoInt);
		} else {
			_j = _h;
		};
	};
	return _i;
}

/**
	// bsearch32 returns the smallest i such that a[i] >= x.
	// If there is no such i, bsearch32 returns len(a).
**/
function _bsearch32(_a:Slice<GoUInt32>, _x:GoUInt32):GoInt {
	var _i:GoInt = (0 : GoInt), _j:GoInt = (_a.length);
	while (_i < _j) {
		var _h:GoInt = _i + ((_j - _i) >> (("1" : GoUInt64) : GoUInt64));
		if (_a[_h] < _x) {
			_i = _h + (1 : GoInt);
		} else {
			_j = _h;
		};
	};
	return _i;
}

/**
	// IsPrint reports whether the rune is defined as printable by Go, with
	// the same definition as unicode.IsPrint: letters, numbers, punctuation,
	// symbols and ASCII space.
**/
function isPrint(_r:GoRune):Bool {
	if (_r <= (255 : GoInt32)) {
		if (((32 : GoInt32) <= _r) && (_r <= (126 : GoInt32))) {
			return true;
		};
		if (((161 : GoInt32) <= _r) && (_r <= (255 : GoInt32))) {
			return _r != ((173 : GoInt32));
		};
		return false;
	};
	if (((0 : GoInt32) <= _r) && (_r < (65536:GoInt32))) {
		var _rr:GoUInt16 = (_r : GoUInt16),
			_isPrint = _isPrint16,
			_isNotPrint = _isNotPrint16;
		var _i:GoInt = _bsearch16(_isPrint, _rr);
		if (((_i >= _isPrint.length) || (_rr < _isPrint[_i & ((1 : GoInt) ^ (-1 : GoInt))])) || (_isPrint[_i | (1 : GoInt)] < _rr)) {
			return false;
		};
		var _j:GoInt = _bsearch16(_isNotPrint, _rr);
		return (_j >= _isNotPrint.length) || (_isNotPrint[_j] != _rr);
	};
	var _rr:GoUInt32 = (_r : GoUInt32),
		_isPrint = _isPrint32,
		_isNotPrint = _isNotPrint32;
	var _i:GoInt = _bsearch32(_isPrint, _rr);
	if (((_i >= _isPrint.length) || (_rr < _isPrint[_i & ((1 : GoInt) ^ (-1 : GoInt))])) || (_isPrint[_i | (1 : GoInt)] < _rr)) {
		return false;
	};
	if (_r >= (131072 : GoInt32)) {
		return true;
	};
	_r = _r - ((65536 : GoInt32));
	var _j:GoInt = _bsearch16(_isNotPrint, (_r : GoUInt16));
	return (_j >= _isNotPrint.length) || (_isNotPrint[_j] != (_r : GoUInt16));
}

/**
	// IsGraphic reports whether the rune is defined as a Graphic by Unicode. Such
	// characters include letters, marks, numbers, punctuation, symbols, and
	// spaces, from categories L, M, N, P, S, and Zs.
**/
function isGraphic(_r:GoRune):Bool {
	if (isPrint(_r)) {
		return true;
	};
	return _isInGraphicList(_r);
}

/**
	// isInGraphicList reports whether the rune is in the isGraphic list. This separation
	// from IsGraphic allows quoteWith to avoid two calls to IsPrint.
	// Should be called only if IsPrint fails.
**/
function _isInGraphicList(_r:GoRune):Bool {
	if (_r > (65535 : GoInt32)) {
		return false;
	};
	var _rr:GoUInt16 = (_r : GoUInt16);
	var _i:GoInt = _bsearch16(_isGraphic, _rr);
	return (_i < _isGraphic.length) && (_rr == _isGraphic[_i]);
}

class NumError_asInterface {
	@:keep
	public function unwrap():Error
		return __self__.value.unwrap();

	@:keep
	public function error():GoString
		return __self__.value.error();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<NumError>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.strconv.Strconv.NumError_asInterface) class NumError_static_extension {
	@:keep
	static public function unwrap(_e:Ref<NumError>):Error {
		return _e.err;
	}

	@:keep
	static public function error(_e:Ref<NumError>):GoString {
		return (((((Go.str("strconv.") + _e.func) + Go.str(": ")) + Go.str("parsing ")) + quote(_e.num)) + Go.str(": ")) + _e.err.error();
	}
}

private class T_decimal_asInterface {
	/**
		// Extract integer part, rounded appropriately.
		// No guarantees about overflow.
	**/
	@:keep
	public function roundedInteger():GoUInt64
		return __self__.value.roundedInteger();

	/**
		// Round a up to nd digits (or fewer).
	**/
	@:keep
	public function roundUp(_nd:GoInt):Void
		__self__.value.roundUp(_nd);

	/**
		// Round a down to nd digits (or fewer).
	**/
	@:keep
	public function roundDown(_nd:GoInt):Void
		__self__.value.roundDown(_nd);

	/**
		// Round a to nd digits (or fewer).
		// If nd is zero, it means we're rounding
		// just to the left of the digits, as in
		// 0.09 -> 0.1.
	**/
	@:keep
	public function round(_nd:GoInt):Void
		__self__.value.round(_nd);

	/**
		// Binary shift left (k > 0) or right (k < 0).
	**/
	@:keep
	public function shift(_k:GoInt):Void
		__self__.value.shift(_k);

	/**
		// Assign v to a.
	**/
	@:keep
	public function assign(_v:GoUInt64):Void
		__self__.value.assign(_v);

	@:keep
	public function string():GoString
		return __self__.value.string();

	@:keep
	public function _floatBits(_flt:Ref<T_floatInfo>):{var _0:GoUInt64; var _1:Bool;}
		return __self__.value._floatBits(_flt);

	@:keep
	public function _set(_s:GoString):Bool
		return __self__.value._set(_s);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_decimal>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.strconv.Strconv.T_decimal_asInterface) class T_decimal_static_extension {
	/**
		// Extract integer part, rounded appropriately.
		// No guarantees about overflow.
	**/
	@:keep
	static public function roundedInteger(_a:Ref<T_decimal>):GoUInt64 {
		if (_a._dp > (20 : GoInt)) {
			return ("18446744073709551615" : GoUInt64);
		};
		var _i:GoInt = (0 : GoInt);
		var _n:GoUInt64 = (("0" : GoUInt64) : GoUInt64);
		{
			_i = (0 : GoInt);
			Go.cfor((_i < _a._dp) && (_i < _a._nd), _i++, {
				_n = (_n * (("10" : GoUInt64) : GoUInt64)) + (_a._d[_i] - ("0".code : GoRune): GoUInt64);
			});
		};
		Go.cfor(_i < _a._dp, _i++, {
			_n = _n * (("10" : GoUInt64));
		});
		if (_shouldRoundUp(_a, _a._dp)) {
			_n++;
		};
		return _n;
	}

	/**
		// Round a up to nd digits (or fewer).
	**/
	@:keep
	static public function roundUp(_a:Ref<T_decimal>, _nd:GoInt):Void {
		if ((_nd < (0:GoInt)) || (_nd >= _a._nd)) {
			return;
		};
		{
			var _i:GoInt = _nd - (1 : GoInt);
			Go.cfor(_i >= (0 : GoInt), _i--, {
				var _c:GoUInt8 = _a._d[_i];
				if (_c < ("9".code:GoRune)) {
					_a._d[_i]++;
					_a._nd = _i + (1 : GoInt);
					return;
				};
			});
		};
		_a._d[(0 : GoInt)] = ("1".code : GoRune);
		_a._nd = (1 : GoInt);
		_a._dp++;
	}

	/**
		// Round a down to nd digits (or fewer).
	**/
	@:keep
	static public function roundDown(_a:Ref<T_decimal>, _nd:GoInt):Void {
		if ((_nd < (0:GoInt)) || (_nd >= _a._nd)) {
			return;
		};
		_a._nd = _nd;
		_trim(_a);
	}

	/**
		// Round a to nd digits (or fewer).
		// If nd is zero, it means we're rounding
		// just to the left of the digits, as in
		// 0.09 -> 0.1.
	**/
	@:keep
	static public function round(_a:Ref<T_decimal>, _nd:GoInt):Void {
		if ((_nd < (0:GoInt)) || (_nd >= _a._nd)) {
			return;
		};
		if (_shouldRoundUp(_a, _nd)) {
			_a.roundUp(_nd);
		} else {
			_a.roundDown(_nd);
		};
	}

	/**
		// Binary shift left (k > 0) or right (k < 0).
	**/
	@:keep
	static public function shift(_a:Ref<T_decimal>, _k:GoInt):Void {
		if (_a._nd == ((0 : GoInt))) {} else if (_k > (0 : GoInt)) {
			while (_k > (28 : GoInt)) {
				_leftShift(_a, ("28" : GoUInt));
				_k = _k - ((28 : GoInt));
			};
			_leftShift(_a, (_k : GoUInt));
		} else if (_k < (0:GoInt)) {
			while (_k < (-28:GoInt)) {
				_rightShift(_a, ("28" : GoUInt));
				_k = _k + ((28 : GoInt));
			};
			_rightShift(_a, (-_k : GoUInt));
		};
	}

	/**
		// Assign v to a.
	**/
	@:keep
	static public function assign(_a:Ref<T_decimal>, _v:GoUInt64):Void {
		var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...24) (0 : GoUInt8)]);
		var _n:GoInt = (0 : GoInt);
		while (_v > ("0" : GoUInt64)) {
			var _v1:GoUInt64 = _v / ("10" : GoUInt64);
			_v = _v - ((("10" : GoUInt64) : GoUInt64) * _v1);
			_buf[_n] = (_v + ("0".code : GoRune) : GoByte);
			_n++;
			_v = _v1;
		};
		_a._nd = (0 : GoInt);
		{
			_n--;
			Go.cfor(_n >= (0 : GoInt), _n--, {
				_a._d[_a._nd] = _buf[_n];
				_a._nd++;
			});
		};
		_a._dp = _a._nd;
		_trim(_a);
	}

	@:keep
	static public function string(_a:Ref<T_decimal>):GoString {
		var _n:GoInt = (10 : GoInt) + _a._nd;
		if (_a._dp > (0 : GoInt)) {
			_n = _n + (_a._dp);
		};
		if (_a._dp < (0:GoInt)) {
			_n = _n + (-_a._dp);
		};
		var _buf = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) (0 : GoUInt8)]);
		var _w:GoInt = (0 : GoInt);
		if (_a._nd == ((0 : GoInt))) {
			return Go.str("0");
		} else if (_a._dp <= (0 : GoInt)) {
			_buf[_w] = ("0".code : GoRune);
			_w++;
			_buf[_w] = (".".code : GoRune);
			_w++;
			_w = _w + (_digitZero((_buf.__slice__(_w, _w + -_a._dp) : Slice<GoUInt8>)));
			_w = _w + (Go.copySlice((_buf.__slice__(_w) : Slice<GoUInt8>), (_a._d.__slice__((0 : GoInt), _a._nd) : Slice<GoUInt8>)));
		} else if (_a._dp < _a._nd) {
			_w = _w + (Go.copySlice((_buf.__slice__(_w) : Slice<GoUInt8>), (_a._d.__slice__((0 : GoInt), _a._dp) : Slice<GoUInt8>)));
			_buf[_w] = (".".code : GoRune);
			_w++;
			_w = _w + (Go.copySlice((_buf.__slice__(_w) : Slice<GoUInt8>), (_a._d.__slice__(_a._dp, _a._nd) : Slice<GoUInt8>)));
		} else {
			_w = _w + (Go.copySlice((_buf.__slice__(_w) : Slice<GoUInt8>), (_a._d.__slice__((0 : GoInt), _a._nd) : Slice<GoUInt8>)));
			_w = _w + (_digitZero((_buf.__slice__(_w, (_w + _a._dp) - _a._nd) : Slice<GoUInt8>)));
		};
		return ((_buf.__slice__((0 : GoInt), _w) : Slice<GoUInt8>) : GoString);
	}

	@:keep
	static public function _floatBits(_d:Ref<T_decimal>, _flt:Ref<T_floatInfo>):{var _0:GoUInt64; var _1:Bool;} {
		return stdgo.internal.Macro.controlFlow({
			var _b:GoUInt64 = (0 : GoUInt64), _overflow:Bool = false;
			var _exp:GoInt = (0 : GoInt);
			var _mant:GoUInt64 = (0 : GoUInt64);
			if (_d._nd == ((0 : GoInt))) {
				_mant = ("0" : GoUInt64);
				_exp = _flt._bias;
				@:goto "out";
			};
			if (_d._dp > (310 : GoInt)) {
				@:goto "overflow";
			};
			if (_d._dp < (-330:GoInt)) {
				_mant = ("0" : GoUInt64);
				_exp = _flt._bias;
				@:goto "out";
			};
			_exp = (0 : GoInt);
			while (_d._dp > (0 : GoInt)) {
				var _n:GoInt = (0 : GoInt);
				if (_d._dp >= (_powtab.length)) {
					_n = (27 : GoInt);
				} else {
					_n = _powtab[_d._dp];
				};
				_d.shift(-_n);
				_exp = _exp + (_n);
			};
			while ((_d._dp < (0:GoInt)) || ((_d._dp == (0 : GoInt)) && (_d._d[(0 : GoInt)] < ("5".code : GoRune)))) {
				var _n:GoInt = (0 : GoInt);
				if (-_d._dp >= (_powtab.length)) {
					_n = (27 : GoInt);
				} else {
					_n = _powtab[-_d._dp];
				};
				_d.shift(_n);
				_exp = _exp - (_n);
			};
			_exp--;
			if (_exp < (_flt._bias + (1 : GoInt))) {
				var _n:GoInt = (_flt._bias + (1 : GoInt)) - _exp;
				_d.shift(-_n);
				_exp = _exp + (_n);
			};
			if ((_exp - _flt._bias) >= (((1 : GoInt) << _flt._expbits) - (1 : GoInt))) {
				@:goto "overflow";
			};
			_d.shift((("1" : GoUInt) + _flt._mantbits : GoInt));
			_mant = _d.roundedInteger();
			if (_mant == ((("2" : GoUInt64) : GoUInt64) << _flt._mantbits)) {
				_mant = _mant >> (("1" : GoUInt64));
				_exp++;
				if ((_exp - _flt._bias) >= (((1 : GoInt) << _flt._expbits) - (1 : GoInt))) {
					@:goto "overflow";
				};
			};
			if (_mant & ((("1" : GoUInt64) : GoUInt64) << _flt._mantbits) == (("0" : GoUInt64))) {
				_exp = _flt._bias;
			};
			@:goto "out";
			@:label("overflow") _mant = ("0" : GoUInt64);
			_exp = (((1 : GoInt) << _flt._expbits) - (1 : GoInt)) + _flt._bias;
			_overflow = true;
			@:label("out") var _bits:GoUInt64 = _mant & ((((("1" : GoUInt64) : GoUInt64) : GoUInt64) << _flt._mantbits) - (("1" : GoUInt64) : GoUInt64));
			_bits = _bits | (((_exp - _flt._bias) & (((1 : GoInt) << _flt._expbits) - (1 : GoInt)) : GoUInt64) << _flt._mantbits);
			if (_d._neg) {
				_bits = _bits | (((("1" : GoUInt64) : GoUInt64) << _flt._mantbits) << _flt._expbits);
			};
			return {_0: _bits, _1: _overflow};
		});
	}

	@:keep
	static public function _set(_b:Ref<T_decimal>, _s:GoString):Bool {
		var _ok:Bool = false;
		var _i:GoInt = (0 : GoInt);
		_b._neg = false;
		_b._trunc = false;
		if (_i >= (_s.length)) {
			return _ok;
		};
		if (_s[_i] == (("+".code : GoRune))) {
			_i++;
		} else if (_s[_i] == (("-".code : GoRune))) {
			_b._neg = true;
			_i++;
		};
		var _sawdot:Bool = false;
		var _sawdigits:Bool = false;
		Go.cfor(_i < (_s.length), _i++, {
			if (_s[_i] == (("_".code : GoRune))) {
				continue;
			} else if (_s[_i] == ((".".code : GoRune))) {
				if (_sawdot) {
					return _ok;
				};
				_sawdot = true;
				_b._dp = _b._nd;
				continue;
			} else if ((("0".code : GoRune) <= _s[_i]) && (_s[_i] <= ("9".code : GoRune))) {
				_sawdigits = true;
				if ((_s[_i] == ("0".code : GoRune)) && (_b._nd == (0 : GoInt))) {
					_b._dp--;
					continue;
				};
				if (_b._nd < (_b._d.length)) {
					_b._d[_b._nd] = _s[_i];
					_b._nd++;
				} else if (_s[_i] != (("0".code : GoRune))) {
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
		if ((_i < _s.length) && (_lower(_s[_i]) == ("e".code : GoRune))) {
			_i++;
			if (_i >= (_s.length)) {
				return _ok;
			};
			var _esign:GoInt = (1 : GoInt);
			if (_s[_i] == (("+".code : GoRune))) {
				_i++;
			} else if (_s[_i] == (("-".code : GoRune))) {
				_i++;
				_esign = (-1 : GoInt);
			};
			if (((_i >= _s.length) || (_s[_i] < ("0".code : GoRune))) || (_s[_i] > ("9".code : GoRune))) {
				return _ok;
			};
			var _e:GoInt = (0 : GoInt);
			Go.cfor((_i < _s.length)
				&& (((("0".code : GoRune) <= _s[_i]) && (_s[_i] <= ("9".code : GoRune))) || (_s[_i] == ("_".code : GoRune))), _i++, {
					if (_s[_i] == (("_".code : GoRune))) {
						continue;
					};
					if (_e < (10000:GoInt)) {
						_e = ((_e * (10 : GoInt)) + (_s[_i] : GoInt)) - ("0".code : GoRune);
					};
				});
			_b._dp = _b._dp + (_e * _esign);
		};
		if (_i != ((_s.length))) {
			return _ok;
		};
		_ok = true;
		return _ok;
	}
}
