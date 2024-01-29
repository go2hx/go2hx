package stdgo.math.big;
/**
    /|*
    Package big implements arbitrary-precision arithmetic (big numbers).
    The following numeric types are supported:
    
    	Int    signed integers
    	Rat    rational numbers
    	Float  floating-point numbers
    
    The zero value for an Int, Rat, or Float correspond to 0. Thus, new
    values can be declared in the usual ways and denote 0 without further
    initialization:
    
    	var x Int        // &x is an *Int of value 0
    	var r = &Rat{}   // r is a *Rat of value 0
    	y := new(Float)  // y is a *Float of value 0
    
    Alternatively, new values can be allocated and initialized with factory
    functions of the form:
    
    	func NewT(v V) *T
    
    For instance, NewInt(x) returns an *Int set to the value of the int64
    argument x, NewRat(a, b) returns a *Rat set to the fraction a/b where
    a and b are int64 values, and NewFloat(f) returns a *Float initialized
    to the float64 argument f. More flexibility is provided with explicit
    setters, for instance:
    
    	var z1 Int
    	z1.SetUint64(123)                 // z1 := 123
    	z2 := new(Rat).SetFloat64(1.25)   // z2 := 5/4
    	z3 := new(Float).SetInt(z1)       // z3 := 123.0
    
    Setters, numeric operations and predicates are represented as methods of
    the form:
    
    	func (z *T) SetV(v V) *T          // z = v
    	func (z *T) Unary(x *T) *T        // z = unary x
    	func (z *T) Binary(x, y *T) *T    // z = x binary y
    	func (x *T) Pred() P              // p = pred(x)
    
    with T one of Int, Rat, or Float. For unary and binary operations, the
    result is the receiver (usually named z in that case; see below); if it
    is one of the operands x or y it may be safely overwritten (and its memory
    reused).
    
    Arithmetic expressions are typically written as a sequence of individual
    method calls, with each call corresponding to an operation. The receiver
    denotes the result and the method arguments are the operation's operands.
    For instance, given three *Int values a, b and c, the invocation
    
    	c.Add(a, b)
    
    computes the sum a + b and stores the result in c, overwriting whatever
    value was held in c before. Unless specified otherwise, operations permit
    aliasing of parameters, so it is perfectly ok to write
    
    	sum.Add(sum, x)
    
    to accumulate values x in a sum.
    
    (By always passing in a result value via the receiver, memory use can be
    much better controlled. Instead of having to allocate new memory for each
    result, an operation can reuse the space allocated for the result value,
    and overwrite that value with the new result in the process.)
    
    Notational convention: Incoming method parameters (including the receiver)
    are named consistently in the API to clarify their use. Incoming operands
    are usually named x, y, a, b, and so on, but never z. A parameter specifying
    the result is named z (typically the receiver).
    
    For instance, the arguments for (*Int).Add are named x and y, and because
    the receiver specifies the result destination, it is called z:
    
    	func (z *Int) Add(x, y *Int) *Int
    
    Methods of this form typically return the incoming receiver as well, to
    enable simple call chaining.
    
    Methods which don't require a result value to be passed in (for instance,
    Int.Sign), simply return the result. In this case, the receiver is typically
    the first operand, named x:
    
    	func (x *Int) Sign() int
    
    Various methods support conversions between strings and corresponding
    numeric values, and vice versa: *Int, *Rat, and *Float values implement
    the Stringer interface for a (default) string representation of the value,
    but also provide SetString methods to initialize a value from a string in
    a variety of supported formats (see the respective SetString documentation).
    
    Finally, *Int, *Rat, and *Float satisfy [fmt.Scanner] for scanning
    and (except for *Rat) the Formatter interface for formatted printing.
    *|/
**/
private var __go2hxdoc__package : Bool;
final maxExp : haxe.UInt64 = stdgo._internal.math.big.Big.maxExp;
final minExp : haxe.UInt64 = stdgo._internal.math.big.Big.minExp;
final maxPrec : haxe.UInt64 = stdgo._internal.math.big.Big.maxPrec;
final toNearestEven : stdgo._internal.math.big.Big.RoundingMode = stdgo._internal.math.big.Big.toNearestEven;
final toNearestAway = stdgo._internal.math.big.Big.toNearestAway;
final toZero = stdgo._internal.math.big.Big.toZero;
final awayFromZero = stdgo._internal.math.big.Big.awayFromZero;
final toNegativeInf = stdgo._internal.math.big.Big.toNegativeInf;
final toPositiveInf = stdgo._internal.math.big.Big.toPositiveInf;
final below : stdgo._internal.math.big.Big.Accuracy = stdgo._internal.math.big.Big.below;
final exact : stdgo._internal.math.big.Big.Accuracy = stdgo._internal.math.big.Big.exact;
final above : stdgo._internal.math.big.Big.Accuracy = stdgo._internal.math.big.Big.above;
final maxBase : Int = stdgo._internal.math.big.Big.maxBase;
@:invalid typedef T_argVV = Dynamic;
@:invalid typedef T_argVW = Dynamic;
@:invalid typedef T_argVU = Dynamic;
@:invalid typedef T_argVWW = Dynamic;
@:invalid typedef T_argWVW = Dynamic;
@:invalid typedef T_decimal = Dynamic;
@:invalid typedef Float_ = Dynamic;
@:invalid typedef ErrNaN = Dynamic;
@:invalid typedef T_matrix = Dynamic;
@:invalid typedef Int_ = Dynamic;
@:invalid typedef T_argZZ = Dynamic;
@:invalid typedef T_intShiftTest = Dynamic;
@:invalid typedef T_byteReader = Dynamic;
@:invalid typedef T_argNN = Dynamic;
@:invalid typedef T_shiftTest = Dynamic;
@:invalid typedef T_modWTest = Dynamic;
@:invalid typedef T_divisor = Dynamic;
@:invalid typedef Rat = Dynamic;
@:invalid typedef T_ratBinArg = Dynamic;
@:invalid typedef StringTest = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.math.big.Big.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.math.big.Big.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.math.big.Big.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.math.big.Big.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.math.big.Big.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.math.big.Big.T__struct_5;
@:invalid typedef T__struct_6_asInterface = Dynamic;
@:invalid typedef T__struct_6_static_extension = Dynamic;
typedef T__struct_6 = stdgo._internal.math.big.Big.T__struct_6;
@:invalid typedef T__struct_7_asInterface = Dynamic;
@:invalid typedef T__struct_7_static_extension = Dynamic;
typedef T__struct_7 = stdgo._internal.math.big.Big.T__struct_7;
@:invalid typedef T__struct_8_asInterface = Dynamic;
@:invalid typedef T__struct_8_static_extension = Dynamic;
typedef T__struct_8 = stdgo._internal.math.big.Big.T__struct_8;
@:invalid typedef T__struct_9_asInterface = Dynamic;
@:invalid typedef T__struct_9_static_extension = Dynamic;
typedef T__struct_9 = stdgo._internal.math.big.Big.T__struct_9;
@:invalid typedef T__struct_10_asInterface = Dynamic;
@:invalid typedef T__struct_10_static_extension = Dynamic;
typedef T__struct_10 = stdgo._internal.math.big.Big.T__struct_10;
@:invalid typedef T__struct_11_asInterface = Dynamic;
@:invalid typedef T__struct_11_static_extension = Dynamic;
typedef T__struct_11 = stdgo._internal.math.big.Big.T__struct_11;
@:invalid typedef T__struct_12_asInterface = Dynamic;
@:invalid typedef T__struct_12_static_extension = Dynamic;
typedef T__struct_12 = stdgo._internal.math.big.Big.T__struct_12;
@:invalid typedef T__struct_13_asInterface = Dynamic;
@:invalid typedef T__struct_13_static_extension = Dynamic;
typedef T__struct_13 = stdgo._internal.math.big.Big.T__struct_13;
@:invalid typedef T__struct_14_asInterface = Dynamic;
@:invalid typedef T__struct_14_static_extension = Dynamic;
typedef T__struct_14 = stdgo._internal.math.big.Big.T__struct_14;
@:invalid typedef T__struct_15_asInterface = Dynamic;
@:invalid typedef T__struct_15_static_extension = Dynamic;
typedef T__struct_15 = stdgo._internal.math.big.Big.T__struct_15;
@:invalid typedef T__struct_16_asInterface = Dynamic;
@:invalid typedef T__struct_16_static_extension = Dynamic;
typedef T__struct_16 = stdgo._internal.math.big.Big.T__struct_16;
@:invalid typedef T__struct_17_asInterface = Dynamic;
@:invalid typedef T__struct_17_static_extension = Dynamic;
typedef T__struct_17 = stdgo._internal.math.big.Big.T__struct_17;
@:invalid typedef T__struct_18_asInterface = Dynamic;
@:invalid typedef T__struct_18_static_extension = Dynamic;
typedef T__struct_18 = stdgo._internal.math.big.Big.T__struct_18;
@:invalid typedef T__struct_19_asInterface = Dynamic;
@:invalid typedef T__struct_19_static_extension = Dynamic;
typedef T__struct_19 = stdgo._internal.math.big.Big.T__struct_19;
@:invalid typedef T__struct_20_asInterface = Dynamic;
@:invalid typedef T__struct_20_static_extension = Dynamic;
typedef T__struct_20 = stdgo._internal.math.big.Big.T__struct_20;
@:invalid typedef T__struct_21_asInterface = Dynamic;
@:invalid typedef T__struct_21_static_extension = Dynamic;
typedef T__struct_21 = stdgo._internal.math.big.Big.T__struct_21;
@:invalid typedef T__struct_22_asInterface = Dynamic;
@:invalid typedef T__struct_22_static_extension = Dynamic;
typedef T__struct_22 = stdgo._internal.math.big.Big.T__struct_22;
@:invalid typedef T__struct_23_asInterface = Dynamic;
@:invalid typedef T__struct_23_static_extension = Dynamic;
typedef T__struct_23 = stdgo._internal.math.big.Big.T__struct_23;
@:invalid typedef T__struct_24_asInterface = Dynamic;
@:invalid typedef T__struct_24_static_extension = Dynamic;
typedef T__struct_24 = stdgo._internal.math.big.Big.T__struct_24;
@:invalid typedef T__struct_25_asInterface = Dynamic;
@:invalid typedef T__struct_25_static_extension = Dynamic;
typedef T__struct_25 = stdgo._internal.math.big.Big.T__struct_25;
@:invalid typedef T__struct_26_asInterface = Dynamic;
@:invalid typedef T__struct_26_static_extension = Dynamic;
typedef T__struct_26 = stdgo._internal.math.big.Big.T__struct_26;
@:invalid typedef T__struct_27_asInterface = Dynamic;
@:invalid typedef T__struct_27_static_extension = Dynamic;
typedef T__struct_27 = stdgo._internal.math.big.Big.T__struct_27;
@:invalid typedef T__struct_28_asInterface = Dynamic;
@:invalid typedef T__struct_28_static_extension = Dynamic;
typedef T__struct_28 = stdgo._internal.math.big.Big.T__struct_28;
@:invalid typedef T__struct_29_asInterface = Dynamic;
@:invalid typedef T__struct_29_static_extension = Dynamic;
typedef T__struct_29 = stdgo._internal.math.big.Big.T__struct_29;
@:invalid typedef T__struct_30_asInterface = Dynamic;
@:invalid typedef T__struct_30_static_extension = Dynamic;
typedef T__struct_30 = stdgo._internal.math.big.Big.T__struct_30;
@:invalid typedef T__struct_31_asInterface = Dynamic;
@:invalid typedef T__struct_31_static_extension = Dynamic;
typedef T__struct_31 = stdgo._internal.math.big.Big.T__struct_31;
@:invalid typedef T__struct_32_asInterface = Dynamic;
@:invalid typedef T__struct_32_static_extension = Dynamic;
typedef T__struct_32 = stdgo._internal.math.big.Big.T__struct_32;
@:invalid typedef T__struct_33_asInterface = Dynamic;
@:invalid typedef T__struct_33_static_extension = Dynamic;
typedef T__struct_33 = stdgo._internal.math.big.Big.T__struct_33;
@:invalid typedef T__struct_34_asInterface = Dynamic;
@:invalid typedef T__struct_34_static_extension = Dynamic;
typedef T__struct_34 = stdgo._internal.math.big.Big.T__struct_34;
@:invalid typedef T__struct_35_asInterface = Dynamic;
@:invalid typedef T__struct_35_static_extension = Dynamic;
typedef T__struct_35 = stdgo._internal.math.big.Big.T__struct_35;
@:invalid typedef T__struct_36_asInterface = Dynamic;
@:invalid typedef T__struct_36_static_extension = Dynamic;
typedef T__struct_36 = stdgo._internal.math.big.Big.T__struct_36;
@:invalid typedef T__struct_37_asInterface = Dynamic;
@:invalid typedef T__struct_37_static_extension = Dynamic;
typedef T__struct_37 = stdgo._internal.math.big.Big.T__struct_37;
@:invalid typedef T__struct_38_asInterface = Dynamic;
@:invalid typedef T__struct_38_static_extension = Dynamic;
typedef T__struct_38 = stdgo._internal.math.big.Big.T__struct_38;
@:invalid typedef T__struct_39_asInterface = Dynamic;
@:invalid typedef T__struct_39_static_extension = Dynamic;
typedef T__struct_39 = stdgo._internal.math.big.Big.T__struct_39;
@:invalid typedef T__struct_40_asInterface = Dynamic;
@:invalid typedef T__struct_40_static_extension = Dynamic;
typedef T__struct_40 = stdgo._internal.math.big.Big.T__struct_40;
@:invalid typedef T__struct_41_asInterface = Dynamic;
@:invalid typedef T__struct_41_static_extension = Dynamic;
typedef T__struct_41 = stdgo._internal.math.big.Big.T__struct_41;
@:invalid typedef T__struct_42_asInterface = Dynamic;
@:invalid typedef T__struct_42_static_extension = Dynamic;
typedef T__struct_42 = stdgo._internal.math.big.Big.T__struct_42;
@:invalid typedef T__struct_43_asInterface = Dynamic;
@:invalid typedef T__struct_43_static_extension = Dynamic;
typedef T__struct_43 = stdgo._internal.math.big.Big.T__struct_43;
@:invalid typedef T__struct_44_asInterface = Dynamic;
@:invalid typedef T__struct_44_static_extension = Dynamic;
typedef T__struct_44 = stdgo._internal.math.big.Big.T__struct_44;
@:invalid typedef T__struct_45_asInterface = Dynamic;
@:invalid typedef T__struct_45_static_extension = Dynamic;
typedef T__struct_45 = stdgo._internal.math.big.Big.T__struct_45;
@:invalid typedef T__struct_46_asInterface = Dynamic;
@:invalid typedef T__struct_46_static_extension = Dynamic;
typedef T__struct_46 = stdgo._internal.math.big.Big.T__struct_46;
@:invalid typedef T__struct_47_asInterface = Dynamic;
@:invalid typedef T__struct_47_static_extension = Dynamic;
typedef T__struct_47 = stdgo._internal.math.big.Big.T__struct_47;
@:invalid typedef T__struct_48_asInterface = Dynamic;
@:invalid typedef T__struct_48_static_extension = Dynamic;
typedef T__struct_48 = stdgo._internal.math.big.Big.T__struct_48;
@:invalid typedef T__struct_49_asInterface = Dynamic;
@:invalid typedef T__struct_49_static_extension = Dynamic;
typedef T__struct_49 = stdgo._internal.math.big.Big.T__struct_49;
@:invalid typedef T__struct_50_asInterface = Dynamic;
@:invalid typedef T__struct_50_static_extension = Dynamic;
typedef T__struct_50 = stdgo._internal.math.big.Big.T__struct_50;
@:invalid typedef T__struct_51_asInterface = Dynamic;
@:invalid typedef T__struct_51_static_extension = Dynamic;
typedef T__struct_51 = stdgo._internal.math.big.Big.T__struct_51;
@:invalid typedef T__struct_52_asInterface = Dynamic;
@:invalid typedef T__struct_52_static_extension = Dynamic;
typedef T__struct_52 = stdgo._internal.math.big.Big.T__struct_52;
@:invalid typedef T__struct_53_asInterface = Dynamic;
@:invalid typedef T__struct_53_static_extension = Dynamic;
typedef T__struct_53 = stdgo._internal.math.big.Big.T__struct_53;
@:invalid typedef T__struct_54_asInterface = Dynamic;
@:invalid typedef T__struct_54_static_extension = Dynamic;
typedef T__struct_54 = stdgo._internal.math.big.Big.T__struct_54;
@:invalid typedef T__struct_55_asInterface = Dynamic;
@:invalid typedef T__struct_55_static_extension = Dynamic;
typedef T__struct_55 = stdgo._internal.math.big.Big.T__struct_55;
@:invalid typedef T__struct_56_asInterface = Dynamic;
@:invalid typedef T__struct_56_static_extension = Dynamic;
typedef T__struct_56 = stdgo._internal.math.big.Big.T__struct_56;
@:invalid typedef T__struct_57_asInterface = Dynamic;
@:invalid typedef T__struct_57_static_extension = Dynamic;
typedef T__struct_57 = stdgo._internal.math.big.Big.T__struct_57;
@:invalid typedef T__struct_58_asInterface = Dynamic;
@:invalid typedef T__struct_58_static_extension = Dynamic;
typedef T__struct_58 = stdgo._internal.math.big.Big.T__struct_58;
@:invalid typedef T__struct_59_asInterface = Dynamic;
@:invalid typedef T__struct_59_static_extension = Dynamic;
typedef T__struct_59 = stdgo._internal.math.big.Big.T__struct_59;
@:invalid typedef T__struct_60_asInterface = Dynamic;
@:invalid typedef T__struct_60_static_extension = Dynamic;
typedef T__struct_60 = stdgo._internal.math.big.Big.T__struct_60;
@:invalid typedef T__struct_61_asInterface = Dynamic;
@:invalid typedef T__struct_61_static_extension = Dynamic;
typedef T__struct_61 = stdgo._internal.math.big.Big.T__struct_61;
@:invalid typedef T__struct_62_asInterface = Dynamic;
@:invalid typedef T__struct_62_static_extension = Dynamic;
typedef T__struct_62 = stdgo._internal.math.big.Big.T__struct_62;
@:invalid typedef T__struct_63_asInterface = Dynamic;
@:invalid typedef T__struct_63_static_extension = Dynamic;
typedef T__struct_63 = stdgo._internal.math.big.Big.T__struct_63;
@:invalid typedef T__struct_64_asInterface = Dynamic;
@:invalid typedef T__struct_64_static_extension = Dynamic;
typedef T__struct_64 = stdgo._internal.math.big.Big.T__struct_64;
@:invalid typedef T__struct_65_asInterface = Dynamic;
@:invalid typedef T__struct_65_static_extension = Dynamic;
typedef T__struct_65 = stdgo._internal.math.big.Big.T__struct_65;
@:invalid typedef T__struct_66_asInterface = Dynamic;
@:invalid typedef T__struct_66_static_extension = Dynamic;
typedef T__struct_66 = stdgo._internal.math.big.Big.T__struct_66;
@:invalid typedef T__struct_67_asInterface = Dynamic;
@:invalid typedef T__struct_67_static_extension = Dynamic;
typedef T__struct_67 = stdgo._internal.math.big.Big.T__struct_67;
@:invalid typedef T__struct_68_asInterface = Dynamic;
@:invalid typedef T__struct_68_static_extension = Dynamic;
typedef T__struct_68 = stdgo._internal.math.big.Big.T__struct_68;
@:invalid typedef T__struct_69_asInterface = Dynamic;
@:invalid typedef T__struct_69_static_extension = Dynamic;
typedef T__struct_69 = stdgo._internal.math.big.Big.T__struct_69;
typedef Word = stdgo._internal.math.big.Big.Word;
typedef T_funVV = stdgo._internal.math.big.Big.T_funVV;
typedef T_funVW = stdgo._internal.math.big.Big.T_funVW;
typedef T_funVWW = stdgo._internal.math.big.Big.T_funVWW;
typedef T_funWVW = stdgo._internal.math.big.Big.T_funWVW;
typedef Bits = stdgo._internal.math.big.Big.Bits;
typedef T_form = stdgo._internal.math.big.Big.T_form;
typedef RoundingMode = stdgo._internal.math.big.Big.RoundingMode;
typedef Accuracy = stdgo._internal.math.big.Big.Accuracy;
typedef T_funZZ = stdgo._internal.math.big.Big.T_funZZ;
typedef T_bitFun = stdgo._internal.math.big.Big.T_bitFun;
typedef T_nat = stdgo._internal.math.big.Big.T_nat;
typedef T_funNN = stdgo._internal.math.big.Big.T_funNN;
typedef T_ratBinFun = stdgo._internal.math.big.Big.T_ratBinFun;
inline function testFunVV(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkAddVV(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkSubVV(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testFunVW(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Extended testing to addVW and subVW using various kinds of input data.
    // We utilize the results of addVW_g and subVW_g as golden reference to check
    // correctness.
**/
inline function testFunVWExt(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testShiftOverlap(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIssue31084(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIssue42838(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkAddVW(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
/**
    // Benchmarking addVW using vector of maximum uint to force carry flag set
**/
inline function benchmarkAddVWext(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkSubVW(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
/**
    // Benchmarking subVW using vector of zero to force carry flag set
**/
inline function benchmarkSubVWext(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testFunVWW(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMulWW(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMulAddWWW(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDivWW(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkMulAddVWW(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAddMulVVW(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDivWVW(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkNonZeroShifts(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testMulBits(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNormBits(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFromBits(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testCalibrate(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecimalString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecimalInit(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecimalRounding(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkDecimalConversion(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkFloatString(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
/**
    // NewFloat allocates and returns a new Float set to x,
    // with precision 53 and rounding mode ToNearestEven.
    // NewFloat panics with ErrNaN if x is a NaN.
**/
inline function newFloat(x:Float):Float_ throw "not implemented";
inline function testFloatZeroValue(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatSetPrec(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatMinPrec(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatSign(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatMantExp(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatMantExpAliasing(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatSetMantExp(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatPredicates(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatIsInt(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFloatRound tests basic rounding.
**/
inline function testFloatRound(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFloatRound24 tests that rounding a float64 to 24 bits
    // matches IEEE-754 rounding to nearest when converting a
    // float64 to a float32 (excluding denormal numbers).
**/
inline function testFloatRound24(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatSetUint64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatSetInt64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatSetFloat64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatSetInt(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatSetRat(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatSetInf(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatUint64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatInt64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatFloat32(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatFloat64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatInt(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatRat(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatAbs(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatNeg(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatInc(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFloatAdd tests Float.Add/Sub by comparing the result of a "manual"
    // addition/subtraction of arguments represented by Bits values with the
    // respective Float addition/subtraction for a variety of precisions
    // and rounding modes.
**/
inline function testFloatAdd(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFloatAddRoundZero tests Float.Add/Sub rounding when the result is exactly zero.
    // x + (-x) or x - x for non-zero x should be +0 in all cases except when
    // the rounding mode is ToNegativeInf in which case it should be -0.
**/
inline function testFloatAddRoundZero(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFloatAdd32 tests that Float.Add/Sub of numbers with
    // 24bit mantissa behaves like float32 addition/subtraction
    // (excluding denormal numbers).
**/
inline function testFloatAdd32(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFloatAdd64 tests that Float.Add/Sub of numbers with
    // 53bit mantissa behaves like float64 addition/subtraction.
**/
inline function testFloatAdd64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIssue20490(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFloatMul tests Float.Mul/Quo by comparing the result of a "manual"
    // multiplication/division of arguments represented by Bits values with the
    // respective Float multiplication/division for a variety of precisions
    // and rounding modes.
**/
inline function testFloatMul(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFloatMul64 tests that Float.Mul/Quo of numbers with
    // 53bit mantissa behaves like float64 multiplication/division.
**/
inline function testFloatMul64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIssue6866(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatQuo(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFloatQuoSmoke tests all divisions x/y for values x, y in the range [-n, +n];
    // it serves as a smoke test for basic correctness of division.
**/
inline function testFloatQuoSmoke(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFloatArithmeticSpecialValues tests that Float operations produce the
    // correct results for combinations of zero (±0), finite (±1 and ±2.71828),
    // and infinite (±Inf) operands.
**/
inline function testFloatArithmeticSpecialValues(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatArithmeticOverflow(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // For rounding modes ToNegativeInf and ToPositiveInf, rounding is affected
    // by the sign of the value to be rounded. Test that rounding happens after
    // the sign of a result has been set.
    // This test uses specific values that are known to fail if rounding is
    // "factored" out before setting the result sign.
**/
inline function testFloatArithmeticRounding(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFloatCmpSpecialValues tests that Cmp produces the correct results for
    // combinations of zero (±0), finite (±1 and ±2.71828), and infinite (±Inf)
    // operands.
**/
inline function testFloatCmpSpecialValues(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkFloatAdd(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkFloatSub(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
/**
    // ParseFloat is like f.Parse(s, base) with f set to the given precision
    // and rounding mode.
**/
inline function parseFloat(s:String, base:Int, prec:UInt, mode:RoundingMode):stdgo.Tuple.Tuple3<Float_, Int, stdgo.Error> throw "not implemented";
inline function testFloatSetFloat64String(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloat64Text(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatText(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatFormat(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkParseFloatSmallExp(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkParseFloatLargeExp(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testFloatScan(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatGobEncoding(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatCorruptGob(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatJSONEncoding(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatGobDecodeShortBuffer(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatGobDecodeInvalid(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkGCD10x10(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGCD10x100(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGCD10x1000(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGCD10x10000(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGCD10x100000(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGCD100x100(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGCD100x1000(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGCD100x10000(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGCD100x100000(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGCD1000x1000(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGCD1000x10000(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGCD1000x100000(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGCD10000x10000(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGCD10000x100000(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGCD100000x100000(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testHilbert(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkHilbert(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
/**
    // NewInt allocates and returns a new Int set to x.
**/
inline function newInt(x:haxe.Int64):Int_ throw "not implemented";
/**
    // Jacobi returns the Jacobi symbol (x/y), either +1, -1, or 0.
    // The y argument must be an odd integer.
**/
inline function jacobi(x:Int_, y:Int_):Int throw "not implemented";
inline function testSignZ(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSetZ(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testAbsZ(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSumZZ(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testProdZZ(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMul(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMulRangeZ(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBinomial(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkBinomial(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testDivisionSigns(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBits(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSetBytes(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBytes(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testQuo(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testQuoStepD6(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkQuoRem(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testBitLen(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testExp(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkExp(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkExpMont(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkExp2(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testGcd(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRsh(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRshSelf(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLsh(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLshSelf(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLshRsh(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testCmpAbs(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIntCmpSelf(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testInt64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUint64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBitSet(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTrailingZeroBits(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkBitset(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkBitsetNeg(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkBitsetOrig(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkBitsetNegOrig(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkModSqrt225_Tonelli(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkModSqrt225_3Mod4(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkModSqrt231_Tonelli(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkModSqrt231_5Mod8(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testBitwise(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNot(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testModInverse(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkModInverse(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testModSqrt(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testJacobi(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testJacobiPanic(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIssue2607(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSqrt(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // We can't test this together with the other Exp tests above because
    // it requires a different receiver setup.
**/
inline function testIssue22830(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkSqrt(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkIntSqr(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDiv(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testFillBytes(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNewIntMinInt64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNewIntAllocs(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloat64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIntText(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testAppendText(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testGetString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSetString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFormat(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testScan(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIntGobEncoding(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Sending a nil Int pointer (inside a slice) on a round trip through gob should yield a zero.
    // TODO: top-level nils.
**/
inline function testGobEncodingNilIntInSlice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIntJSONEncoding(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIntJSONEncodingNil(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIntXMLEncoding(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Tests that the linker is able to remove references to Float, Rat,
    // and Int if unused (notably, not used by init).
**/
inline function testLinkerGC(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testCmp(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSet(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFunNN(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMulRangeN(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestMulUnbalanced tests that multiplying numbers of different lengths
    // does not cause deep recursion and in turn allocate too much memory.
    // Test case for issue 3807.
**/
inline function testMulUnbalanced(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkMul(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkNatMul(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testNLZ(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testShiftLeft(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testShiftRight(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkZeroShifts(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testModW(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMontgomery(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testExpNN(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function fuzzExpMont(f:stdgo._internal.testing.Testing.F):Void throw "not implemented";
inline function benchmarkExp3Power(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testFibo(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkFibo(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testBit(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSticky(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSqr(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkNatSqr(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testNatSubMod2N(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkNatSetBytes(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testNatDiv(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestIssue37499 triggers the edge case of divBasic where
    // the inaccurate estimate of the first word's quotient
    // happens at the very beginning of the loop.
**/
inline function testIssue37499(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestIssue42552 triggers an edge case of recursive division
    // where the first division loop is never entered, and correcting
    // the remainder takes exactly two iterations in the final loop.
**/
inline function testIssue42552(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMaxBase(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testScanBase(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test case for BenchmarkScanPi.
**/
inline function testScanPi(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testScanPiParallel(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkScanPi(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkStringPiParallel(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkScan(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkString(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkLeafSize(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function leafSizeHelper(b:stdgo._internal.testing.Testing.B, base:Int, size:Int):Void throw "not implemented";
inline function testStringPowers(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testProbablyPrime(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkProbablyPrime(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testMillerRabinPseudoprimes(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLucasPseudoprimes(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // NewRat creates a new Rat with numerator a and denominator b.
**/
inline function newRat(a:haxe.Int64, b:haxe.Int64):Rat throw "not implemented";
inline function testZeroRat(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatSign(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatCmp(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIsInt(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatAbs(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatNeg(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatInv(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatBin(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIssue820(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatSetFrac64Rat(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIssue2379(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIssue3521(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloat32Distribution(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloat64Distribution(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestSetFloat64NonFinite checks that SetFloat64 of a non-finite value
    // returns nil.
**/
inline function testSetFloat64NonFinite(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIsFinite(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatSetInt64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatSetUint64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkRatCmp(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
/**
    // TestIssue34919 verifies that a Rat's denominator is not modified
    // when simply accessing the Rat value.
**/
inline function testIssue34919(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDenomRace(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testScanExponent(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatSetString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatSetStringZero(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatScan(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloat32SpecialCases(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloat64SpecialCases(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIssue31184(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIssue45910(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatGobEncoding(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Sending a nil Rat pointer (inside a slice) on a round trip through gob should yield a zero.
    // TODO: top-level nils.
**/
inline function testGobEncodingNilRatInSlice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatJSONEncoding(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatXMLEncoding(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRatGobDecodeShortBuffer(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFloatSqrt64 tests that Float.Sqrt of numbers with 53bit mantissa
    // behaves like float math.Sqrt.
**/
inline function testFloatSqrt64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatSqrt(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFloatSqrtSpecial(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkFloatSqrt(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
@:invalid typedef T_decimal_asInterface = Dynamic;
@:invalid typedef T_decimal_static_extension = Dynamic;
@:invalid typedef Float__asInterface = Dynamic;
@:invalid typedef Float__static_extension = Dynamic;
@:invalid typedef ErrNaN_asInterface = Dynamic;
@:invalid typedef ErrNaN_static_extension = Dynamic;
@:invalid typedef T_matrix_asInterface = Dynamic;
@:invalid typedef T_matrix_static_extension = Dynamic;
@:invalid typedef Int__asInterface = Dynamic;
@:invalid typedef Int__static_extension = Dynamic;
@:invalid typedef T_byteReader_asInterface = Dynamic;
@:invalid typedef T_byteReader_static_extension = Dynamic;
@:invalid typedef Rat_asInterface = Dynamic;
@:invalid typedef Rat_static_extension = Dynamic;
@:invalid typedef Bits_asInterface = Dynamic;
@:invalid typedef Bits_static_extension = Dynamic;
@:invalid typedef RoundingMode_asInterface = Dynamic;
@:invalid typedef RoundingMode_static_extension = Dynamic;
@:invalid typedef Accuracy_asInterface = Dynamic;
@:invalid typedef Accuracy_static_extension = Dynamic;
@:invalid typedef T_nat_asInterface = Dynamic;
@:invalid typedef T_nat_static_extension = Dynamic;
