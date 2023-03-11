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
private var __go2hxdoc__package : Bool;
/**
    
    
    // set to false to force slow-path conversions for testing
**/
private var _optimize = true;
/**
    // decimal power of ten to binary power of two.
    
    
**/
private var _powtab = (new Slice<GoInt>(
0,
0,
(1 : GoInt),
(3 : GoInt),
(6 : GoInt),
(9 : GoInt),
(13 : GoInt),
(16 : GoInt),
(19 : GoInt),
(23 : GoInt),
(26 : GoInt)) : Slice<GoInt>);
/**
    // Exact powers of 10.
    
    
**/
private var _float64pow10 = (new Slice<GoFloat64>(
0,
0,
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
(1e+22 : GoFloat64)) : Slice<GoFloat64>);
/**
    
    
    
**/
private var _float32pow10 = (new Slice<GoFloat32>(
0,
0,
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
(1e+10 : GoFloat64)) : Slice<GoFloat32>);
/**
    // ErrRange indicates that a value is out of range for the target type.
    
    
**/
var errRange = stdgo.errors.Errors.new_(("value out of range" : GoString));
/**
    // ErrSyntax indicates that a value does not have the right syntax for the target type.
    
    
**/
var errSyntax = stdgo.errors.Errors.new_(("invalid syntax" : GoString));
/**
    
    
    
**/
private var _leftcheats = (new Slice<stdgo.strconv.Strconv.T_leftCheat>(
0,
0,
(new stdgo.strconv.Strconv.T_leftCheat((0 : GoInt), Go.str()) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((1 : GoInt), ("5" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((1 : GoInt), ("25" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((1 : GoInt), ("125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((2 : GoInt), ("625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((2 : GoInt), ("3125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((2 : GoInt), ("15625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((3 : GoInt), ("78125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((3 : GoInt), ("390625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((3 : GoInt), ("1953125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((4 : GoInt), ("9765625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((4 : GoInt), ("48828125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((4 : GoInt), ("244140625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((4 : GoInt), ("1220703125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((5 : GoInt), ("6103515625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((5 : GoInt), ("30517578125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((5 : GoInt), ("152587890625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((6 : GoInt), ("762939453125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((6 : GoInt), ("3814697265625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((6 : GoInt), ("19073486328125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((7 : GoInt), ("95367431640625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((7 : GoInt), ("476837158203125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((7 : GoInt), ("2384185791015625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((7 : GoInt), ("11920928955078125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((8 : GoInt), ("59604644775390625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((8 : GoInt), ("298023223876953125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((8 : GoInt), ("1490116119384765625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((9 : GoInt), ("7450580596923828125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((9 : GoInt), ("37252902984619140625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((9 : GoInt), ("186264514923095703125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((10 : GoInt), ("931322574615478515625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((10 : GoInt), ("4656612873077392578125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((10 : GoInt), ("23283064365386962890625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((10 : GoInt), ("116415321826934814453125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((11 : GoInt), ("582076609134674072265625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((11 : GoInt), ("2910383045673370361328125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((11 : GoInt), ("14551915228366851806640625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((12 : GoInt), ("72759576141834259033203125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((12 : GoInt), ("363797880709171295166015625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((12 : GoInt), ("1818989403545856475830078125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((13 : GoInt), ("9094947017729282379150390625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((13 : GoInt), ("45474735088646411895751953125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((13 : GoInt), ("227373675443232059478759765625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((13 : GoInt), ("1136868377216160297393798828125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((14 : GoInt), ("5684341886080801486968994140625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((14 : GoInt), ("28421709430404007434844970703125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((14 : GoInt), ("142108547152020037174224853515625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((15 : GoInt), ("710542735760100185871124267578125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((15 : GoInt), ("3552713678800500929355621337890625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((15 : GoInt), ("17763568394002504646778106689453125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((16 : GoInt), ("88817841970012523233890533447265625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((16 : GoInt), ("444089209850062616169452667236328125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((16 : GoInt), ("2220446049250313080847263336181640625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((16 : GoInt), ("11102230246251565404236316680908203125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((17 : GoInt), ("55511151231257827021181583404541015625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((17 : GoInt), ("277555756156289135105907917022705078125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((17 : GoInt), ("1387778780781445675529539585113525390625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((18 : GoInt), ("6938893903907228377647697925567626953125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((18 : GoInt), ("34694469519536141888238489627838134765625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((18 : GoInt), ("173472347597680709441192448139190673828125" : GoString)) : stdgo.strconv.Strconv.T_leftCheat),
(new stdgo.strconv.Strconv.T_leftCheat((19 : GoInt), ("867361737988403547205962240695953369140625" : GoString)) : stdgo.strconv.Strconv.T_leftCheat)) : Slice<stdgo.strconv.Strconv.T_leftCheat>);
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
private var _detailedPowersOfTen = (new GoArray<GoArray<GoUInt64>>(
(new GoArray<GoUInt64>((1671618768450675795i64 : GoUInt64), (-391859759250406776i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1044761730281672372i64 : GoUInt64), (-7162441377172586091i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5917638181279478369i64 : GoUInt64), (-4341365703038344710i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1826324310255427847i64 : GoUInt64), (-815021110370542984i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8058981721550724260i64 : GoUInt64), (-7426917221622671221i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8373016921771146291i64 : GoUInt64), (-4671960508600951122i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1242899115359157055i64 : GoUInt64), (-1228264617323800998i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5388497965526861063i64 : GoUInt64), (-7685194413468457480i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6735622456908576329i64 : GoUInt64), (-4994806998408183946i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-803843965719055396i64 : GoUInt64), (-1631822729582842029i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8720969558280366185i64 : GoUInt64), (-7937418233630358124i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7545532125859093884i64 : GoUInt64), (-5310086773610559751i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-208543120469091547i64 : GoUInt64), (-2025922448585811785i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-130339450293182217i64 : GoUInt64), (-8183730558007214222i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4774610331293865675i64 : GoUInt64), (-5617977179081629873i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5968262914117332094i64 : GoUInt64), (-2410785455424649437i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5493207715531443249i64 : GoUInt64), (-8424269937281487754i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2356862392440471747i64 : GoUInt64), (-5918651403174471789i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2946077990550589683i64 : GoUInt64), (-2786628235540701832i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8758827771735200408i64 : GoUInt64), (-8659171674854020501i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7498209359040551106i64 : GoUInt64), (-6212278575140137722i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((149389661945913074i64 : GoUInt64), (-3153662200497784248i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((93368538716195671i64 : GoUInt64), (-8888567902952197011i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4728396691822632493i64 : GoUInt64), (-6499023860262858360i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5910495864778290617i64 : GoUInt64), (-3512093806901185046i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8305745933913819539i64 : GoUInt64), (-9112587656954322510i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1158810380537498616i64 : GoUInt64), (-6779048552765515233i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3163173042755514634i64 : GoUInt64), (-3862124672529506138i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8565652321871781196i64 : GoUInt64), (-215969822234494768i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6175682344898606512i64 : GoUInt64), (-7052510166537641086i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1503769105731517667i64 : GoUInt64), (-4203951689744663454i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6491397400591784988i64 : GoUInt64), (-643253593753441413i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5166248661484910190i64 : GoUInt64), (-7319562523736982739i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7377247228426025974i64 : GoUInt64), (-4537767136243840520i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4609873017105144563i64 : GoUInt64), (-1060522901877412746i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4036358391950366504i64 : GoUInt64), (-7580355841314464822i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4177924046916817678i64 : GoUInt64), (-4863758783215693124i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-610719040218634194i64 : GoUInt64), (-1468012460592228501i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8841672636718129437i64 : GoUInt64), (-7835036815511224669i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6440404777470273892i64 : GoUInt64), (-5182110000961642932i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8050505971837842365i64 : GoUInt64), (-1865951482774665761i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6497648813669818282i64 : GoUInt64), (-8083748704375247957i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8122061017087272852i64 : GoUInt64), (-5492999862041672042i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3682481783923072647i64 : GoUInt64), (-2254563809124702148i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6921820921902855404i64 : GoUInt64), (-8326631408344020699i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((571095884476206553i64 : GoUInt64), (-5796603242002637969i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3897816162832129712i64 : GoUInt64), (-2634068034075909558i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4741978110983775022i64 : GoUInt64), (-8563821548938525330i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7907585416552444934i64 : GoUInt64), (-6093090917745768758i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((661109733835780360i64 : GoUInt64), (-3004677628754823043i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2719036592861056677i64 : GoUInt64), (-8795452545612846258i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5824576295778454962i64 : GoUInt64), (-6382629663588669919i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1942651667131707105i64 : GoUInt64), (-3366601061058449494i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5825843310384704845i64 : GoUInt64), (-9021654690802612790i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1941067898873894752i64 : GoUInt64), (-6665382345075878084i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2185351144835019464i64 : GoUInt64), (-3720041912917459700i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2731688931043774330i64 : GoUInt64), (-38366372719436721i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8624834609543440812i64 : GoUInt64), (-6941508010590729807i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3054014793352862697i64 : GoUInt64), (-4065198994811024355i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5405853545163697437i64 : GoUInt64), (-469812725086392539i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5684501474941004850i64 : GoUInt64), (-7211161980820077193i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2493940825248868159i64 : GoUInt64), (-4402266457597708587i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7729112049988473103i64 : GoUInt64), (-891147053569747830i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-9004363024039368023i64 : GoUInt64), (-7474495936122174250i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2579604275232953683i64 : GoUInt64), (-4731433901725329908i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3224505344041192104i64 : GoUInt64), (-1302606358729274481i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8932844867666826921i64 : GoUInt64), (-7731658001846878407i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2669001970698630061i64 : GoUInt64), (-5052886483881210105i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3336252463373287576i64 : GoUInt64), (-1704422086424124727i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2526528228819083169i64 : GoUInt64), (-7982792831656159810i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6065211750830921846i64 : GoUInt64), (-5366805021142811859i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1641857348316123500i64 : GoUInt64), (-2096820258001126919i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5891368184943504669i64 : GoUInt64), (-8228041688891786181i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7364210231179380836i64 : GoUInt64), (-5673366092687344822i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4629795266307937667i64 : GoUInt64), (-2480021597431793123i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5199465050656154994i64 : GoUInt64), (-8467542526035952558i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2724040723534582065i64 : GoUInt64), (-5972742139117552794i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8016736922845615486i64 : GoUInt64), (-2854241655469553088i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6518754469289960081i64 : GoUInt64), (-8701430062309552536i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8148443086612450102i64 : GoUInt64), (-6265101559459552766i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((962181821410786819i64 : GoUInt64), (-3219690930897053053i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1704479370831952190i64 : GoUInt64), (-8929835859451740015i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7092772823314835570i64 : GoUInt64), (-6550608805887287114i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-357406007711231345i64 : GoUInt64), (-3576574988931720989i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8999993282035256217i64 : GoUInt64), (-9152888395723407474i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2026619565689294464i64 : GoUInt64), (-6829424476226871438i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6690097579743157728i64 : GoUInt64), (-3925094576856201394i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5472436080603216552i64 : GoUInt64), (-294682202642863838i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8031958568804398249i64 : GoUInt64), (-7101705404292871755i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3795109844276665901i64 : GoUInt64), (-4265445736938701790i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((9091170749936331336i64 : GoUInt64), (-720121152745989333i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3376138709496513133i64 : GoUInt64), (-7367604748107325189i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-391512631556746488i64 : GoUInt64), (-4597819916706768583i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8733981247408842698i64 : GoUInt64), (-1135588877456072824i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5458738279630526686i64 : GoUInt64), (-7627272076051127371i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7011635205744005354i64 : GoUInt64), (-4922404076636521310i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5070514048102157020i64 : GoUInt64), (-1541319077368263733i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((863228270850154185i64 : GoUInt64), (-7880853450996246689i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3532650679864695173i64 : GoUInt64), (-5239380795317920458i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-9027499368258256870i64 : GoUInt64), (-1937539975720012668i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3336344095947716592i64 : GoUInt64), (-8128491512466089774i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8782116138362033643i64 : GoUInt64), (-5548928372155224313i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7469098900757009562i64 : GoUInt64), (-2324474446766642487i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2249342214667950880i64 : GoUInt64), (-8370325556870233411i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6411694268519837208i64 : GoUInt64), (-5851220927660403859i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5820440219632367202i64 : GoUInt64), (-2702340141148116920i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7891439908798240259i64 : GoUInt64), (-8606491615858654931i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3970758169284363389i64 : GoUInt64), (-6146428501395930760i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-351761693178066332i64 : GoUInt64), (-3071349608317525546i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6697677969404790399i64 : GoUInt64), (-8837122532839535322i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-851274575098787810i64 : GoUInt64), (-6434717147622031249i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1064093218873484762i64 : GoUInt64), (-3431710416100151157i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8558313775058847832i64 : GoUInt64), (-9062348037703676329i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6086206200396171886i64 : GoUInt64), (-6716249028702207507i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6227300304786948855i64 : GoUInt64), (-3783625267450371480i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3172439362556298164i64 : GoUInt64), (-117845565885576446i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4288617610811380305i64 : GoUInt64), (-6991182506319567135i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3862600023340550427i64 : GoUInt64), (-4127292114472071014i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4395122007679087774i64 : GoUInt64), (-547429124662700864i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8782263791269039901i64 : GoUInt64), (-7259672230555269896i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7468914334623251740i64 : GoUInt64), (-4462904269766699466i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4498915137003099037i64 : GoUInt64), (-966944318780986428i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6411550076227838910i64 : GoUInt64), (-7521869226879198374i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5820620459997365075i64 : GoUInt64), (-4790650515171610063i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6559282480285457368i64 : GoUInt64), (-1376627125537124675i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8711237568605798759i64 : GoUInt64), (-7777920981101784778i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2946011094524915263i64 : GoUInt64), (-5110715207949843068i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3682513868156144079i64 : GoUInt64), (-1776707991509915931i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4607414176811284001i64 : GoUInt64), (-8027971522334779313i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1147581702586717097i64 : GoUInt64), (-5423278384491086237i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3177208890193991532i64 : GoUInt64), (-2167411962186469893i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7237616480483531100i64 : GoUInt64), (-8272161504007625539i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4788037454677749837i64 : GoUInt64), (-5728515861582144020i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1373360799919799392i64 : GoUInt64), (-2548958808550292121i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-858350499949874620i64 : GoUInt64), (-8510628282985014432i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3538747893490044629i64 : GoUInt64), (-6026599335303880135i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((9035120885289943691i64 : GoUInt64), (-2921563150702462265i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5882264492762254953i64 : GoUInt64), (-8743505996830120772i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2741144597525430788i64 : GoUInt64), (-6317696477610263061i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3426430746906788485i64 : GoUInt64), (-3285434578585440922i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4776009810824339053i64 : GoUInt64), (-8970925639256982432i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5970012263530423816i64 : GoUInt64), (-6601971030643840136i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7462515329413029771i64 : GoUInt64), (-3640777769877412266i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((52386062455755702i64 : GoUInt64), (-9193015133814464522i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-9157889458785081180i64 : GoUInt64), (-6879582898840692749i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6999382250228200141i64 : GoUInt64), (-3987792605123478032i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8749227812785250177i64 : GoUInt64), (-373054737976959636i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3755104653863994448i64 : GoUInt64), (-7150688238876681629i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4693880817329993060i64 : GoUInt64), (-4326674280168464132i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1255665003235103420i64 : GoUInt64), (-796656831783192261i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8438581409832836170i64 : GoUInt64), (-7415439547505577019i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3286831292991118499i64 : GoUInt64), (-4657613415954583370i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8720225134666286028i64 : GoUInt64), (-1210330751515841308i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3144297699952734816i64 : GoUInt64), (-7673985747338482674i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8542058143368306423i64 : GoUInt64), (-4980796165745715438i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3157485376071780683i64 : GoUInt64), (-1614309188754756393i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8890957387685944783i64 : GoUInt64), (-7926472270612804602i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1890324697752655170i64 : GoUInt64), (-5296404319838617848i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2362905872190818963i64 : GoUInt64), (-2008819381370884406i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6088502188546649756i64 : GoUInt64), (-8173041140997884610i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1612744301171463613i64 : GoUInt64), (-5604615407819967859i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7207441660390446292i64 : GoUInt64), (-2394083241347571919i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2412877989897052924i64 : GoUInt64), (-8413831053483314306i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7627783505798704059i64 : GoUInt64), (-5905602798426754978i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4300328673033783639i64 : GoUInt64), (-2770317479606055818i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1923980597781273130i64 : GoUInt64), (-8648977452394866743i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6818396289628184396i64 : GoUInt64), (-6199535797066195524i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8522995362035230495i64 : GoUInt64), (-3137733727905356501i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3021029092058325107i64 : GoUInt64), (-8878612607581929669i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-835399653354481520i64 : GoUInt64), (-6486579741050024183i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8179122470161673908i64 : GoUInt64), (-3496538657885142324i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4111420493003729616i64 : GoUInt64), (-9102865688819295809i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5139275616254662020i64 : GoUInt64), (-6766896092596731857i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6424094520318327524i64 : GoUInt64), (-3846934097318526917i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8030118150397909405i64 : GoUInt64), (-196981603220770742i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7324666853212387330i64 : GoUInt64), (-7040642529654063570i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4679224488766679549i64 : GoUInt64), (-4189117143640191558i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3374341425896426372i64 : GoUInt64), (-624710411122851544i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-9026492418826348338i64 : GoUInt64), (-7307973034592864071i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2059743486678159615i64 : GoUInt64), (-4523280274813692185i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2574679358347699519i64 : GoUInt64), (-1042414325089727327i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3002511419460075705i64 : GoUInt64), (-7569037980822161435i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8364825292752482535i64 : GoUInt64), (-4849611457600313890i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1232659579085827361i64 : GoUInt64), (-1450328303573004458i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3841273781498745804i64 : GoUInt64), (-7823984217374209643i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4421779809981343554i64 : GoUInt64), (-5168294253290374149i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((915538744049291538i64 : GoUInt64), (-1848681798185579782i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5183897733458195115i64 : GoUInt64), (-8072955151507069220i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6479872166822743894i64 : GoUInt64), (-5479507920956448621i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3488154190101041964i64 : GoUInt64), (-2237698882768172872i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2180096368813151227i64 : GoUInt64), (-8316090829371189901i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1886565557410948870i64 : GoUInt64), (-5783427518286599473i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2358206946763686087i64 : GoUInt64), (-2617598379430861437i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7749492695127472003i64 : GoUInt64), (-8553528014785370254i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((463493832054564196i64 : GoUInt64), (-6080224000054324913i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4032318728359182659i64 : GoUInt64), (-2988593981640518238i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4826042214438183114i64 : GoUInt64), (-8785400266166405755i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3190819268807046916i64 : GoUInt64), (-6370064314280619289i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-623161932418579259i64 : GoUInt64), (-3350894374423386208i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7307005235402693893i64 : GoUInt64), (-9011838011655698236i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4522070525825979462i64 : GoUInt64), (-6653111496142234891i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3570783879572301480i64 : GoUInt64), (-3704703351750405709i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-148206168962011054i64 : GoUInt64), (-19193171260619233i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-92628855601256909i64 : GoUInt64), (-6929524759678968877i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-115786069501571136i64 : GoUInt64), (-4050219931171323192i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4466953431550423984i64 : GoUInt64), (-451088895536766085i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((486002885505321038i64 : GoUInt64), (-7199459587351560659i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5219189625309039202i64 : GoUInt64), (-4387638465762062920i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6523987031636299002i64 : GoUInt64), (-872862063775190746i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-534194123654701028i64 : GoUInt64), (-7463067817500576073i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-667742654568376285i64 : GoUInt64), (-4717148753448332187i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8388693718644305452i64 : GoUInt64), (-1284749923383027329i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6286281471915778852i64 : GoUInt64), (-7720497729755473937i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7857851839894723565i64 : GoUInt64), (-5038936143766954517i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8624429273841147159i64 : GoUInt64), (-1686984161281305242i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((778582277723329070i64 : GoUInt64), (-7971894128441897632i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((973227847154161338i64 : GoUInt64), (-5353181642124984136i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1216534808942701673i64 : GoUInt64), (-2079791034228842266i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3851351762838199359i64 : GoUInt64), (-8217398424034108273i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4814189703547749198i64 : GoUInt64), (-5660062011615247437i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6017737129434686498i64 : GoUInt64), (-2463391496091671392i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7768129340171790699i64 : GoUInt64), (-8457148712698376476i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8736582398494813242i64 : GoUInt64), (-5959749872445582691i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1697355961263740745i64 : GoUInt64), (-2838001322129590460i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1244995533423855986i64 : GoUInt64), (-8691279853972075893i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3055441601647567921i64 : GoUInt64), (-6252413799037706963i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5404070034795315907i64 : GoUInt64), (-3203831230369745799i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3539985255894009414i64 : GoUInt64), (-8919923546622172981i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4424981569867511768i64 : GoUInt64), (-6538218414850328322i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8303831092947774002i64 : GoUInt64), (-3561087000135522498i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((578208414664970847i64 : GoUInt64), (-9143208402725783417i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3888925500096174345i64 : GoUInt64), (-6817324484979841368i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-249470856692830027i64 : GoUInt64), (-3909969587797413806i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4923524589293425438i64 : GoUInt64), (-275775966319379353i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3077202868308390899i64 : GoUInt64), (-7089889006590693952i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((765182433041899281i64 : GoUInt64), (-4250675239810979535i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5568164059729762005i64 : GoUInt64), (-701658031336336515i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5785945546544795205i64 : GoUInt64), (-7356065297226292178i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1990940103673781802i64 : GoUInt64), (-4583395603105477319i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6734696907262548556i64 : GoUInt64), (-1117558485454458744i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4209185567039092847i64 : GoUInt64), (-7616003081050118571i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8573576096483297653i64 : GoUInt64), (-4908317832885260310i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3118087934678041646i64 : GoUInt64), (-1523711272679187483i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4254647968387469981i64 : GoUInt64), (-7869848573065574033i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((706623942056949572i64 : GoUInt64), (-5225624697904579637i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3728406090856200939i64 : GoUInt64), (-1920344853953336643i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6941939825212513491i64 : GoUInt64), (-8117744561361917258i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5157633273766521849i64 : GoUInt64), (-5535494683275008668i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6447041592208152311i64 : GoUInt64), (-2307682335666372931i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6335244004343789146i64 : GoUInt64), (-8359830487432564938i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1304317031425039375i64 : GoUInt64), (-5838102090863318269i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1630396289281299219i64 : GoUInt64), (-2685941595151759932i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1286845328412881940i64 : GoUInt64), (-8596242524610931813i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3003129357911285479i64 : GoUInt64), (-6133617137336276863i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5469460339465668959i64 : GoUInt64), (-3055335403242958174i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8030098730593431003i64 : GoUInt64), (-8827113654667930715i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3797434642040374958i64 : GoUInt64), (-6422206049907525490i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((9088264752731695015i64 : GoUInt64), (-3416071543957018958i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8154892584824854328i64 : GoUInt64), (-9052573742614218705i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8253128342678483706i64 : GoUInt64), (-6704031159840385477i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5704724409920716729i64 : GoUInt64), (-3768352931373093942i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2092466524453879896i64 : GoUInt64), (-98755145788979524i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((998051431430019017i64 : GoUInt64), (-6979250993759194058i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7975807747567252037i64 : GoUInt64), (-4112377723771604669i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8476984389250486570i64 : GoUInt64), (-528786136287117932i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3925256793573221702i64 : GoUInt64), (-7248020362820530564i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-294884973539139224i64 : GoUInt64), (-4448339435098275301i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-368606216923924029i64 : GoUInt64), (-948738275445456222i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2536221894791146470i64 : GoUInt64), (-7510490449794491995i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6053094668365842720i64 : GoUInt64), (-4776427043815727089i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2954682317029915496i64 : GoUInt64), (-1358847786342270957i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-459166561069996767i64 : GoUInt64), (-7766808894105001205i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-573958201337495959i64 : GoUInt64), (-5096825099203863602i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5329133770099257852i64 : GoUInt64), (-1759345355577441598i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5636551615525730110i64 : GoUInt64), (-8017119874876982855i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2177682517447613171i64 : GoUInt64), (-5409713825168840664i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2722103146809516464i64 : GoUInt64), (-2150456263033662926i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6313000485183335694i64 : GoUInt64), (-8261564192037121185i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3279564588051781713i64 : GoUInt64), (-5715269221619013577i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-512230283362660763i64 : GoUInt64), (-2532400508596379068i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1985699082112030975i64 : GoUInt64), (-8500279345513818773i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2129562165787349185i64 : GoUInt64), (-6013663163464885563i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6561419329620589327i64 : GoUInt64), (-2905392935903719049i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7428327965055601431i64 : GoUInt64), (-8733399612580906262i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4549648098962661924i64 : GoUInt64), (-6305063497298744923i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8147997931578836307i64 : GoUInt64), (-3269643353196043250i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1825030320404309164i64 : GoUInt64), (-8961056123388608887i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6892973918932774359i64 : GoUInt64), (-6589634135808373205i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4004531380238580045i64 : GoUInt64), (-3625356651333078602i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2108853905778275376i64 : GoUInt64), (-9183376934724255983i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6587304654631931588i64 : GoUInt64), (-6867535149977932074i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-989241218564861323i64 : GoUInt64), (-3972732919045027189i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1236551523206076654i64 : GoUInt64), (-354230130378896082i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6144684325637283947i64 : GoUInt64), (-7138922859127891907i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6154202648235558778i64 : GoUInt64), (-4311967555482476980i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3081067291867060568i64 : GoUInt64), (-778273425925708321i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1925667057416912855i64 : GoUInt64), (-7403949918844649557i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2407083821771141069i64 : GoUInt64), (-4643251380128424042i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7620540795641314240i64 : GoUInt64), (-1192378206733142148i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2456994988062127448i64 : GoUInt64), (-7662765406849295699i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6152128301777116498i64 : GoUInt64), (-4966770740134231719i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6144897678060768090i64 : GoUInt64), (-1596777406740401745i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3840561048787980056i64 : GoUInt64), (-7915514906853832947i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4422670725869800738i64 : GoUInt64), (-5282707615139903279i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8306719647944912790i64 : GoUInt64), (-1991698500497491195i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8643358275316593218i64 : GoUInt64), (-8162340590452013853i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6192511825718353619i64 : GoUInt64), (-5591239719637629412i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7740639782147942024i64 : GoUInt64), (-2377363631119648861i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2532056854628769813i64 : GoUInt64), (-8403381297090862394i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6058300968568813542i64 : GoUInt64), (-5892540602936190089i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7572876210711016927i64 : GoUInt64), (-2753989735242849707i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((9102010423587778132i64 : GoUInt64), (-8638772612167862923i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2457545025797441047i64 : GoUInt64), (-6186779746782440750i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7683617300674189212i64 : GoUInt64), (-3121788665050663033i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4802260812921368258i64 : GoUInt64), (-8868646943297746252i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1391139997724322418i64 : GoUInt64), (-6474122660694794911i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7484447039699372786i64 : GoUInt64), (-3480967307441105734i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-9157278655470055721i64 : GoUInt64), (-9093133594791772940i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6834912300910181747i64 : GoUInt64), (-6754730975062328271i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((679731660717048624i64 : GoUInt64), (-3831727700400522434i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8373707460958465028i64 : GoUInt64), (-177973607073265139i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8601490892183123069i64 : GoUInt64), (-7028762532061872568i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7694880458480647779i64 : GoUInt64), (-4174267146649952806i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4216457482181353988i64 : GoUInt64), (-606147914885053103i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4282243101277735614i64 : GoUInt64), (-7296371474444240046i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8482254178684994195i64 : GoUInt64), (-4508778324627912153i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5991131704928854840i64 : GoUInt64), (-1024286887357502287i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3173071712060547581i64 : GoUInt64), (-7557708332239520786i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8578025658503072380i64 : GoUInt64), (-4835449396872013078i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3112525982153323237i64 : GoUInt64), (-1432625727662628443i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4251171748059520975i64 : GoUInt64), (-7812920107430224633i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((702278666647013314i64 : GoUInt64), (-5154464115860392887i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5489534351736154547i64 : GoUInt64), (-1831394126398103205i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1125115960621402640i64 : GoUInt64), (-8062150356639896359i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6018080969204141204i64 : GoUInt64), (-5466001927372482545i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2910915193077788601i64 : GoUInt64), (-2220816390788215277i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-486521013540076077i64 : GoUInt64), (-8305539271883716405i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-608151266925095096i64 : GoUInt64), (-5770238071427257602i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5371875102083756773i64 : GoUInt64), (-2601111570856684098i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3560107088838733872i64 : GoUInt64), (-8543223759426509417i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-161552157378970563i64 : GoUInt64), (-6067343680855748868i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4409745821703674700i64 : GoUInt64), (-2972493582642298180i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6467280898289979121i64 : GoUInt64), (-8775337516792518219i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1139270913992301907i64 : GoUInt64), (-6357485877563259869i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3187597375937010520i64 : GoUInt64), (-3335171328526686933i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7231123676894144233i64 : GoUInt64), (-9002011107970261189i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4427218577690292387i64 : GoUInt64), (-6640827866535438582i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3689348814741910324i64 : GoUInt64), (-3689348814741910324i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-9223372036854775808i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-6917529027641081856i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-4035225266123964416i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-432345564227567616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-7187745005283311616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-4372995238176751616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-854558029293551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-7451627795949551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-4702848726509551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-1266874889709551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-7709325833709551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-5024971273709551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-1669528073709551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-7960984073709551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-5339544073709551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-2062744073709551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-8206744073709551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-5646744073709551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-2446744073709551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-8446744073709551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-5946744073709551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-2821744073709551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-8681119073709551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-6239712823709551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-3187955011209551616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-8910000909647051616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-6525815118631426616i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((0i64 : GoUInt64), (-3545582879861895366i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4611686018427387904i64 : GoUInt64), (-9133518327554766460i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5764607523034234880i64 : GoUInt64), (-6805211891016070171i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6629298651489370112i64 : GoUInt64), (-3894828845342699810i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5548434740920451072i64 : GoUInt64), (-256850038250986858i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1143914305352105984i64 : GoUInt64), (-7078060301547948643i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7793479155164643328i64 : GoUInt64), (-4235889358507547899i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4093209111326359552i64 : GoUInt64), (-683175679707046970i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4359273333062107136i64 : GoUInt64), (-7344513827457986212i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5449091666327633920i64 : GoUInt64), (-4568956265895094861i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2199678564482154496i64 : GoUInt64), (-1099509313941480672i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1374799102801346560i64 : GoUInt64), (-7604722348854507276i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1718498878501683200i64 : GoUInt64), (-4894216917640746191i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6759809616554491904i64 : GoUInt64), (-1506085128623544835i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6530724019560251392i64 : GoUInt64), (-7858832233030797378i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1059967012404461568i64 : GoUInt64), (-5211854272861108819i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7898413271349198848i64 : GoUInt64), (-1903131822648998119i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1981020733047832576i64 : GoUInt64), (-8106986416796705681i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2476275916309790720i64 : GoUInt64), (-5522047002568494197i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3095344895387238400i64 : GoUInt64), (-2290872734783229842i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4982938468024057856i64 : GoUInt64), (-8349324486880600507i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7606384970252091392i64 : GoUInt64), (-5824969590173362730i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4327076842467049472i64 : GoUInt64), (-2669525969289315508i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6518949010312869888i64 : GoUInt64), (-8585982758446904049i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8148686262891087360i64 : GoUInt64), (-6120792429631242157i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8260886245095692416i64 : GoUInt64), (-3039304518611664792i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5163053903184807760i64 : GoUInt64), (-8817094351773372351i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7381240676301154012i64 : GoUInt64), (-6409681921289327535i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3178808521666707i64 : GoUInt64), (-3400416383184271515i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4613672773753429596i64 : GoUInt64), (-9042789267131251553i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5767090967191786995i64 : GoUInt64), (-6691800565486676537i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7208863708989733744i64 : GoUInt64), (-3753064688430957767i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((212292400617608628i64 : GoUInt64), (-79644842111309304i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((132682750386005392i64 : GoUInt64), (-6967307053960650171i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4777539456409894645i64 : GoUInt64), (-4097447799023424810i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3251447716342407502i64 : GoUInt64), (-510123730351893109i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7191217214140771119i64 : GoUInt64), (-7236356359111015049i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4377335499248575995i64 : GoUInt64), (-4433759430461380907i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8363388681221443718i64 : GoUInt64), (-930513269649338230i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7532960934977096276i64 : GoUInt64), (-7499099821171918250i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4418856886560793367i64 : GoUInt64), (-4762188758037509908i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5523571108200991709i64 : GoUInt64), (-1341049929119499481i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8076983103442849942i64 : GoUInt64), (-7755685233340769032i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5484542860876174524i64 : GoUInt64), (-5082920523248573386i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6979379479186945558i64 : GoUInt64), (-1741964635633328828i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4861259862362934835i64 : GoUInt64), (-8006256924911912374i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7758483227328495169i64 : GoUInt64), (-5396135137712502563i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4136954021121544751i64 : GoUInt64), (-2133482903713240300i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-279753253987271518i64 : GoUInt64), (-8250955842461857044i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4261994450943298507i64 : GoUInt64), (-5702008784649933400i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5327493063679123134i64 : GoUInt64), (-2515824962385028846i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7941369183226839863i64 : GoUInt64), (-8489919629131724885i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5315025460606161924i64 : GoUInt64), (-6000713517987268202i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2579590211097073402i64 : GoUInt64), (-2889205879056697349i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7611128154919104931i64 : GoUInt64), (-8723282702051517699i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4321147861633282548i64 : GoUInt64), (-6292417359137009220i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-789748808614215280i64 : GoUInt64), (-3253835680493873621i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8729779031470891258i64 : GoUInt64), (-8951176327949752869i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6300537770911226168i64 : GoUInt64), (-6577284391509803182i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1347699823215743098i64 : GoUInt64), (-3609919470959866074i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6075216638131242420i64 : GoUInt64), (-9173728696990998152i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7594020797664053025i64 : GoUInt64), (-6855474852811359786i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((269153960225290473i64 : GoUInt64), (-3957657547586811828i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((336442450281613091i64 : GoUInt64), (-335385916056126881i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7127805559067090038i64 : GoUInt64), (-7127145225176161157i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4298070930406474644i64 : GoUInt64), (-4297245513042813542i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3850783373846682503i64 : GoUInt64), (-759870872876129024i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((9122475437414293195i64 : GoUInt64), (-7392448323188662496i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7043649776941685122i64 : GoUInt64), (-4628874385558440216i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4192876202749718498i64 : GoUInt64), (-1174406963520662366i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4926390635932268014i64 : GoUInt64), (-7651533379841495835i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3065383741939440791i64 : GoUInt64), (-4952730706374481889i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-779956341003086915i64 : GoUInt64), (-1579227364540714458i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6430056314514152534i64 : GoUInt64), (-7904546130479028392i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8037570393142690668i64 : GoUInt64), (-5268996644671397586i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((823590954573587527i64 : GoUInt64), (-1974559787411859078i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5126430365035880108i64 : GoUInt64), (-8151628894773493780i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6408037956294850135i64 : GoUInt64), (-5577850100039479321i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3398361426941174765i64 : GoUInt64), (-2360626606621961247i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4793553135802847628i64 : GoUInt64), (-8392920656779807636i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1380255401326171631i64 : GoUInt64), (-5879464802547371641i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1725319251657714539i64 : GoUInt64), (-2737644984756826647i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3533361486141316317i64 : GoUInt64), (-8628557143114098510i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4806670179178130411i64 : GoUInt64), (-6174010410465235234i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7826720331309500698i64 : GoUInt64), (-3105826994654156138i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((280014188641050032i64 : GoUInt64), (-8858670899299929442i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8873354301053463268i64 : GoUInt64), (-6461652605697523899i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1868320839462053277i64 : GoUInt64), (-3465379738694516970i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5749828502977298558i64 : GoUInt64), (-9083391364325154962i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2036086408133152611i64 : GoUInt64), (-6742553186979055799i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6678264026688335045i64 : GoUInt64), (-3816505465296431844i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8347830033360418806i64 : GoUInt64), (-158945813193151901i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2911550761636567802i64 : GoUInt64), (-7016870160886801794i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5583933584809066056i64 : GoUInt64), (-4159401682681114339i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2243455055843443238i64 : GoUInt64), (-587566084924005019i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3708002419115845976i64 : GoUInt64), (-7284757830718584993i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((23317005467419566i64 : GoUInt64), (-4494261269970843337i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4582539761593113446i64 : GoUInt64), (-1006140569036166268i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-558244341782001952i64 : GoUInt64), (-7546366883288685774i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5309491445654890344i64 : GoUInt64), (-4821272585683469313i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6636864307068612930i64 : GoUInt64), (-1414904713676948737i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4148040191917883081i64 : GoUInt64), (-7801844473689174817i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5185050239897353852i64 : GoUInt64), (-5140619573684080617i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6481312799871692315i64 : GoUInt64), (-1814088448677712867i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8662506518347195601i64 : GoUInt64), (-8051334308064652398i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3006924907348169211i64 : GoUInt64), (-5452481866653427593i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-853029884242176390i64 : GoUInt64), (-2203916314889396588i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1772699331562333708i64 : GoUInt64), (-8294976724446954723i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6827560182880305039i64 : GoUInt64), (-5757034887131305500i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8534450228600381299i64 : GoUInt64), (-2584607590486743971i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7639874402088932264i64 : GoUInt64), (-8532908771695296838i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((326470965756389522i64 : GoUInt64), (-6054449946191733143i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5019774725622874806i64 : GoUInt64), (-2956376414312278525i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((831516194300602802i64 : GoUInt64), (-8765264286586255934i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8183976793979022306i64 : GoUInt64), (-6344894339805432014i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3605087062808385830i64 : GoUInt64), (-3319431906329402113i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((9170708441896323000i64 : GoUInt64), (-8992173969096958177i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6851699533943015846i64 : GoUInt64), (-6628531442943809817i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3952938399001381903i64 : GoUInt64), (-3673978285252374367i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4446942528265218167i64 : GoUInt64), (-9213765455923815836i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-946992141904134804i64 : GoUInt64), (-6905520801477381891i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8039631859474607303i64 : GoUInt64), (-4020214983419339459i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3785518230938904583i64 : GoUInt64), (-413582710846786420i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-60105885123121413i64 : GoUInt64), (-7176018221920323369i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-75132356403901766i64 : GoUInt64), (-4358336758973016307i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((9129456591349898601i64 : GoUInt64), (-836234930288882479i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1211618658047395231i64 : GoUInt64), (-7440175859071633406i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6126209340986631942i64 : GoUInt64), (-4688533805412153853i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7657761676233289928i64 : GoUInt64), (-1248981238337804412i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2480258038432112253i64 : GoUInt64), (-7698142301602209614i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7712008566467528220i64 : GoUInt64), (-5010991858575374113i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8806733365625141341i64 : GoUInt64), (-1652053804791829737i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6025006692552756422i64 : GoUInt64), (-7950062655635975442i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6303799689591218185i64 : GoUInt64), (-5325892301117581398i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1343622424865753077i64 : GoUInt64), (-2045679357969588844i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1466078993672598279i64 : GoUInt64), (-8196078626372074883i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6444284760518135752i64 : GoUInt64), (-5633412264537705700i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8055355950647669691i64 : GoUInt64), (-2430079312244744221i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2728754459941099604i64 : GoUInt64), (-8436328597794046994i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5812428961928401302i64 : GoUInt64), (-5933724728815170839i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1957835834444274180i64 : GoUInt64), (-2805469892591575644i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7999724640327104446i64 : GoUInt64), (-8670947710510816634i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3835402254873283155i64 : GoUInt64), (-6226998619711132888i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4794252818591603944i64 : GoUInt64), (-3172062256211528206i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7608094030047140369i64 : GoUInt64), (-8900067937773286985i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4898431519131537557i64 : GoUInt64), (-6513398903789220827i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7712018656367741765i64 : GoUInt64), (-3530062611309138130i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2097517367411243253i64 : GoUInt64), (-9123818159709293187i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7233582727691441970i64 : GoUInt64), (-6793086681209228580i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((9041978409614302462i64 : GoUInt64), (-3879672333084147821i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6690786993590490174i64 : GoUInt64), (-237904397927796872i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4181741870994056359i64 : GoUInt64), (-7066219276345954901i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((615491320315182544i64 : GoUInt64), (-4221088077005055722i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8454007886460797627i64 : GoUInt64), (-664674077828931749i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3939617107816777291i64 : GoUInt64), (-7332950326284164199i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8910536670511192099i64 : GoUInt64), (-4554501889427817345i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7308573235570561493i64 : GoUInt64), (-1081441343357383777i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6961356773836868827i64 : GoUInt64), (-7593429867239446717i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8701695967296086034i64 : GoUInt64), (-4880101315621920492i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6265433940692719638i64 : GoUInt64), (-1488440626100012711i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((695789805494438130i64 : GoUInt64), (-7847804418953589800i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((869737256868047663i64 : GoUInt64), (-5198069505264599346i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8136200465769716230i64 : GoUInt64), (-1885900863153361279i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-473439272678684740i64 : GoUInt64), (-8096217067111932656i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4019886927579031980i64 : GoUInt64), (-5508585315462527915i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8810199395808373737i64 : GoUInt64), (-2274045625900771990i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7812217631593927538i64 : GoUInt64), (-8338807543829064350i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4069786015789754290i64 : GoUInt64), (-5811823411358942533i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((475546501309804958i64 : GoUInt64), (-2653093245771290262i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4908902581746016003i64 : GoUInt64), (-8575712306248138270i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3087243809672255805i64 : GoUInt64), (-6107954364382784934i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8470740780517707660i64 : GoUInt64), (-3023256937051093263i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-682526969396179383i64 : GoUInt64), (-8807064613298015146i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5464844730172612133i64 : GoUInt64), (-6397144748195131028i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2219369894288377262i64 : GoUInt64), (-3384744916816525881i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1387106183930235789i64 : GoUInt64), (-9032994600651410532i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2877803288514593168i64 : GoUInt64), (-6679557232386875260i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3597254110643241460i64 : GoUInt64), (-3737760522056206171i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((9108253656731439729i64 : GoUInt64), (-60514634142869810i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1080972517029761926i64 : GoUInt64), (-6955350673980375487i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5962901664714590312i64 : GoUInt64), (-4082502324048081455i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6381430974388925822i64 : GoUInt64), (-491441886632713915i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8600080377420466543i64 : GoUInt64), (-7224680206786528053i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7696643601933968437i64 : GoUInt64), (-4419164240055772162i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((397432465562684739i64 : GoUInt64), (-912269281642327298i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4363290727450709942i64 : GoUInt64), (-7487697328667536418i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8380944645968776284i64 : GoUInt64), (-4747935642407032618i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1252808770606194547i64 : GoUInt64), (-1323233534581402868i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8440366555225904216i64 : GoUInt64), (-7744549986754458649i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7896285879677171346i64 : GoUInt64), (-5069001465015685407i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3964700705685699529i64 : GoUInt64), (-1724565812842218855i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2133748077373825698i64 : GoUInt64), (-7995382660667468640i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2667185096717282123i64 : GoUInt64), (-5382542307406947896i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3333981370896602653i64 : GoUInt64), (-2116491865831296966i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6695424375237764562i64 : GoUInt64), (-8240336443785642460i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8369280469047205703i64 : GoUInt64), (-5688734536304665171i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3373457468973156583i64 : GoUInt64), (-2499232151953443560i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-9025939945749304721i64 : GoUInt64), (-8479549122611984081i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7164319141522920715i64 : GoUInt64), (-5987750384837592197i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4343712908476262990i64 : GoUInt64), (-2873001962619602342i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7326506586225052273i64 : GoUInt64), (-8713155254278333320i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((9158133232781315341i64 : GoUInt64), (-6279758049420528746i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2224294504121868368i64 : GoUInt64), (-3238011543348273028i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7833187971778608078i64 : GoUInt64), (-8941286242233752499i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-568112927868484289i64 : GoUInt64), (-6564921784364802720i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3901544858591782542i64 : GoUInt64), (-3594466212028615495i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4479063491021217767i64 : GoUInt64), (-9164070410158966541i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5598829363776522209i64 : GoUInt64), (-6843401994271320272i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2386850686293264857i64 : GoUInt64), (-3942566474411762436i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1628122660560806833i64 : GoUInt64), (-316522074587315140i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8205795374004271538i64 : GoUInt64), (-7115355324258153819i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1033872180650563614i64 : GoUInt64), (-4282508136895304370i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5904026244240592421i64 : GoUInt64), (-741449152691742558i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5995859411864064215i64 : GoUInt64), (-7380934748073420955i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1728547772024695539i64 : GoUInt64), (-4614482416664388289i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2451001303396518480i64 : GoUInt64), (-1156417002403097458i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5385653213018257806i64 : GoUInt64), (-7640289654143017767i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7102991539009341455i64 : GoUInt64), (-4938676049251384305i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8878739423761676819i64 : GoUInt64), (-1561659043136842477i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3674159897003727796i64 : GoUInt64), (-7893565929601608404i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4592699871254659745i64 : GoUInt64), (-5255271393574622601i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1129188820640936778i64 : GoUInt64), (-1957403223540890347i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3011586022114279438i64 : GoUInt64), (-8140906042354138323i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8376168546070237202i64 : GoUInt64), (-5564446534515285000i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7976533391121755114i64 : GoUInt64), (-2343872149716718346i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1932195658189984910i64 : GoUInt64), (-8382449121214030822i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6808127464117294671i64 : GoUInt64), (-5866375383090150624i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3898473311719230434i64 : GoUInt64), (-2721283210435300376i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((9092669226243950738i64 : GoUInt64), (-8618331034163144591i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2469221522477225289i64 : GoUInt64), (-6161227774276542835i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6136845133758244197i64 : GoUInt64), (-3089848699418290639i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3082000819042179233i64 : GoUInt64), (-8848684464777513506i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8464187042230111945i64 : GoUInt64), (-6449169562544503978i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3254824252494523781i64 : GoUInt64), (-3449775934753242068i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7189106879045698445i64 : GoUInt64), (-9073638986861858149i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8986383598807123057i64 : GoUInt64), (-6730362715149934782i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2602078556773259891i64 : GoUInt64), (-3801267375510030573i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1359087822460813040i64 : GoUInt64), (-139898200960150313i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-849429889038008150i64 : GoUInt64), (-7004965403241175802i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5673473379724898091i64 : GoUInt64), (-4144520735624081848i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2480155706228734710i64 : GoUInt64), (-568964901102714406i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3855940325606653146i64 : GoUInt64), (-7273132090830278360i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-208239388580928528i64 : GoUInt64), (-4479729095110460046i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4871985254153548564i64 : GoUInt64), (-987975350460687153i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3044990783845967853i64 : GoUInt64), (-7535013621679011327i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5417133557047315992i64 : GoUInt64), (-4807081008671376254i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2451955090545630818i64 : GoUInt64), (-1397165242411832414i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3838314940804713213i64 : GoUInt64), (-7790757304148477115i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4425478360848884291i64 : GoUInt64), (-5126760611758208489i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((920161932633717460i64 : GoUInt64), (-1796764746270372707i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2880944217109767365i64 : GoUInt64), (-8040506994060064798i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5622191765467566602i64 : GoUInt64), (-5438947724147693094i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6807318348447705459i64 : GoUInt64), (-2186998636757228463i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2662955059861265944i64 : GoUInt64), (-8284403175614349646i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7940379843253970334i64 : GoUInt64), (-5743817951090549153i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8521269269642088699i64 : GoUInt64), (-2568086420435798537i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6203421752542164323i64 : GoUInt64), (-8522583040413455942i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6080780864604458308i64 : GoUInt64), (-6041542782089432023i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6234081974526590827i64 : GoUInt64), (-2940242459184402125i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5327070802775656541i64 : GoUInt64), (-8755180564631333184i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6658838503469570676i64 : GoUInt64), (-6332289687361778576i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8323548129336963345i64 : GoUInt64), (-3303676090774835316i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4021154456019173717i64 : GoUInt64), (-8982326584375353929i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5026443070023967147i64 : GoUInt64), (-6616222212041804507i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2940318199324816875i64 : GoUInt64), (-3658591746624867729i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8755227902219092403i64 : GoUInt64), (-9204148869281624187i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2891023177508298209i64 : GoUInt64), (-6893500068174642330i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8225464990312760665i64 : GoUInt64), (-4005189066790915008i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5670145219463562927i64 : GoUInt64), (-394800315061255856i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7985374283903742931i64 : GoUInt64), (-7164279224554366766i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((758345818024902856i64 : GoUInt64), (-4343663012265570553i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3663753745896259334i64 : GoUInt64), (-817892746904575288i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-9207375118826243940i64 : GoUInt64), (-7428711994456441411i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2285846861678029117i64 : GoUInt64), (-4674203974643163860i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1754377441329851508i64 : GoUInt64), (-1231068949876566920i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1096485900831157192i64 : GoUInt64), (-7686947121313936181i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3241078642388441414i64 : GoUInt64), (-4996997883215032323i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5172023733869224041i64 : GoUInt64), (-1634561335591402499i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5538357842881958977i64 : GoUInt64), (-7939129862385708418i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2300424733252327086i64 : GoUInt64), (-5312226309554747619i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6347841120289366950i64 : GoUInt64), (-2028596868516046619i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6273243709394548296i64 : GoUInt64), (-8185402070463610993i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((3229868618315797466i64 : GoUInt64), (-5620066569652125837i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-574350245532641071i64 : GoUInt64), (-2413397193637769393i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-358968903457900670i64 : GoUInt64), (-8425902273664687727i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8774660907532399971i64 : GoUInt64), (-5920691823653471754i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1744954097560724156i64 : GoUInt64), (-2789178761139451788i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8132775725879323211i64 : GoUInt64), (-8660765753353239224i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5554283638921766110i64 : GoUInt64), (-6214271173264161126i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6892203506629956075i64 : GoUInt64), (-3156152948152813503i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2609901835997359309i64 : GoUInt64), (-8890124620236590296i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((1349308723430688768i64 : GoUInt64), (-6500969756868349965i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2925050114139026944i64 : GoUInt64), (-3514526177658049553i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1828156321336891840i64 : GoUInt64), (-9114107888677362827i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6938176635183661008i64 : GoUInt64), (-6780948842419315629i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((4061034775552188356i64 : GoUInt64), (-3864500034596756632i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5076293469440235445i64 : GoUInt64), (-218939024818557886i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7784369436827535057i64 : GoUInt64), (-7054365918152680535i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4104596259247744891i64 : GoUInt64), (-4206271379263462765i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5130745324059681113i64 : GoUInt64), (-646153205651940552i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8322499218531169064i64 : GoUInt64), (-7321374781173544701i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5791438004736573426i64 : GoUInt64), (-4540032458039542972i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7239297505920716783i64 : GoUInt64), (-1063354554122040811i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((6830403950414141941i64 : GoUInt64), (-7582125623967357363i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-5297053117264486286i64 : GoUInt64), (-4865971011531808800i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-2009630378153219953i64 : GoUInt64), (-1470777745987373096i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8173548013986844327i64 : GoUInt64), (-7836765118883190041i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8229809056225996208i64 : GoUInt64), (-5184270380176599647i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-3547796734999668452i64 : GoUInt64), (-1868651956793361655i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((2394313059052595121i64 : GoUInt64), (-8085436500636932890i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6230480713039031907i64 : GoUInt64), (-5495109607368778209i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-7788100891298789883i64 : GoUInt64), (-2257200990783584857i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-4867563057061743677i64 : GoUInt64), (-8328279646880822392i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-1472767802899791692i64 : GoUInt64), (-5798663540173640086i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-6452645772052127519i64 : GoUInt64), (-2636643406789662203i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8644589625959967604i64 : GoUInt64), (-8565431156884620733i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((7641007041259592112i64 : GoUInt64), (-6095102927678388012i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-8895485272135061476i64 : GoUInt64), (-3007192641170597111i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((-947992276657025519i64 : GoUInt64), (-8797024428372705051i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((8038381691033493909i64 : GoUInt64), (-6384594517038493409i64 : GoUInt64)) : GoArray<GoUInt64>),
(new GoArray<GoUInt64>((5436291095364479483i64 : GoUInt64), (-3369057127870728857i64 : GoUInt64)) : GoArray<GoUInt64>)) : GoArray<GoArray<GoUInt64>>);
/**
    
    
    
**/
private var _float32info = (new T_floatInfo((23u32 : GoUInt), (8u32 : GoUInt), (-127 : GoInt)) : T_floatInfo);
/**
    
    
    
**/
private var _float64info = (new T_floatInfo((52u32 : GoUInt), (11u32 : GoUInt), (-1023 : GoInt)) : T_floatInfo);
/**
    
    
    
**/
private var _uint64pow10 = (new GoArray<GoUInt64>(
(1i64 : GoUInt64),
(10i64 : GoUInt64),
(100i64 : GoUInt64),
(1000i64 : GoUInt64),
(10000i64 : GoUInt64),
(100000i64 : GoUInt64),
(1000000i64 : GoUInt64),
(10000000i64 : GoUInt64),
(100000000i64 : GoUInt64),
(1000000000i64 : GoUInt64),
(10000000000i64 : GoUInt64),
(100000000000i64 : GoUInt64),
(1000000000000i64 : GoUInt64),
(10000000000000i64 : GoUInt64),
(100000000000000i64 : GoUInt64),
(1000000000000000i64 : GoUInt64),
(10000000000000000i64 : GoUInt64),
(100000000000000000i64 : GoUInt64),
(1000000000000000000i64 : GoUInt64),
(-8446744073709551616i64 : GoUInt64)) : GoArray<GoUInt64>);
/**
    
    
    
**/
private var _isPrint16 = (new Slice<GoUInt16>(
0,
0,
(32 : GoUInt16),
(126 : GoUInt16),
(161 : GoUInt16),
(887 : GoUInt16),
(890 : GoUInt16),
(895 : GoUInt16),
(900 : GoUInt16),
(1366 : GoUInt16),
(1369 : GoUInt16),
(1418 : GoUInt16),
(1421 : GoUInt16),
(1479 : GoUInt16),
(1488 : GoUInt16),
(1514 : GoUInt16),
(1519 : GoUInt16),
(1524 : GoUInt16),
(1542 : GoUInt16),
(1563 : GoUInt16),
(1566 : GoUInt16),
(1805 : GoUInt16),
(1808 : GoUInt16),
(1866 : GoUInt16),
(1869 : GoUInt16),
(1969 : GoUInt16),
(1984 : GoUInt16),
(2042 : GoUInt16),
(2045 : GoUInt16),
(2093 : GoUInt16),
(2096 : GoUInt16),
(2139 : GoUInt16),
(2142 : GoUInt16),
(2154 : GoUInt16),
(2208 : GoUInt16),
(2247 : GoUInt16),
(2259 : GoUInt16),
(2444 : GoUInt16),
(2447 : GoUInt16),
(2448 : GoUInt16),
(2451 : GoUInt16),
(2482 : GoUInt16),
(2486 : GoUInt16),
(2489 : GoUInt16),
(2492 : GoUInt16),
(2500 : GoUInt16),
(2503 : GoUInt16),
(2504 : GoUInt16),
(2507 : GoUInt16),
(2510 : GoUInt16),
(2519 : GoUInt16),
(2519 : GoUInt16),
(2524 : GoUInt16),
(2531 : GoUInt16),
(2534 : GoUInt16),
(2558 : GoUInt16),
(2561 : GoUInt16),
(2570 : GoUInt16),
(2575 : GoUInt16),
(2576 : GoUInt16),
(2579 : GoUInt16),
(2617 : GoUInt16),
(2620 : GoUInt16),
(2626 : GoUInt16),
(2631 : GoUInt16),
(2632 : GoUInt16),
(2635 : GoUInt16),
(2637 : GoUInt16),
(2641 : GoUInt16),
(2641 : GoUInt16),
(2649 : GoUInt16),
(2654 : GoUInt16),
(2662 : GoUInt16),
(2678 : GoUInt16),
(2689 : GoUInt16),
(2745 : GoUInt16),
(2748 : GoUInt16),
(2765 : GoUInt16),
(2768 : GoUInt16),
(2768 : GoUInt16),
(2784 : GoUInt16),
(2787 : GoUInt16),
(2790 : GoUInt16),
(2801 : GoUInt16),
(2809 : GoUInt16),
(2828 : GoUInt16),
(2831 : GoUInt16),
(2832 : GoUInt16),
(2835 : GoUInt16),
(2873 : GoUInt16),
(2876 : GoUInt16),
(2884 : GoUInt16),
(2887 : GoUInt16),
(2888 : GoUInt16),
(2891 : GoUInt16),
(2893 : GoUInt16),
(2901 : GoUInt16),
(2903 : GoUInt16),
(2908 : GoUInt16),
(2915 : GoUInt16),
(2918 : GoUInt16),
(2935 : GoUInt16),
(2946 : GoUInt16),
(2954 : GoUInt16),
(2958 : GoUInt16),
(2965 : GoUInt16),
(2969 : GoUInt16),
(2975 : GoUInt16),
(2979 : GoUInt16),
(2980 : GoUInt16),
(2984 : GoUInt16),
(2986 : GoUInt16),
(2990 : GoUInt16),
(3001 : GoUInt16),
(3006 : GoUInt16),
(3010 : GoUInt16),
(3014 : GoUInt16),
(3021 : GoUInt16),
(3024 : GoUInt16),
(3024 : GoUInt16),
(3031 : GoUInt16),
(3031 : GoUInt16),
(3046 : GoUInt16),
(3066 : GoUInt16),
(3072 : GoUInt16),
(3129 : GoUInt16),
(3133 : GoUInt16),
(3149 : GoUInt16),
(3157 : GoUInt16),
(3162 : GoUInt16),
(3168 : GoUInt16),
(3171 : GoUInt16),
(3174 : GoUInt16),
(3183 : GoUInt16),
(3191 : GoUInt16),
(3257 : GoUInt16),
(3260 : GoUInt16),
(3277 : GoUInt16),
(3285 : GoUInt16),
(3286 : GoUInt16),
(3294 : GoUInt16),
(3299 : GoUInt16),
(3302 : GoUInt16),
(3314 : GoUInt16),
(3328 : GoUInt16),
(3407 : GoUInt16),
(3412 : GoUInt16),
(3427 : GoUInt16),
(3430 : GoUInt16),
(3478 : GoUInt16),
(3482 : GoUInt16),
(3517 : GoUInt16),
(3520 : GoUInt16),
(3526 : GoUInt16),
(3530 : GoUInt16),
(3530 : GoUInt16),
(3535 : GoUInt16),
(3551 : GoUInt16),
(3558 : GoUInt16),
(3567 : GoUInt16),
(3570 : GoUInt16),
(3572 : GoUInt16),
(3585 : GoUInt16),
(3642 : GoUInt16),
(3647 : GoUInt16),
(3675 : GoUInt16),
(3713 : GoUInt16),
(3773 : GoUInt16),
(3776 : GoUInt16),
(3789 : GoUInt16),
(3792 : GoUInt16),
(3801 : GoUInt16),
(3804 : GoUInt16),
(3807 : GoUInt16),
(3840 : GoUInt16),
(3948 : GoUInt16),
(3953 : GoUInt16),
(4058 : GoUInt16),
(4096 : GoUInt16),
(4295 : GoUInt16),
(4301 : GoUInt16),
(4301 : GoUInt16),
(4304 : GoUInt16),
(4685 : GoUInt16),
(4688 : GoUInt16),
(4701 : GoUInt16),
(4704 : GoUInt16),
(4749 : GoUInt16),
(4752 : GoUInt16),
(4789 : GoUInt16),
(4792 : GoUInt16),
(4805 : GoUInt16),
(4808 : GoUInt16),
(4885 : GoUInt16),
(4888 : GoUInt16),
(4954 : GoUInt16),
(4957 : GoUInt16),
(4988 : GoUInt16),
(4992 : GoUInt16),
(5017 : GoUInt16),
(5024 : GoUInt16),
(5109 : GoUInt16),
(5112 : GoUInt16),
(5117 : GoUInt16),
(5120 : GoUInt16),
(5788 : GoUInt16),
(5792 : GoUInt16),
(5880 : GoUInt16),
(5888 : GoUInt16),
(5908 : GoUInt16),
(5920 : GoUInt16),
(5942 : GoUInt16),
(5952 : GoUInt16),
(5971 : GoUInt16),
(5984 : GoUInt16),
(6003 : GoUInt16),
(6016 : GoUInt16),
(6109 : GoUInt16),
(6112 : GoUInt16),
(6121 : GoUInt16),
(6128 : GoUInt16),
(6137 : GoUInt16),
(6144 : GoUInt16),
(6157 : GoUInt16),
(6160 : GoUInt16),
(6169 : GoUInt16),
(6176 : GoUInt16),
(6264 : GoUInt16),
(6272 : GoUInt16),
(6314 : GoUInt16),
(6320 : GoUInt16),
(6389 : GoUInt16),
(6400 : GoUInt16),
(6443 : GoUInt16),
(6448 : GoUInt16),
(6459 : GoUInt16),
(6464 : GoUInt16),
(6464 : GoUInt16),
(6468 : GoUInt16),
(6509 : GoUInt16),
(6512 : GoUInt16),
(6516 : GoUInt16),
(6528 : GoUInt16),
(6571 : GoUInt16),
(6576 : GoUInt16),
(6601 : GoUInt16),
(6608 : GoUInt16),
(6618 : GoUInt16),
(6622 : GoUInt16),
(6683 : GoUInt16),
(6686 : GoUInt16),
(6780 : GoUInt16),
(6783 : GoUInt16),
(6793 : GoUInt16),
(6800 : GoUInt16),
(6809 : GoUInt16),
(6816 : GoUInt16),
(6829 : GoUInt16),
(6832 : GoUInt16),
(6848 : GoUInt16),
(6912 : GoUInt16),
(6987 : GoUInt16),
(6992 : GoUInt16),
(7036 : GoUInt16),
(7040 : GoUInt16),
(7155 : GoUInt16),
(7164 : GoUInt16),
(7223 : GoUInt16),
(7227 : GoUInt16),
(7241 : GoUInt16),
(7245 : GoUInt16),
(7304 : GoUInt16),
(7312 : GoUInt16),
(7354 : GoUInt16),
(7357 : GoUInt16),
(7367 : GoUInt16),
(7376 : GoUInt16),
(7418 : GoUInt16),
(7424 : GoUInt16),
(7957 : GoUInt16),
(7960 : GoUInt16),
(7965 : GoUInt16),
(7968 : GoUInt16),
(8005 : GoUInt16),
(8008 : GoUInt16),
(8013 : GoUInt16),
(8016 : GoUInt16),
(8061 : GoUInt16),
(8064 : GoUInt16),
(8147 : GoUInt16),
(8150 : GoUInt16),
(8175 : GoUInt16),
(8178 : GoUInt16),
(8190 : GoUInt16),
(8208 : GoUInt16),
(8231 : GoUInt16),
(8240 : GoUInt16),
(8286 : GoUInt16),
(8304 : GoUInt16),
(8305 : GoUInt16),
(8308 : GoUInt16),
(8348 : GoUInt16),
(8352 : GoUInt16),
(8383 : GoUInt16),
(8400 : GoUInt16),
(8432 : GoUInt16),
(8448 : GoUInt16),
(8587 : GoUInt16),
(8592 : GoUInt16),
(9254 : GoUInt16),
(9280 : GoUInt16),
(9290 : GoUInt16),
(9312 : GoUInt16),
(11123 : GoUInt16),
(11126 : GoUInt16),
(11507 : GoUInt16),
(11513 : GoUInt16),
(11559 : GoUInt16),
(11565 : GoUInt16),
(11565 : GoUInt16),
(11568 : GoUInt16),
(11623 : GoUInt16),
(11631 : GoUInt16),
(11632 : GoUInt16),
(11647 : GoUInt16),
(11670 : GoUInt16),
(11680 : GoUInt16),
(11858 : GoUInt16),
(11904 : GoUInt16),
(12019 : GoUInt16),
(12032 : GoUInt16),
(12245 : GoUInt16),
(12272 : GoUInt16),
(12283 : GoUInt16),
(12289 : GoUInt16),
(12438 : GoUInt16),
(12441 : GoUInt16),
(12543 : GoUInt16),
(12549 : GoUInt16),
(12771 : GoUInt16),
(12784 : GoUInt16),
(40956 : GoUInt16),
(40960 : GoUInt16),
(42124 : GoUInt16),
(42128 : GoUInt16),
(42182 : GoUInt16),
(42192 : GoUInt16),
(42539 : GoUInt16),
(42560 : GoUInt16),
(42743 : GoUInt16),
(42752 : GoUInt16),
(42943 : GoUInt16),
(42946 : GoUInt16),
(42954 : GoUInt16),
(42997 : GoUInt16),
(43052 : GoUInt16),
(43056 : GoUInt16),
(43065 : GoUInt16),
(43072 : GoUInt16),
(43127 : GoUInt16),
(43136 : GoUInt16),
(43205 : GoUInt16),
(43214 : GoUInt16),
(43225 : GoUInt16),
(43232 : GoUInt16),
(43347 : GoUInt16),
(43359 : GoUInt16),
(43388 : GoUInt16),
(43392 : GoUInt16),
(43481 : GoUInt16),
(43486 : GoUInt16),
(43574 : GoUInt16),
(43584 : GoUInt16),
(43597 : GoUInt16),
(43600 : GoUInt16),
(43609 : GoUInt16),
(43612 : GoUInt16),
(43714 : GoUInt16),
(43739 : GoUInt16),
(43766 : GoUInt16),
(43777 : GoUInt16),
(43782 : GoUInt16),
(43785 : GoUInt16),
(43790 : GoUInt16),
(43793 : GoUInt16),
(43798 : GoUInt16),
(43808 : GoUInt16),
(43883 : GoUInt16),
(43888 : GoUInt16),
(44013 : GoUInt16),
(44016 : GoUInt16),
(44025 : GoUInt16),
(44032 : GoUInt16),
(55203 : GoUInt16),
(55216 : GoUInt16),
(55238 : GoUInt16),
(55243 : GoUInt16),
(55291 : GoUInt16),
(63744 : GoUInt16),
(64109 : GoUInt16),
(64112 : GoUInt16),
(64217 : GoUInt16),
(64256 : GoUInt16),
(64262 : GoUInt16),
(64275 : GoUInt16),
(64279 : GoUInt16),
(64285 : GoUInt16),
(64449 : GoUInt16),
(64467 : GoUInt16),
(64831 : GoUInt16),
(64848 : GoUInt16),
(64911 : GoUInt16),
(64914 : GoUInt16),
(64967 : GoUInt16),
(65008 : GoUInt16),
(65021 : GoUInt16),
(65024 : GoUInt16),
(65049 : GoUInt16),
(65056 : GoUInt16),
(65131 : GoUInt16),
(65136 : GoUInt16),
(65276 : GoUInt16),
(65281 : GoUInt16),
(65470 : GoUInt16),
(65474 : GoUInt16),
(65479 : GoUInt16),
(65482 : GoUInt16),
(65487 : GoUInt16),
(65490 : GoUInt16),
(65495 : GoUInt16),
(65498 : GoUInt16),
(65500 : GoUInt16),
(65504 : GoUInt16),
(65518 : GoUInt16),
(65532 : GoUInt16),
(65533 : GoUInt16)) : Slice<GoUInt16>);
/**
    
    
    
**/
private var _isNotPrint16 = (new Slice<GoUInt16>(
0,
0,
(173 : GoUInt16),
(907 : GoUInt16),
(909 : GoUInt16),
(930 : GoUInt16),
(1328 : GoUInt16),
(1424 : GoUInt16),
(1757 : GoUInt16),
(2111 : GoUInt16),
(2143 : GoUInt16),
(2229 : GoUInt16),
(2274 : GoUInt16),
(2436 : GoUInt16),
(2473 : GoUInt16),
(2481 : GoUInt16),
(2526 : GoUInt16),
(2564 : GoUInt16),
(2601 : GoUInt16),
(2609 : GoUInt16),
(2612 : GoUInt16),
(2615 : GoUInt16),
(2621 : GoUInt16),
(2653 : GoUInt16),
(2692 : GoUInt16),
(2702 : GoUInt16),
(2706 : GoUInt16),
(2729 : GoUInt16),
(2737 : GoUInt16),
(2740 : GoUInt16),
(2758 : GoUInt16),
(2762 : GoUInt16),
(2816 : GoUInt16),
(2820 : GoUInt16),
(2857 : GoUInt16),
(2865 : GoUInt16),
(2868 : GoUInt16),
(2910 : GoUInt16),
(2948 : GoUInt16),
(2961 : GoUInt16),
(2971 : GoUInt16),
(2973 : GoUInt16),
(3017 : GoUInt16),
(3085 : GoUInt16),
(3089 : GoUInt16),
(3113 : GoUInt16),
(3141 : GoUInt16),
(3145 : GoUInt16),
(3159 : GoUInt16),
(3213 : GoUInt16),
(3217 : GoUInt16),
(3241 : GoUInt16),
(3252 : GoUInt16),
(3269 : GoUInt16),
(3273 : GoUInt16),
(3295 : GoUInt16),
(3312 : GoUInt16),
(3341 : GoUInt16),
(3345 : GoUInt16),
(3397 : GoUInt16),
(3401 : GoUInt16),
(3456 : GoUInt16),
(3460 : GoUInt16),
(3506 : GoUInt16),
(3516 : GoUInt16),
(3541 : GoUInt16),
(3543 : GoUInt16),
(3715 : GoUInt16),
(3717 : GoUInt16),
(3723 : GoUInt16),
(3748 : GoUInt16),
(3750 : GoUInt16),
(3781 : GoUInt16),
(3783 : GoUInt16),
(3912 : GoUInt16),
(3992 : GoUInt16),
(4029 : GoUInt16),
(4045 : GoUInt16),
(4294 : GoUInt16),
(4681 : GoUInt16),
(4695 : GoUInt16),
(4697 : GoUInt16),
(4745 : GoUInt16),
(4785 : GoUInt16),
(4799 : GoUInt16),
(4801 : GoUInt16),
(4823 : GoUInt16),
(4881 : GoUInt16),
(5760 : GoUInt16),
(5901 : GoUInt16),
(5997 : GoUInt16),
(6001 : GoUInt16),
(6431 : GoUInt16),
(6751 : GoUInt16),
(7674 : GoUInt16),
(8024 : GoUInt16),
(8026 : GoUInt16),
(8028 : GoUInt16),
(8030 : GoUInt16),
(8117 : GoUInt16),
(8133 : GoUInt16),
(8156 : GoUInt16),
(8181 : GoUInt16),
(8335 : GoUInt16),
(11158 : GoUInt16),
(11311 : GoUInt16),
(11359 : GoUInt16),
(11558 : GoUInt16),
(11687 : GoUInt16),
(11695 : GoUInt16),
(11703 : GoUInt16),
(11711 : GoUInt16),
(11719 : GoUInt16),
(11727 : GoUInt16),
(11735 : GoUInt16),
(11743 : GoUInt16),
(11930 : GoUInt16),
(12352 : GoUInt16),
(12592 : GoUInt16),
(12687 : GoUInt16),
(12831 : GoUInt16),
(43470 : GoUInt16),
(43519 : GoUInt16),
(43815 : GoUInt16),
(43823 : GoUInt16),
(64311 : GoUInt16),
(64317 : GoUInt16),
(64319 : GoUInt16),
(64322 : GoUInt16),
(64325 : GoUInt16),
(65107 : GoUInt16),
(65127 : GoUInt16),
(65141 : GoUInt16),
(65511 : GoUInt16)) : Slice<GoUInt16>);
/**
    
    
    
**/
private var _isPrint32 = (new Slice<GoUInt32>(
0,
0,
(65536u32 : GoUInt32),
(65613u32 : GoUInt32),
(65616u32 : GoUInt32),
(65629u32 : GoUInt32),
(65664u32 : GoUInt32),
(65786u32 : GoUInt32),
(65792u32 : GoUInt32),
(65794u32 : GoUInt32),
(65799u32 : GoUInt32),
(65843u32 : GoUInt32),
(65847u32 : GoUInt32),
(65948u32 : GoUInt32),
(65952u32 : GoUInt32),
(65952u32 : GoUInt32),
(66000u32 : GoUInt32),
(66045u32 : GoUInt32),
(66176u32 : GoUInt32),
(66204u32 : GoUInt32),
(66208u32 : GoUInt32),
(66256u32 : GoUInt32),
(66272u32 : GoUInt32),
(66299u32 : GoUInt32),
(66304u32 : GoUInt32),
(66339u32 : GoUInt32),
(66349u32 : GoUInt32),
(66378u32 : GoUInt32),
(66384u32 : GoUInt32),
(66426u32 : GoUInt32),
(66432u32 : GoUInt32),
(66499u32 : GoUInt32),
(66504u32 : GoUInt32),
(66517u32 : GoUInt32),
(66560u32 : GoUInt32),
(66717u32 : GoUInt32),
(66720u32 : GoUInt32),
(66729u32 : GoUInt32),
(66736u32 : GoUInt32),
(66771u32 : GoUInt32),
(66776u32 : GoUInt32),
(66811u32 : GoUInt32),
(66816u32 : GoUInt32),
(66855u32 : GoUInt32),
(66864u32 : GoUInt32),
(66915u32 : GoUInt32),
(66927u32 : GoUInt32),
(66927u32 : GoUInt32),
(67072u32 : GoUInt32),
(67382u32 : GoUInt32),
(67392u32 : GoUInt32),
(67413u32 : GoUInt32),
(67424u32 : GoUInt32),
(67431u32 : GoUInt32),
(67584u32 : GoUInt32),
(67589u32 : GoUInt32),
(67592u32 : GoUInt32),
(67640u32 : GoUInt32),
(67644u32 : GoUInt32),
(67644u32 : GoUInt32),
(67647u32 : GoUInt32),
(67742u32 : GoUInt32),
(67751u32 : GoUInt32),
(67759u32 : GoUInt32),
(67808u32 : GoUInt32),
(67829u32 : GoUInt32),
(67835u32 : GoUInt32),
(67867u32 : GoUInt32),
(67871u32 : GoUInt32),
(67897u32 : GoUInt32),
(67903u32 : GoUInt32),
(67903u32 : GoUInt32),
(67968u32 : GoUInt32),
(68023u32 : GoUInt32),
(68028u32 : GoUInt32),
(68047u32 : GoUInt32),
(68050u32 : GoUInt32),
(68102u32 : GoUInt32),
(68108u32 : GoUInt32),
(68149u32 : GoUInt32),
(68152u32 : GoUInt32),
(68154u32 : GoUInt32),
(68159u32 : GoUInt32),
(68168u32 : GoUInt32),
(68176u32 : GoUInt32),
(68184u32 : GoUInt32),
(68192u32 : GoUInt32),
(68255u32 : GoUInt32),
(68288u32 : GoUInt32),
(68326u32 : GoUInt32),
(68331u32 : GoUInt32),
(68342u32 : GoUInt32),
(68352u32 : GoUInt32),
(68405u32 : GoUInt32),
(68409u32 : GoUInt32),
(68437u32 : GoUInt32),
(68440u32 : GoUInt32),
(68466u32 : GoUInt32),
(68472u32 : GoUInt32),
(68497u32 : GoUInt32),
(68505u32 : GoUInt32),
(68508u32 : GoUInt32),
(68521u32 : GoUInt32),
(68527u32 : GoUInt32),
(68608u32 : GoUInt32),
(68680u32 : GoUInt32),
(68736u32 : GoUInt32),
(68786u32 : GoUInt32),
(68800u32 : GoUInt32),
(68850u32 : GoUInt32),
(68858u32 : GoUInt32),
(68903u32 : GoUInt32),
(68912u32 : GoUInt32),
(68921u32 : GoUInt32),
(69216u32 : GoUInt32),
(69293u32 : GoUInt32),
(69296u32 : GoUInt32),
(69297u32 : GoUInt32),
(69376u32 : GoUInt32),
(69415u32 : GoUInt32),
(69424u32 : GoUInt32),
(69465u32 : GoUInt32),
(69552u32 : GoUInt32),
(69579u32 : GoUInt32),
(69600u32 : GoUInt32),
(69622u32 : GoUInt32),
(69632u32 : GoUInt32),
(69709u32 : GoUInt32),
(69714u32 : GoUInt32),
(69743u32 : GoUInt32),
(69759u32 : GoUInt32),
(69825u32 : GoUInt32),
(69840u32 : GoUInt32),
(69864u32 : GoUInt32),
(69872u32 : GoUInt32),
(69881u32 : GoUInt32),
(69888u32 : GoUInt32),
(69959u32 : GoUInt32),
(69968u32 : GoUInt32),
(70006u32 : GoUInt32),
(70016u32 : GoUInt32),
(70132u32 : GoUInt32),
(70144u32 : GoUInt32),
(70206u32 : GoUInt32),
(70272u32 : GoUInt32),
(70313u32 : GoUInt32),
(70320u32 : GoUInt32),
(70378u32 : GoUInt32),
(70384u32 : GoUInt32),
(70393u32 : GoUInt32),
(70400u32 : GoUInt32),
(70412u32 : GoUInt32),
(70415u32 : GoUInt32),
(70416u32 : GoUInt32),
(70419u32 : GoUInt32),
(70468u32 : GoUInt32),
(70471u32 : GoUInt32),
(70472u32 : GoUInt32),
(70475u32 : GoUInt32),
(70477u32 : GoUInt32),
(70480u32 : GoUInt32),
(70480u32 : GoUInt32),
(70487u32 : GoUInt32),
(70487u32 : GoUInt32),
(70493u32 : GoUInt32),
(70499u32 : GoUInt32),
(70502u32 : GoUInt32),
(70508u32 : GoUInt32),
(70512u32 : GoUInt32),
(70516u32 : GoUInt32),
(70656u32 : GoUInt32),
(70753u32 : GoUInt32),
(70784u32 : GoUInt32),
(70855u32 : GoUInt32),
(70864u32 : GoUInt32),
(70873u32 : GoUInt32),
(71040u32 : GoUInt32),
(71093u32 : GoUInt32),
(71096u32 : GoUInt32),
(71133u32 : GoUInt32),
(71168u32 : GoUInt32),
(71236u32 : GoUInt32),
(71248u32 : GoUInt32),
(71257u32 : GoUInt32),
(71264u32 : GoUInt32),
(71276u32 : GoUInt32),
(71296u32 : GoUInt32),
(71352u32 : GoUInt32),
(71360u32 : GoUInt32),
(71369u32 : GoUInt32),
(71424u32 : GoUInt32),
(71450u32 : GoUInt32),
(71453u32 : GoUInt32),
(71467u32 : GoUInt32),
(71472u32 : GoUInt32),
(71487u32 : GoUInt32),
(71680u32 : GoUInt32),
(71739u32 : GoUInt32),
(71840u32 : GoUInt32),
(71922u32 : GoUInt32),
(71935u32 : GoUInt32),
(71942u32 : GoUInt32),
(71945u32 : GoUInt32),
(71945u32 : GoUInt32),
(71948u32 : GoUInt32),
(71992u32 : GoUInt32),
(71995u32 : GoUInt32),
(72006u32 : GoUInt32),
(72016u32 : GoUInt32),
(72025u32 : GoUInt32),
(72096u32 : GoUInt32),
(72103u32 : GoUInt32),
(72106u32 : GoUInt32),
(72151u32 : GoUInt32),
(72154u32 : GoUInt32),
(72164u32 : GoUInt32),
(72192u32 : GoUInt32),
(72263u32 : GoUInt32),
(72272u32 : GoUInt32),
(72354u32 : GoUInt32),
(72384u32 : GoUInt32),
(72440u32 : GoUInt32),
(72704u32 : GoUInt32),
(72773u32 : GoUInt32),
(72784u32 : GoUInt32),
(72812u32 : GoUInt32),
(72816u32 : GoUInt32),
(72847u32 : GoUInt32),
(72850u32 : GoUInt32),
(72886u32 : GoUInt32),
(72960u32 : GoUInt32),
(73014u32 : GoUInt32),
(73018u32 : GoUInt32),
(73031u32 : GoUInt32),
(73040u32 : GoUInt32),
(73049u32 : GoUInt32),
(73056u32 : GoUInt32),
(73112u32 : GoUInt32),
(73120u32 : GoUInt32),
(73129u32 : GoUInt32),
(73440u32 : GoUInt32),
(73464u32 : GoUInt32),
(73648u32 : GoUInt32),
(73648u32 : GoUInt32),
(73664u32 : GoUInt32),
(73713u32 : GoUInt32),
(73727u32 : GoUInt32),
(74649u32 : GoUInt32),
(74752u32 : GoUInt32),
(74868u32 : GoUInt32),
(74880u32 : GoUInt32),
(75075u32 : GoUInt32),
(77824u32 : GoUInt32),
(78894u32 : GoUInt32),
(82944u32 : GoUInt32),
(83526u32 : GoUInt32),
(92160u32 : GoUInt32),
(92728u32 : GoUInt32),
(92736u32 : GoUInt32),
(92777u32 : GoUInt32),
(92782u32 : GoUInt32),
(92783u32 : GoUInt32),
(92880u32 : GoUInt32),
(92909u32 : GoUInt32),
(92912u32 : GoUInt32),
(92917u32 : GoUInt32),
(92928u32 : GoUInt32),
(92997u32 : GoUInt32),
(93008u32 : GoUInt32),
(93047u32 : GoUInt32),
(93053u32 : GoUInt32),
(93071u32 : GoUInt32),
(93760u32 : GoUInt32),
(93850u32 : GoUInt32),
(93952u32 : GoUInt32),
(94026u32 : GoUInt32),
(94031u32 : GoUInt32),
(94087u32 : GoUInt32),
(94095u32 : GoUInt32),
(94111u32 : GoUInt32),
(94176u32 : GoUInt32),
(94180u32 : GoUInt32),
(94192u32 : GoUInt32),
(94193u32 : GoUInt32),
(94208u32 : GoUInt32),
(100343u32 : GoUInt32),
(100352u32 : GoUInt32),
(101589u32 : GoUInt32),
(101632u32 : GoUInt32),
(101640u32 : GoUInt32),
(110592u32 : GoUInt32),
(110878u32 : GoUInt32),
(110928u32 : GoUInt32),
(110930u32 : GoUInt32),
(110948u32 : GoUInt32),
(110951u32 : GoUInt32),
(110960u32 : GoUInt32),
(111355u32 : GoUInt32),
(113664u32 : GoUInt32),
(113770u32 : GoUInt32),
(113776u32 : GoUInt32),
(113788u32 : GoUInt32),
(113792u32 : GoUInt32),
(113800u32 : GoUInt32),
(113808u32 : GoUInt32),
(113817u32 : GoUInt32),
(113820u32 : GoUInt32),
(113823u32 : GoUInt32),
(118784u32 : GoUInt32),
(119029u32 : GoUInt32),
(119040u32 : GoUInt32),
(119078u32 : GoUInt32),
(119081u32 : GoUInt32),
(119154u32 : GoUInt32),
(119163u32 : GoUInt32),
(119272u32 : GoUInt32),
(119296u32 : GoUInt32),
(119365u32 : GoUInt32),
(119520u32 : GoUInt32),
(119539u32 : GoUInt32),
(119552u32 : GoUInt32),
(119638u32 : GoUInt32),
(119648u32 : GoUInt32),
(119672u32 : GoUInt32),
(119808u32 : GoUInt32),
(119967u32 : GoUInt32),
(119970u32 : GoUInt32),
(119970u32 : GoUInt32),
(119973u32 : GoUInt32),
(119974u32 : GoUInt32),
(119977u32 : GoUInt32),
(120074u32 : GoUInt32),
(120077u32 : GoUInt32),
(120134u32 : GoUInt32),
(120138u32 : GoUInt32),
(120485u32 : GoUInt32),
(120488u32 : GoUInt32),
(120779u32 : GoUInt32),
(120782u32 : GoUInt32),
(121483u32 : GoUInt32),
(121499u32 : GoUInt32),
(121519u32 : GoUInt32),
(122880u32 : GoUInt32),
(122904u32 : GoUInt32),
(122907u32 : GoUInt32),
(122922u32 : GoUInt32),
(123136u32 : GoUInt32),
(123180u32 : GoUInt32),
(123184u32 : GoUInt32),
(123197u32 : GoUInt32),
(123200u32 : GoUInt32),
(123209u32 : GoUInt32),
(123214u32 : GoUInt32),
(123215u32 : GoUInt32),
(123584u32 : GoUInt32),
(123641u32 : GoUInt32),
(123647u32 : GoUInt32),
(123647u32 : GoUInt32),
(124928u32 : GoUInt32),
(125124u32 : GoUInt32),
(125127u32 : GoUInt32),
(125142u32 : GoUInt32),
(125184u32 : GoUInt32),
(125259u32 : GoUInt32),
(125264u32 : GoUInt32),
(125273u32 : GoUInt32),
(125278u32 : GoUInt32),
(125279u32 : GoUInt32),
(126065u32 : GoUInt32),
(126132u32 : GoUInt32),
(126209u32 : GoUInt32),
(126269u32 : GoUInt32),
(126464u32 : GoUInt32),
(126500u32 : GoUInt32),
(126503u32 : GoUInt32),
(126523u32 : GoUInt32),
(126530u32 : GoUInt32),
(126530u32 : GoUInt32),
(126535u32 : GoUInt32),
(126548u32 : GoUInt32),
(126551u32 : GoUInt32),
(126564u32 : GoUInt32),
(126567u32 : GoUInt32),
(126619u32 : GoUInt32),
(126625u32 : GoUInt32),
(126651u32 : GoUInt32),
(126704u32 : GoUInt32),
(126705u32 : GoUInt32),
(126976u32 : GoUInt32),
(127019u32 : GoUInt32),
(127024u32 : GoUInt32),
(127123u32 : GoUInt32),
(127136u32 : GoUInt32),
(127150u32 : GoUInt32),
(127153u32 : GoUInt32),
(127221u32 : GoUInt32),
(127232u32 : GoUInt32),
(127405u32 : GoUInt32),
(127462u32 : GoUInt32),
(127490u32 : GoUInt32),
(127504u32 : GoUInt32),
(127547u32 : GoUInt32),
(127552u32 : GoUInt32),
(127560u32 : GoUInt32),
(127568u32 : GoUInt32),
(127569u32 : GoUInt32),
(127584u32 : GoUInt32),
(127589u32 : GoUInt32),
(127744u32 : GoUInt32),
(128727u32 : GoUInt32),
(128736u32 : GoUInt32),
(128748u32 : GoUInt32),
(128752u32 : GoUInt32),
(128764u32 : GoUInt32),
(128768u32 : GoUInt32),
(128883u32 : GoUInt32),
(128896u32 : GoUInt32),
(128984u32 : GoUInt32),
(128992u32 : GoUInt32),
(129003u32 : GoUInt32),
(129024u32 : GoUInt32),
(129035u32 : GoUInt32),
(129040u32 : GoUInt32),
(129095u32 : GoUInt32),
(129104u32 : GoUInt32),
(129113u32 : GoUInt32),
(129120u32 : GoUInt32),
(129159u32 : GoUInt32),
(129168u32 : GoUInt32),
(129197u32 : GoUInt32),
(129200u32 : GoUInt32),
(129201u32 : GoUInt32),
(129280u32 : GoUInt32),
(129619u32 : GoUInt32),
(129632u32 : GoUInt32),
(129645u32 : GoUInt32),
(129648u32 : GoUInt32),
(129652u32 : GoUInt32),
(129656u32 : GoUInt32),
(129658u32 : GoUInt32),
(129664u32 : GoUInt32),
(129670u32 : GoUInt32),
(129680u32 : GoUInt32),
(129704u32 : GoUInt32),
(129712u32 : GoUInt32),
(129718u32 : GoUInt32),
(129728u32 : GoUInt32),
(129730u32 : GoUInt32),
(129744u32 : GoUInt32),
(129750u32 : GoUInt32),
(129792u32 : GoUInt32),
(129994u32 : GoUInt32),
(130032u32 : GoUInt32),
(130041u32 : GoUInt32),
(131072u32 : GoUInt32),
(173789u32 : GoUInt32),
(173824u32 : GoUInt32),
(177972u32 : GoUInt32),
(177984u32 : GoUInt32),
(178205u32 : GoUInt32),
(178208u32 : GoUInt32),
(183969u32 : GoUInt32),
(183984u32 : GoUInt32),
(191456u32 : GoUInt32),
(194560u32 : GoUInt32),
(195101u32 : GoUInt32),
(196608u32 : GoUInt32),
(201546u32 : GoUInt32),
(917760u32 : GoUInt32),
(917999u32 : GoUInt32)) : Slice<GoUInt32>);
/**
    
    
    
**/
private var _isNotPrint32 = (new Slice<GoUInt16>(
0,
0,
(12 : GoUInt16),
(39 : GoUInt16),
(59 : GoUInt16),
(62 : GoUInt16),
(399 : GoUInt16),
(926 : GoUInt16),
(2057 : GoUInt16),
(2102 : GoUInt16),
(2134 : GoUInt16),
(2291 : GoUInt16),
(2564 : GoUInt16),
(2580 : GoUInt16),
(2584 : GoUInt16),
(3711 : GoUInt16),
(3754 : GoUInt16),
(4285 : GoUInt16),
(4405 : GoUInt16),
(4576 : GoUInt16),
(4626 : GoUInt16),
(4743 : GoUInt16),
(4745 : GoUInt16),
(4750 : GoUInt16),
(4766 : GoUInt16),
(4868 : GoUInt16),
(4905 : GoUInt16),
(4913 : GoUInt16),
(4916 : GoUInt16),
(4922 : GoUInt16),
(5212 : GoUInt16),
(6420 : GoUInt16),
(6423 : GoUInt16),
(6454 : GoUInt16),
(7177 : GoUInt16),
(7223 : GoUInt16),
(7336 : GoUInt16),
(7431 : GoUInt16),
(7434 : GoUInt16),
(7483 : GoUInt16),
(7486 : GoUInt16),
(7526 : GoUInt16),
(7529 : GoUInt16),
(7567 : GoUInt16),
(7570 : GoUInt16),
(9327 : GoUInt16),
(27231 : GoUInt16),
(27482 : GoUInt16),
(27490 : GoUInt16),
(54357 : GoUInt16),
(54429 : GoUInt16),
(54445 : GoUInt16),
(54458 : GoUInt16),
(54460 : GoUInt16),
(54468 : GoUInt16),
(54534 : GoUInt16),
(54549 : GoUInt16),
(54557 : GoUInt16),
(54586 : GoUInt16),
(54591 : GoUInt16),
(54597 : GoUInt16),
(54609 : GoUInt16),
(55968 : GoUInt16),
(57351 : GoUInt16),
(57378 : GoUInt16),
(57381 : GoUInt16),
(60932 : GoUInt16),
(60960 : GoUInt16),
(60963 : GoUInt16),
(60968 : GoUInt16),
(60979 : GoUInt16),
(60984 : GoUInt16),
(60986 : GoUInt16),
(61000 : GoUInt16),
(61002 : GoUInt16),
(61004 : GoUInt16),
(61008 : GoUInt16),
(61011 : GoUInt16),
(61016 : GoUInt16),
(61018 : GoUInt16),
(61020 : GoUInt16),
(61022 : GoUInt16),
(61024 : GoUInt16),
(61027 : GoUInt16),
(61035 : GoUInt16),
(61043 : GoUInt16),
(61048 : GoUInt16),
(61053 : GoUInt16),
(61055 : GoUInt16),
(61066 : GoUInt16),
(61092 : GoUInt16),
(61098 : GoUInt16),
(61632 : GoUInt16),
(61648 : GoUInt16),
(63865 : GoUInt16),
(63948 : GoUInt16),
(64403 : GoUInt16)) : Slice<GoUInt16>);
/**
    // isGraphic lists the graphic runes not matched by IsPrint.
    
    
**/
private var _isGraphic = (new Slice<GoUInt16>(
0,
0,
(160 : GoUInt16),
(5760 : GoUInt16),
(8192 : GoUInt16),
(8193 : GoUInt16),
(8194 : GoUInt16),
(8195 : GoUInt16),
(8196 : GoUInt16),
(8197 : GoUInt16),
(8198 : GoUInt16),
(8199 : GoUInt16),
(8200 : GoUInt16),
(8201 : GoUInt16),
(8202 : GoUInt16),
(8239 : GoUInt16),
(8287 : GoUInt16),
(12288 : GoUInt16)) : Slice<GoUInt16>);
/**
    
    
    
**/
var bitSizeError = _bitSizeError;
/**
    
    
    
**/
var baseError = _baseError;
/**
    
    
    
**/
private final _fnParseComplex = ("ParseComplex" : GoString);
/**
    
    
    
**/
private final _fnParseFloat = ("ParseFloat" : GoString);
/**
    
    
    
**/
private final _intSize = (32i64 : GoUInt64);
/**
    // IntSize is the size in bits of an int or uint value.
    
    
**/
final intSize = (32i64 : GoUInt64);
/**
    
    
    
**/
private final _maxUint64 = (-1i64 : GoUInt64);
/**
    // Maximum shift that we can do in one pass without overflow.
    // A uint has 32 or 64 bits, and we have to be able to accommodate 9<<k.
    
    
**/
private final _uintSize = (32i64 : GoUInt64);
/**
    
    
    
**/
private final _maxShift = (28i64 : GoUInt64);
/**
    // detailedPowersOfTen{Min,Max}Exp10 is the power of 10 represented by the
    // first and last rows of detailedPowersOfTen. Both bounds are inclusive.
    
    
**/
private final _detailedPowersOfTenMinExp10 = (0i64 : GoUInt64);
/**
    // detailedPowersOfTen{Min,Max}Exp10 is the power of 10 represented by the
    // first and last rows of detailedPowersOfTen. Both bounds are inclusive.
    
    
**/
private final _detailedPowersOfTenMaxExp10 = (347i64 : GoUInt64);
/**
    
    
    // enable fast path for small integers
**/
private final _fastSmalls = true;
/**
    
    
    
**/
private final _nSmalls = (100i64 : GoUInt64);
/**
    
    
    
**/
private final _smallsString = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString);
/**
    
    
    
**/
private final _host32bit = true;
/**
    
    
    
**/
private final _digits = ("0123456789abcdefghijklmnopqrstuvwxyz" : GoString);
/**
    
    
    
**/
private final _lowerhex = ("0123456789abcdef" : GoString);
/**
    
    
    
**/
private final _upperhex = ("0123456789ABCDEF" : GoString);
/**
    // A NumError records a failed conversion.
    
    
**/
@:structInit @:using(stdgo.strconv.Strconv.NumError_static_extension) class NumError {
    public var func : GoString = "";
    public var num : GoString = "";
    public var err : Error = (null : Error);
    public function new(?func:GoString, ?num:GoString, ?err:Error) {
        if (func != null) this.func = func;
        if (num != null) this.num = num;
        if (err != null) this.err = err;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new NumError(func, num, err);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.strconv.Strconv.T_decimal_static_extension) class T_decimal {
    public var _d : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 800) (0 : GoUInt8)]);
    public var _nd : GoInt = 0;
    public var _dp : GoInt = 0;
    public var _neg : Bool = false;
    public var _trunc : Bool = false;
    public function new(?_d:GoArray<GoUInt8>, ?_nd:GoInt, ?_dp:GoInt, ?_neg:Bool, ?_trunc:Bool) {
        if (_d != null) this._d = _d;
        if (_nd != null) this._nd = _nd;
        if (_dp != null) this._dp = _dp;
        if (_neg != null) this._neg = _neg;
        if (_trunc != null) this._trunc = _trunc;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_decimal(_d, _nd, _dp, _neg, _trunc);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_leftCheat {
    public var _delta : GoInt = 0;
    public var _cutoff : GoString = "";
    public function new(?_delta:GoInt, ?_cutoff:GoString) {
        if (_delta != null) this._delta = _delta;
        if (_cutoff != null) this._cutoff = _cutoff;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_leftCheat(_delta, _cutoff);
    }
}
/**
    // TODO: move elsewhere?
    
    
**/
@:structInit @:private class T_floatInfo {
    public var _mantbits : GoUInt = 0;
    public var _expbits : GoUInt = 0;
    public var _bias : GoInt = 0;
    public function new(?_mantbits:GoUInt, ?_expbits:GoUInt, ?_bias:GoInt) {
        if (_mantbits != null) this._mantbits = _mantbits;
        if (_expbits != null) this._expbits = _expbits;
        if (_bias != null) this._bias = _bias;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_floatInfo(_mantbits, _expbits, _bias);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_decimalSlice {
    public var _d : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public var _nd : GoInt = 0;
    public var _dp : GoInt = 0;
    public function new(?_d:Slice<GoUInt8>, ?_nd:GoInt, ?_dp:GoInt) {
        if (_d != null) this._d = _d;
        if (_nd != null) this._nd = _nd;
        if (_dp != null) this._dp = _dp;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_decimalSlice(_d, _nd, _dp);
    }
}
/**
    // ParseBool returns the boolean value represented by the string.
    // It accepts 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False.
    // Any other value returns an error.
**/
function parseBool(_str:GoString):{ var _0 : Bool; var _1 : Error; } {
        {
            final __value__ = _str;
            if (__value__ == (("1" : GoString)) || __value__ == (("t" : GoString)) || __value__ == (("T" : GoString)) || __value__ == (("true" : GoString)) || __value__ == (("TRUE" : GoString)) || __value__ == (("True" : GoString))) {
                return { _0 : true, _1 : (null : Error) };
            } else if (__value__ == (("0" : GoString)) || __value__ == (("f" : GoString)) || __value__ == (("F" : GoString)) || __value__ == (("false" : GoString)) || __value__ == (("FALSE" : GoString)) || __value__ == (("False" : GoString))) {
                return { _0 : false, _1 : (null : Error) };
            };
        };
        return { _0 : false, _1 : Go.asInterface(_syntaxError(("ParseBool" : GoString), _str)) };
    }
/**
    // FormatBool returns "true" or "false" according to the value of b.
**/
function formatBool(_b:Bool):GoString {
        if (_b) {
            return ("true" : GoString);
        };
        return ("false" : GoString);
    }
/**
    // AppendBool appends "true" or "false", according to the value of b,
    // to dst and returns the extended buffer.
**/
function appendBool(_dst:Slice<GoByte>, _b:Bool):Slice<GoByte> {
        if (_b) {
            return (_dst.__append__(...("true" : GoString).__toArray__()));
        };
        return (_dst.__append__(...("false" : GoString).__toArray__()));
    }
/**
    // convErr splits an error returned by parseFloatPrefix
    // into a syntax or range error for ParseComplex.
**/
private function _convErr(_err:Error, _s:GoString):{ var _0 : Error; var _1 : Error; } {
        var _syntax:Error = (null : Error), _range_:Error = (null : Error);
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_err) : Ref<NumError>)) : Ref<NumError>), ok : true };
            } catch(_) {
                { value : (null : Ref<stdgo.strconv.Strconv.NumError>), ok : false };
            }, _x = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _x.func = ("ParseComplex" : GoString);
                _x.num = _cloneString(_s);
                if (Go.toInterface(_x.err) == (Go.toInterface(errRange))) {
                    return { _0 : (null : Error), _1 : Go.asInterface(_x) };
                };
            };
        };
        return { _0 : _err, _1 : (null : Error) };
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
function parseComplex(_s:GoString, _bitSize:GoInt):{ var _0 : GoComplex128; var _1 : Error; } {
        var _size:GoInt = (64 : GoInt);
        if (_bitSize == ((64 : GoInt))) {
            _size = (32 : GoInt);
        };
        var _orig:GoString = _s;
        if (((_s.length >= (2 : GoInt)) && (_s[(0 : GoInt)] == (40 : GoUInt8))) && (_s[((_s.length) - (1 : GoInt) : GoInt)] == (41 : GoUInt8))) {
            _s = (_s.__slice__((1 : GoInt), (_s.length) - (1 : GoInt)) : GoString);
        };
        var _pending:Error = (null : Error);
        var __tmp__ = _parseFloatPrefix(_s, _size), _re:GoFloat64 = __tmp__._0, _n:GoInt = __tmp__._1, _err:Error = __tmp__._2;
        if (_err != null) {
            {
                var __tmp__ = _convErr(_err, _orig);
                _err = __tmp__._0;
                _pending = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((0f64 : GoFloat64) + new GoComplex128(0f64, 0f64)), _1 : _err };
            };
        };
        _s = (_s.__slice__(_n) : GoString);
        if ((_s.length) == ((0 : GoInt))) {
            return { _0 : new GoComplex128(_re, (0 : GoFloat64)), _1 : _pending };
        };
        {
            var __switchIndex__ = -1;
            while (true) {
                {
                    final __value__ = _s[(0 : GoInt)];
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (43 : GoUInt8)))) {
                        if ((_s.length > (1 : GoInt)) && (_s[(1 : GoInt)] != (43 : GoUInt8))) {
                            _s = (_s.__slice__((1 : GoInt)) : GoString);
                        };
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (45 : GoUInt8)))) {
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (105 : GoUInt8)))) {
                        if ((_s.length) == ((1 : GoInt))) {
                            return { _0 : new GoComplex128((0 : GoFloat64), _re), _1 : _pending };
                        };
                        @:fallthrough {
                            __switchIndex__ = 3;
                            continue;
                        };
                        break;
                    } else {
                        return { _0 : ((0f64 : GoFloat64) + new GoComplex128(0f64, 0f64)), _1 : Go.asInterface(_syntaxError(("ParseComplex" : GoString), _orig)) };
                        break;
                    };
                };
                break;
            };
        };
        var __tmp__ = _parseFloatPrefix(_s, _size), _im:GoFloat64 = __tmp__._0, _n:GoInt = __tmp__._1, _err:Error = __tmp__._2;
        if (_err != null) {
            {
                var __tmp__ = _convErr(_err, _orig);
                _err = __tmp__._0;
                _pending = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((0f64 : GoFloat64) + new GoComplex128(0f64, 0f64)), _1 : _err };
            };
        };
        _s = (_s.__slice__(_n) : GoString);
        if (_s != (("i" : GoString))) {
            return { _0 : ((0f64 : GoFloat64) + new GoComplex128(0f64, 0f64)), _1 : Go.asInterface(_syntaxError(("ParseComplex" : GoString), _orig)) };
        };
        return { _0 : new GoComplex128(_re, _im), _1 : _pending };
    }
/**
    // commonPrefixLenIgnoreCase returns the length of the common
    // prefix of s and prefix, with the character case of s ignored.
    // The prefix argument must be all lower-case.
**/
private function _commonPrefixLenIgnoreCase(_s:GoString, _prefix:GoString):GoInt {
        var _n:GoInt = (_prefix.length);
        if (_n > (_s.length)) {
            _n = (_s.length);
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                var _c:GoUInt8 = _s[(_i : GoInt)];
                if (((65 : GoUInt8) <= _c) && (_c <= (90 : GoUInt8))) {
                    _c = _c + ((32 : GoUInt8));
                };
                if (_c != (_prefix[(_i : GoInt)])) {
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
private function _special(_s:GoString):{ var _0 : GoFloat64; var _1 : GoInt; var _2 : Bool; } {
        var _f:GoFloat64 = (0 : GoFloat64), _n:GoInt = (0 : GoInt), _ok:Bool = false;
        if ((_s.length) == ((0 : GoInt))) {
            return { _0 : (0 : GoFloat64), _1 : (0 : GoInt), _2 : false };
        };
        var _sign:GoInt = (1 : GoInt);
        var _nsign:GoInt = (0 : GoInt);
        {
            var __switchIndex__ = -1;
            while (true) {
                {
                    final __value__ = _s[(0 : GoInt)];
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == ((43 : GoUInt8)) || __value__ == ((45 : GoUInt8))))) {
                        if (_s[(0 : GoInt)] == ((45 : GoUInt8))) {
                            _sign = (-1 : GoInt);
                        };
                        _nsign = (1 : GoInt);
                        _s = (_s.__slice__((1 : GoInt)) : GoString);
                        @:fallthrough {
                            __switchIndex__ = 1;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == ((105 : GoUInt8)) || __value__ == ((73 : GoUInt8))))) {
                        var _n:GoInt = _commonPrefixLenIgnoreCase(_s, ("infinity" : GoString));
                        if (((3 : GoInt) < _n) && (_n < (8 : GoInt))) {
                            _n = (3 : GoInt);
                        };
                        if ((_n == (3 : GoInt)) || (_n == (8 : GoInt))) {
                            return { _0 : stdgo.math.Math.inf(_sign), _1 : _nsign + _n, _2 : true };
                        };
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((110 : GoUInt8)) || __value__ == ((78 : GoUInt8))))) {
                        if (_commonPrefixLenIgnoreCase(_s, ("nan" : GoString)) == ((3 : GoInt))) {
                            return { _0 : stdgo.math.Math.naN(), _1 : (3 : GoInt), _2 : true };
                        };
                        break;
                        break;
                    };
                };
                break;
            };
        };
        return { _0 : (0 : GoFloat64), _1 : (0 : GoInt), _2 : false };
    }
/**
    // readFloat reads a decimal or hexadecimal mantissa and exponent from a float
    // string representation in s; the number may be followed by other characters.
    // readFloat reports the number of bytes consumed (i), and whether the number
    // is valid (ok).
**/
private function _readFloat(_s:GoString):{ var _0 : GoUInt64; var _1 : GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : GoInt; var _6 : Bool; } {
        stdgo.internal.Macro.controlFlow({
            var _mantissa:GoUInt64 = (0 : GoUInt64), _exp:GoInt = (0 : GoInt), _neg:Bool = false, _trunc:Bool = false, _hex:Bool = false, _i:GoInt = (0 : GoInt), _ok:Bool = false;
            var _underscores:Bool = false;
            if (_i >= (_s.length)) {
                return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
            };
            if (_s[(_i : GoInt)] == ((43 : GoUInt8))) {
                _i++;
            } else if (_s[(_i : GoInt)] == ((45 : GoUInt8))) {
                _neg = true;
                _i++;
            };
            var _base:GoUInt64 = (10i64 : GoUInt64);
            var _maxMantDigits:GoInt = (19 : GoInt);
            var _expChar:GoUInt8 = ((101 : GoUInt8) : GoByte);
            if ((((_i + (2 : GoInt)) < _s.length) && (_s[(_i : GoInt)] == (48 : GoUInt8))) && (_lower(_s[(_i + (1 : GoInt) : GoInt)]) == (120 : GoUInt8))) {
                _base = (16i64 : GoUInt64);
                _maxMantDigits = (16 : GoInt);
                _i = _i + ((2 : GoInt));
                _expChar = (112 : GoUInt8);
                _hex = true;
            };
            var _sawdot:Bool = false;
            var _sawdigits:Bool = false;
            var _nd:GoInt = (0 : GoInt);
            var _ndMant:GoInt = (0 : GoInt);
            var _dp:GoInt = (0 : GoInt);
            @:label("loop") Go.cfor(_i < (_s.length), _i++, {
                {
                    var _c:GoUInt8 = _s[(_i : GoInt)];
                    {
                        var __continue__ = false;
                        var __switchIndex__ = -1;
                        while (true) {
                            {
                                final __value__ = true;
                                if (__value__ == (_c == (95 : GoUInt8))) {
                                    _underscores = true;
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (_c == (46 : GoUInt8))) {
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
                                } else if (__value__ == (((48 : GoUInt8) <= _c) && (_c <= (57 : GoUInt8)))) {
                                    _sawdigits = true;
                                    if ((_c == (48 : GoUInt8)) && (_nd == (0 : GoInt))) {
                                        _dp--;
                                        {
                                            __continue__ = true;
                                            break;
                                        };
                                    };
                                    _nd++;
                                    if (_ndMant < _maxMantDigits) {
                                        _mantissa = _mantissa * (_base);
                                        _mantissa = _mantissa + ((_c - (48 : GoUInt8) : GoUInt64));
                                        _ndMant++;
                                    } else if (_c != ((48 : GoUInt8))) {
                                        _trunc = true;
                                    };
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (((_base == (16i64 : GoUInt64)) && ((97 : GoUInt8) <= _lower(_c))) && (_lower(_c) <= (102 : GoUInt8)))) {
                                    _sawdigits = true;
                                    _nd++;
                                    if (_ndMant < _maxMantDigits) {
                                        _mantissa = _mantissa * ((16i64 : GoUInt64));
                                        _mantissa = _mantissa + (((_lower(_c) - (97 : GoUInt8)) + (10 : GoUInt8) : GoUInt64));
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
            if (_base == ((16i64 : GoUInt64))) {
                _dp = _dp * ((4 : GoInt));
                _ndMant = _ndMant * ((4 : GoInt));
            };
            if ((_i < _s.length) && (_lower(_s[(_i : GoInt)]) == _expChar)) {
                _i++;
                if (_i >= (_s.length)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                };
                var _esign:GoInt = (1 : GoInt);
                if (_s[(_i : GoInt)] == ((43 : GoUInt8))) {
                    _i++;
                } else if (_s[(_i : GoInt)] == ((45 : GoUInt8))) {
                    _i++;
                    _esign = (-1 : GoInt);
                };
                if (((_i >= _s.length) || (_s[(_i : GoInt)] < (48 : GoUInt8))) || (_s[(_i : GoInt)] > (57 : GoUInt8))) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                };
                var _e:GoInt = (0 : GoInt);
                Go.cfor((_i < _s.length) && ((((48 : GoUInt8) <= _s[(_i : GoInt)]) && (_s[(_i : GoInt)] <= (57 : GoUInt8))) || (_s[(_i : GoInt)] == (95 : GoUInt8))), _i++, {
                    if (_s[(_i : GoInt)] == ((95 : GoUInt8))) {
                        _underscores = true;
                        continue;
                    };
                    if (_e < (10000 : GoInt)) {
                        _e = ((_e * (10 : GoInt)) + (_s[(_i : GoInt)] : GoInt)) - (48 : GoInt);
                    };
                });
                _dp = _dp + (_e * _esign);
            } else if (_base == ((16i64 : GoUInt64))) {
                return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
            };
            if (_mantissa != ((0i64 : GoUInt64))) {
                _exp = _dp - _ndMant;
            };
            if (_underscores && !_underscoreOK((_s.__slice__(0, _i) : GoString))) {
                return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
            };
            _ok = true;
            return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
        });
        throw "controlFlow did not return";
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
private function _atof64exact(_mantissa:GoUInt64, _exp:GoInt, _neg:Bool):{ var _0 : GoFloat64; var _1 : Bool; } {
        var _f:GoFloat64 = (0 : GoFloat64), _ok:Bool = false;
        if (_mantissa >> _float64info._mantbits != ((0i64 : GoUInt64))) {
            return { _0 : _f, _1 : _ok };
        };
        _f = (_mantissa : GoFloat64);
        if (_neg) {
            _f = -_f;
        };
        if (_exp == ((0 : GoInt))) {
            return { _0 : _f, _1 : true };
        } else if ((_exp > (0 : GoInt)) && (_exp <= (37 : GoInt))) {
            if (_exp > (22 : GoInt)) {
                _f = _f * (_float64pow10[(_exp - (22 : GoInt) : GoInt)]);
                _exp = (22 : GoInt);
            };
            if ((_f > (1e+15 : GoFloat64)) || (_f < (-1e+15 : GoFloat64))) {
                return { _0 : _f, _1 : _ok };
            };
            return { _0 : _f * _float64pow10[(_exp : GoInt)], _1 : true };
        } else if ((_exp < (0 : GoInt)) && (_exp >= (-22 : GoInt))) {
            return { _0 : _f / _float64pow10[(-_exp : GoInt)], _1 : true };
        };
        return { _0 : _f, _1 : _ok };
    }
/**
    // If possible to compute mantissa*10^exp to 32-bit float f exactly,
    // entirely in floating-point math, do so, avoiding the machinery above.
**/
private function _atof32exact(_mantissa:GoUInt64, _exp:GoInt, _neg:Bool):{ var _0 : GoFloat32; var _1 : Bool; } {
        var _f:GoFloat32 = (0 : GoFloat32), _ok:Bool = false;
        if (_mantissa >> _float32info._mantbits != ((0i64 : GoUInt64))) {
            return { _0 : _f, _1 : _ok };
        };
        _f = (_mantissa : GoFloat32);
        if (_neg) {
            _f = -_f;
        };
        if (_exp == ((0 : GoInt))) {
            return { _0 : _f, _1 : true };
        } else if ((_exp > (0 : GoInt)) && (_exp <= (17 : GoInt))) {
            if (_exp > (10 : GoInt)) {
                _f = _f * (_float32pow10[(_exp - (10 : GoInt) : GoInt)]);
                _exp = (10 : GoInt);
            };
            if ((_f > (1e+07 : GoFloat64)) || (_f < (-1e+07 : GoFloat64))) {
                return { _0 : _f, _1 : _ok };
            };
            return { _0 : _f * _float32pow10[(_exp : GoInt)], _1 : true };
        } else if ((_exp < (0 : GoInt)) && (_exp >= (-10 : GoInt))) {
            return { _0 : _f / _float32pow10[(-_exp : GoInt)], _1 : true };
        };
        return { _0 : _f, _1 : _ok };
    }
/**
    // atofHex converts the hex floating-point string s
    // to a rounded float32 or float64 value (depending on flt==&float32info or flt==&float64info)
    // and returns it as a float64.
    // The string s has already been parsed into a mantissa, exponent, and sign (neg==true for negative).
    // If trunc is true, trailing non-zero bits have been omitted from the mantissa.
**/
private function _atofHex(_s:GoString, _flt:Ref<T_floatInfo>, _mantissa:GoUInt64, _exp:GoInt, _neg:Bool, _trunc:Bool):{ var _0 : GoFloat64; var _1 : Error; } {
        var _maxExp:GoInt = (((1 : GoInt) << _flt._expbits) + _flt._bias) - (2 : GoInt);
        var _minExp:GoInt = _flt._bias + (1 : GoInt);
        _exp = _exp + ((_flt._mantbits : GoInt));
        while ((_mantissa != (0i64 : GoUInt64)) && ((_mantissa >> (_flt._mantbits + (2u32 : GoUInt))) == (0i64 : GoUInt64))) {
            _mantissa = _mantissa << ((1i64 : GoUInt64));
            _exp--;
        };
        if (_trunc) {
            _mantissa = _mantissa | ((1i64 : GoUInt64));
        };
        while (_mantissa >> (((1u32 : GoUInt) + _flt._mantbits) + (2u32 : GoUInt)) != ((0i64 : GoUInt64))) {
            _mantissa = (_mantissa >> (1i64 : GoUInt64)) | (_mantissa & (1i64 : GoUInt64));
            _exp++;
        };
        while ((_mantissa > (1i64 : GoUInt64)) && (_exp < (_minExp - (2 : GoInt)))) {
            _mantissa = (_mantissa >> (1i64 : GoUInt64)) | (_mantissa & (1i64 : GoUInt64));
            _exp++;
        };
        var _round:GoUInt64 = _mantissa & (3i64 : GoUInt64);
        _mantissa = _mantissa >> ((2i64 : GoUInt64));
        _round = _round | (_mantissa & (1i64 : GoUInt64));
        _exp = _exp + ((2 : GoInt));
        if (_round == ((3i64 : GoUInt64))) {
            _mantissa++;
            if (_mantissa == ((1i64 : GoUInt64) << ((1u32 : GoUInt) + _flt._mantbits))) {
                _mantissa = _mantissa >> ((1i64 : GoUInt64));
                _exp++;
            };
        };
        if (_mantissa >> _flt._mantbits == ((0i64 : GoUInt64))) {
            _exp = _flt._bias;
        };
        var _err:Error = (null : Error);
        if (_exp > _maxExp) {
            _mantissa = (1i64 : GoUInt64) << _flt._mantbits;
            _exp = _maxExp + (1 : GoInt);
            _err = Go.asInterface(_rangeError(("ParseFloat" : GoString), _s));
        };
        var _bits:GoUInt64 = _mantissa & (((1i64 : GoUInt64) << _flt._mantbits) - (1i64 : GoUInt64));
        _bits = _bits | (((_exp - _flt._bias) & (((1 : GoInt) << _flt._expbits) - (1 : GoInt)) : GoUInt64) << _flt._mantbits);
        if (_neg) {
            _bits = _bits | (((1i64 : GoUInt64) << _flt._mantbits) << _flt._expbits);
        };
        if (_flt == ((Go.setRef(_float32info) : Ref<stdgo.strconv.Strconv.T_floatInfo>))) {
            return { _0 : (stdgo.math.Math.float32frombits((_bits : GoUInt32)) : GoFloat64), _1 : _err };
        };
        return { _0 : stdgo.math.Math.float64frombits(_bits), _1 : _err };
    }
private function _atof32(_s:GoString):{ var _0 : GoFloat32; var _1 : GoInt; var _2 : Error; } {
        var _f:GoFloat32 = (0 : GoFloat32), _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        {
            var __tmp__ = _special(_s), _val:GoFloat64 = __tmp__._0, _n:GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                return { _0 : (_val : GoFloat32), _1 : _n, _2 : (null : Error) };
            };
        };
        var __tmp__ = _readFloat(_s), _mantissa:GoUInt64 = __tmp__._0, _exp:GoInt = __tmp__._1, _neg:Bool = __tmp__._2, _trunc:Bool = __tmp__._3, _hex:Bool = __tmp__._4, _n:GoInt = __tmp__._5, _ok:Bool = __tmp__._6;
        if (!_ok) {
            return { _0 : (0 : GoFloat64), _1 : _n, _2 : Go.asInterface(_syntaxError(("ParseFloat" : GoString), _s)) };
        };
        if (_hex) {
            var __tmp__ = _atofHex((_s.__slice__(0, _n) : GoString), (Go.setRef(_float32info) : Ref<stdgo.strconv.Strconv.T_floatInfo>), _mantissa, _exp, _neg, _trunc), _f:GoFloat64 = __tmp__._0, _err:Error = __tmp__._1;
            return { _0 : (_f : GoFloat32), _1 : _n, _2 : _err };
        };
        if (_optimize) {
            if (!_trunc) {
                {
                    var __tmp__ = _atof32exact(_mantissa, _exp, _neg), _f:GoFloat32 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return { _0 : _f, _1 : _n, _2 : (null : Error) };
                    };
                };
            };
            var __tmp__ = _eiselLemire32(_mantissa, _exp, _neg), _f:GoFloat32 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (!_trunc) {
                    return { _0 : _f, _1 : _n, _2 : (null : Error) };
                };
                var __tmp__ = _eiselLemire32(_mantissa + (1i64 : GoUInt64), _exp, _neg), _fUp:GoFloat32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok && (_f == _fUp)) {
                    return { _0 : _f, _1 : _n, _2 : (null : Error) };
                };
            };
        };
        var _d:T_decimal = ({} : stdgo.strconv.Strconv.T_decimal);
        if (!_d._set((_s.__slice__(0, _n) : GoString))) {
            return { _0 : (0 : GoFloat64), _1 : _n, _2 : Go.asInterface(_syntaxError(("ParseFloat" : GoString), _s)) };
        };
        var __tmp__ = _d._floatBits((Go.setRef(_float32info) : Ref<stdgo.strconv.Strconv.T_floatInfo>)), _b:GoUInt64 = __tmp__._0, _ovf:Bool = __tmp__._1;
        _f = stdgo.math.Math.float32frombits((_b : GoUInt32));
        if (_ovf) {
            _err = Go.asInterface(_rangeError(("ParseFloat" : GoString), _s));
        };
        return { _0 : _f, _1 : _n, _2 : _err };
    }
private function _atof64(_s:GoString):{ var _0 : GoFloat64; var _1 : GoInt; var _2 : Error; } {
        var _f:GoFloat64 = (0 : GoFloat64), _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        {
            var __tmp__ = _special(_s), _val:GoFloat64 = __tmp__._0, _n:GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                return { _0 : _val, _1 : _n, _2 : (null : Error) };
            };
        };
        var __tmp__ = _readFloat(_s), _mantissa:GoUInt64 = __tmp__._0, _exp:GoInt = __tmp__._1, _neg:Bool = __tmp__._2, _trunc:Bool = __tmp__._3, _hex:Bool = __tmp__._4, _n:GoInt = __tmp__._5, _ok:Bool = __tmp__._6;
        if (!_ok) {
            return { _0 : (0 : GoFloat64), _1 : _n, _2 : Go.asInterface(_syntaxError(("ParseFloat" : GoString), _s)) };
        };
        if (_hex) {
            var __tmp__ = _atofHex((_s.__slice__(0, _n) : GoString), (Go.setRef(_float64info) : Ref<stdgo.strconv.Strconv.T_floatInfo>), _mantissa, _exp, _neg, _trunc), _f:GoFloat64 = __tmp__._0, _err:Error = __tmp__._1;
            return { _0 : _f, _1 : _n, _2 : _err };
        };
        if (_optimize) {
            if (!_trunc) {
                {
                    var __tmp__ = _atof64exact(_mantissa, _exp, _neg), _f:GoFloat64 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return { _0 : _f, _1 : _n, _2 : (null : Error) };
                    };
                };
            };
            var __tmp__ = _eiselLemire64(_mantissa, _exp, _neg), _f:GoFloat64 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (!_trunc) {
                    return { _0 : _f, _1 : _n, _2 : (null : Error) };
                };
                var __tmp__ = _eiselLemire64(_mantissa + (1i64 : GoUInt64), _exp, _neg), _fUp:GoFloat64 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok && (_f == _fUp)) {
                    return { _0 : _f, _1 : _n, _2 : (null : Error) };
                };
            };
        };
        var _d:T_decimal = ({} : stdgo.strconv.Strconv.T_decimal);
        if (!_d._set((_s.__slice__(0, _n) : GoString))) {
            return { _0 : (0 : GoFloat64), _1 : _n, _2 : Go.asInterface(_syntaxError(("ParseFloat" : GoString), _s)) };
        };
        var __tmp__ = _d._floatBits((Go.setRef(_float64info) : Ref<stdgo.strconv.Strconv.T_floatInfo>)), _b:GoUInt64 = __tmp__._0, _ovf:Bool = __tmp__._1;
        _f = stdgo.math.Math.float64frombits(_b);
        if (_ovf) {
            _err = Go.asInterface(_rangeError(("ParseFloat" : GoString), _s));
        };
        return { _0 : _f, _1 : _n, _2 : _err };
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
function parseFloat(_s:GoString, _bitSize:GoInt):{ var _0 : GoFloat64; var _1 : Error; } {
        var __tmp__ = _parseFloatPrefix(_s, _bitSize), _f:GoFloat64 = __tmp__._0, _n:GoInt = __tmp__._1, _err:Error = __tmp__._2;
        if ((_n != (_s.length)) && ((_err == null) || (Go.toInterface((Go.typeAssert((Go.toInterface(_err) : Ref<NumError>)) : Ref<NumError>).err) != Go.toInterface(errSyntax)))) {
            return { _0 : (0 : GoFloat64), _1 : Go.asInterface(_syntaxError(("ParseFloat" : GoString), _s)) };
        };
        return { _0 : _f, _1 : _err };
    }
private function _parseFloatPrefix(_s:GoString, _bitSize:GoInt):{ var _0 : GoFloat64; var _1 : GoInt; var _2 : Error; } {
        if (_bitSize == ((32 : GoInt))) {
            var __tmp__ = _atof32(_s), _f:GoFloat32 = __tmp__._0, _n:GoInt = __tmp__._1, _err:Error = __tmp__._2;
            return { _0 : (_f : GoFloat64), _1 : _n, _2 : _err };
        };
        return _atof64(_s);
    }
/**
    // lower(c) is a lower-case letter if and only if
    // c is either that lower-case letter or the equivalent upper-case letter.
    // Instead of writing c == 'x' || c == 'X' one can write lower(c) == 'x'.
    // Note that lower of non-letters can produce other non-letters.
**/
private function _lower(_c:GoByte):GoByte {
        return _c | (32 : GoUInt8);
    }
/**
    // cloneString returns a string copy of x.
    //
    // All ParseXXX functions allow the input string to escape to the error value.
    // This hurts strconv.ParseXXX(string(b)) calls where b is []byte since
    // the conversion from []byte must allocate a string on the heap.
    // If we assume errors are infrequent, then we can avoid escaping the input
    // back to the output by copying it first. This allows the compiler to call
    // strconv.ParseXXX without a heap allocation for most []byte to string
    // conversions, since it can now prove that the string cannot escape Parse.
    //
    // TODO: Use strings.Clone instead? However, we cannot depend on "strings"
    // since it incurs a transitive dependency on "unicode".
    // Either move strings.Clone to an internal/bytealg or make the
    // "strings" to "unicode" dependency lighter (see https://go.dev/issue/54098).
**/
private function _cloneString(_x:GoString):GoString {
        return ((_x : Slice<GoByte>) : GoString);
    }
private function _syntaxError(_fn:GoString, _str:GoString):Ref<NumError> {
        return (Go.setRef((new NumError(_fn, _cloneString(_str), errSyntax) : NumError)) : Ref<stdgo.strconv.Strconv.NumError>);
    }
private function _rangeError(_fn:GoString, _str:GoString):Ref<NumError> {
        return (Go.setRef((new NumError(_fn, _cloneString(_str), errRange) : NumError)) : Ref<stdgo.strconv.Strconv.NumError>);
    }
private function _baseError(_fn:GoString, _str:GoString, _base:GoInt):Ref<NumError> {
        return (Go.setRef((new NumError(_fn, _cloneString(_str), stdgo.errors.Errors.new_(("invalid base " : GoString) + itoa(_base))) : NumError)) : Ref<stdgo.strconv.Strconv.NumError>);
    }
private function _bitSizeError(_fn:GoString, _str:GoString, _bitSize:GoInt):Ref<NumError> {
        return (Go.setRef((new NumError(_fn, _cloneString(_str), stdgo.errors.Errors.new_(("invalid bit size " : GoString) + itoa(_bitSize))) : NumError)) : Ref<stdgo.strconv.Strconv.NumError>);
    }
/**
    // ParseUint is like ParseInt but for unsigned numbers.
    //
    // A sign prefix is not permitted.
**/
function parseUint(_s:GoString, _base:GoInt, _bitSize:GoInt):{ var _0 : GoUInt64; var _1 : Error; } {
        {};
        if (_s == (Go.str())) {
            return { _0 : (0i64 : GoUInt64), _1 : Go.asInterface(_syntaxError(("ParseUint" : GoString), _s)) };
        };
        var _base0:Bool = _base == ((0 : GoInt));
        var _s0:GoString = _s;
        if (((2 : GoInt) <= _base) && (_base <= (36 : GoInt))) {} else if (_base == ((0 : GoInt))) {
            _base = (10 : GoInt);
            if (_s[(0 : GoInt)] == ((48 : GoUInt8))) {
                if ((_s.length >= (3 : GoInt)) && (_lower(_s[(1 : GoInt)]) == (98 : GoUInt8))) {
                    _base = (2 : GoInt);
                    _s = (_s.__slice__((2 : GoInt)) : GoString);
                } else if ((_s.length >= (3 : GoInt)) && (_lower(_s[(1 : GoInt)]) == (111 : GoUInt8))) {
                    _base = (8 : GoInt);
                    _s = (_s.__slice__((2 : GoInt)) : GoString);
                } else if ((_s.length >= (3 : GoInt)) && (_lower(_s[(1 : GoInt)]) == (120 : GoUInt8))) {
                    _base = (16 : GoInt);
                    _s = (_s.__slice__((2 : GoInt)) : GoString);
                } else {
                    _base = (8 : GoInt);
                    _s = (_s.__slice__((1 : GoInt)) : GoString);
                };
            };
        } else {
            return { _0 : (0i64 : GoUInt64), _1 : Go.asInterface(_baseError(("ParseUint" : GoString), _s0, _base)) };
        };
        if (_bitSize == ((0 : GoInt))) {
            _bitSize = (32 : GoInt);
        } else if ((_bitSize < (0 : GoInt)) || (_bitSize > (64 : GoInt))) {
            return { _0 : (0i64 : GoUInt64), _1 : Go.asInterface(_bitSizeError(("ParseUint" : GoString), _s0, _bitSize)) };
        };
        var _cutoff:GoUInt64 = (0 : GoUInt64);
        {
            final __value__ = _base;
            if (__value__ == ((10 : GoInt))) {
                _cutoff = (1844674407370955162i64 : GoUInt64);
            } else if (__value__ == ((16 : GoInt))) {
                _cutoff = (1152921504606846976i64 : GoUInt64);
            } else {
                _cutoff = ((-1i64 : GoUInt64) / (_base : GoUInt64)) + (1i64 : GoUInt64);
            };
        };
        var _maxVal:GoUInt64 = (((1i64 : GoUInt64) : GoUInt64) << (_bitSize : GoUInt)) - (1i64 : GoUInt64);
        var _underscores:Bool = false;
        var _n:GoUInt64 = (0 : GoUInt64);
        for (__0 => _c in (_s : Slice<GoByte>)) {
            var _d:GoByte = (0 : GoUInt8);
            if ((_c == (95 : GoUInt8)) && _base0) {
                _underscores = true;
                continue;
            } else if (((48 : GoUInt8) <= _c) && (_c <= (57 : GoUInt8))) {
                _d = _c - (48 : GoUInt8);
            } else if (((97 : GoUInt8) <= _lower(_c)) && (_lower(_c) <= (122 : GoUInt8))) {
                _d = (_lower(_c) - (97 : GoUInt8)) + (10 : GoUInt8);
            } else {
                return { _0 : (0i64 : GoUInt64), _1 : Go.asInterface(_syntaxError(("ParseUint" : GoString), _s0)) };
            };
            if (_d >= (_base : GoByte)) {
                return { _0 : (0i64 : GoUInt64), _1 : Go.asInterface(_syntaxError(("ParseUint" : GoString), _s0)) };
            };
            if (_n >= _cutoff) {
                return { _0 : _maxVal, _1 : Go.asInterface(_rangeError(("ParseUint" : GoString), _s0)) };
            };
            _n = _n * ((_base : GoUInt64));
            var _n1:GoUInt64 = _n + (_d : GoUInt64);
            if ((_n1 < _n) || (_n1 > _maxVal)) {
                return { _0 : _maxVal, _1 : Go.asInterface(_rangeError(("ParseUint" : GoString), _s0)) };
            };
            _n = _n1;
        };
        if (_underscores && !_underscoreOK(_s0)) {
            return { _0 : (0i64 : GoUInt64), _1 : Go.asInterface(_syntaxError(("ParseUint" : GoString), _s0)) };
        };
        return { _0 : _n, _1 : (null : Error) };
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
function parseInt(_s:GoString, _base:GoInt, _bitSize:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        var _i:GoInt64 = (0 : GoInt64), _err:Error = (null : Error);
        {};
        if (_s == (Go.str())) {
            return { _0 : (0i64 : GoInt64), _1 : Go.asInterface(_syntaxError(("ParseInt" : GoString), _s)) };
        };
        var _s0:GoString = _s;
        var _neg:Bool = false;
        if (_s[(0 : GoInt)] == ((43 : GoUInt8))) {
            _s = (_s.__slice__((1 : GoInt)) : GoString);
        } else if (_s[(0 : GoInt)] == ((45 : GoUInt8))) {
            _neg = true;
            _s = (_s.__slice__((1 : GoInt)) : GoString);
        };
        var _un:GoUInt64 = (0 : GoUInt64);
        {
            var __tmp__ = parseUint(_s, _base, _bitSize);
            _un = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_err != null) && (Go.toInterface((Go.typeAssert((Go.toInterface(_err) : Ref<NumError>)) : Ref<NumError>).err) != Go.toInterface(errRange))) {
            (Go.typeAssert((Go.toInterface(_err) : Ref<NumError>)) : Ref<NumError>).func = ("ParseInt" : GoString);
            (Go.typeAssert((Go.toInterface(_err) : Ref<NumError>)) : Ref<NumError>).num = _cloneString(_s0);
            return { _0 : (0i64 : GoInt64), _1 : _err };
        };
        if (_bitSize == ((0 : GoInt))) {
            _bitSize = (32 : GoInt);
        };
        var _cutoff:GoUInt64 = ((1i64 : GoUInt64) << (_bitSize - (1 : GoInt) : GoUInt) : GoUInt64);
        if (!_neg && (_un >= _cutoff)) {
            return { _0 : (_cutoff - (1i64 : GoUInt64) : GoInt64), _1 : Go.asInterface(_rangeError(("ParseInt" : GoString), _s0)) };
        };
        if (_neg && (_un > _cutoff)) {
            return { _0 : -(_cutoff : GoInt64), _1 : Go.asInterface(_rangeError(("ParseInt" : GoString), _s0)) };
        };
        var _n:GoInt64 = (_un : GoInt64);
        if (_neg) {
            _n = -_n;
        };
        return { _0 : _n, _1 : (null : Error) };
    }
/**
    // Atoi is equivalent to ParseInt(s, 10, 0), converted to type int.
**/
function atoi(_s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        {};
        var _sLen:GoInt = (_s.length);
        if ((true && (((0 : GoInt) < _sLen) && (_sLen < (10 : GoInt)))) || (false && (((0 : GoInt) < _sLen) && (_sLen < (19 : GoInt))))) {
            var _s0:GoString = _s;
            if ((_s[(0 : GoInt)] == (45 : GoUInt8)) || (_s[(0 : GoInt)] == (43 : GoUInt8))) {
                _s = (_s.__slice__((1 : GoInt)) : GoString);
                if ((_s.length) < (1 : GoInt)) {
                    return { _0 : (0 : GoInt), _1 : Go.asInterface(_syntaxError(("Atoi" : GoString), _s0)) };
                };
            };
            var _n:GoInt = (0 : GoInt);
            for (__0 => _ch in (_s : Slice<GoByte>)) {
                _ch = _ch - ((48 : GoUInt8));
                if (_ch > (9 : GoUInt8)) {
                    return { _0 : (0 : GoInt), _1 : Go.asInterface(_syntaxError(("Atoi" : GoString), _s0)) };
                };
                _n = (_n * (10 : GoInt)) + (_ch : GoInt);
            };
            if (_s0[(0 : GoInt)] == ((45 : GoUInt8))) {
                _n = -_n;
            };
            return { _0 : _n, _1 : (null : Error) };
        };
        var __tmp__ = parseInt(_s, (10 : GoInt), (0 : GoInt)), _i64:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_err) : Ref<NumError>)) : Ref<NumError>), ok : true };
            } catch(_) {
                { value : (null : Ref<stdgo.strconv.Strconv.NumError>), ok : false };
            }, _nerr = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _nerr.func = ("Atoi" : GoString);
            };
        };
        return { _0 : (_i64 : GoInt), _1 : _err };
    }
/**
    // underscoreOK reports whether the underscores in s are allowed.
    // Checking them in this one function lets all the parsers skip over them simply.
    // Underscore must appear only between digits or between a base prefix and a digit.
**/
private function _underscoreOK(_s:GoString):Bool {
        var _saw:GoInt32 = (94 : GoInt32);
        var _i:GoInt = (0 : GoInt);
        if ((_s.length >= (1 : GoInt)) && ((_s[(0 : GoInt)] == (45 : GoUInt8)) || (_s[(0 : GoInt)] == (43 : GoUInt8)))) {
            _s = (_s.__slice__((1 : GoInt)) : GoString);
        };
        var _hex:Bool = false;
        if (((_s.length >= (2 : GoInt)) && (_s[(0 : GoInt)] == (48 : GoUInt8))) && (((_lower(_s[(1 : GoInt)]) == (98 : GoUInt8)) || (_lower(_s[(1 : GoInt)]) == (111 : GoUInt8))) || (_lower(_s[(1 : GoInt)]) == (120 : GoUInt8)))) {
            _i = (2 : GoInt);
            _saw = (48 : GoInt32);
            _hex = _lower(_s[(1 : GoInt)]) == ((120 : GoUInt8));
        };
        Go.cfor(_i < (_s.length), _i++, {
            if ((((48 : GoUInt8) <= _s[(_i : GoInt)]) && (_s[(_i : GoInt)] <= (57 : GoUInt8))) || ((_hex && ((97 : GoUInt8) <= _lower(_s[(_i : GoInt)]))) && (_lower(_s[(_i : GoInt)]) <= (102 : GoUInt8)))) {
                _saw = (48 : GoInt32);
                continue;
            };
            if (_s[(_i : GoInt)] == ((95 : GoUInt8))) {
                if (_saw != ((48 : GoInt32))) {
                    return false;
                };
                _saw = (95 : GoInt32);
                continue;
            };
            if (_saw == ((95 : GoInt32))) {
                return false;
            };
            _saw = (33 : GoInt32);
        });
        return _saw != ((95 : GoInt32));
    }
/**
    // index returns the index of the first instance of c in s, or -1 if missing.
**/
private function _index(_s:GoString, _c:GoByte):GoInt {
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
            throw Go.toInterface(("invalid bitSize" : GoString));
        };
        _bitSize = _bitSize >> ((1i64 : GoUInt64));
        var _im:GoString = formatFloat(_c.imag, _fmt, _prec, _bitSize);
        if ((_im[(0 : GoInt)] != (43 : GoUInt8)) && (_im[(0 : GoInt)] != (45 : GoUInt8))) {
            _im = ("+" : GoString) + _im;
        };
        return ((("(" : GoString) + formatFloat(_c.real, _fmt, _prec, _bitSize)) + _im) + ("i)" : GoString);
    }
private function _digitZero(_dst:Slice<GoByte>):GoInt {
        for (_i in 0 ... _dst.length.toBasic()) {
            _dst[(_i : GoInt)] = (48 : GoUInt8);
        };
        return (_dst.length);
    }
/**
    // trim trailing zeros from number.
    // (They are meaningless; the decimal point is tracked
    // independent of the number of digits.)
**/
private function _trim(_a:Ref<T_decimal>):Void {
        while ((_a._nd > (0 : GoInt)) && (_a._d[(_a._nd - (1 : GoInt) : GoInt)] == (48 : GoUInt8))) {
            _a._nd--;
        };
        if (_a._nd == ((0 : GoInt))) {
            _a._dp = (0 : GoInt);
        };
    }
/**
    // Binary shift right (/ 2) by k bits.  k <= maxShift to avoid overflow.
**/
private function _rightShift(_a:Ref<T_decimal>, _k:GoUInt):Void {
        var _r:GoInt = (0 : GoInt);
        var _w:GoInt = (0 : GoInt);
        var _n:GoUInt = (0 : GoUInt);
        Go.cfor(_n >> _k == ((0u32 : GoUInt)), _r++, {
            if (_r >= _a._nd) {
                if (_n == ((0u32 : GoUInt))) {
                    _a._nd = (0 : GoInt);
                    return;
                };
                while (_n >> _k == ((0u32 : GoUInt))) {
                    _n = _n * (10u32 : GoUInt);
                    _r++;
                };
                break;
            };
            var _c:GoUInt = (_a._d[(_r : GoInt)] : GoUInt);
            _n = ((_n * (10u32 : GoUInt)) + _c) - (48u32 : GoUInt);
        });
        _a._dp = _a._dp - (_r - (1 : GoInt));
        var _mask:GoUInt = ((1u32 : GoUInt) << _k) - (1u32 : GoUInt);
        Go.cfor(_r < _a._nd, _r++, {
            var _c:GoUInt = (_a._d[(_r : GoInt)] : GoUInt);
            var _dig:GoUInt = _n >> _k;
            _n = _n & (_mask);
            _a._d[(_w : GoInt)] = (_dig + (48u32 : GoUInt) : GoByte);
            _w++;
            _n = ((_n * (10u32 : GoUInt)) + _c) - (48u32 : GoUInt);
        });
        while (_n > (0u32 : GoUInt)) {
            var _dig:GoUInt = _n >> _k;
            _n = _n & (_mask);
            if (_w < (_a._d.length)) {
                _a._d[(_w : GoInt)] = (_dig + (48u32 : GoUInt) : GoByte);
                _w++;
            } else if (_dig > (0u32 : GoUInt)) {
                _a._trunc = true;
            };
            _n = _n * (10u32 : GoUInt);
        };
        _a._nd = _w;
        _trim(_a);
    }
/**
    // Is the leading prefix of b lexicographically less than s?
**/
private function _prefixIsLessThan(_b:Slice<GoByte>, _s:GoString):Bool {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_s.length), _i++, {
                if (_i >= (_b.length)) {
                    return true;
                };
                if (_b[(_i : GoInt)] != (_s[(_i : GoInt)])) {
                    return _b[(_i : GoInt)] < _s[(_i : GoInt)];
                };
            });
        };
        return false;
    }
/**
    // Binary shift left (* 2) by k bits.  k <= maxShift to avoid overflow.
**/
private function _leftShift(_a:Ref<T_decimal>, _k:GoUInt):Void {
        var _delta:GoInt = _leftcheats[(_k : GoInt)]._delta;
        if (_prefixIsLessThan((_a._d.__slice__((0 : GoInt), _a._nd) : Slice<GoUInt8>), _leftcheats[(_k : GoInt)]._cutoff)) {
            _delta--;
        };
        var _r:GoInt = _a._nd;
        var _w:GoInt = _a._nd + _delta;
        var _n:GoUInt = (0 : GoUInt);
        {
            _r--;
            Go.cfor(_r >= (0 : GoInt), _r--, {
                _n = _n + (((_a._d[(_r : GoInt)] : GoUInt) - (48u32 : GoUInt)) << _k);
                var _quo:GoUInt = _n / (10u32 : GoUInt);
                var _rem:GoUInt = _n - ((10u32 : GoUInt) * _quo);
                _w--;
                if (_w < (_a._d.length)) {
                    _a._d[(_w : GoInt)] = (_rem + (48u32 : GoUInt) : GoByte);
                } else if (_rem != ((0u32 : GoUInt))) {
                    _a._trunc = true;
                };
                _n = _quo;
            });
        };
        while (_n > (0u32 : GoUInt)) {
            var _quo:GoUInt = _n / (10u32 : GoUInt);
            var _rem:GoUInt = _n - ((10u32 : GoUInt) * _quo);
            _w--;
            if (_w < (_a._d.length)) {
                _a._d[(_w : GoInt)] = (_rem + (48u32 : GoUInt) : GoByte);
            } else if (_rem != ((0u32 : GoUInt))) {
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
private function _shouldRoundUp(_a:Ref<T_decimal>, _nd:GoInt):Bool {
        if ((_nd < (0 : GoInt)) || (_nd >= _a._nd)) {
            return false;
        };
        if ((_a._d[(_nd : GoInt)] == (53 : GoUInt8)) && ((_nd + (1 : GoInt)) == _a._nd)) {
            if (_a._trunc) {
                return true;
            };
            return (_nd > (0 : GoInt)) && (((_a._d[(_nd - (1 : GoInt) : GoInt)] - (48 : GoUInt8)) % (2 : GoUInt8)) != (0 : GoUInt8));
        };
        return _a._d[(_nd : GoInt)] >= (53 : GoUInt8);
    }
private function _eiselLemire64(_man:GoUInt64, _exp10:GoInt, _neg:Bool):{ var _0 : GoFloat64; var _1 : Bool; } {
        var _f:GoFloat64 = (0 : GoFloat64), _ok:Bool = false;
        if (_man == ((0i64 : GoUInt64))) {
            if (_neg) {
                _f = stdgo.math.Math.float64frombits((-9223372036854775808i64 : GoUInt64));
            };
            return { _0 : _f, _1 : true };
        };
        if ((_exp10 < (-348 : GoInt)) || ((347 : GoInt) < _exp10)) {
            return { _0 : (0 : GoFloat64), _1 : false };
        };
        var _clz:GoInt = stdgo.math.bits.Bits.leadingZeros64(_man);
        _man = _man << ((_clz : GoUInt));
        {};
        var _retExp2:GoUInt64 = (((((217706 : GoInt) * _exp10) >> (16i64 : GoUInt64)) + (64 : GoInt)) + (1023 : GoInt) : GoUInt64) - (_clz : GoUInt64);
        var __tmp__ = stdgo.math.bits.Bits.mul64(_man, _detailedPowersOfTen[(_exp10 - (-348 : GoInt) : GoInt)][(1 : GoInt)]), _xHi:GoUInt64 = __tmp__._0, _xLo:GoUInt64 = __tmp__._1;
        if (((_xHi & (511i64 : GoUInt64)) == (511i64 : GoUInt64)) && ((_xLo + _man) < _man)) {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_man, _detailedPowersOfTen[(_exp10 - (-348 : GoInt) : GoInt)][(0 : GoInt)]), _yHi:GoUInt64 = __tmp__._0, _yLo:GoUInt64 = __tmp__._1;
            var __0:GoUInt64 = _xHi, __1:GoUInt64 = _xLo + _yHi, _mergedLo:GoUInt64 = __1, _mergedHi:GoUInt64 = __0;
            if (_mergedLo < _xLo) {
                _mergedHi++;
            };
            if ((((_mergedHi & (511i64 : GoUInt64)) == (511i64 : GoUInt64)) && ((_mergedLo + (1i64 : GoUInt64)) == (0i64 : GoUInt64))) && ((_yLo + _man) < _man)) {
                return { _0 : (0 : GoFloat64), _1 : false };
            };
            {
                final __tmp__0 = _mergedHi;
                final __tmp__1 = _mergedLo;
                _xHi = __tmp__0;
                _xLo = __tmp__1;
            };
        };
        var _msb:GoUInt64 = _xHi >> (63i64 : GoUInt64);
        var _retMantissa:GoUInt64 = _xHi >> (_msb + (9i64 : GoUInt64));
        _retExp2 = _retExp2 - ((1i64 : GoUInt64) ^ _msb);
        if (((_xLo == (0i64 : GoUInt64)) && ((_xHi & (511i64 : GoUInt64)) == (0i64 : GoUInt64))) && ((_retMantissa & (3i64 : GoUInt64)) == (1i64 : GoUInt64))) {
            return { _0 : (0 : GoFloat64), _1 : false };
        };
        _retMantissa = _retMantissa + (_retMantissa & (1i64 : GoUInt64));
        _retMantissa = _retMantissa >> ((1i64 : GoUInt64));
        if ((_retMantissa >> (53i64 : GoUInt64)) > (0i64 : GoUInt64)) {
            _retMantissa = _retMantissa >> ((1i64 : GoUInt64));
            _retExp2 = _retExp2 + ((1i64 : GoUInt64));
        };
        if ((_retExp2 - (1i64 : GoUInt64)) >= (2046i64 : GoUInt64)) {
            return { _0 : (0 : GoFloat64), _1 : false };
        };
        var _retBits:GoUInt64 = (_retExp2 << (52i64 : GoUInt64)) | (_retMantissa & (4503599627370495i64 : GoUInt64));
        if (_neg) {
            _retBits = _retBits | ((-9223372036854775808i64 : GoUInt64));
        };
        return { _0 : stdgo.math.Math.float64frombits(_retBits), _1 : true };
    }
private function _eiselLemire32(_man:GoUInt64, _exp10:GoInt, _neg:Bool):{ var _0 : GoFloat32; var _1 : Bool; } {
        var _f:GoFloat32 = (0 : GoFloat32), _ok:Bool = false;
        if (_man == ((0i64 : GoUInt64))) {
            if (_neg) {
                _f = stdgo.math.Math.float32frombits((-2147483648u32 : GoUInt32));
            };
            return { _0 : _f, _1 : true };
        };
        if ((_exp10 < (-348 : GoInt)) || ((347 : GoInt) < _exp10)) {
            return { _0 : (0 : GoFloat64), _1 : false };
        };
        var _clz:GoInt = stdgo.math.bits.Bits.leadingZeros64(_man);
        _man = _man << ((_clz : GoUInt));
        {};
        var _retExp2:GoUInt64 = (((((217706 : GoInt) * _exp10) >> (16i64 : GoUInt64)) + (64 : GoInt)) + (127 : GoInt) : GoUInt64) - (_clz : GoUInt64);
        var __tmp__ = stdgo.math.bits.Bits.mul64(_man, _detailedPowersOfTen[(_exp10 - (-348 : GoInt) : GoInt)][(1 : GoInt)]), _xHi:GoUInt64 = __tmp__._0, _xLo:GoUInt64 = __tmp__._1;
        if (((_xHi & (274877906943i64 : GoUInt64)) == (274877906943i64 : GoUInt64)) && ((_xLo + _man) < _man)) {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_man, _detailedPowersOfTen[(_exp10 - (-348 : GoInt) : GoInt)][(0 : GoInt)]), _yHi:GoUInt64 = __tmp__._0, _yLo:GoUInt64 = __tmp__._1;
            var __0:GoUInt64 = _xHi, __1:GoUInt64 = _xLo + _yHi, _mergedLo:GoUInt64 = __1, _mergedHi:GoUInt64 = __0;
            if (_mergedLo < _xLo) {
                _mergedHi++;
            };
            if ((((_mergedHi & (274877906943i64 : GoUInt64)) == (274877906943i64 : GoUInt64)) && ((_mergedLo + (1i64 : GoUInt64)) == (0i64 : GoUInt64))) && ((_yLo + _man) < _man)) {
                return { _0 : (0 : GoFloat64), _1 : false };
            };
            {
                final __tmp__0 = _mergedHi;
                final __tmp__1 = _mergedLo;
                _xHi = __tmp__0;
                _xLo = __tmp__1;
            };
        };
        var _msb:GoUInt64 = _xHi >> (63i64 : GoUInt64);
        var _retMantissa:GoUInt64 = _xHi >> (_msb + (38i64 : GoUInt64));
        _retExp2 = _retExp2 - ((1i64 : GoUInt64) ^ _msb);
        if (((_xLo == (0i64 : GoUInt64)) && ((_xHi & (274877906943i64 : GoUInt64)) == (0i64 : GoUInt64))) && ((_retMantissa & (3i64 : GoUInt64)) == (1i64 : GoUInt64))) {
            return { _0 : (0 : GoFloat64), _1 : false };
        };
        _retMantissa = _retMantissa + (_retMantissa & (1i64 : GoUInt64));
        _retMantissa = _retMantissa >> ((1i64 : GoUInt64));
        if ((_retMantissa >> (24i64 : GoUInt64)) > (0i64 : GoUInt64)) {
            _retMantissa = _retMantissa >> ((1i64 : GoUInt64));
            _retExp2 = _retExp2 + ((1i64 : GoUInt64));
        };
        if ((_retExp2 - (1i64 : GoUInt64)) >= (254i64 : GoUInt64)) {
            return { _0 : (0 : GoFloat64), _1 : false };
        };
        var _retBits:GoUInt64 = (_retExp2 << (23i64 : GoUInt64)) | (_retMantissa & (8388607i64 : GoUInt64));
        if (_neg) {
            _retBits = _retBits | ((2147483648i64 : GoUInt64));
        };
        return { _0 : stdgo.math.Math.float32frombits((_retBits : GoUInt32)), _1 : true };
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
        return (_genericFtoa(new Slice<GoUInt8>((0 : GoInt).toBasic(), _max(_prec + (4 : GoInt), (24 : GoInt)), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]), _f, _fmt, _prec, _bitSize) : GoString);
    }
/**
    // AppendFloat appends the string form of the floating-point number f,
    // as generated by FormatFloat, to dst and returns the extended buffer.
**/
function appendFloat(_dst:Slice<GoByte>, _f:GoFloat64, _fmt:GoByte, _prec:GoInt, _bitSize:GoInt):Slice<GoByte> {
        return _genericFtoa(_dst, _f, _fmt, _prec, _bitSize);
    }
private function _genericFtoa(_dst:Slice<GoByte>, _val:GoFloat64, _fmt:GoByte, _prec:GoInt, _bitSize:GoInt):Slice<GoByte> {
        var _bits:GoUInt64 = (0 : GoUInt64);
        var _flt:Ref<T_floatInfo> = (null : Ref<stdgo.strconv.Strconv.T_floatInfo>);
        {
            final __value__ = _bitSize;
            if (__value__ == ((32 : GoInt))) {
                _bits = (stdgo.math.Math.float32bits((_val : GoFloat32)) : GoUInt64);
                _flt = (Go.setRef(_float32info) : Ref<stdgo.strconv.Strconv.T_floatInfo>);
            } else if (__value__ == ((64 : GoInt))) {
                _bits = stdgo.math.Math.float64bits(_val);
                _flt = (Go.setRef(_float64info) : Ref<stdgo.strconv.Strconv.T_floatInfo>);
            } else {
                throw Go.toInterface(("strconv: illegal AppendFloat/FormatFloat bitSize" : GoString));
            };
        };
        var _neg:Bool = _bits >> (_flt._expbits + _flt._mantbits) != ((0i64 : GoUInt64));
        var _exp:GoInt = (_bits >> _flt._mantbits : GoInt) & (((1 : GoInt) << _flt._expbits) - (1 : GoInt));
        var _mant:GoUInt64 = _bits & ((((1i64 : GoUInt64) : GoUInt64) << _flt._mantbits) - (1i64 : GoUInt64));
        {
            final __value__ = _exp;
            if (__value__ == (((1 : GoInt) << _flt._expbits) - (1 : GoInt))) {
                var _s:GoString = ("" : GoString);
                if (_mant != ((0i64 : GoUInt64))) {
                    _s = ("NaN" : GoString);
                } else if (_neg) {
                    _s = ("-Inf" : GoString);
                } else {
                    _s = ("+Inf" : GoString);
                };
                return (_dst.__append__(..._s.__toArray__()));
            } else if (__value__ == ((0 : GoInt))) {
                _exp++;
            } else {
                _mant = _mant | (((1i64 : GoUInt64) : GoUInt64) << _flt._mantbits);
            };
        };
        _exp = _exp + (_flt._bias);
        if (_fmt == ((98 : GoUInt8))) {
            return _fmtB(_dst, _neg, _mant, _exp, _flt);
        };
        if ((_fmt == (120 : GoUInt8)) || (_fmt == (88 : GoUInt8))) {
            return _fmtX(_dst, _prec, _fmt, _neg, _mant, _exp, _flt);
        };
        if (!_optimize) {
            return _bigFtoa(_dst, _prec, _fmt, _neg, _mant, _exp, _flt);
        };
        var _digs:T_decimalSlice = ({} : stdgo.strconv.Strconv.T_decimalSlice);
        var _ok:Bool = false;
        var _shortest:Bool = _prec < (0 : GoInt);
        if (_shortest) {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) (0 : GoUInt8)]);
            _digs._d = (_buf.__slice__(0) : Slice<GoUInt8>);
            _ryuFtoaShortest((Go.setRef(_digs) : Ref<stdgo.strconv.Strconv.T_decimalSlice>), _mant, _exp - (_flt._mantbits : GoInt), _flt);
            _ok = true;
            {
                final __value__ = _fmt;
                if (__value__ == ((101 : GoUInt8)) || __value__ == ((69 : GoUInt8))) {
                    _prec = _max(_digs._nd - (1 : GoInt), (0 : GoInt));
                } else if (__value__ == ((102 : GoUInt8))) {
                    _prec = _max(_digs._nd - _digs._dp, (0 : GoInt));
                } else if (__value__ == ((103 : GoUInt8)) || __value__ == ((71 : GoUInt8))) {
                    _prec = _digs._nd;
                };
            };
        } else if (_fmt != ((102 : GoUInt8))) {
            var _digits:GoInt = _prec;
            {
                final __value__ = _fmt;
                if (__value__ == ((101 : GoUInt8)) || __value__ == ((69 : GoUInt8))) {
                    _digits++;
                } else if (__value__ == ((103 : GoUInt8)) || __value__ == ((71 : GoUInt8))) {
                    if (_prec == ((0 : GoInt))) {
                        _prec = (1 : GoInt);
                    };
                    _digits = _prec;
                } else {
                    _digits = (1 : GoInt);
                };
            };
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 24) (0 : GoUInt8)]);
            if ((_bitSize == (32 : GoInt)) && (_digits <= (9 : GoInt))) {
                _digs._d = (_buf.__slice__(0) : Slice<GoUInt8>);
                _ryuFtoaFixed32((Go.setRef(_digs) : Ref<stdgo.strconv.Strconv.T_decimalSlice>), (_mant : GoUInt32), _exp - (_flt._mantbits : GoInt), _digits);
                _ok = true;
            } else if (_digits <= (18 : GoInt)) {
                _digs._d = (_buf.__slice__(0) : Slice<GoUInt8>);
                _ryuFtoaFixed64((Go.setRef(_digs) : Ref<stdgo.strconv.Strconv.T_decimalSlice>), _mant, _exp - (_flt._mantbits : GoInt), _digits);
                _ok = true;
            };
        };
        if (!_ok) {
            return _bigFtoa(_dst, _prec, _fmt, _neg, _mant, _exp, _flt);
        };
        return _formatDigits(_dst, _shortest, _neg, _digs?.__copy__(), _prec, _fmt);
    }
/**
    // bigFtoa uses multiprecision computations to format a float.
**/
private function _bigFtoa(_dst:Slice<GoByte>, _prec:GoInt, _fmt:GoByte, _neg:Bool, _mant:GoUInt64, _exp:GoInt, _flt:Ref<T_floatInfo>):Slice<GoByte> {
        var _d = (Go.setRef(({} : stdgo.strconv.Strconv.T_decimal)) : Ref<stdgo.strconv.Strconv.T_decimal>);
        _d.assign(_mant);
        _d.shift(_exp - (_flt._mantbits : GoInt));
        var _digs:T_decimalSlice = ({} : stdgo.strconv.Strconv.T_decimalSlice);
        var _shortest:Bool = _prec < (0 : GoInt);
        if (_shortest) {
            _roundShortest(_d, _mant, _exp, _flt);
            _digs = ({ _d : (_d._d.__slice__(0) : Slice<GoUInt8>), _nd : _d._nd, _dp : _d._dp } : T_decimalSlice);
            {
                final __value__ = _fmt;
                if (__value__ == ((101 : GoUInt8)) || __value__ == ((69 : GoUInt8))) {
                    _prec = _digs._nd - (1 : GoInt);
                } else if (__value__ == ((102 : GoUInt8))) {
                    _prec = _max(_digs._nd - _digs._dp, (0 : GoInt));
                } else if (__value__ == ((103 : GoUInt8)) || __value__ == ((71 : GoUInt8))) {
                    _prec = _digs._nd;
                };
            };
        } else {
            {
                final __value__ = _fmt;
                if (__value__ == ((101 : GoUInt8)) || __value__ == ((69 : GoUInt8))) {
                    _d.round(_prec + (1 : GoInt));
                } else if (__value__ == ((102 : GoUInt8))) {
                    _d.round(_d._dp + _prec);
                } else if (__value__ == ((103 : GoUInt8)) || __value__ == ((71 : GoUInt8))) {
                    if (_prec == ((0 : GoInt))) {
                        _prec = (1 : GoInt);
                    };
                    _d.round(_prec);
                };
            };
            _digs = ({ _d : (_d._d.__slice__(0) : Slice<GoUInt8>), _nd : _d._nd, _dp : _d._dp } : T_decimalSlice);
        };
        return _formatDigits(_dst, _shortest, _neg, _digs?.__copy__(), _prec, _fmt);
    }
private function _formatDigits(_dst:Slice<GoByte>, _shortest:Bool, _neg:Bool, _digs:T_decimalSlice, _prec:GoInt, _fmt:GoByte):Slice<GoByte> {
        {
            final __value__ = _fmt;
            if (__value__ == ((101 : GoUInt8)) || __value__ == ((69 : GoUInt8))) {
                return _fmtE(_dst, _neg, _digs?.__copy__(), _prec, _fmt);
            } else if (__value__ == ((102 : GoUInt8))) {
                return _fmtF(_dst, _neg, _digs?.__copy__(), _prec);
            } else if (__value__ == ((103 : GoUInt8)) || __value__ == ((71 : GoUInt8))) {
                var _eprec:GoInt = _prec;
                if ((_eprec > _digs._nd) && (_digs._nd >= _digs._dp)) {
                    _eprec = _digs._nd;
                };
                if (_shortest) {
                    _eprec = (6 : GoInt);
                };
                var _exp:GoInt = _digs._dp - (1 : GoInt);
                if ((_exp < (-4 : GoInt)) || (_exp >= _eprec)) {
                    if (_prec > _digs._nd) {
                        _prec = _digs._nd;
                    };
                    return _fmtE(_dst, _neg, _digs?.__copy__(), _prec - (1 : GoInt), (_fmt + (101 : GoUInt8)) - (103 : GoUInt8));
                };
                if (_prec > _digs._dp) {
                    _prec = _digs._nd;
                };
                return _fmtF(_dst, _neg, _digs?.__copy__(), _max(_prec - _digs._dp, (0 : GoInt)));
            };
        };
        return (_dst.__append__((37 : GoUInt8), _fmt));
    }
/**
    // roundShortest rounds d (= mant * 2^exp) to the shortest number of digits
    // that will let the original floating point value be precisely reconstructed.
**/
private function _roundShortest(_d:Ref<T_decimal>, _mant:GoUInt64, _exp:GoInt, _flt:Ref<T_floatInfo>):Void {
        if (_mant == ((0i64 : GoUInt64))) {
            _d._nd = (0 : GoInt);
            return;
        };
        var _minexp:GoInt = _flt._bias + (1 : GoInt);
        if ((_exp > _minexp) && (((332 : GoInt) * (_d._dp - _d._nd)) >= ((100 : GoInt) * (_exp - (_flt._mantbits : GoInt))))) {
            return;
        };
        var _upper = (Go.setRef(({} : stdgo.strconv.Strconv.T_decimal)) : Ref<stdgo.strconv.Strconv.T_decimal>);
        _upper.assign((_mant * (2i64 : GoUInt64)) + (1i64 : GoUInt64));
        _upper.shift((_exp - (_flt._mantbits : GoInt)) - (1 : GoInt));
        var _mantlo:GoUInt64 = (0 : GoUInt64);
        var _explo:GoInt = (0 : GoInt);
        if ((_mant > ((1i64 : GoUInt64) << _flt._mantbits)) || (_exp == _minexp)) {
            _mantlo = _mant - (1i64 : GoUInt64);
            _explo = _exp;
        } else {
            _mantlo = (_mant * (2i64 : GoUInt64)) - (1i64 : GoUInt64);
            _explo = _exp - (1 : GoInt);
        };
        var _lower = (Go.setRef(({} : stdgo.strconv.Strconv.T_decimal)) : Ref<stdgo.strconv.Strconv.T_decimal>);
        _lower.assign((_mantlo * (2i64 : GoUInt64)) + (1i64 : GoUInt64));
        _lower.shift((_explo - (_flt._mantbits : GoInt)) - (1 : GoInt));
        var _inclusive:Bool = _mant % (2i64 : GoUInt64) == ((0i64 : GoUInt64));
        var _upperdelta:GoUInt8 = (0 : GoUInt8);
        {
            var _ui:GoInt = (0 : GoInt);
            Go.cfor(true, _ui++, {
                var _mi:GoInt = (_ui - _upper._dp) + _d._dp;
                if (_mi >= _d._nd) {
                    break;
                };
                var _li:GoInt = (_ui - _upper._dp) + _lower._dp;
                var _l:GoUInt8 = ((48 : GoUInt8) : GoByte);
                if ((_li >= (0 : GoInt)) && (_li < _lower._nd)) {
                    _l = _lower._d[(_li : GoInt)];
                };
                var _m:GoUInt8 = ((48 : GoUInt8) : GoByte);
                if (_mi >= (0 : GoInt)) {
                    _m = _d._d[(_mi : GoInt)];
                };
                var _u:GoUInt8 = ((48 : GoUInt8) : GoByte);
                if (_ui < _upper._nd) {
                    _u = _upper._d[(_ui : GoInt)];
                };
                var _okdown:Bool = (_l != _m) || (_inclusive && ((_li + (1 : GoInt)) == _lower._nd));
                if ((_upperdelta == (0 : GoUInt8)) && ((_m + (1 : GoUInt8)) < _u)) {
                    _upperdelta = (2 : GoUInt8);
                } else if ((_upperdelta == (0 : GoUInt8)) && (_m != _u)) {
                    _upperdelta = (1 : GoUInt8);
                } else if ((_upperdelta == (1 : GoUInt8)) && ((_m != (57 : GoUInt8)) || (_u != (48 : GoUInt8)))) {
                    _upperdelta = (2 : GoUInt8);
                };
                var _okup:Bool = (_upperdelta > (0 : GoUInt8)) && ((_inclusive || (_upperdelta > (1 : GoUInt8))) || ((_ui + (1 : GoInt)) < _upper._nd));
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
private function _fmtE(_dst:Slice<GoByte>, _neg:Bool, _d:T_decimalSlice, _prec:GoInt, _fmt:GoByte):Slice<GoByte> {
        if (_neg) {
            _dst = _dst.__appendref__((45 : GoUInt8));
        };
        var _ch:GoUInt8 = ((48 : GoUInt8) : GoByte);
        if (_d._nd != ((0 : GoInt))) {
            _ch = _d._d[(0 : GoInt)];
        };
        _dst = _dst.__appendref__(_ch);
        if (_prec > (0 : GoInt)) {
            _dst = _dst.__appendref__((46 : GoUInt8));
            var _i:GoInt = (1 : GoInt);
            var _m:GoInt = _min(_d._nd, _prec + (1 : GoInt));
            if (_i < _m) {
                _dst = _dst.__appendref__(...(_d._d.__slice__(_i, _m) : Slice<GoUInt8>).__toArray__());
                _i = _m;
            };
            Go.cfor(_i <= _prec, _i++, {
                _dst = _dst.__appendref__((48 : GoUInt8));
            });
        };
        _dst = _dst.__appendref__(_fmt);
        var _exp:GoInt = _d._dp - (1 : GoInt);
        if (_d._nd == ((0 : GoInt))) {
            _exp = (0 : GoInt);
        };
        if (_exp < (0 : GoInt)) {
            _ch = (45 : GoUInt8);
            _exp = -_exp;
        } else {
            _ch = (43 : GoUInt8);
        };
        _dst = _dst.__appendref__(_ch);
        if (_exp < (10 : GoInt)) {
            _dst = _dst.__appendref__((48 : GoUInt8), (_exp : GoByte) + (48 : GoUInt8));
        } else if (_exp < (100 : GoInt)) {
            _dst = _dst.__appendref__((_exp / (10 : GoInt) : GoByte) + (48 : GoUInt8), (_exp % (10 : GoInt) : GoByte) + (48 : GoUInt8));
        } else {
            _dst = _dst.__appendref__((_exp / (100 : GoInt) : GoByte) + (48 : GoUInt8), ((_exp / (10 : GoInt) : GoByte) % (10 : GoUInt8)) + (48 : GoUInt8), (_exp % (10 : GoInt) : GoByte) + (48 : GoUInt8));
        };
        return _dst;
    }
/**
    // %f: -ddddddd.ddddd
**/
private function _fmtF(_dst:Slice<GoByte>, _neg:Bool, _d:T_decimalSlice, _prec:GoInt):Slice<GoByte> {
        if (_neg) {
            _dst = _dst.__appendref__((45 : GoUInt8));
        };
        if (_d._dp > (0 : GoInt)) {
            var _m:GoInt = _min(_d._nd, _d._dp);
            _dst = _dst.__appendref__(...(_d._d.__slice__(0, _m) : Slice<GoUInt8>).__toArray__());
            Go.cfor(_m < _d._dp, _m++, {
                _dst = _dst.__appendref__((48 : GoUInt8));
            });
        } else {
            _dst = _dst.__appendref__((48 : GoUInt8));
        };
        if (_prec > (0 : GoInt)) {
            _dst = _dst.__appendref__((46 : GoUInt8));
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _prec, _i++, {
                    var _ch:GoUInt8 = ((48 : GoUInt8) : GoByte);
                    {
                        var _j:GoInt = _d._dp + _i;
                        if (((0 : GoInt) <= _j) && (_j < _d._nd)) {
                            _ch = _d._d[(_j : GoInt)];
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
private function _fmtB(_dst:Slice<GoByte>, _neg:Bool, _mant:GoUInt64, _exp:GoInt, _flt:Ref<T_floatInfo>):Slice<GoByte> {
        if (_neg) {
            _dst = _dst.__appendref__((45 : GoUInt8));
        };
        {
            var __tmp__ = _formatBits(_dst, _mant, (10 : GoInt), false, true);
            _dst = __tmp__._0;
        };
        _dst = _dst.__appendref__((112 : GoUInt8));
        _exp = _exp - ((_flt._mantbits : GoInt));
        if (_exp >= (0 : GoInt)) {
            _dst = _dst.__appendref__((43 : GoUInt8));
        };
        {
            var __tmp__ = _formatBits(_dst, (_exp : GoUInt64), (10 : GoInt), _exp < (0 : GoInt), true);
            _dst = __tmp__._0;
        };
        return _dst;
    }
/**
    // %x: -0x1.yyyyyyyyp±ddd or -0x0p+0. (y is hex digit, d is decimal digit)
**/
private function _fmtX(_dst:Slice<GoByte>, _prec:GoInt, _fmt:GoByte, _neg:Bool, _mant:GoUInt64, _exp:GoInt, _flt:Ref<T_floatInfo>):Slice<GoByte> {
        if (_mant == ((0i64 : GoUInt64))) {
            _exp = (0 : GoInt);
        };
        _mant = _mant << ((60u32 : GoUInt) - _flt._mantbits);
        while ((_mant != (0i64 : GoUInt64)) && ((_mant & (1152921504606846976i64 : GoUInt64)) == (0i64 : GoUInt64))) {
            _mant = _mant << ((1i64 : GoUInt64));
            _exp--;
        };
        if ((_prec >= (0 : GoInt)) && (_prec < (15 : GoInt))) {
            var _shift:GoUInt = (_prec * (4 : GoInt) : GoUInt);
            var _extra:GoUInt64 = (_mant << _shift) & (1152921504606846975i64 : GoUInt64);
            _mant = _mant >> ((60u32 : GoUInt) - _shift);
            if ((_extra | (_mant & (1i64 : GoUInt64))) > (576460752303423488i64 : GoUInt64)) {
                _mant++;
            };
            _mant = _mant << ((60u32 : GoUInt) - _shift);
            if (_mant & (2305843009213693952i64 : GoUInt64) != ((0i64 : GoUInt64))) {
                _mant = _mant >> ((1i64 : GoUInt64));
                _exp++;
            };
        };
        var _hex:GoString = ("0123456789abcdef" : GoString);
        if (_fmt == ((88 : GoUInt8))) {
            _hex = ("0123456789ABCDEF" : GoString);
        };
        if (_neg) {
            _dst = _dst.__appendref__((45 : GoUInt8));
        };
        _dst = _dst.__appendref__((48 : GoUInt8), _fmt, (48 : GoUInt8) + ((_mant >> (60i64 : GoUInt64)) & (1i64 : GoUInt64) : GoByte));
        _mant = _mant << ((4i64 : GoUInt64));
        if ((_prec < (0 : GoInt)) && (_mant != (0i64 : GoUInt64))) {
            _dst = _dst.__appendref__((46 : GoUInt8));
            while (_mant != ((0i64 : GoUInt64))) {
                _dst = _dst.__appendref__(_hex[((_mant >> (60i64 : GoUInt64)) & (15i64 : GoUInt64) : GoInt)]);
                _mant = _mant << ((4i64 : GoUInt64));
            };
        } else if (_prec > (0 : GoInt)) {
            _dst = _dst.__appendref__((46 : GoUInt8));
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _prec, _i++, {
                    _dst = _dst.__appendref__(_hex[((_mant >> (60i64 : GoUInt64)) & (15i64 : GoUInt64) : GoInt)]);
                    _mant = _mant << ((4i64 : GoUInt64));
                });
            };
        };
        var _ch:GoUInt8 = ((80 : GoUInt8) : GoByte);
        if (_fmt == (_lower(_fmt))) {
            _ch = (112 : GoUInt8);
        };
        _dst = _dst.__appendref__(_ch);
        if (_exp < (0 : GoInt)) {
            _ch = (45 : GoUInt8);
            _exp = -_exp;
        } else {
            _ch = (43 : GoUInt8);
        };
        _dst = _dst.__appendref__(_ch);
        if (_exp < (100 : GoInt)) {
            _dst = _dst.__appendref__((_exp / (10 : GoInt) : GoByte) + (48 : GoUInt8), (_exp % (10 : GoInt) : GoByte) + (48 : GoUInt8));
        } else if (_exp < (1000 : GoInt)) {
            _dst = _dst.__appendref__((_exp / (100 : GoInt) : GoByte) + (48 : GoUInt8), ((_exp / (10 : GoInt)) % (10 : GoInt) : GoByte) + (48 : GoUInt8), (_exp % (10 : GoInt) : GoByte) + (48 : GoUInt8));
        } else {
            _dst = _dst.__appendref__((_exp / (1000 : GoInt) : GoByte) + (48 : GoUInt8), ((_exp / (100 : GoInt) : GoByte) % (10 : GoUInt8)) + (48 : GoUInt8), ((_exp / (10 : GoInt)) % (10 : GoInt) : GoByte) + (48 : GoUInt8), (_exp % (10 : GoInt) : GoByte) + (48 : GoUInt8));
        };
        return _dst;
    }
private function _min(_a:GoInt, _b:GoInt):GoInt {
        if (_a < _b) {
            return _a;
        };
        return _b;
    }
private function _max(_a:GoInt, _b:GoInt):GoInt {
        if (_a > _b) {
            return _a;
        };
        return _b;
    }
/**
    // ryuFtoaFixed32 formats mant*(2^exp) with prec decimal digits.
**/
private function _ryuFtoaFixed32(_d:Ref<T_decimalSlice>, _mant:GoUInt32, _exp:GoInt, _prec:GoInt):Void {
        if (_prec < (0 : GoInt)) {
            throw Go.toInterface(("ryuFtoaFixed32 called with negative prec" : GoString));
        };
        if (_prec > (9 : GoInt)) {
            throw Go.toInterface(("ryuFtoaFixed32 called with prec > 9" : GoString));
        };
        if (_mant == ((0u32 : GoUInt32))) {
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
            if (_b < (25 : GoInt)) {
                _mant = _mant << (((25 : GoInt) - _b : GoUInt));
                _e2 = _e2 + (_b - (25 : GoInt));
            };
        };
        var _q:GoInt = (-_mulByLog2Log10(_e2 + (24 : GoInt)) + _prec) - (1 : GoInt);
        var _exact:Bool = (_q <= (27 : GoInt)) && (_q >= (0 : GoInt));
        var __tmp__ = _mult64bitPow10(_mant, _e2, _q), _di:GoUInt32 = __tmp__._0, _dexp2:GoInt = __tmp__._1, _d0:Bool = __tmp__._2;
        if (_dexp2 >= (0 : GoInt)) {
            throw Go.toInterface(("not enough significant bits after mult64bitPow10" : GoString));
        };
        if (((_q < (0 : GoInt)) && (_q >= (-10 : GoInt))) && _divisibleByPower5((_mant : GoUInt64), -_q)) {
            _exact = true;
            _d0 = true;
        };
        var _extra:GoUInt = (-_dexp2 : GoUInt);
        var _extraMask:GoUInt32 = (((1u32 : GoUInt32) << _extra) - (1u32 : GoUInt32) : GoUInt32);
        var __0:GoUInt32 = _di >> _extra, __1:GoUInt32 = _di & _extraMask, _dfrac:GoUInt32 = __1, _di:GoUInt32 = __0;
        var _roundUp:Bool = false;
        if (_exact) {
            _roundUp = ((_dfrac > ((1u32 : GoUInt32) << (_extra - (1u32 : GoUInt)))) || ((_dfrac == ((1u32 : GoUInt32) << (_extra - (1u32 : GoUInt)))) && !_d0)) || (((_dfrac == ((1u32 : GoUInt32) << (_extra - (1u32 : GoUInt)))) && _d0) && ((_di & (1u32 : GoUInt32)) == (1u32 : GoUInt32)));
        } else {
            _roundUp = _dfrac >> (_extra - (1u32 : GoUInt)) == ((1u32 : GoUInt32));
        };
        if (_dfrac != ((0u32 : GoUInt32))) {
            _d0 = false;
        };
        _formatDecimal(_d, (_di : GoUInt64), !_d0, _roundUp, _prec);
        _d._dp = _d._dp - (_q);
    }
/**
    // ryuFtoaFixed64 formats mant*(2^exp) with prec decimal digits.
**/
private function _ryuFtoaFixed64(_d:Ref<T_decimalSlice>, _mant:GoUInt64, _exp:GoInt, _prec:GoInt):Void {
        if (_prec > (18 : GoInt)) {
            throw Go.toInterface(("ryuFtoaFixed64 called with prec > 18" : GoString));
        };
        if (_mant == ((0i64 : GoUInt64))) {
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
            if (_b < (55 : GoInt)) {
                _mant = _mant << ((55 : GoInt) - _b : GoUInt);
                _e2 = _e2 + (_b - (55 : GoInt));
            };
        };
        var _q:GoInt = (-_mulByLog2Log10(_e2 + (54 : GoInt)) + _prec) - (1 : GoInt);
        var _exact:Bool = (_q <= (55 : GoInt)) && (_q >= (0 : GoInt));
        var __tmp__ = _mult128bitPow10(_mant, _e2, _q), _di:GoUInt64 = __tmp__._0, _dexp2:GoInt = __tmp__._1, _d0:Bool = __tmp__._2;
        if (_dexp2 >= (0 : GoInt)) {
            throw Go.toInterface(("not enough significant bits after mult128bitPow10" : GoString));
        };
        if (((_q < (0 : GoInt)) && (_q >= (-22 : GoInt))) && _divisibleByPower5(_mant, -_q)) {
            _exact = true;
            _d0 = true;
        };
        var _extra:GoUInt = (-_dexp2 : GoUInt);
        var _extraMask:GoUInt64 = (((1i64 : GoUInt64) << _extra) - (1i64 : GoUInt64) : GoUInt64);
        var __0:GoUInt64 = _di >> _extra, __1:GoUInt64 = _di & _extraMask, _dfrac:GoUInt64 = __1, _di:GoUInt64 = __0;
        var _roundUp:Bool = false;
        if (_exact) {
            _roundUp = ((_dfrac > ((1i64 : GoUInt64) << (_extra - (1u32 : GoUInt)))) || ((_dfrac == ((1i64 : GoUInt64) << (_extra - (1u32 : GoUInt)))) && !_d0)) || (((_dfrac == ((1i64 : GoUInt64) << (_extra - (1u32 : GoUInt)))) && _d0) && ((_di & (1i64 : GoUInt64)) == (1i64 : GoUInt64)));
        } else {
            _roundUp = _dfrac >> (_extra - (1u32 : GoUInt)) == ((1i64 : GoUInt64));
        };
        if (_dfrac != ((0i64 : GoUInt64))) {
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
private function _formatDecimal(_d:Ref<T_decimalSlice>, _m:GoUInt64, _trunc:Bool, _roundUp:Bool, _prec:GoInt):Void {
        var _max:GoUInt64 = _uint64pow10[(_prec : GoInt)];
        var _trimmed:GoInt = (0 : GoInt);
        while (_m >= _max) {
            var __0:GoUInt64 = _m / (10i64 : GoUInt64), __1:GoUInt64 = _m % (10i64 : GoUInt64), _b:GoUInt64 = __1, _a:GoUInt64 = __0;
            _m = _a;
            _trimmed++;
            if (_b > (5i64 : GoUInt64)) {
                _roundUp = true;
            } else if (_b < (5i64 : GoUInt64)) {
                _roundUp = false;
            } else {
                _roundUp = _trunc || ((_m & (1i64 : GoUInt64)) == (1i64 : GoUInt64));
            };
            if (_b != ((0i64 : GoUInt64))) {
                _trunc = true;
            };
        };
        if (_roundUp) {
            _m++;
        };
        if (_m >= _max) {
            _m = _m / ((10i64 : GoUInt64));
            _trimmed++;
        };
        var _n:GoUInt = (_prec : GoUInt);
        _d._nd = _prec;
        var _v:GoUInt64 = _m;
        while (_v >= (100i64 : GoUInt64)) {
            var __0:GoUInt64 = (0 : GoUInt64), __1:GoUInt64 = (0 : GoUInt64), _v2:GoUInt64 = __1, _v1:GoUInt64 = __0;
            if (_v >> (32i64 : GoUInt64) == ((0i64 : GoUInt64))) {
                {
                    final __tmp__0 = ((_v : GoUInt32) / (100u32 : GoUInt32) : GoUInt64);
                    final __tmp__1 = ((_v : GoUInt32) % (100u32 : GoUInt32) : GoUInt64);
                    _v1 = __tmp__0;
                    _v2 = __tmp__1;
                };
            } else {
                {
                    final __tmp__0 = _v / (100i64 : GoUInt64);
                    final __tmp__1 = _v % (100i64 : GoUInt64);
                    _v1 = __tmp__0;
                    _v2 = __tmp__1;
                };
            };
            _n = _n - ((2u32 : GoUInt));
            _d._d[(_n + (1u32 : GoUInt) : GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString)[(((2i64 : GoUInt64) * _v2) + (1i64 : GoUInt64) : GoInt)];
            _d._d[(_n + (0u32 : GoUInt) : GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString)[(((2i64 : GoUInt64) * _v2) + (0i64 : GoUInt64) : GoInt)];
            _v = _v1;
        };
        if (_v > (0i64 : GoUInt64)) {
            _n--;
            _d._d[(_n : GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString)[(((2i64 : GoUInt64) * _v) + (1i64 : GoUInt64) : GoInt)];
        };
        if (_v >= (10i64 : GoUInt64)) {
            _n--;
            _d._d[(_n : GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString)[((2i64 : GoUInt64) * _v : GoInt)];
        };
        while (_d._d[(_d._nd - (1 : GoInt) : GoInt)] == ((48 : GoUInt8))) {
            _d._nd--;
            _trimmed++;
        };
        _d._dp = _d._nd + _trimmed;
    }
/**
    // ryuFtoaShortest formats mant*2^exp with prec decimal digits.
**/
private function _ryuFtoaShortest(_d:Ref<T_decimalSlice>, _mant:GoUInt64, _exp:GoInt, _flt:Ref<T_floatInfo>):Void {
        if (_mant == ((0i64 : GoUInt64))) {
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
        var __tmp__ = _computeBounds(_mant, _exp, _flt), _ml:GoUInt64 = __tmp__._0, _mc:GoUInt64 = __tmp__._1, _mu:GoUInt64 = __tmp__._2, _e2:GoInt = __tmp__._3;
        if (_e2 == ((0 : GoInt))) {
            _ryuDigits(_d, _ml, _mc, _mu, true, false);
            return;
        };
        var _q:GoInt = _mulByLog2Log10(-_e2) + (1 : GoInt);
        var __0:GoUInt64 = (0 : GoUInt64), __1:GoUInt64 = (0 : GoUInt64), __2:GoUInt64 = (0 : GoUInt64), _du:GoUInt64 = __2, _dc:GoUInt64 = __1, _dl:GoUInt64 = __0;
        var __0:Bool = false, __1:Bool = false, __2:Bool = false, _du0:Bool = __2, _dc0:Bool = __1, _dl0:Bool = __0;
        if (_flt == ((Go.setRef(_float32info) : Ref<stdgo.strconv.Strconv.T_floatInfo>))) {
            var __0:GoUInt32 = (0 : GoUInt32), __1:GoUInt32 = (0 : GoUInt32), __2:GoUInt32 = (0 : GoUInt32), _du32:GoUInt32 = __2, _dc32:GoUInt32 = __1, _dl32:GoUInt32 = __0;
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
            throw Go.toInterface(("not enough significant bits after mult128bitPow10" : GoString));
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
        if ((_q < (0 : GoInt)) && (_q >= (-24 : GoInt))) {
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
        var _extraMask:GoUInt64 = (((1i64 : GoUInt64) << _extra) - (1i64 : GoUInt64) : GoUInt64);
        var __0:GoUInt64 = _dl >> _extra, __1:GoUInt64 = _dl & _extraMask, _fracl:GoUInt64 = __1, _dl:GoUInt64 = __0;
        var __0:GoUInt64 = _dc >> _extra, __1:GoUInt64 = _dc & _extraMask, _fracc:GoUInt64 = __1, _dc:GoUInt64 = __0;
        var __0:GoUInt64 = _du >> _extra, __1:GoUInt64 = _du & _extraMask, _fracu:GoUInt64 = __1, _du:GoUInt64 = __0;
        var _uok:Bool = !_du0 || (_fracu > (0i64 : GoUInt64));
        if (_du0 && (_fracu == (0i64 : GoUInt64))) {
            _uok = _mant & (1i64 : GoUInt64) == ((0i64 : GoUInt64));
        };
        if (!_uok) {
            _du--;
        };
        var _cup:Bool = false;
        if (_dc0) {
            _cup = (_fracc > ((1i64 : GoUInt64) << (_extra - (1u32 : GoUInt)))) || ((_fracc == ((1i64 : GoUInt64) << (_extra - (1u32 : GoUInt)))) && ((_dc & (1i64 : GoUInt64)) == (1i64 : GoUInt64)));
        } else {
            _cup = _fracc >> (_extra - (1u32 : GoUInt)) == ((1i64 : GoUInt64));
        };
        var _lok:Bool = (_dl0 && (_fracl == (0i64 : GoUInt64))) && (_mant & (1i64 : GoUInt64) == (0i64 : GoUInt64));
        if (!_lok) {
            _dl++;
        };
        var _c0:Bool = _dc0 && (_fracc == (0i64 : GoUInt64));
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
private function _mulByLog2Log10(_x:GoInt):GoInt {
        return (_x * (78913 : GoInt)) >> (18i64 : GoUInt64);
    }
/**
    // mulByLog10Log2 returns math.Floor(x * log(10)/log(2)) for an integer x in
    // the range -500 <= x && x <= +500.
    //
    // The range restriction lets us work in faster integer arithmetic instead of
    // slower floating point arithmetic. Correctness is verified by unit tests.
**/
private function _mulByLog10Log2(_x:GoInt):GoInt {
        return (_x * (108853 : GoInt)) >> (15i64 : GoUInt64);
    }
/**
    // computeBounds returns a floating-point vector (l, c, u)×2^e2
    // where the mantissas are 55-bit (or 26-bit) integers, describing the interval
    // represented by the input float64 or float32.
**/
private function _computeBounds(_mant:GoUInt64, _exp:GoInt, _flt:Ref<T_floatInfo>):{ var _0 : GoUInt64; var _1 : GoUInt64; var _2 : GoUInt64; var _3 : GoInt; } {
        var _lower:GoUInt64 = (0 : GoUInt64), _central:GoUInt64 = (0 : GoUInt64), _upper:GoUInt64 = (0 : GoUInt64), _e2:GoInt = (0 : GoInt);
        if ((_mant != ((1i64 : GoUInt64) << _flt._mantbits)) || (_exp == (_flt._bias + (1 : GoInt) - (_flt._mantbits : GoInt)))) {
            {
                final __tmp__0 = ((2i64 : GoUInt64) * _mant) - (1i64 : GoUInt64);
                final __tmp__1 = (2i64 : GoUInt64) * _mant;
                final __tmp__2 = ((2i64 : GoUInt64) * _mant) + (1i64 : GoUInt64);
                _lower = __tmp__0;
                _central = __tmp__1;
                _upper = __tmp__2;
            };
            _e2 = _exp - (1 : GoInt);
            return { _0 : _lower, _1 : _central, _2 : _upper, _3 : _e2 };
        } else {
            {
                final __tmp__0 = ((4i64 : GoUInt64) * _mant) - (1i64 : GoUInt64);
                final __tmp__1 = (4i64 : GoUInt64) * _mant;
                final __tmp__2 = ((4i64 : GoUInt64) * _mant) + (2i64 : GoUInt64);
                _lower = __tmp__0;
                _central = __tmp__1;
                _upper = __tmp__2;
            };
            _e2 = _exp - (2 : GoInt);
            return { _0 : _lower, _1 : _central, _2 : _upper, _3 : _e2 };
        };
    }
private function _ryuDigits(_d:Ref<T_decimalSlice>, _lower:GoUInt64, _central:GoUInt64, _upper:GoUInt64, _c0:Bool, _cup:Bool):Void {
        var __tmp__ = _divmod1e9(_lower), _lhi:GoUInt32 = __tmp__._0, _llo:GoUInt32 = __tmp__._1;
        var __tmp__ = _divmod1e9(_central), _chi:GoUInt32 = __tmp__._0, _clo:GoUInt32 = __tmp__._1;
        var __tmp__ = _divmod1e9(_upper), _uhi:GoUInt32 = __tmp__._0, _ulo:GoUInt32 = __tmp__._1;
        if (_uhi == ((0u32 : GoUInt32))) {
            _ryuDigits32(_d, _llo, _clo, _ulo, _c0, _cup, (8 : GoInt));
        } else if (_lhi < _uhi) {
            if (_llo != ((0u32 : GoUInt32))) {
                _lhi++;
            };
            _c0 = _c0 && (_clo == (0u32 : GoUInt32));
            _cup = (_clo > (500000000u32 : GoUInt32)) || ((_clo == (500000000u32 : GoUInt32)) && _cup);
            _ryuDigits32(_d, _lhi, _chi, _uhi, _c0, _cup, (8 : GoInt));
            _d._dp = _d._dp + ((9 : GoInt));
        } else {
            _d._nd = (0 : GoInt);
            var _n:GoUInt = (9u32 : GoUInt);
            {
                var _v:GoUInt32 = _chi;
                while (_v > (0u32 : GoUInt32)) {
                    var __0:GoUInt32 = _v / (10u32 : GoUInt32), __1:GoUInt32 = _v % (10u32 : GoUInt32), _v2:GoUInt32 = __1, _v1:GoUInt32 = __0;
                    _v = _v1;
                    _n--;
                    _d._d[(_n : GoInt)] = (_v2 + (48u32 : GoUInt32) : GoByte);
                };
            };
            _d._d = (_d._d.__slice__(_n) : Slice<GoUInt8>);
            _d._nd = ((9u32 : GoUInt) - _n : GoInt);
            _ryuDigits32(_d, _llo, _clo, _ulo, _c0, _cup, _d._nd + (8 : GoInt));
        };
        while ((_d._nd > (0 : GoInt)) && (_d._d[(_d._nd - (1 : GoInt) : GoInt)] == (48 : GoUInt8))) {
            _d._nd--;
        };
        while ((_d._nd > (0 : GoInt)) && (_d._d[(0 : GoInt)] == (48 : GoUInt8))) {
            _d._nd--;
            _d._dp--;
            _d._d = (_d._d.__slice__((1 : GoInt)) : Slice<GoUInt8>);
        };
    }
/**
    // ryuDigits32 emits decimal digits for a number less than 1e9.
**/
private function _ryuDigits32(_d:Ref<T_decimalSlice>, _lower:GoUInt32, _central:GoUInt32, _upper:GoUInt32, _c0:Bool, _cup:Bool, _endindex:GoInt):Void {
        if (_upper == ((0u32 : GoUInt32))) {
            _d._dp = _endindex + (1 : GoInt);
            return;
        };
        var _trimmed:GoInt = (0 : GoInt);
        var _cNextDigit:GoInt = (0 : GoInt);
        while (_upper > (0u32 : GoUInt32)) {
            var _l:GoUInt32 = (_lower + (9u32 : GoUInt32)) / (10u32 : GoUInt32);
            var __0:GoUInt32 = _central / (10u32 : GoUInt32), __1:GoUInt32 = _central % (10u32 : GoUInt32), _cdigit:GoUInt32 = __1, _c:GoUInt32 = __0;
            var _u:GoUInt32 = _upper / (10u32 : GoUInt32);
            if (_l > _u) {
                break;
            };
            if ((_l == (_c + (1u32 : GoUInt32))) && (_c < _u)) {
                _c++;
                _cdigit = (0u32 : GoUInt32);
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
            _cup = ((_cNextDigit > (5 : GoInt)) || ((_cNextDigit == (5 : GoInt)) && !_c0)) || (((_cNextDigit == (5 : GoInt)) && _c0) && ((_central & (1u32 : GoUInt32)) == (1u32 : GoUInt32)));
        };
        if ((_central < _upper) && _cup) {
            _central++;
        };
        _endindex = _endindex - (_trimmed);
        var _v:GoUInt32 = _central;
        var _n:GoInt = _endindex;
        while (_n > _d._nd) {
            var __0:GoUInt32 = _v / (100u32 : GoUInt32), __1:GoUInt32 = _v % (100u32 : GoUInt32), _v2:GoUInt32 = __1, _v1:GoUInt32 = __0;
            _d._d[(_n : GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString)[(((2u32 : GoUInt32) * _v2) + (1u32 : GoUInt32) : GoInt)];
            _d._d[(_n - (1 : GoInt) : GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString)[(((2u32 : GoUInt32) * _v2) + (0u32 : GoUInt32) : GoInt)];
            _n = _n - ((2 : GoInt));
            _v = _v1;
        };
        if (_n == (_d._nd)) {
            _d._d[(_n : GoInt)] = (_v + (48u32 : GoUInt32) : GoByte);
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
private function _mult64bitPow10(_m:GoUInt32, _e2:GoInt, _q:GoInt):{ var _0 : GoUInt32; var _1 : GoInt; var _2 : Bool; } {
        var _resM:GoUInt32 = (0 : GoUInt32), _resE:GoInt = (0 : GoInt), _exact:Bool = false;
        if (_q == ((0 : GoInt))) {
            return { _0 : _m << (6i64 : GoUInt64), _1 : _e2 - (6 : GoInt), _2 : true };
        };
        if ((_q < (-348 : GoInt)) || ((347 : GoInt) < _q)) {
            throw Go.toInterface(("mult64bitPow10: power of 10 is out of range" : GoString));
        };
        var _pow:GoUInt64 = _detailedPowersOfTen[(_q - (-348 : GoInt) : GoInt)][(1 : GoInt)];
        if (_q < (0 : GoInt)) {
            _pow = _pow + ((1i64 : GoUInt64));
        };
        var __tmp__ = stdgo.math.bits.Bits.mul64((_m : GoUInt64), _pow), _hi:GoUInt64 = __tmp__._0, _lo:GoUInt64 = __tmp__._1;
        _e2 = _e2 + ((_mulByLog10Log2(_q) - (63 : GoInt)) + (57 : GoInt));
        return { _0 : ((_hi << (7i64 : GoUInt64)) | (_lo >> (57i64 : GoUInt64)) : GoUInt32), _1 : _e2, _2 : _lo << (7i64 : GoUInt64) == ((0i64 : GoUInt64)) };
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
private function _mult128bitPow10(_m:GoUInt64, _e2:GoInt, _q:GoInt):{ var _0 : GoUInt64; var _1 : GoInt; var _2 : Bool; } {
        var _resM:GoUInt64 = (0 : GoUInt64), _resE:GoInt = (0 : GoInt), _exact:Bool = false;
        if (_q == ((0 : GoInt))) {
            return { _0 : _m << (8i64 : GoUInt64), _1 : _e2 - (8 : GoInt), _2 : true };
        };
        if ((_q < (-348 : GoInt)) || ((347 : GoInt) < _q)) {
            throw Go.toInterface(("mult128bitPow10: power of 10 is out of range" : GoString));
        };
        var _pow = _detailedPowersOfTen[(_q - (-348 : GoInt) : GoInt)]?.__copy__();
        if (_q < (0 : GoInt)) {
            _pow[(0 : GoInt)] = _pow[(0 : GoInt)] + ((1i64 : GoUInt64));
        };
        _e2 = _e2 + ((_mulByLog10Log2(_q) - (127 : GoInt)) + (119 : GoInt));
        var __tmp__ = stdgo.math.bits.Bits.mul64(_m, _pow[(0 : GoInt)]), _l1:GoUInt64 = __tmp__._0, _l0:GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.mul64(_m, _pow[(1 : GoInt)]), _h1:GoUInt64 = __tmp__._0, _h0:GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.add64(_l1, _h0, (0i64 : GoUInt64)), _mid:GoUInt64 = __tmp__._0, _carry:GoUInt64 = __tmp__._1;
        _h1 = _h1 + (_carry);
        return { _0 : (_h1 << (9i64 : GoUInt64)) | (_mid >> (55i64 : GoUInt64)), _1 : _e2, _2 : ((_mid << (9i64 : GoUInt64)) == (0i64 : GoUInt64)) && (_l0 == (0i64 : GoUInt64)) };
    }
private function _divisibleByPower5(_m:GoUInt64, _k:GoInt):Bool {
        if (_m == ((0i64 : GoUInt64))) {
            return true;
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _k, _i++, {
                if (_m % (5i64 : GoUInt64) != ((0i64 : GoUInt64))) {
                    return false;
                };
                _m = _m / ((5i64 : GoUInt64));
            });
        };
        return true;
    }
/**
    // divmod1e9 computes quotient and remainder of division by 1e9,
    // avoiding runtime uint64 division on 32-bit platforms.
**/
private function _divmod1e9(_x:GoUInt64):{ var _0 : GoUInt32; var _1 : GoUInt32; } {
        if (false) {
            return { _0 : (_x / (1000000000i64 : GoUInt64) : GoUInt32), _1 : (_x % (1000000000i64 : GoUInt64) : GoUInt32) };
        };
        var __tmp__ = stdgo.math.bits.Bits.mul64(_x >> (1i64 : GoUInt64), (-8543223759426509416i64 : GoUInt64)), _hi:GoUInt64 = __tmp__._0, __0:GoUInt64 = __tmp__._1;
        var _q:GoUInt64 = _hi >> (28i64 : GoUInt64);
        return { _0 : (_q : GoUInt32), _1 : (_x - (_q * (1000000000i64 : GoUInt64)) : GoUInt32) };
    }
function newDecimal(_i:GoUInt64):Ref<T_decimal> {
        var _d = (Go.setRef(({} : stdgo.strconv.Strconv.T_decimal)) : Ref<stdgo.strconv.Strconv.T_decimal>);
        _d.assign(_i);
        return _d;
    }
function setOptimize(_b:Bool):Bool {
        var _old:Bool = _optimize;
        _optimize = _b;
        return _old;
    }
function parseFloatPrefix(_s:GoString, _bitSize:GoInt):{ var _0 : GoFloat64; var _1 : GoInt; var _2 : Error; } {
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
        if ((true && (_i < (100i64 : GoUInt64))) && (_base == (10 : GoInt))) {
            return _small((_i : GoInt));
        };
        var __tmp__ = _formatBits((null : Slice<GoUInt8>), _i, _base, false, false), __0:Slice<GoUInt8> = __tmp__._0, _s:GoString = __tmp__._1;
        return _s;
    }
/**
    // FormatInt returns the string representation of i in the given base,
    // for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
    // for digit values >= 10.
**/
function formatInt(_i:GoInt64, _base:GoInt):GoString {
        if (((true && ((0i64 : GoInt64) <= _i)) && (_i < (100i64 : GoInt64))) && (_base == (10 : GoInt))) {
            return _small((_i : GoInt));
        };
        var __tmp__ = _formatBits((null : Slice<GoUInt8>), (_i : GoUInt64), _base, _i < (0i64 : GoInt64), false), __0:Slice<GoUInt8> = __tmp__._0, _s:GoString = __tmp__._1;
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
        if (((true && ((0i64 : GoInt64) <= _i)) && (_i < (100i64 : GoInt64))) && (_base == (10 : GoInt))) {
            return (_dst.__append__(..._small((_i : GoInt)).__toArray__()));
        };
        {
            var __tmp__ = _formatBits(_dst, (_i : GoUInt64), _base, _i < (0i64 : GoInt64), true);
            _dst = __tmp__._0;
        };
        return _dst;
    }
/**
    // AppendUint appends the string form of the unsigned integer i,
    // as generated by FormatUint, to dst and returns the extended buffer.
**/
function appendUint(_dst:Slice<GoByte>, _i:GoUInt64, _base:GoInt):Slice<GoByte> {
        if ((true && (_i < (100i64 : GoUInt64))) && (_base == (10 : GoInt))) {
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
private function _small(_i:GoInt):GoString {
        if (_i < (10 : GoInt)) {
            return (("0123456789abcdefghijklmnopqrstuvwxyz" : GoString).__slice__(_i, _i + (1 : GoInt)) : GoString);
        };
        return (("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString).__slice__(_i * (2 : GoInt), (_i * (2 : GoInt)) + (2 : GoInt)) : GoString);
    }
/**
    // formatBits computes the string representation of u in the given base.
    // If neg is set, u is treated as negative int64 value. If append_ is
    // set, the string is appended to dst and the resulting byte slice is
    // returned as the first result value; otherwise the string is returned
    // as the second result value.
**/
private function _formatBits(_dst:Slice<GoByte>, _u:GoUInt64, _base:GoInt, _neg:Bool, _append_:Bool):{ var _0 : Slice<GoByte>; var _1 : GoString; } {
        var _d:Slice<GoByte> = (null : Slice<GoUInt8>), _s:GoString = ("" : GoString);
        if ((_base < (2 : GoInt)) || (_base > ("0123456789abcdefghijklmnopqrstuvwxyz" : GoString).length)) {
            throw Go.toInterface(("strconv: illegal AppendInt/FormatInt base" : GoString));
        };
        var _a:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 65) (0 : GoUInt8)]);
        var _i:GoInt = (_a.length);
        if (_neg) {
            _u = -_u;
        };
        if (_base == ((10 : GoInt))) {
            if (true) {
                while (_u >= (1000000000i64 : GoUInt64)) {
                    var _q:GoUInt64 = _u / (1000000000i64 : GoUInt64);
                    var _us:GoUInt = (_u - (_q * (1000000000i64 : GoUInt64)) : GoUInt);
                    {
                        var _j:GoInt = (4 : GoInt);
                        Go.cfor(_j > (0 : GoInt), _j--, {
                            var _is:GoUInt = (_us % (100u32 : GoUInt)) * (2u32 : GoUInt);
                            _us = _us / ((100u32 : GoUInt));
                            _i = _i - ((2 : GoInt));
                            _a[(_i + (1 : GoInt) : GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString)[(_is + (1u32 : GoUInt) : GoInt)];
                            _a[(_i + (0 : GoInt) : GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString)[(_is + (0u32 : GoUInt) : GoInt)];
                        });
                    };
                    _i--;
                    _a[(_i : GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString)[((_us * (2u32 : GoUInt)) + (1u32 : GoUInt) : GoInt)];
                    _u = _q;
                };
            };
            var _us:GoUInt = (_u : GoUInt);
            while (_us >= (100u32 : GoUInt)) {
                var _is:GoUInt = (_us % (100u32 : GoUInt)) * (2u32 : GoUInt);
                _us = _us / ((100u32 : GoUInt));
                _i = _i - ((2 : GoInt));
                _a[(_i + (1 : GoInt) : GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString)[(_is + (1u32 : GoUInt) : GoInt)];
                _a[(_i + (0 : GoInt) : GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString)[(_is + (0u32 : GoUInt) : GoInt)];
            };
            var _is:GoUInt = _us * (2u32 : GoUInt);
            _i--;
            _a[(_i : GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString)[(_is + (1u32 : GoUInt) : GoInt)];
            if (_us >= (10u32 : GoUInt)) {
                _i--;
                _a[(_i : GoInt)] = ("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString)[(_is : GoInt)];
            };
        } else if (_isPowerOfTwo(_base)) {
            var _shift:GoUInt = (stdgo.math.bits.Bits.trailingZeros((_base : GoUInt)) : GoUInt) & (7u32 : GoUInt);
            var _b:GoUInt64 = (_base : GoUInt64);
            var _m:GoUInt = (_base : GoUInt) - (1u32 : GoUInt);
            while (_u >= _b) {
                _i--;
                _a[(_i : GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyz" : GoString)[((_u : GoUInt) & _m : GoInt)];
                _u = _u >> (_shift);
            };
            _i--;
            _a[(_i : GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyz" : GoString)[((_u : GoUInt) : GoInt)];
        } else {
            var _b:GoUInt64 = (_base : GoUInt64);
            while (_u >= _b) {
                _i--;
                var _q:GoUInt64 = _u / _b;
                _a[(_i : GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyz" : GoString)[((_u - (_q * _b) : GoUInt) : GoInt)];
                _u = _q;
            };
            _i--;
            _a[(_i : GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyz" : GoString)[((_u : GoUInt) : GoInt)];
        };
        if (_neg) {
            _i--;
            _a[(_i : GoInt)] = (45 : GoUInt8);
        };
        if (_append_) {
            _d = (_dst.__append__(...(_a.__slice__(_i) : Slice<GoUInt8>).__toArray__()));
            return { _0 : _d, _1 : _s };
        };
        _s = ((_a.__slice__(_i) : Slice<GoUInt8>) : GoString);
        return { _0 : _d, _1 : _s };
    }
private function _isPowerOfTwo(_x:GoInt):Bool {
        return _x & (_x - (1 : GoInt)) == ((0 : GoInt));
    }
/**
    // contains reports whether the string contains the byte c.
**/
private function _contains(_s:GoString, _c:GoByte):Bool {
        return _index(_s, _c) != ((-1 : GoInt));
    }
private function _quoteWith(_s:GoString, _quote:GoByte, asciionly:Bool, _graphicOnly:Bool):GoString {
        return (_appendQuotedWith(new Slice<GoUInt8>((0 : GoInt).toBasic(), ((3 : GoInt) * _s.length) / (2 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]), _s, _quote, asciionly, _graphicOnly) : GoString);
    }
private function _quoteRuneWith(_r:GoRune, _quote:GoByte, asciionly:Bool, _graphicOnly:Bool):GoString {
        return (_appendQuotedRuneWith((null : Slice<GoUInt8>), _r, _quote, asciionly, _graphicOnly) : GoString);
    }
private function _appendQuotedWith(_buf:Slice<GoByte>, _s:GoString, _quote:GoByte, asciionly:Bool, _graphicOnly:Bool):Slice<GoByte> {
        if ((_buf.capacity - _buf.length) < (_s.length)) {
            var _nBuf = new Slice<GoUInt8>((_buf.length : GoInt).toBasic(), ((_buf.length + (1 : GoInt)) + _s.length) + (1 : GoInt), ...[for (i in 0 ... (_buf.length : GoInt).toBasic()) (0 : GoUInt8)]);
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
                    _buf = _buf.__appendref__(("0123456789abcdef" : GoString)[(_s[(0 : GoInt)] >> (4i64 : GoUInt64) : GoInt)]);
                    _buf = _buf.__appendref__(("0123456789abcdef" : GoString)[(_s[(0 : GoInt)] & (15 : GoUInt8) : GoInt)]);
                    continue;
                };
                _buf = _appendEscapedRune(_buf, _r, _quote, asciionly, _graphicOnly);
            });
        };
        _buf = _buf.__appendref__(_quote);
        return _buf;
    }
private function _appendQuotedRuneWith(_buf:Slice<GoByte>, _r:GoRune, _quote:GoByte, asciionly:Bool, _graphicOnly:Bool):Slice<GoByte> {
        _buf = _buf.__appendref__(_quote);
        if (!stdgo.unicode.utf8.Utf8.validRune(_r)) {
            _r = (65533 : GoInt32);
        };
        _buf = _appendEscapedRune(_buf, _r, _quote, asciionly, _graphicOnly);
        _buf = _buf.__appendref__(_quote);
        return _buf;
    }
private function _appendEscapedRune(_buf:Slice<GoByte>, _r:GoRune, _quote:GoByte, asciionly:Bool, _graphicOnly:Bool):Slice<GoByte> {
        var _runeTmp:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) (0 : GoUInt8)]);
        if ((_r == (_quote : GoRune)) || (_r == (92 : GoInt32))) {
            _buf = _buf.__appendref__((92 : GoUInt8));
            _buf = _buf.__appendref__((_r : GoByte));
            return _buf;
        };
        if (asciionly) {
            if ((_r < (128 : GoInt32)) && isPrint(_r)) {
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
                {
                    final __value__ = _r;
                    if (__value__ == ((7 : GoInt32))) {
                        _buf = _buf.__appendref__(...("\\a" : GoString).__toArray__());
                        break;
                    } else if (__value__ == ((8 : GoInt32))) {
                        _buf = _buf.__appendref__(...("\\b" : GoString).__toArray__());
                        break;
                    } else if (__value__ == ((12 : GoInt32))) {
                        _buf = _buf.__appendref__(...("\\f" : GoString).__toArray__());
                        break;
                    } else if (__value__ == ((10 : GoInt32))) {
                        _buf = _buf.__appendref__(...("\\n" : GoString).__toArray__());
                        break;
                    } else if (__value__ == ((13 : GoInt32))) {
                        _buf = _buf.__appendref__(...("\\r" : GoString).__toArray__());
                        break;
                    } else if (__value__ == ((9 : GoInt32))) {
                        _buf = _buf.__appendref__(...("\\t" : GoString).__toArray__());
                        break;
                    } else if (__value__ == ((11 : GoInt32))) {
                        _buf = _buf.__appendref__(...("\\v" : GoString).__toArray__());
                        break;
                    } else {
                        {
                            var __switchIndex__ = -1;
                            while (true) {
                                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && ((_r < (32 : GoInt32)) || (_r == (127 : GoInt32))))) {
                                    _buf = _buf.__appendref__(...("\\x" : GoString).__toArray__());
                                    _buf = _buf.__appendref__(("0123456789abcdef" : GoString)[((_r : GoByte) >> (4i64 : GoUInt64) : GoInt)]);
                                    _buf = _buf.__appendref__(("0123456789abcdef" : GoString)[((_r : GoByte) & (15 : GoUInt8) : GoInt)]);
                                    break;
                                    break;
                                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && !stdgo.unicode.utf8.Utf8.validRune(_r))) {
                                    _r = (65533 : GoInt32);
                                    @:fallthrough {
                                        __switchIndex__ = 2;
                                        continue;
                                    };
                                    break;
                                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_r < (65536 : GoInt32)))) {
                                    _buf = _buf.__appendref__(...("\\u" : GoString).__toArray__());
                                    {
                                        var _s:GoInt = (12 : GoInt);
                                        Go.cfor(_s >= (0 : GoInt), _s = _s - ((4 : GoInt)), {
                                            _buf = _buf.__appendref__(("0123456789abcdef" : GoString)[((_r >> (_s : GoUInt)) & (15 : GoInt32) : GoInt)]);
                                        });
                                    };
                                    break;
                                    break;
                                } else {
                                    _buf = _buf.__appendref__(...("\\U" : GoString).__toArray__());
                                    {
                                        var _s:GoInt = (28 : GoInt);
                                        Go.cfor(_s >= (0 : GoInt), _s = _s - ((4 : GoInt)), {
                                            _buf = _buf.__appendref__(("0123456789abcdef" : GoString)[((_r >> (_s : GoUInt)) & (15 : GoInt32) : GoInt)]);
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
/**
    // Quote returns a double-quoted Go string literal representing s. The
    // returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
    // control characters and non-printable characters as defined by
    // IsPrint.
**/
function quote(_s:GoString):GoString {
        return _quoteWith(_s, (34 : GoUInt8), false, false);
    }
/**
    // AppendQuote appends a double-quoted Go string literal representing s,
    // as generated by Quote, to dst and returns the extended buffer.
**/
function appendQuote(_dst:Slice<GoByte>, _s:GoString):Slice<GoByte> {
        return _appendQuotedWith(_dst, _s, (34 : GoUInt8), false, false);
    }
/**
    // QuoteToASCII returns a double-quoted Go string literal representing s.
    // The returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
    // non-ASCII characters and non-printable characters as defined by IsPrint.
**/
function quoteToASCII(_s:GoString):GoString {
        return _quoteWith(_s, (34 : GoUInt8), true, false);
    }
/**
    // AppendQuoteToASCII appends a double-quoted Go string literal representing s,
    // as generated by QuoteToASCII, to dst and returns the extended buffer.
**/
function appendQuoteToASCII(_dst:Slice<GoByte>, _s:GoString):Slice<GoByte> {
        return _appendQuotedWith(_dst, _s, (34 : GoUInt8), true, false);
    }
/**
    // QuoteToGraphic returns a double-quoted Go string literal representing s.
    // The returned string leaves Unicode graphic characters, as defined by
    // IsGraphic, unchanged and uses Go escape sequences (\t, \n, \xFF, \u0100)
    // for non-graphic characters.
**/
function quoteToGraphic(_s:GoString):GoString {
        return _quoteWith(_s, (34 : GoUInt8), false, true);
    }
/**
    // AppendQuoteToGraphic appends a double-quoted Go string literal representing s,
    // as generated by QuoteToGraphic, to dst and returns the extended buffer.
**/
function appendQuoteToGraphic(_dst:Slice<GoByte>, _s:GoString):Slice<GoByte> {
        return _appendQuotedWith(_dst, _s, (34 : GoUInt8), false, true);
    }
/**
    // QuoteRune returns a single-quoted Go character literal representing the
    // rune. The returned string uses Go escape sequences (\t, \n, \xFF, \u0100)
    // for control characters and non-printable characters as defined by IsPrint.
    // If r is not a valid Unicode code point, it is interpreted as the Unicode
    // replacement character U+FFFD.
**/
function quoteRune(_r:GoRune):GoString {
        return _quoteRuneWith(_r, (39 : GoUInt8), false, false);
    }
/**
    // AppendQuoteRune appends a single-quoted Go character literal representing the rune,
    // as generated by QuoteRune, to dst and returns the extended buffer.
**/
function appendQuoteRune(_dst:Slice<GoByte>, _r:GoRune):Slice<GoByte> {
        return _appendQuotedRuneWith(_dst, _r, (39 : GoUInt8), false, false);
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
        return _quoteRuneWith(_r, (39 : GoUInt8), true, false);
    }
/**
    // AppendQuoteRuneToASCII appends a single-quoted Go character literal representing the rune,
    // as generated by QuoteRuneToASCII, to dst and returns the extended buffer.
**/
function appendQuoteRuneToASCII(_dst:Slice<GoByte>, _r:GoRune):Slice<GoByte> {
        return _appendQuotedRuneWith(_dst, _r, (39 : GoUInt8), true, false);
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
        return _quoteRuneWith(_r, (39 : GoUInt8), false, true);
    }
/**
    // AppendQuoteRuneToGraphic appends a single-quoted Go character literal representing the rune,
    // as generated by QuoteRuneToGraphic, to dst and returns the extended buffer.
**/
function appendQuoteRuneToGraphic(_dst:Slice<GoByte>, _r:GoRune):Slice<GoByte> {
        return _appendQuotedRuneWith(_dst, _r, (39 : GoUInt8), false, true);
    }
/**
    // CanBackquote reports whether the string s can be represented
    // unchanged as a single-line backquoted string without control
    // characters other than tab.
**/
function canBackquote(_s:GoString):Bool {
        while ((_s.length) > (0 : GoInt)) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s), _r:GoInt32 = __tmp__._0, _wid:GoInt = __tmp__._1;
            _s = (_s.__slice__(_wid) : GoString);
            if (_wid > (1 : GoInt)) {
                if (_r == ((65279 : GoInt32))) {
                    return false;
                };
                continue;
            };
            if (_r == ((65533 : GoInt32))) {
                return false;
            };
            if ((((_r < (32 : GoInt32)) && (_r != (9 : GoInt32))) || (_r == (96 : GoInt32))) || (_r == (127 : GoInt32))) {
                return false;
            };
        };
        return true;
    }
private function _unhex(_b:GoByte):{ var _0 : GoRune; var _1 : Bool; } {
        var _v:GoRune = (0 : GoInt32), _ok:Bool = false;
        var _c:GoInt32 = (_b : GoRune);
        if (((48 : GoInt32) <= _c) && (_c <= (57 : GoInt32))) {
            return { _0 : _c - (48 : GoInt32), _1 : true };
        } else if (((97 : GoInt32) <= _c) && (_c <= (102 : GoInt32))) {
            return { _0 : (_c - (97 : GoInt32)) + (10 : GoInt32), _1 : true };
        } else if (((65 : GoInt32) <= _c) && (_c <= (70 : GoInt32))) {
            return { _0 : (_c - (65 : GoInt32)) + (10 : GoInt32), _1 : true };
        };
        return { _0 : _v, _1 : _ok };
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
function unquoteChar(_s:GoString, _quote:GoByte):{ var _0 : GoRune; var _1 : Bool; var _2 : GoString; var _3 : Error; } {
        var _value:GoRune = (0 : GoInt32), _multibyte:Bool = false, _tail:GoString = ("" : GoString), _err:Error = (null : Error);
        if ((_s.length) == ((0 : GoInt))) {
            _err = errSyntax;
            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
        };
        {
            var _c:GoUInt8 = _s[(0 : GoInt)];
            if ((_c == _quote) && ((_quote == (39 : GoUInt8)) || (_quote == (34 : GoUInt8)))) {
                _err = errSyntax;
                return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
            } else if (_c >= (128 : GoUInt8)) {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                return { _0 : _r, _1 : true, _2 : (_s.__slice__(_size) : GoString), _3 : (null : Error) };
            } else if (_c != ((92 : GoUInt8))) {
                return { _0 : (_s[(0 : GoInt)] : GoRune), _1 : false, _2 : (_s.__slice__((1 : GoInt)) : GoString), _3 : (null : Error) };
            };
        };
        if ((_s.length) <= (1 : GoInt)) {
            _err = errSyntax;
            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
        };
        var _c:GoUInt8 = _s[(1 : GoInt)];
        _s = (_s.__slice__((2 : GoInt)) : GoString);
        {
            var __switchIndex__ = -1;
            while (true) {
                {
                    final __value__ = _c;
                    if (__value__ == ((97 : GoUInt8))) {
                        _value = (7 : GoInt32);
                        break;
                    } else if (__value__ == ((98 : GoUInt8))) {
                        _value = (8 : GoInt32);
                        break;
                    } else if (__value__ == ((102 : GoUInt8))) {
                        _value = (12 : GoInt32);
                        break;
                    } else if (__value__ == ((110 : GoUInt8))) {
                        _value = (10 : GoInt32);
                        break;
                    } else if (__value__ == ((114 : GoUInt8))) {
                        _value = (13 : GoInt32);
                        break;
                    } else if (__value__ == ((116 : GoUInt8))) {
                        _value = (9 : GoInt32);
                        break;
                    } else if (__value__ == ((118 : GoUInt8))) {
                        _value = (11 : GoInt32);
                        break;
                    } else if (__value__ == ((120 : GoUInt8)) || __value__ == ((117 : GoUInt8)) || __value__ == ((85 : GoUInt8))) {
                        var _n:GoInt = (0 : GoInt);
                        {
                            final __value__ = _c;
                            if (__value__ == ((120 : GoUInt8))) {
                                _n = (2 : GoInt);
                            } else if (__value__ == ((117 : GoUInt8))) {
                                _n = (4 : GoInt);
                            } else if (__value__ == ((85 : GoUInt8))) {
                                _n = (8 : GoInt);
                            };
                        };
                        var _v:GoRune = (0 : GoInt32);
                        if ((_s.length) < _n) {
                            _err = errSyntax;
                            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                        };
                        {
                            var _j:GoInt = (0 : GoInt);
                            Go.cfor(_j < _n, _j++, {
                                var __tmp__ = _unhex(_s[(_j : GoInt)]), _x:GoInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    _err = errSyntax;
                                    return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                                };
                                _v = (_v << (4i64 : GoUInt64)) | _x;
                            });
                        };
                        _s = (_s.__slice__(_n) : GoString);
                        if (_c == ((120 : GoUInt8))) {
                            _value = _v;
                            break;
                        };
                        if (!stdgo.unicode.utf8.Utf8.validRune(_v)) {
                            _err = errSyntax;
                            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                        };
                        _value = _v;
                        _multibyte = true;
                        break;
                    } else if (__value__ == ((48 : GoUInt8)) || __value__ == ((49 : GoUInt8)) || __value__ == ((50 : GoUInt8)) || __value__ == ((51 : GoUInt8)) || __value__ == ((52 : GoUInt8)) || __value__ == ((53 : GoUInt8)) || __value__ == ((54 : GoUInt8)) || __value__ == ((55 : GoUInt8))) {
                        var _v:GoInt32 = (_c : GoRune) - (48 : GoInt32);
                        if ((_s.length) < (2 : GoInt)) {
                            _err = errSyntax;
                            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                        };
                        {
                            var _j:GoInt = (0 : GoInt);
                            Go.cfor(_j < (2 : GoInt), _j++, {
                                var _x:GoInt32 = (_s[(_j : GoInt)] : GoRune) - (48 : GoInt32);
                                if ((_x < (0 : GoInt32)) || (_x > (7 : GoInt32))) {
                                    _err = errSyntax;
                                    return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                                };
                                _v = (_v << (3i64 : GoUInt64)) | _x;
                            });
                        };
                        _s = (_s.__slice__((2 : GoInt)) : GoString);
                        if (_v > (255 : GoInt32)) {
                            _err = errSyntax;
                            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                        };
                        _value = _v;
                        break;
                    } else if (__value__ == ((92 : GoUInt8))) {
                        _value = (92 : GoInt32);
                        break;
                    } else if (__value__ == ((39 : GoUInt8)) || __value__ == ((34 : GoUInt8))) {
                        if (_c != (_quote)) {
                            _err = errSyntax;
                            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                        };
                        _value = (_c : GoRune);
                        break;
                    } else {
                        _err = errSyntax;
                        return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                    };
                };
                break;
            };
        };
        _tail = _s;
        return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
    }
/**
    // QuotedPrefix returns the quoted string (as understood by Unquote) at the prefix of s.
    // If s does not start with a valid quoted string, QuotedPrefix returns an error.
**/
function quotedPrefix(_s:GoString):{ var _0 : GoString; var _1 : Error; } {
        var __tmp__ = _unquote(_s, false), _out:GoString = __tmp__._0, __0:GoString = __tmp__._1, _err:Error = __tmp__._2;
        return { _0 : _out, _1 : _err };
    }
/**
    // Unquote interprets s as a single-quoted, double-quoted,
    // or backquoted Go string literal, returning the string value
    // that s quotes.  (If s is single-quoted, it would be a Go
    // character literal; Unquote returns the corresponding
    // one-character string.)
**/
function unquote(_s:GoString):{ var _0 : GoString; var _1 : Error; } {
        var __tmp__ = _unquote(_s, true), _out:GoString = __tmp__._0, _rem:GoString = __tmp__._1, _err:Error = __tmp__._2;
        if ((_rem.length) > (0 : GoInt)) {
            return { _0 : Go.str(), _1 : errSyntax };
        };
        return { _0 : _out, _1 : _err };
    }
/**
    // unquote parses a quoted string at the start of the input,
    // returning the parsed prefix, the remaining suffix, and any parse errors.
    // If unescape is true, the parsed prefix is unescaped,
    // otherwise the input prefix is provided verbatim.
**/
private function _unquote(_in:GoString, _unescape:Bool):{ var _0 : GoString; var _1 : GoString; var _2 : Error; } {
        var _out:GoString = ("" : GoString), _rem:GoString = ("" : GoString), _err:Error = (null : Error);
        if ((_in.length) < (2 : GoInt)) {
            return { _0 : Go.str(), _1 : _in, _2 : errSyntax };
        };
        var _quote:GoUInt8 = _in[(0 : GoInt)];
        var _end:GoInt = _index((_in.__slice__((1 : GoInt)) : GoString), _quote);
        if (_end < (0 : GoInt)) {
            return { _0 : Go.str(), _1 : _in, _2 : errSyntax };
        };
        _end = _end + ((2 : GoInt));
        {
            var __switchIndex__ = -1;
            while (true) {
                {
                    final __value__ = _quote;
                    if (__value__ == ((96 : GoUInt8))) {
                        if (!_unescape) {
                            _out = (_in.__slice__(0, _end) : GoString);
                        } else if (!_contains((_in.__slice__(0, _end) : GoString), (13 : GoUInt8))) {
                            _out = (_in.__slice__((("`" : GoString).length), _end - (("`" : GoString).length)) : GoString);
                        } else {
                            var _buf = new Slice<GoUInt8>((0 : GoInt).toBasic(), ((_end - ("`" : GoString).length) - ("\r" : GoString).length) - (("`" : GoString).length), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]);
                            {
                                var _i:GoInt = (("`" : GoString).length);
                                Go.cfor(_i < (_end - ("`" : GoString).length), _i++, {
                                    if (_in[(_i : GoInt)] != ((13 : GoUInt8))) {
                                        _buf = _buf.__appendref__(_in[(_i : GoInt)]);
                                    };
                                });
                            };
                            _out = (_buf : GoString);
                        };
                        return { _0 : _out, _1 : (_in.__slice__(_end) : GoString), _2 : (null : Error) };
                        break;
                    } else if (__value__ == ((34 : GoUInt8)) || __value__ == ((39 : GoUInt8))) {
                        if (!_contains((_in.__slice__(0, _end) : GoString), (92 : GoUInt8)) && !_contains((_in.__slice__(0, _end) : GoString), (10 : GoUInt8))) {
                            var _valid:Bool = false;
                            {
                                final __value__ = _quote;
                                if (__value__ == ((34 : GoUInt8))) {
                                    _valid = stdgo.unicode.utf8.Utf8.validString((_in.__slice__((("\"" : GoString).length), _end - (("\"" : GoString).length)) : GoString));
                                } else if (__value__ == ((39 : GoUInt8))) {
                                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_in.__slice__((("\'" : GoString).length), _end - (("\'" : GoString).length)) : GoString)), _r:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
                                    _valid = (((("\'" : GoString).length + _n) + ("\'" : GoString).length) == _end) && ((_r != (65533 : GoInt32)) || (_n != (1 : GoInt)));
                                };
                            };
                            if (_valid) {
                                _out = (_in.__slice__(0, _end) : GoString);
                                if (_unescape) {
                                    _out = (_out.__slice__((1 : GoInt), _end - (1 : GoInt)) : GoString);
                                };
                                return { _0 : _out, _1 : (_in.__slice__(_end) : GoString), _2 : (null : Error) };
                            };
                        };
                        var _buf:Slice<GoByte> = (null : Slice<GoUInt8>);
                        var _in0:GoString = _in;
                        _in = (_in.__slice__((1 : GoInt)) : GoString);
                        if (_unescape) {
                            _buf = new Slice<GoUInt8>((0 : GoInt).toBasic(), ((3 : GoInt) * _end) / (2 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]);
                        };
                        while ((_in.length > (0 : GoInt)) && (_in[(0 : GoInt)] != _quote)) {
                            var __tmp__ = unquoteChar(_in, _quote), _r:GoInt32 = __tmp__._0, _multibyte:Bool = __tmp__._1, _rem:GoString = __tmp__._2, _err:Error = __tmp__._3;
                            if ((_in[(0 : GoInt)] == (10 : GoUInt8)) || (_err != null)) {
                                return { _0 : Go.str(), _1 : _in0, _2 : errSyntax };
                            };
                            _in = _rem;
                            if (_unescape) {
                                if ((_r < (128 : GoInt32)) || !_multibyte) {
                                    _buf = _buf.__appendref__((_r : GoByte));
                                } else {
                                    var _arr:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) (0 : GoUInt8)]);
                                    var _n:GoInt = stdgo.unicode.utf8.Utf8.encodeRune((_arr.__slice__(0) : Slice<GoUInt8>), _r);
                                    _buf = _buf.__appendref__(...(_arr.__slice__(0, _n) : Slice<GoUInt8>).__toArray__());
                                };
                            };
                            if (_quote == ((39 : GoUInt8))) {
                                break;
                            };
                        };
                        if (!((_in.length > (0 : GoInt)) && (_in[(0 : GoInt)] == _quote))) {
                            return { _0 : Go.str(), _1 : _in0, _2 : errSyntax };
                        };
                        _in = (_in.__slice__((1 : GoInt)) : GoString);
                        if (_unescape) {
                            return { _0 : (_buf : GoString), _1 : _in, _2 : (null : Error) };
                        };
                        return { _0 : (_in0.__slice__(0, (_in0.length) - (_in.length)) : GoString), _1 : _in, _2 : (null : Error) };
                        break;
                    } else {
                        return { _0 : Go.str(), _1 : _in, _2 : errSyntax };
                    };
                };
                break;
            };
            return { _0 : _out, _1 : _rem, _2 : _err };
        };
    }
/**
    // bsearch16 returns the smallest i such that a[i] >= x.
    // If there is no such i, bsearch16 returns len(a).
**/
private function _bsearch16(_a:Slice<GoUInt16>, _x:GoUInt16):GoInt {
        var __0:GoInt = (0 : GoInt), __1:GoInt = (_a.length), _j:GoInt = __1, _i:GoInt = __0;
        while (_i < _j) {
            var _h:GoInt = _i + ((_j - _i) >> (1i64 : GoUInt64));
            if (_a[(_h : GoInt)] < _x) {
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
private function _bsearch32(_a:Slice<GoUInt32>, _x:GoUInt32):GoInt {
        var __0:GoInt = (0 : GoInt), __1:GoInt = (_a.length), _j:GoInt = __1, _i:GoInt = __0;
        while (_i < _j) {
            var _h:GoInt = _i + ((_j - _i) >> (1i64 : GoUInt64));
            if (_a[(_h : GoInt)] < _x) {
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
        if (((0 : GoInt32) <= _r) && (_r < (65536 : GoInt32))) {
            var __0:GoUInt16 = (_r : GoUInt16), __1 = _isPrint16, __2 = _isNotPrint16, _isNotPrint = __2, _isPrint = __1, _rr:GoUInt16 = __0;
            var _i:GoInt = _bsearch16(_isPrint, _rr);
            if (((_i >= _isPrint.length) || (_rr < _isPrint[(_i & ((1 : GoInt) ^ (-1i32 : GoInt)) : GoInt)])) || (_isPrint[(_i | (1 : GoInt) : GoInt)] < _rr)) {
                return false;
            };
            var _j:GoInt = _bsearch16(_isNotPrint, _rr);
            return (_j >= _isNotPrint.length) || (_isNotPrint[(_j : GoInt)] != _rr);
        };
        var __0:GoUInt32 = (_r : GoUInt32), __1 = _isPrint32, __2 = _isNotPrint32, _isNotPrint = __2, _isPrint = __1, _rr:GoUInt32 = __0;
        var _i:GoInt = _bsearch32(_isPrint, _rr);
        if (((_i >= _isPrint.length) || (_rr < _isPrint[(_i & ((1 : GoInt) ^ (-1i32 : GoInt)) : GoInt)])) || (_isPrint[(_i | (1 : GoInt) : GoInt)] < _rr)) {
            return false;
        };
        if (_r >= (131072 : GoInt32)) {
            return true;
        };
        _r = _r - ((65536 : GoInt32));
        var _j:GoInt = _bsearch16(_isNotPrint, (_r : GoUInt16));
        return (_j >= _isNotPrint.length) || (_isNotPrint[(_j : GoInt)] != (_r : GoUInt16));
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
private function _isInGraphicList(_r:GoRune):Bool {
        if (_r > (65535 : GoInt32)) {
            return false;
        };
        var _rr:GoUInt16 = (_r : GoUInt16);
        var _i:GoInt = _bsearch16(_isGraphic, _rr);
        return (_i < _isGraphic.length) && (_rr == _isGraphic[(_i : GoInt)]);
    }
class NumError_asInterface {
    @:keep
    public dynamic function unwrap():Error return __self__.value.unwrap();
    @:keep
    public dynamic function error():GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<NumError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strconv.Strconv.NumError_asInterface) class NumError_static_extension {
    @:keep
    static public function unwrap( _e:Ref<NumError>):Error {
        return _e.err;
    }
    @:keep
    static public function error( _e:Ref<NumError>):GoString {
        return (((((("strconv." : GoString) + _e.func) + (": " : GoString)) + ("parsing " : GoString)) + quote(_e.num)) + (": " : GoString)) + _e.err.error();
    }
}
class T_decimal_asInterface {
    /**
        // Extract integer part, rounded appropriately.
        // No guarantees about overflow.
    **/
    @:keep
    public dynamic function roundedInteger():GoUInt64 return __self__.value.roundedInteger();
    /**
        // Round a up to nd digits (or fewer).
    **/
    @:keep
    public dynamic function roundUp(_nd:GoInt):Void __self__.value.roundUp(_nd);
    /**
        // Round a down to nd digits (or fewer).
    **/
    @:keep
    public dynamic function roundDown(_nd:GoInt):Void __self__.value.roundDown(_nd);
    /**
        // Round a to nd digits (or fewer).
        // If nd is zero, it means we're rounding
        // just to the left of the digits, as in
        // 0.09 -> 0.1.
    **/
    @:keep
    public dynamic function round(_nd:GoInt):Void __self__.value.round(_nd);
    /**
        // Binary shift left (k > 0) or right (k < 0).
    **/
    @:keep
    public dynamic function shift(_k:GoInt):Void __self__.value.shift(_k);
    /**
        // Assign v to a.
    **/
    @:keep
    public dynamic function assign(_v:GoUInt64):Void __self__.value.assign(_v);
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    @:keep
    public dynamic function _floatBits(_flt:Ref<T_floatInfo>):{ var _0 : GoUInt64; var _1 : Bool; } return __self__.value._floatBits(_flt);
    @:keep
    public dynamic function _set(_s:GoString):Bool return __self__.value._set(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_decimal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strconv.Strconv.T_decimal_asInterface) class T_decimal_static_extension {
    /**
        // Extract integer part, rounded appropriately.
        // No guarantees about overflow.
    **/
    @:keep
    static public function roundedInteger( _a:Ref<T_decimal>):GoUInt64 {
        if (_a._dp > (20 : GoInt)) {
            return (-1i64 : GoUInt64);
        };
        var _i:GoInt = (0 : GoInt);
        var _n:GoUInt64 = (0i64 : GoUInt64);
        {
            _i = (0 : GoInt);
            Go.cfor((_i < _a._dp) && (_i < _a._nd), _i++, {
                _n = (_n * (10i64 : GoUInt64)) + (_a._d[(_i : GoInt)] - (48 : GoUInt8) : GoUInt64);
            });
        };
        Go.cfor(_i < _a._dp, _i++, {
            _n = _n * ((10i64 : GoUInt64));
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
    static public function roundUp( _a:Ref<T_decimal>, _nd:GoInt):Void {
        if ((_nd < (0 : GoInt)) || (_nd >= _a._nd)) {
            return;
        };
        {
            var _i:GoInt = _nd - (1 : GoInt);
            Go.cfor(_i >= (0 : GoInt), _i--, {
                var _c:GoUInt8 = _a._d[(_i : GoInt)];
                if (_c < (57 : GoUInt8)) {
                    _a._d[(_i : GoInt)]++;
                    _a._nd = _i + (1 : GoInt);
                    return;
                };
            });
        };
        _a._d[(0 : GoInt)] = (49 : GoUInt8);
        _a._nd = (1 : GoInt);
        _a._dp++;
    }
    /**
        // Round a down to nd digits (or fewer).
    **/
    @:keep
    static public function roundDown( _a:Ref<T_decimal>, _nd:GoInt):Void {
        if ((_nd < (0 : GoInt)) || (_nd >= _a._nd)) {
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
    static public function round( _a:Ref<T_decimal>, _nd:GoInt):Void {
        if ((_nd < (0 : GoInt)) || (_nd >= _a._nd)) {
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
    static public function shift( _a:Ref<T_decimal>, _k:GoInt):Void {
        if (_a._nd == ((0 : GoInt))) {} else if (_k > (0 : GoInt)) {
            while (_k > (28 : GoInt)) {
                _leftShift(_a, (28u32 : GoUInt));
                _k = _k - ((28 : GoInt));
            };
            _leftShift(_a, (_k : GoUInt));
        } else if (_k < (0 : GoInt)) {
            while (_k < (-28 : GoInt)) {
                _rightShift(_a, (28u32 : GoUInt));
                _k = _k + ((28 : GoInt));
            };
            _rightShift(_a, (-_k : GoUInt));
        };
    }
    /**
        // Assign v to a.
    **/
    @:keep
    static public function assign( _a:Ref<T_decimal>, _v:GoUInt64):Void {
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 24) (0 : GoUInt8)]);
        var _n:GoInt = (0 : GoInt);
        while (_v > (0i64 : GoUInt64)) {
            var _v1:GoUInt64 = _v / (10i64 : GoUInt64);
            _v = _v - ((10i64 : GoUInt64) * _v1);
            _buf[(_n : GoInt)] = (_v + (48i64 : GoUInt64) : GoByte);
            _n++;
            _v = _v1;
        };
        _a._nd = (0 : GoInt);
        {
            _n--;
            Go.cfor(_n >= (0 : GoInt), _n--, {
                _a._d[(_a._nd : GoInt)] = _buf[(_n : GoInt)];
                _a._nd++;
            });
        };
        _a._dp = _a._nd;
        _trim(_a);
    }
    @:keep
    static public function string( _a:Ref<T_decimal>):GoString {
        var _n:GoInt = (10 : GoInt) + _a._nd;
        if (_a._dp > (0 : GoInt)) {
            _n = _n + (_a._dp);
        };
        if (_a._dp < (0 : GoInt)) {
            _n = _n + (-_a._dp);
        };
        var _buf = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n : GoInt).toBasic()) (0 : GoUInt8)]);
        var _w:GoInt = (0 : GoInt);
        if (_a._nd == ((0 : GoInt))) {
            return ("0" : GoString);
        } else if (_a._dp <= (0 : GoInt)) {
            _buf[(_w : GoInt)] = (48 : GoUInt8);
            _w++;
            _buf[(_w : GoInt)] = (46 : GoUInt8);
            _w++;
            _w = _w + (_digitZero((_buf.__slice__(_w, _w + -_a._dp) : Slice<GoUInt8>)));
            _w = _w + (Go.copySlice((_buf.__slice__(_w) : Slice<GoUInt8>), (_a._d.__slice__((0 : GoInt), _a._nd) : Slice<GoUInt8>)));
        } else if (_a._dp < _a._nd) {
            _w = _w + (Go.copySlice((_buf.__slice__(_w) : Slice<GoUInt8>), (_a._d.__slice__((0 : GoInt), _a._dp) : Slice<GoUInt8>)));
            _buf[(_w : GoInt)] = (46 : GoUInt8);
            _w++;
            _w = _w + (Go.copySlice((_buf.__slice__(_w) : Slice<GoUInt8>), (_a._d.__slice__(_a._dp, _a._nd) : Slice<GoUInt8>)));
        } else {
            _w = _w + (Go.copySlice((_buf.__slice__(_w) : Slice<GoUInt8>), (_a._d.__slice__((0 : GoInt), _a._nd) : Slice<GoUInt8>)));
            _w = _w + (_digitZero((_buf.__slice__(_w, (_w + _a._dp) - _a._nd) : Slice<GoUInt8>)));
        };
        return ((_buf.__slice__((0 : GoInt), _w) : Slice<GoUInt8>) : GoString);
    }
    @:keep
    static public function _floatBits( _d:Ref<T_decimal>, _flt:Ref<T_floatInfo>):{ var _0 : GoUInt64; var _1 : Bool; } {
        stdgo.internal.Macro.controlFlow({
            var _b:GoUInt64 = (0 : GoUInt64), _overflow:Bool = false;
            var _exp:GoInt = (0 : GoInt);
            var _mant:GoUInt64 = (0 : GoUInt64);
            if (_d._nd == ((0 : GoInt))) {
                _mant = (0i64 : GoUInt64);
                _exp = _flt._bias;
                @:goto "out";
            };
            if (_d._dp > (310 : GoInt)) {
                @:goto "overflow";
            };
            if (_d._dp < (-330 : GoInt)) {
                _mant = (0i64 : GoUInt64);
                _exp = _flt._bias;
                @:goto "out";
            };
            _exp = (0 : GoInt);
            while (_d._dp > (0 : GoInt)) {
                var _n:GoInt = (0 : GoInt);
                if (_d._dp >= (_powtab.length)) {
                    _n = (27 : GoInt);
                } else {
                    _n = _powtab[(_d._dp : GoInt)];
                };
                _d.shift(-_n);
                _exp = _exp + (_n);
            };
            while ((_d._dp < (0 : GoInt)) || ((_d._dp == (0 : GoInt)) && (_d._d[(0 : GoInt)] < (53 : GoUInt8)))) {
                var _n:GoInt = (0 : GoInt);
                if (-_d._dp >= (_powtab.length)) {
                    _n = (27 : GoInt);
                } else {
                    _n = _powtab[(-_d._dp : GoInt)];
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
            _d.shift(((1u32 : GoUInt) + _flt._mantbits : GoInt));
            _mant = _d.roundedInteger();
            if (_mant == ((2i64 : GoUInt64) << _flt._mantbits)) {
                _mant = _mant >> ((1i64 : GoUInt64));
                _exp++;
                if ((_exp - _flt._bias) >= (((1 : GoInt) << _flt._expbits) - (1 : GoInt))) {
                    @:goto "overflow";
                };
            };
            if (_mant & ((1i64 : GoUInt64) << _flt._mantbits) == ((0i64 : GoUInt64))) {
                _exp = _flt._bias;
            };
            @:goto "out";
            @:label("overflow") _mant = (0i64 : GoUInt64);
            _exp = (((1 : GoInt) << _flt._expbits) - (1 : GoInt)) + _flt._bias;
            _overflow = true;
            @:label("out") var _bits:GoUInt64 = _mant & ((((1i64 : GoUInt64) : GoUInt64) << _flt._mantbits) - (1i64 : GoUInt64));
            _bits = _bits | (((_exp - _flt._bias) & (((1 : GoInt) << _flt._expbits) - (1 : GoInt)) : GoUInt64) << _flt._mantbits);
            if (_d._neg) {
                _bits = _bits | (((1i64 : GoUInt64) << _flt._mantbits) << _flt._expbits);
            };
            return { _0 : _bits, _1 : _overflow };
        });
        throw "controlFlow did not return";
    }
    @:keep
    static public function _set( _b:Ref<T_decimal>, _s:GoString):Bool {
        var _ok:Bool = false;
        var _i:GoInt = (0 : GoInt);
        _b._neg = false;
        _b._trunc = false;
        if (_i >= (_s.length)) {
            return _ok;
        };
        if (_s[(_i : GoInt)] == ((43 : GoUInt8))) {
            _i++;
        } else if (_s[(_i : GoInt)] == ((45 : GoUInt8))) {
            _b._neg = true;
            _i++;
        };
        var _sawdot:Bool = false;
        var _sawdigits:Bool = false;
        Go.cfor(_i < (_s.length), _i++, {
            if (_s[(_i : GoInt)] == ((95 : GoUInt8))) {
                continue;
            } else if (_s[(_i : GoInt)] == ((46 : GoUInt8))) {
                if (_sawdot) {
                    return _ok;
                };
                _sawdot = true;
                _b._dp = _b._nd;
                continue;
            } else if (((48 : GoUInt8) <= _s[(_i : GoInt)]) && (_s[(_i : GoInt)] <= (57 : GoUInt8))) {
                _sawdigits = true;
                if ((_s[(_i : GoInt)] == (48 : GoUInt8)) && (_b._nd == (0 : GoInt))) {
                    _b._dp--;
                    continue;
                };
                if (_b._nd < (_b._d.length)) {
                    _b._d[(_b._nd : GoInt)] = _s[(_i : GoInt)];
                    _b._nd++;
                } else if (_s[(_i : GoInt)] != ((48 : GoUInt8))) {
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
        if ((_i < _s.length) && (_lower(_s[(_i : GoInt)]) == (101 : GoUInt8))) {
            _i++;
            if (_i >= (_s.length)) {
                return _ok;
            };
            var _esign:GoInt = (1 : GoInt);
            if (_s[(_i : GoInt)] == ((43 : GoUInt8))) {
                _i++;
            } else if (_s[(_i : GoInt)] == ((45 : GoUInt8))) {
                _i++;
                _esign = (-1 : GoInt);
            };
            if (((_i >= _s.length) || (_s[(_i : GoInt)] < (48 : GoUInt8))) || (_s[(_i : GoInt)] > (57 : GoUInt8))) {
                return _ok;
            };
            var _e:GoInt = (0 : GoInt);
            Go.cfor((_i < _s.length) && ((((48 : GoUInt8) <= _s[(_i : GoInt)]) && (_s[(_i : GoInt)] <= (57 : GoUInt8))) || (_s[(_i : GoInt)] == (95 : GoUInt8))), _i++, {
                if (_s[(_i : GoInt)] == ((95 : GoUInt8))) {
                    continue;
                };
                if (_e < (10000 : GoInt)) {
                    _e = ((_e * (10 : GoInt)) + (_s[(_i : GoInt)] : GoInt)) - (48 : GoInt);
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
