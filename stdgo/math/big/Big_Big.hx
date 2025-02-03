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
class Big {
    static public inline function testFunVV(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFunVV.testFunVV(_t);
    }
    static public inline function benchmarkAddVV(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkAddVV.benchmarkAddVV(_b);
    }
    static public inline function benchmarkSubVV(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkSubVV.benchmarkSubVV(_b);
    }
    static public inline function testFunVW(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFunVW.testFunVW(_t);
    }
    /**
        Extended testing to addVW and subVW using various kinds of input data.
        We utilize the results of addVW_g and subVW_g as golden reference to check
        correctness.
    **/
    static public inline function testFunVWExt(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFunVWExt.testFunVWExt(_t);
    }
    static public inline function testShiftOverlap(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testShiftOverlap.testShiftOverlap(_t);
    }
    static public inline function testIssue31084(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIssue31084.testIssue31084(_t);
    }
    static public inline function testIssue42838(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIssue42838.testIssue42838(_t);
    }
    static public inline function benchmarkAddVW(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkAddVW.benchmarkAddVW(_b);
    }
    /**
        Benchmarking addVW using vector of maximum uint to force carry flag set
    **/
    static public inline function benchmarkAddVWext(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkAddVWext.benchmarkAddVWext(_b);
    }
    static public inline function benchmarkSubVW(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkSubVW.benchmarkSubVW(_b);
    }
    /**
        Benchmarking subVW using vector of zero to force carry flag set
    **/
    static public inline function benchmarkSubVWext(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkSubVWext.benchmarkSubVWext(_b);
    }
    static public inline function testFunVWW(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFunVWW.testFunVWW(_t);
    }
    static public inline function testMulWW(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testMulWW.testMulWW(_t);
    }
    static public inline function testMulAddWWW(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testMulAddWWW.testMulAddWWW(_t);
    }
    static public inline function testDivWW(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testDivWW.testDivWW(_t);
    }
    static public inline function benchmarkMulAddVWW(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkMulAddVWW.benchmarkMulAddVWW(_b);
    }
    static public inline function benchmarkAddMulVVW(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkAddMulVVW.benchmarkAddMulVVW(_b);
    }
    static public inline function benchmarkDivWVW(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkDivWVW.benchmarkDivWVW(_b);
    }
    static public inline function benchmarkNonZeroShifts(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkNonZeroShifts.benchmarkNonZeroShifts(_b);
    }
    static public inline function testMulBits(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testMulBits.testMulBits(_t);
    }
    static public inline function testNormBits(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testNormBits.testNormBits(_t);
    }
    static public inline function testFromBits(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFromBits.testFromBits(_t);
    }
    static public inline function testCalibrate(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testCalibrate.testCalibrate(_t);
    }
    static public inline function testDecimalString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testDecimalString.testDecimalString(_t);
    }
    static public inline function testDecimalInit(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testDecimalInit.testDecimalInit(_t);
    }
    static public inline function testDecimalRounding(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testDecimalRounding.testDecimalRounding(_t);
    }
    static public inline function benchmarkDecimalConversion(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkDecimalConversion.benchmarkDecimalConversion(_b);
    }
    static public inline function benchmarkFloatString(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkFloatString.benchmarkFloatString(_b);
    }
    /**
        NewFloat allocates and returns a new Float set to x,
        with precision 53 and rounding mode ToNearestEven.
        NewFloat panics with ErrNaN if x is a NaN.
    **/
    static public inline function newFloat(_x:StdTypes.Float):Float_ {
        final _x = (_x : stdgo.GoFloat64);
        return stdgo._internal.math.big.Big_newFloat.newFloat(_x);
    }
    static public inline function testFloatZeroValue(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatZeroValue.testFloatZeroValue(_t);
    }
    static public inline function testFloatSetPrec(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatSetPrec.testFloatSetPrec(_t);
    }
    static public inline function testFloatMinPrec(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatMinPrec.testFloatMinPrec(_t);
    }
    static public inline function testFloatSign(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatSign.testFloatSign(_t);
    }
    static public inline function testFloatMantExp(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatMantExp.testFloatMantExp(_t);
    }
    static public inline function testFloatMantExpAliasing(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatMantExpAliasing.testFloatMantExpAliasing(_t);
    }
    static public inline function testFloatSetMantExp(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatSetMantExp.testFloatSetMantExp(_t);
    }
    static public inline function testFloatPredicates(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatPredicates.testFloatPredicates(_t);
    }
    static public inline function testFloatIsInt(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatIsInt.testFloatIsInt(_t);
    }
    /**
        TestFloatRound tests basic rounding.
    **/
    static public inline function testFloatRound(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatRound.testFloatRound(_t);
    }
    /**
        TestFloatRound24 tests that rounding a float64 to 24 bits
        matches IEEE-754 rounding to nearest when converting a
        float64 to a float32 (excluding denormal numbers).
    **/
    static public inline function testFloatRound24(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatRound24.testFloatRound24(_t);
    }
    static public inline function testFloatSetUint64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatSetUint64.testFloatSetUint64(_t);
    }
    static public inline function testFloatSetInt64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatSetInt64.testFloatSetInt64(_t);
    }
    static public inline function testFloatSetFloat64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatSetFloat64.testFloatSetFloat64(_t);
    }
    static public inline function testFloatSetInt(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatSetInt.testFloatSetInt(_t);
    }
    static public inline function testFloatSetRat(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatSetRat.testFloatSetRat(_t);
    }
    static public inline function testFloatSetInf(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatSetInf.testFloatSetInf(_t);
    }
    static public inline function testFloatUint64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatUint64.testFloatUint64(_t);
    }
    static public inline function testFloatInt64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatInt64.testFloatInt64(_t);
    }
    static public inline function testFloatFloat32(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatFloat32.testFloatFloat32(_t);
    }
    static public inline function testFloatFloat64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatFloat64.testFloatFloat64(_t);
    }
    static public inline function testFloatInt(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatInt.testFloatInt(_t);
    }
    static public inline function testFloatRat(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatRat.testFloatRat(_t);
    }
    static public inline function testFloatAbs(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatAbs.testFloatAbs(_t);
    }
    static public inline function testFloatNeg(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatNeg.testFloatNeg(_t);
    }
    static public inline function testFloatInc(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatInc.testFloatInc(_t);
    }
    /**
        TestFloatAdd tests Float.Add/Sub by comparing the result of a "manual"
        addition/subtraction of arguments represented by Bits values with the
        respective Float addition/subtraction for a variety of precisions
        and rounding modes.
    **/
    static public inline function testFloatAdd(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatAdd.testFloatAdd(_t);
    }
    /**
        TestFloatAddRoundZero tests Float.Add/Sub rounding when the result is exactly zero.
        x + (-x) or x - x for non-zero x should be +0 in all cases except when
        the rounding mode is ToNegativeInf in which case it should be -0.
    **/
    static public inline function testFloatAddRoundZero(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatAddRoundZero.testFloatAddRoundZero(_t);
    }
    /**
        TestFloatAdd32 tests that Float.Add/Sub of numbers with
        24bit mantissa behaves like float32 addition/subtraction
        (excluding denormal numbers).
    **/
    static public inline function testFloatAdd32(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatAdd32.testFloatAdd32(_t);
    }
    /**
        TestFloatAdd64 tests that Float.Add/Sub of numbers with
        53bit mantissa behaves like float64 addition/subtraction.
    **/
    static public inline function testFloatAdd64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatAdd64.testFloatAdd64(_t);
    }
    static public inline function testIssue20490(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIssue20490.testIssue20490(_t);
    }
    /**
        TestFloatMul tests Float.Mul/Quo by comparing the result of a "manual"
        multiplication/division of arguments represented by Bits values with the
        respective Float multiplication/division for a variety of precisions
        and rounding modes.
    **/
    static public inline function testFloatMul(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatMul.testFloatMul(_t);
    }
    /**
        TestFloatMul64 tests that Float.Mul/Quo of numbers with
        53bit mantissa behaves like float64 multiplication/division.
    **/
    static public inline function testFloatMul64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatMul64.testFloatMul64(_t);
    }
    static public inline function testIssue6866(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIssue6866.testIssue6866(_t);
    }
    static public inline function testFloatQuo(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatQuo.testFloatQuo(_t);
    }
    /**
        TestFloatQuoSmoke tests all divisions x/y for values x, y in the range [-n, +n];
        it serves as a smoke test for basic correctness of division.
    **/
    static public inline function testFloatQuoSmoke(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatQuoSmoke.testFloatQuoSmoke(_t);
    }
    /**
        TestFloatArithmeticSpecialValues tests that Float operations produce the
        correct results for combinations of zero (±0), finite (±1 and ±2.71828),
        and infinite (±Inf) operands.
    **/
    static public inline function testFloatArithmeticSpecialValues(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatArithmeticSpecialValues.testFloatArithmeticSpecialValues(_t);
    }
    static public inline function testFloatArithmeticOverflow(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatArithmeticOverflow.testFloatArithmeticOverflow(_t);
    }
    /**
        For rounding modes ToNegativeInf and ToPositiveInf, rounding is affected
        by the sign of the value to be rounded. Test that rounding happens after
        the sign of a result has been set.
        This test uses specific values that are known to fail if rounding is
        "factored" out before setting the result sign.
    **/
    static public inline function testFloatArithmeticRounding(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatArithmeticRounding.testFloatArithmeticRounding(_t);
    }
    /**
        TestFloatCmpSpecialValues tests that Cmp produces the correct results for
        combinations of zero (±0), finite (±1 and ±2.71828), and infinite (±Inf)
        operands.
    **/
    static public inline function testFloatCmpSpecialValues(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatCmpSpecialValues.testFloatCmpSpecialValues(_t);
    }
    static public inline function benchmarkFloatAdd(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkFloatAdd.benchmarkFloatAdd(_b);
    }
    static public inline function benchmarkFloatSub(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkFloatSub.benchmarkFloatSub(_b);
    }
    /**
        ParseFloat is like f.Parse(s, base) with f set to the given precision
        and rounding mode.
    **/
    static public inline function parseFloat(_s:String, _base:StdTypes.Int, _prec:std.UInt, _mode:RoundingMode):stdgo.Tuple.Tuple3<Float_, StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        final _base = (_base : stdgo.GoInt);
        final _prec = (_prec : stdgo.GoUInt);
        return {
            final obj = stdgo._internal.math.big.Big_parseFloat.parseFloat(_s, _base, _prec, _mode);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function testFloatSetFloat64String(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatSetFloat64String.testFloatSetFloat64String(_t);
    }
    static public inline function testFloat64Text(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloat64Text.testFloat64Text(_t);
    }
    static public inline function testFloatText(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatText.testFloatText(_t);
    }
    static public inline function testFloatFormat(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatFormat.testFloatFormat(_t);
    }
    static public inline function benchmarkParseFloatSmallExp(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkParseFloatSmallExp.benchmarkParseFloatSmallExp(_b);
    }
    static public inline function benchmarkParseFloatLargeExp(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkParseFloatLargeExp.benchmarkParseFloatLargeExp(_b);
    }
    static public inline function testFloatScan(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatScan.testFloatScan(_t);
    }
    static public inline function testFloatGobEncoding(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatGobEncoding.testFloatGobEncoding(_t);
    }
    static public inline function testFloatCorruptGob(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatCorruptGob.testFloatCorruptGob(_t);
    }
    static public inline function testFloatJSONEncoding(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatJSONEncoding.testFloatJSONEncoding(_t);
    }
    static public inline function testFloatGobDecodeShortBuffer(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatGobDecodeShortBuffer.testFloatGobDecodeShortBuffer(_t);
    }
    static public inline function testFloatGobDecodeInvalid(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatGobDecodeInvalid.testFloatGobDecodeInvalid(_t);
    }
    static public inline function benchmarkGCD10x10(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkGCD10x10.benchmarkGCD10x10(_b);
    }
    static public inline function benchmarkGCD10x100(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkGCD10x100.benchmarkGCD10x100(_b);
    }
    static public inline function benchmarkGCD10x1000(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkGCD10x1000.benchmarkGCD10x1000(_b);
    }
    static public inline function benchmarkGCD10x10000(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkGCD10x10000.benchmarkGCD10x10000(_b);
    }
    static public inline function benchmarkGCD10x100000(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkGCD10x100000.benchmarkGCD10x100000(_b);
    }
    static public inline function benchmarkGCD100x100(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkGCD100x100.benchmarkGCD100x100(_b);
    }
    static public inline function benchmarkGCD100x1000(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkGCD100x1000.benchmarkGCD100x1000(_b);
    }
    static public inline function benchmarkGCD100x10000(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkGCD100x10000.benchmarkGCD100x10000(_b);
    }
    static public inline function benchmarkGCD100x100000(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkGCD100x100000.benchmarkGCD100x100000(_b);
    }
    static public inline function benchmarkGCD1000x1000(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkGCD1000x1000.benchmarkGCD1000x1000(_b);
    }
    static public inline function benchmarkGCD1000x10000(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkGCD1000x10000.benchmarkGCD1000x10000(_b);
    }
    static public inline function benchmarkGCD1000x100000(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkGCD1000x100000.benchmarkGCD1000x100000(_b);
    }
    static public inline function benchmarkGCD10000x10000(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkGCD10000x10000.benchmarkGCD10000x10000(_b);
    }
    static public inline function benchmarkGCD10000x100000(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkGCD10000x100000.benchmarkGCD10000x100000(_b);
    }
    static public inline function benchmarkGCD100000x100000(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkGCD100000x100000.benchmarkGCD100000x100000(_b);
    }
    static public inline function testHilbert(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testHilbert.testHilbert(_t);
    }
    static public inline function benchmarkHilbert(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkHilbert.benchmarkHilbert(_b);
    }
    /**
        NewInt allocates and returns a new Int set to x.
    **/
    static public inline function newInt(_x:haxe.Int64):Int_ {
        final _x = (_x : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_newInt.newInt(_x);
    }
    /**
        Jacobi returns the Jacobi symbol (x/y), either +1, -1, or 0.
        The y argument must be an odd integer.
    **/
    static public inline function jacobi(_x:Int_, _y:Int_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.math.big.Big_jacobi.jacobi(_x, _y);
    }
    static public inline function testSignZ(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testSignZ.testSignZ(_t);
    }
    static public inline function testSetZ(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testSetZ.testSetZ(_t);
    }
    static public inline function testAbsZ(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testAbsZ.testAbsZ(_t);
    }
    static public inline function testSumZZ(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testSumZZ.testSumZZ(_t);
    }
    static public inline function testProdZZ(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testProdZZ.testProdZZ(_t);
    }
    static public inline function testMul(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testMul.testMul(_t);
    }
    static public inline function testMulRangeZ(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testMulRangeZ.testMulRangeZ(_t);
    }
    static public inline function testBinomial(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testBinomial.testBinomial(_t);
    }
    static public inline function benchmarkBinomial(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkBinomial.benchmarkBinomial(_b);
    }
    static public inline function testDivisionSigns(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testDivisionSigns.testDivisionSigns(_t);
    }
    static public inline function testBits(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testBits.testBits(_t);
    }
    static public inline function testSetBytes(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testSetBytes.testSetBytes(_t);
    }
    static public inline function testBytes(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testBytes.testBytes(_t);
    }
    static public inline function testQuo(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testQuo.testQuo(_t);
    }
    static public inline function testQuoStepD6(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testQuoStepD6.testQuoStepD6(_t);
    }
    static public inline function benchmarkQuoRem(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkQuoRem.benchmarkQuoRem(_b);
    }
    static public inline function testBitLen(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testBitLen.testBitLen(_t);
    }
    static public inline function testExp(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testExp.testExp(_t);
    }
    static public inline function benchmarkExp(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkExp.benchmarkExp(_b);
    }
    static public inline function benchmarkExpMont(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkExpMont.benchmarkExpMont(_b);
    }
    static public inline function benchmarkExp2(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkExp2.benchmarkExp2(_b);
    }
    static public inline function testGcd(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testGcd.testGcd(_t);
    }
    static public inline function testRsh(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRsh.testRsh(_t);
    }
    static public inline function testRshSelf(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRshSelf.testRshSelf(_t);
    }
    static public inline function testLsh(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testLsh.testLsh(_t);
    }
    static public inline function testLshSelf(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testLshSelf.testLshSelf(_t);
    }
    static public inline function testLshRsh(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testLshRsh.testLshRsh(_t);
    }
    static public inline function testCmpAbs(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testCmpAbs.testCmpAbs(_t);
    }
    static public inline function testIntCmpSelf(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIntCmpSelf.testIntCmpSelf(_t);
    }
    static public inline function testInt64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testInt64.testInt64(_t);
    }
    static public inline function testUint64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testUint64.testUint64(_t);
    }
    static public inline function testBitSet(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testBitSet.testBitSet(_t);
    }
    static public inline function testTrailingZeroBits(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testTrailingZeroBits.testTrailingZeroBits(_t);
    }
    static public inline function benchmarkBitset(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkBitset.benchmarkBitset(_b);
    }
    static public inline function benchmarkBitsetNeg(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkBitsetNeg.benchmarkBitsetNeg(_b);
    }
    static public inline function benchmarkBitsetOrig(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkBitsetOrig.benchmarkBitsetOrig(_b);
    }
    static public inline function benchmarkBitsetNegOrig(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkBitsetNegOrig.benchmarkBitsetNegOrig(_b);
    }
    static public inline function benchmarkModSqrt225_Tonelli(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkModSqrt225_Tonelli.benchmarkModSqrt225_Tonelli(_b);
    }
    static public inline function benchmarkModSqrt225_3Mod4(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkModSqrt225_3Mod4.benchmarkModSqrt225_3Mod4(_b);
    }
    static public inline function benchmarkModSqrt231_Tonelli(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkModSqrt231_Tonelli.benchmarkModSqrt231_Tonelli(_b);
    }
    static public inline function benchmarkModSqrt231_5Mod8(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkModSqrt231_5Mod8.benchmarkModSqrt231_5Mod8(_b);
    }
    static public inline function testBitwise(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testBitwise.testBitwise(_t);
    }
    static public inline function testNot(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testNot.testNot(_t);
    }
    static public inline function testModInverse(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testModInverse.testModInverse(_t);
    }
    static public inline function benchmarkModInverse(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkModInverse.benchmarkModInverse(_b);
    }
    static public inline function testModSqrt(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testModSqrt.testModSqrt(_t);
    }
    static public inline function testJacobi(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testJacobi.testJacobi(_t);
    }
    static public inline function testJacobiPanic(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testJacobiPanic.testJacobiPanic(_t);
    }
    static public inline function testIssue2607(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIssue2607.testIssue2607(_t);
    }
    static public inline function testSqrt(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testSqrt.testSqrt(_t);
    }
    /**
        We can't test this together with the other Exp tests above because
        it requires a different receiver setup.
    **/
    static public inline function testIssue22830(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIssue22830.testIssue22830(_t);
    }
    static public inline function benchmarkSqrt(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkSqrt.benchmarkSqrt(_b);
    }
    static public inline function benchmarkIntSqr(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkIntSqr.benchmarkIntSqr(_b);
    }
    static public inline function benchmarkDiv(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkDiv.benchmarkDiv(_b);
    }
    static public inline function testFillBytes(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFillBytes.testFillBytes(_t);
    }
    static public inline function testNewIntMinInt64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testNewIntMinInt64.testNewIntMinInt64(_t);
    }
    static public inline function testNewIntAllocs(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testNewIntAllocs.testNewIntAllocs(_t);
    }
    static public inline function testFloat64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloat64.testFloat64(_t);
    }
    static public inline function testIntText(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIntText.testIntText(_t);
    }
    static public inline function testAppendText(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testAppendText.testAppendText(_t);
    }
    static public inline function testGetString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testGetString.testGetString(_t);
    }
    static public inline function testSetString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testSetString.testSetString(_t);
    }
    static public inline function testFormat(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFormat.testFormat(_t);
    }
    static public inline function testScan(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testScan.testScan(_t);
    }
    static public inline function testIntGobEncoding(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIntGobEncoding.testIntGobEncoding(_t);
    }
    /**
        Sending a nil Int pointer (inside a slice) on a round trip through gob should yield a zero.
        TODO: top-level nils.
    **/
    static public inline function testGobEncodingNilIntInSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testGobEncodingNilIntInSlice.testGobEncodingNilIntInSlice(_t);
    }
    static public inline function testIntJSONEncoding(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIntJSONEncoding.testIntJSONEncoding(_t);
    }
    static public inline function testIntJSONEncodingNil(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIntJSONEncodingNil.testIntJSONEncodingNil(_t);
    }
    static public inline function testIntXMLEncoding(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIntXMLEncoding.testIntXMLEncoding(_t);
    }
    /**
        Tests that the linker is able to remove references to Float, Rat,
        and Int if unused (notably, not used by init).
    **/
    static public inline function testLinkerGC(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testLinkerGC.testLinkerGC(_t);
    }
    static public inline function testCmp(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testCmp.testCmp(_t);
    }
    static public inline function testSet(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testSet.testSet(_t);
    }
    static public inline function testFunNN(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFunNN.testFunNN(_t);
    }
    static public inline function testMulRangeN(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testMulRangeN.testMulRangeN(_t);
    }
    /**
        TestMulUnbalanced tests that multiplying numbers of different lengths
        does not cause deep recursion and in turn allocate too much memory.
        Test case for issue 3807.
    **/
    static public inline function testMulUnbalanced(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testMulUnbalanced.testMulUnbalanced(_t);
    }
    static public inline function benchmarkMul(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkMul.benchmarkMul(_b);
    }
    static public inline function benchmarkNatMul(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkNatMul.benchmarkNatMul(_b);
    }
    static public inline function testNLZ(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testNLZ.testNLZ(_t);
    }
    static public inline function testShiftLeft(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testShiftLeft.testShiftLeft(_t);
    }
    static public inline function testShiftRight(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testShiftRight.testShiftRight(_t);
    }
    static public inline function benchmarkZeroShifts(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkZeroShifts.benchmarkZeroShifts(_b);
    }
    static public inline function testModW(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testModW.testModW(_t);
    }
    static public inline function testMontgomery(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testMontgomery.testMontgomery(_t);
    }
    static public inline function testExpNN(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testExpNN.testExpNN(_t);
    }
    static public inline function fuzzExpMont(_f:stdgo._internal.testing.Testing_F.F):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_F.F>);
        stdgo._internal.math.big.Big_fuzzExpMont.fuzzExpMont(_f);
    }
    static public inline function benchmarkExp3Power(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkExp3Power.benchmarkExp3Power(_b);
    }
    static public inline function testFibo(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFibo.testFibo(_t);
    }
    static public inline function benchmarkFibo(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkFibo.benchmarkFibo(_b);
    }
    static public inline function testBit(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testBit.testBit(_t);
    }
    static public inline function testSticky(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testSticky.testSticky(_t);
    }
    static public inline function testSqr(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testSqr.testSqr(_t);
    }
    static public inline function benchmarkNatSqr(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkNatSqr.benchmarkNatSqr(_b);
    }
    static public inline function testNatSubMod2N(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testNatSubMod2N.testNatSubMod2N(_t);
    }
    static public inline function benchmarkNatSetBytes(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkNatSetBytes.benchmarkNatSetBytes(_b);
    }
    static public inline function testNatDiv(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testNatDiv.testNatDiv(_t);
    }
    /**
        TestIssue37499 triggers the edge case of divBasic where
        the inaccurate estimate of the first word's quotient
        happens at the very beginning of the loop.
    **/
    static public inline function testIssue37499(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIssue37499.testIssue37499(_t);
    }
    /**
        TestIssue42552 triggers an edge case of recursive division
        where the first division loop is never entered, and correcting
        the remainder takes exactly two iterations in the final loop.
    **/
    static public inline function testIssue42552(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIssue42552.testIssue42552(_t);
    }
    static public inline function testMaxBase(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testMaxBase.testMaxBase(_t);
    }
    static public inline function testString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testString.testString(_t);
    }
    static public inline function testScanBase(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testScanBase.testScanBase(_t);
    }
    /**
        Test case for BenchmarkScanPi.
    **/
    static public inline function testScanPi(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testScanPi.testScanPi(_t);
    }
    static public inline function testScanPiParallel(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testScanPiParallel.testScanPiParallel(_t);
    }
    static public inline function benchmarkScanPi(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkScanPi.benchmarkScanPi(_b);
    }
    static public inline function benchmarkStringPiParallel(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkStringPiParallel.benchmarkStringPiParallel(_b);
    }
    static public inline function benchmarkScan(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkScan.benchmarkScan(_b);
    }
    static public inline function benchmarkString(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkString.benchmarkString(_b);
    }
    static public inline function benchmarkLeafSize(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkLeafSize.benchmarkLeafSize(_b);
    }
    static public inline function leafSizeHelper(_b:stdgo._internal.testing.Testing_B.B, _base:StdTypes.Int, _size:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        final _base = (_base : stdgo.GoInt);
        final _size = (_size : stdgo.GoInt);
        stdgo._internal.math.big.Big_leafSizeHelper.leafSizeHelper(_b, _base, _size);
    }
    static public inline function testStringPowers(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testStringPowers.testStringPowers(_t);
    }
    static public inline function testProbablyPrime(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testProbablyPrime.testProbablyPrime(_t);
    }
    static public inline function benchmarkProbablyPrime(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkProbablyPrime.benchmarkProbablyPrime(_b);
    }
    static public inline function testMillerRabinPseudoprimes(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testMillerRabinPseudoprimes.testMillerRabinPseudoprimes(_t);
    }
    static public inline function testLucasPseudoprimes(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testLucasPseudoprimes.testLucasPseudoprimes(_t);
    }
    /**
        NewRat creates a new Rat with numerator a and denominator b.
    **/
    static public inline function newRat(_a:haxe.Int64, _b:haxe.Int64):Rat {
        final _a = (_a : stdgo.GoInt64);
        final _b = (_b : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_newRat.newRat(_a, _b);
    }
    static public inline function testZeroRat(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testZeroRat.testZeroRat(_t);
    }
    static public inline function testRatSign(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatSign.testRatSign(_t);
    }
    static public inline function testRatCmp(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatCmp.testRatCmp(_t);
    }
    static public inline function testIsInt(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIsInt.testIsInt(_t);
    }
    static public inline function testRatAbs(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatAbs.testRatAbs(_t);
    }
    static public inline function testRatNeg(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatNeg.testRatNeg(_t);
    }
    static public inline function testRatInv(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatInv.testRatInv(_t);
    }
    static public inline function testRatBin(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatBin.testRatBin(_t);
    }
    static public inline function testIssue820(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIssue820.testIssue820(_t);
    }
    static public inline function testRatSetFrac64Rat(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatSetFrac64Rat.testRatSetFrac64Rat(_t);
    }
    static public inline function testIssue2379(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIssue2379.testIssue2379(_t);
    }
    static public inline function testIssue3521(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIssue3521.testIssue3521(_t);
    }
    static public inline function testFloat32Distribution(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloat32Distribution.testFloat32Distribution(_t);
    }
    static public inline function testFloat64Distribution(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloat64Distribution.testFloat64Distribution(_t);
    }
    /**
        TestSetFloat64NonFinite checks that SetFloat64 of a non-finite value
        returns nil.
    **/
    static public inline function testSetFloat64NonFinite(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testSetFloat64NonFinite.testSetFloat64NonFinite(_t);
    }
    static public inline function testIsFinite(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIsFinite.testIsFinite(_t);
    }
    static public inline function testRatSetInt64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatSetInt64.testRatSetInt64(_t);
    }
    static public inline function testRatSetUint64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatSetUint64.testRatSetUint64(_t);
    }
    static public inline function benchmarkRatCmp(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkRatCmp.benchmarkRatCmp(_b);
    }
    /**
        TestIssue34919 verifies that a Rat's denominator is not modified
        when simply accessing the Rat value.
    **/
    static public inline function testIssue34919(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIssue34919.testIssue34919(_t);
    }
    static public inline function testDenomRace(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testDenomRace.testDenomRace(_t);
    }
    static public inline function testScanExponent(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testScanExponent.testScanExponent(_t);
    }
    static public inline function testRatSetString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatSetString.testRatSetString(_t);
    }
    static public inline function testRatSetStringZero(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatSetStringZero.testRatSetStringZero(_t);
    }
    static public inline function testRatScan(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatScan.testRatScan(_t);
    }
    static public inline function testFloatString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatString.testFloatString(_t);
    }
    static public inline function testFloat32SpecialCases(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloat32SpecialCases.testFloat32SpecialCases(_t);
    }
    static public inline function testFloat64SpecialCases(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloat64SpecialCases.testFloat64SpecialCases(_t);
    }
    static public inline function testIssue31184(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIssue31184.testIssue31184(_t);
    }
    static public inline function testIssue45910(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testIssue45910.testIssue45910(_t);
    }
    static public inline function testRatGobEncoding(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatGobEncoding.testRatGobEncoding(_t);
    }
    /**
        Sending a nil Rat pointer (inside a slice) on a round trip through gob should yield a zero.
        TODO: top-level nils.
    **/
    static public inline function testGobEncodingNilRatInSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testGobEncodingNilRatInSlice.testGobEncodingNilRatInSlice(_t);
    }
    static public inline function testRatJSONEncoding(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatJSONEncoding.testRatJSONEncoding(_t);
    }
    static public inline function testRatXMLEncoding(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatXMLEncoding.testRatXMLEncoding(_t);
    }
    static public inline function testRatGobDecodeShortBuffer(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testRatGobDecodeShortBuffer.testRatGobDecodeShortBuffer(_t);
    }
    /**
        TestFloatSqrt64 tests that Float.Sqrt of numbers with 53bit mantissa
        behaves like float math.Sqrt.
    **/
    static public inline function testFloatSqrt64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatSqrt64.testFloatSqrt64(_t);
    }
    static public inline function testFloatSqrt(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatSqrt.testFloatSqrt(_t);
    }
    static public inline function testFloatSqrtSpecial(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.math.big.Big_testFloatSqrtSpecial.testFloatSqrtSpecial(_t);
    }
    static public inline function benchmarkFloatSqrt(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.math.big.Big_benchmarkFloatSqrt.benchmarkFloatSqrt(_b);
    }
}
