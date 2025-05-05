package stdgo.math.big;
var maxExp : stdgo.GoUInt64 = 2147483647i64;
var minExp : stdgo.GoUInt64 = -2147483648i64;
var maxPrec : stdgo.GoUInt64 = 4294967295i64;
var toNearestEven : RoundingMode = 0i64;
var toNearestAway : RoundingMode = 1i64;
var toZero : RoundingMode = 2i64;
var awayFromZero : RoundingMode = 3i64;
var toNegativeInf : RoundingMode = 4i64;
var toPositiveInf : RoundingMode = 5i64;
var below : Accuracy = -1i64;
var exact : Accuracy = 0i64;
var above : Accuracy = 1i64;
var maxBase : stdgo.GoInt32 = 62i64;
typedef Float_ = stdgo._internal.math.big.Big_float_.Float_;
typedef ErrNaN = stdgo._internal.math.big.Big_errnan.ErrNaN;
typedef Int_ = stdgo._internal.math.big.Big_int_.Int_;
typedef Rat = stdgo._internal.math.big.Big_rat.Rat;
typedef StringTest = stdgo._internal.math.big.Big_stringtest.StringTest;
typedef Word = stdgo._internal.math.big.Big_word.Word;
typedef Bits = stdgo._internal.math.big.Big_bits.Bits;
typedef RoundingMode = stdgo._internal.math.big.Big_roundingmode.RoundingMode;
typedef Accuracy = stdgo._internal.math.big.Big_accuracy.Accuracy;
typedef Float_Pointer = stdgo._internal.math.big.Big_float_pointer.Float_Pointer;
typedef ErrNaNPointer = stdgo._internal.math.big.Big_errnanpointer.ErrNaNPointer;
typedef Int_Pointer = stdgo._internal.math.big.Big_int_pointer.Int_Pointer;
typedef RatPointer = stdgo._internal.math.big.Big_ratpointer.RatPointer;
typedef StringTestPointer = stdgo._internal.math.big.Big_stringtestpointer.StringTestPointer;
typedef WordPointer = stdgo._internal.math.big.Big_wordpointer.WordPointer;
typedef BitsPointer = stdgo._internal.math.big.Big_bitspointer.BitsPointer;
typedef RoundingModePointer = stdgo._internal.math.big.Big_roundingmodepointer.RoundingModePointer;
typedef AccuracyPointer = stdgo._internal.math.big.Big_accuracypointer.AccuracyPointer;
/**
    * 
    * Package big implements arbitrary-precision arithmetic (big numbers).
    * The following numeric types are supported:
    * 
    * 	Int    signed integers
    * 	Rat    rational numbers
    * 	Float  floating-point numbers
    * 
    * The zero value for an Int, Rat, or Float correspond to 0. Thus, new
    * values can be declared in the usual ways and denote 0 without further
    * initialization:
    * 
    * 	var x Int        // &x is an *Int of value 0
    * 	var r = &Rat{}   // r is a *Rat of value 0
    * 	y := new(Float)  // y is a *Float of value 0
    * 
    * Alternatively, new values can be allocated and initialized with factory
    * functions of the form:
    * 
    * 	func NewT(v V) *T
    * 
    * For instance, NewInt(x) returns an *Int set to the value of the int64
    * argument x, NewRat(a, b) returns a *Rat set to the fraction a/b where
    * a and b are int64 values, and NewFloat(f) returns a *Float initialized
    * to the float64 argument f. More flexibility is provided with explicit
    * setters, for instance:
    * 
    * 	var z1 Int
    * 	z1.SetUint64(123)                 // z1 := 123
    * 	z2 := new(Rat).SetFloat64(1.25)   // z2 := 5/4
    * 	z3 := new(Float).SetInt(z1)       // z3 := 123.0
    * 
    * Setters, numeric operations and predicates are represented as methods of
    * the form:
    * 
    * 	func (z *T) SetV(v V) *T          // z = v
    * 	func (z *T) Unary(x *T) *T        // z = unary x
    * 	func (z *T) Binary(x, y *T) *T    // z = x binary y
    * 	func (x *T) Pred() P              // p = pred(x)
    * 
    * with T one of Int, Rat, or Float. For unary and binary operations, the
    * result is the receiver (usually named z in that case; see below); if it
    * is one of the operands x or y it may be safely overwritten (and its memory
    * reused).
    * 
    * Arithmetic expressions are typically written as a sequence of individual
    * method calls, with each call corresponding to an operation. The receiver
    * denotes the result and the method arguments are the operation's operands.
    * For instance, given three *Int values a, b and c, the invocation
    * 
    * 	c.Add(a, b)
    * 
    * computes the sum a + b and stores the result in c, overwriting whatever
    * value was held in c before. Unless specified otherwise, operations permit
    * aliasing of parameters, so it is perfectly ok to write
    * 
    * 	sum.Add(sum, x)
    * 
    * to accumulate values x in a sum.
    * 
    * (By always passing in a result value via the receiver, memory use can be
    * much better controlled. Instead of having to allocate new memory for each
    * result, an operation can reuse the space allocated for the result value,
    * and overwrite that value with the new result in the process.)
    * 
    * Notational convention: Incoming method parameters (including the receiver)
    * are named consistently in the API to clarify their use. Incoming operands
    * are usually named x, y, a, b, and so on, but never z. A parameter specifying
    * the result is named z (typically the receiver).
    * 
    * For instance, the arguments for (*Int).Add are named x and y, and because
    * the receiver specifies the result destination, it is called z:
    * 
    * 	func (z *Int) Add(x, y *Int) *Int
    * 
    * Methods of this form typically return the incoming receiver as well, to
    * enable simple call chaining.
    * 
    * Methods which don't require a result value to be passed in (for instance,
    * Int.Sign), simply return the result. In this case, the receiver is typically
    * the first operand, named x:
    * 
    * 	func (x *Int) Sign() int
    * 
    * Various methods support conversions between strings and corresponding
    * numeric values, and vice versa: *Int, *Rat, and *Float values implement
    * the Stringer interface for a (default) string representation of the value,
    * but also provide SetString methods to initialize a value from a string in
    * a variety of supported formats (see the respective SetString documentation).
    * 
    * Finally, *Int, *Rat, and *Float satisfy [fmt.Scanner] for scanning
    * and (except for *Rat) the Formatter interface for formatted printing.
    * 
**/
class Big {
    static public inline function testFunVV(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfunvv.testFunVV(_t);
    static public inline function benchmarkAddVV(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkaddvv.benchmarkAddVV(_b);
    static public inline function benchmarkSubVV(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarksubvv.benchmarkSubVV(_b);
    static public inline function testFunVW(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfunvw.testFunVW(_t);
    /**
        * Extended testing to addVW and subVW using various kinds of input data.
        * We utilize the results of addVW_g and subVW_g as golden reference to check
        * correctness.
    **/
    static public inline function testFunVWExt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfunvwext.testFunVWExt(_t);
    static public inline function testShiftOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testshiftoverlap.testShiftOverlap(_t);
    static public inline function testIssue31084(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testissue31084.testIssue31084(_t);
    static public inline function testIssue42838(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testissue42838.testIssue42838(_t);
    static public inline function benchmarkAddVW(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkaddvw.benchmarkAddVW(_b);
    /**
        * Benchmarking addVW using vector of maximum uint to force carry flag set
    **/
    static public inline function benchmarkAddVWext(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkaddvwext.benchmarkAddVWext(_b);
    static public inline function benchmarkSubVW(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarksubvw.benchmarkSubVW(_b);
    /**
        * Benchmarking subVW using vector of zero to force carry flag set
    **/
    static public inline function benchmarkSubVWext(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarksubvwext.benchmarkSubVWext(_b);
    static public inline function testFunVWW(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfunvww.testFunVWW(_t);
    static public inline function testMulWW(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testmulww.testMulWW(_t);
    static public inline function testMulAddWWW(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testmuladdwww.testMulAddWWW(_t);
    static public inline function testDivWW(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testdivww.testDivWW(_t);
    static public inline function benchmarkMulAddVWW(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkmuladdvww.benchmarkMulAddVWW(_b);
    static public inline function benchmarkAddMulVVW(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkaddmulvvw.benchmarkAddMulVVW(_b);
    static public inline function benchmarkDivWVW(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkdivwvw.benchmarkDivWVW(_b);
    static public inline function benchmarkNonZeroShifts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarknonzeroshifts.benchmarkNonZeroShifts(_b);
    static public inline function testMulBits(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testmulbits.testMulBits(_t);
    static public inline function testNormBits(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testnormbits.testNormBits(_t);
    static public inline function testFromBits(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfrombits.testFromBits(_t);
    static public inline function testCalibrate(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testcalibrate.testCalibrate(_t);
    static public inline function testDecimalString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testdecimalstring.testDecimalString(_t);
    static public inline function testDecimalInit(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testdecimalinit.testDecimalInit(_t);
    static public inline function testDecimalRounding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testdecimalrounding.testDecimalRounding(_t);
    static public inline function benchmarkDecimalConversion(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkdecimalconversion.benchmarkDecimalConversion(_b);
    static public inline function benchmarkFloatString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkfloatstring.benchmarkFloatString(_b);
    /**
        * NewFloat allocates and returns a new Float set to x,
        * with precision 53 and rounding mode ToNearestEven.
        * NewFloat panics with ErrNaN if x is a NaN.
    **/
    static public inline function newFloat(_x:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> return stdgo._internal.math.big.Big_newfloat.newFloat(_x);
    static public inline function testFloatZeroValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatzerovalue.testFloatZeroValue(_t);
    static public inline function testFloatSetPrec(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatsetprec.testFloatSetPrec(_t);
    static public inline function testFloatMinPrec(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatminprec.testFloatMinPrec(_t);
    static public inline function testFloatSign(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatsign.testFloatSign(_t);
    static public inline function testFloatMantExp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatmantexp.testFloatMantExp(_t);
    static public inline function testFloatMantExpAliasing(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatmantexpaliasing.testFloatMantExpAliasing(_t);
    static public inline function testFloatSetMantExp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatsetmantexp.testFloatSetMantExp(_t);
    static public inline function testFloatPredicates(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatpredicates.testFloatPredicates(_t);
    static public inline function testFloatIsInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatisint.testFloatIsInt(_t);
    /**
        * TestFloatRound tests basic rounding.
    **/
    static public inline function testFloatRound(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatround.testFloatRound(_t);
    /**
        * TestFloatRound24 tests that rounding a float64 to 24 bits
        * matches IEEE-754 rounding to nearest when converting a
        * float64 to a float32 (excluding denormal numbers).
    **/
    static public inline function testFloatRound24(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatround24.testFloatRound24(_t);
    static public inline function testFloatSetUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatsetuint64.testFloatSetUint64(_t);
    static public inline function testFloatSetInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatsetint64.testFloatSetInt64(_t);
    static public inline function testFloatSetFloat64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatsetfloat64.testFloatSetFloat64(_t);
    static public inline function testFloatSetInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatsetint.testFloatSetInt(_t);
    static public inline function testFloatSetRat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatsetrat.testFloatSetRat(_t);
    static public inline function testFloatSetInf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatsetinf.testFloatSetInf(_t);
    static public inline function testFloatUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatuint64.testFloatUint64(_t);
    static public inline function testFloatInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatint64.testFloatInt64(_t);
    static public inline function testFloatFloat32(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatfloat32.testFloatFloat32(_t);
    static public inline function testFloatFloat64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatfloat64.testFloatFloat64(_t);
    static public inline function testFloatInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatint.testFloatInt(_t);
    static public inline function testFloatRat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatrat.testFloatRat(_t);
    static public inline function testFloatAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatabs.testFloatAbs(_t);
    static public inline function testFloatNeg(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatneg.testFloatNeg(_t);
    static public inline function testFloatInc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatinc.testFloatInc(_t);
    /**
        * TestFloatAdd tests Float.Add/Sub by comparing the result of a "manual"
        * addition/subtraction of arguments represented by Bits values with the
        * respective Float addition/subtraction for a variety of precisions
        * and rounding modes.
    **/
    static public inline function testFloatAdd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatadd.testFloatAdd(_t);
    /**
        * TestFloatAddRoundZero tests Float.Add/Sub rounding when the result is exactly zero.
        * x + (-x) or x - x for non-zero x should be +0 in all cases except when
        * the rounding mode is ToNegativeInf in which case it should be -0.
    **/
    static public inline function testFloatAddRoundZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloataddroundzero.testFloatAddRoundZero(_t);
    /**
        * TestFloatAdd32 tests that Float.Add/Sub of numbers with
        * 24bit mantissa behaves like float32 addition/subtraction
        * (excluding denormal numbers).
    **/
    static public inline function testFloatAdd32(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatadd32.testFloatAdd32(_t);
    /**
        * TestFloatAdd64 tests that Float.Add/Sub of numbers with
        * 53bit mantissa behaves like float64 addition/subtraction.
    **/
    static public inline function testFloatAdd64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatadd64.testFloatAdd64(_t);
    static public inline function testIssue20490(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testissue20490.testIssue20490(_t);
    /**
        * TestFloatMul tests Float.Mul/Quo by comparing the result of a "manual"
        * multiplication/division of arguments represented by Bits values with the
        * respective Float multiplication/division for a variety of precisions
        * and rounding modes.
    **/
    static public inline function testFloatMul(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatmul.testFloatMul(_t);
    /**
        * TestFloatMul64 tests that Float.Mul/Quo of numbers with
        * 53bit mantissa behaves like float64 multiplication/division.
    **/
    static public inline function testFloatMul64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatmul64.testFloatMul64(_t);
    static public inline function testIssue6866(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testissue6866.testIssue6866(_t);
    static public inline function testFloatQuo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatquo.testFloatQuo(_t);
    /**
        * TestFloatQuoSmoke tests all divisions x/y for values x, y in the range [-n, +n];
        * it serves as a smoke test for basic correctness of division.
    **/
    static public inline function testFloatQuoSmoke(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatquosmoke.testFloatQuoSmoke(_t);
    /**
        * TestFloatArithmeticSpecialValues tests that Float operations produce the
        * correct results for combinations of zero (±0), finite (±1 and ±2.71828),
        * and infinite (±Inf) operands.
    **/
    static public inline function testFloatArithmeticSpecialValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatarithmeticspecialvalues.testFloatArithmeticSpecialValues(_t);
    static public inline function testFloatArithmeticOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatarithmeticoverflow.testFloatArithmeticOverflow(_t);
    /**
        * For rounding modes ToNegativeInf and ToPositiveInf, rounding is affected
        * by the sign of the value to be rounded. Test that rounding happens after
        * the sign of a result has been set.
        * This test uses specific values that are known to fail if rounding is
        * "factored" out before setting the result sign.
    **/
    static public inline function testFloatArithmeticRounding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatarithmeticrounding.testFloatArithmeticRounding(_t);
    /**
        * TestFloatCmpSpecialValues tests that Cmp produces the correct results for
        * combinations of zero (±0), finite (±1 and ±2.71828), and infinite (±Inf)
        * operands.
    **/
    static public inline function testFloatCmpSpecialValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatcmpspecialvalues.testFloatCmpSpecialValues(_t);
    static public inline function benchmarkFloatAdd(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkfloatadd.benchmarkFloatAdd(_b);
    static public inline function benchmarkFloatSub(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkfloatsub.benchmarkFloatSub(_b);
    /**
        * ParseFloat is like f.Parse(s, base) with f set to the given precision
        * and rounding mode.
    **/
    static public inline function parseFloat(_s:stdgo.GoString, _base:stdgo.GoInt, _prec:stdgo.GoUInt, _mode:RoundingMode):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return stdgo._internal.math.big.Big_parsefloat.parseFloat(_s, _base, _prec, _mode);
    static public inline function testFloatSetFloat64String(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatsetfloat64string.testFloatSetFloat64String(_t);
    static public inline function testFloat64Text(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloat64text.testFloat64Text(_t);
    static public inline function testFloatText(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloattext.testFloatText(_t);
    static public inline function testFloatFormat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatformat.testFloatFormat(_t);
    static public inline function benchmarkParseFloatSmallExp(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkparsefloatsmallexp.benchmarkParseFloatSmallExp(_b);
    static public inline function benchmarkParseFloatLargeExp(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkparsefloatlargeexp.benchmarkParseFloatLargeExp(_b);
    static public inline function testFloatScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatscan.testFloatScan(_t);
    static public inline function testFloatGobEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatgobencoding.testFloatGobEncoding(_t);
    static public inline function testFloatCorruptGob(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatcorruptgob.testFloatCorruptGob(_t);
    static public inline function testFloatJSONEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatjsonencoding.testFloatJSONEncoding(_t);
    static public inline function testFloatGobDecodeShortBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatgobdecodeshortbuffer.testFloatGobDecodeShortBuffer(_t);
    static public inline function testFloatGobDecodeInvalid(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatgobdecodeinvalid.testFloatGobDecodeInvalid(_t);
    static public inline function benchmarkGCD10x10(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkgcd10x10.benchmarkGCD10x10(_b);
    static public inline function benchmarkGCD10x100(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkgcd10x100.benchmarkGCD10x100(_b);
    static public inline function benchmarkGCD10x1000(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkgcd10x1000.benchmarkGCD10x1000(_b);
    static public inline function benchmarkGCD10x10000(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkgcd10x10000.benchmarkGCD10x10000(_b);
    static public inline function benchmarkGCD10x100000(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkgcd10x100000.benchmarkGCD10x100000(_b);
    static public inline function benchmarkGCD100x100(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkgcd100x100.benchmarkGCD100x100(_b);
    static public inline function benchmarkGCD100x1000(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkgcd100x1000.benchmarkGCD100x1000(_b);
    static public inline function benchmarkGCD100x10000(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkgcd100x10000.benchmarkGCD100x10000(_b);
    static public inline function benchmarkGCD100x100000(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkgcd100x100000.benchmarkGCD100x100000(_b);
    static public inline function benchmarkGCD1000x1000(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkgcd1000x1000.benchmarkGCD1000x1000(_b);
    static public inline function benchmarkGCD1000x10000(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkgcd1000x10000.benchmarkGCD1000x10000(_b);
    static public inline function benchmarkGCD1000x100000(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkgcd1000x100000.benchmarkGCD1000x100000(_b);
    static public inline function benchmarkGCD10000x10000(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkgcd10000x10000.benchmarkGCD10000x10000(_b);
    static public inline function benchmarkGCD10000x100000(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkgcd10000x100000.benchmarkGCD10000x100000(_b);
    static public inline function benchmarkGCD100000x100000(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkgcd100000x100000.benchmarkGCD100000x100000(_b);
    static public inline function testHilbert(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testhilbert.testHilbert(_t);
    static public inline function benchmarkHilbert(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkhilbert.benchmarkHilbert(_b);
    /**
        * NewInt allocates and returns a new Int set to x.
    **/
    static public inline function newInt(_x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return stdgo._internal.math.big.Big_newint.newInt(_x);
    /**
        * Jacobi returns the Jacobi symbol (x/y), either +1, -1, or 0.
        * The y argument must be an odd integer.
    **/
    static public inline function jacobi(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt return stdgo._internal.math.big.Big_jacobi.jacobi(_x, _y);
    static public inline function testSignZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testsignz.testSignZ(_t);
    static public inline function testSetZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testsetz.testSetZ(_t);
    static public inline function testAbsZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testabsz.testAbsZ(_t);
    static public inline function testSumZZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testsumzz.testSumZZ(_t);
    static public inline function testProdZZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testprodzz.testProdZZ(_t);
    static public inline function testMul(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testmul.testMul(_t);
    static public inline function testMulRangeZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testmulrangez.testMulRangeZ(_t);
    static public inline function testBinomial(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testbinomial.testBinomial(_t);
    static public inline function benchmarkBinomial(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkbinomial.benchmarkBinomial(_b);
    static public inline function testDivisionSigns(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testdivisionsigns.testDivisionSigns(_t);
    static public inline function testBits(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testbits.testBits(_t);
    static public inline function testSetBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testsetbytes.testSetBytes(_t);
    static public inline function testBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testbytes.testBytes(_t);
    static public inline function testQuo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testquo.testQuo(_t);
    static public inline function testQuoStepD6(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testquostepd6.testQuoStepD6(_t);
    static public inline function benchmarkQuoRem(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkquorem.benchmarkQuoRem(_b);
    static public inline function testBitLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testbitlen.testBitLen(_t);
    static public inline function testExp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testexp.testExp(_t);
    static public inline function benchmarkExp(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkexp.benchmarkExp(_b);
    static public inline function benchmarkExpMont(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkexpmont.benchmarkExpMont(_b);
    static public inline function benchmarkExp2(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkexp2.benchmarkExp2(_b);
    static public inline function testGcd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testgcd.testGcd(_t);
    static public inline function testRsh(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testrsh.testRsh(_t);
    static public inline function testRshSelf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testrshself.testRshSelf(_t);
    static public inline function testLsh(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testlsh.testLsh(_t);
    static public inline function testLshSelf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testlshself.testLshSelf(_t);
    static public inline function testLshRsh(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testlshrsh.testLshRsh(_t);
    static public inline function testCmpAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testcmpabs.testCmpAbs(_t);
    static public inline function testIntCmpSelf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testintcmpself.testIntCmpSelf(_t);
    static public inline function testInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testint64.testInt64(_t);
    static public inline function testUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testuint64.testUint64(_t);
    static public inline function testBitSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testbitset.testBitSet(_t);
    static public inline function testTrailingZeroBits(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testtrailingzerobits.testTrailingZeroBits(_t);
    static public inline function benchmarkBitset(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkbitset.benchmarkBitset(_b);
    static public inline function benchmarkBitsetNeg(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkbitsetneg.benchmarkBitsetNeg(_b);
    static public inline function benchmarkBitsetOrig(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkbitsetorig.benchmarkBitsetOrig(_b);
    static public inline function benchmarkBitsetNegOrig(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkbitsetnegorig.benchmarkBitsetNegOrig(_b);
    static public inline function benchmarkModSqrt225_Tonelli(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkmodsqrt225_tonelli.benchmarkModSqrt225_Tonelli(_b);
    static public inline function benchmarkModSqrt225_3Mod4(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkmodsqrt225_3mod4.benchmarkModSqrt225_3Mod4(_b);
    static public inline function benchmarkModSqrt231_Tonelli(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkmodsqrt231_tonelli.benchmarkModSqrt231_Tonelli(_b);
    static public inline function benchmarkModSqrt231_5Mod8(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkmodsqrt231_5mod8.benchmarkModSqrt231_5Mod8(_b);
    static public inline function testBitwise(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testbitwise.testBitwise(_t);
    static public inline function testNot(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testnot.testNot(_t);
    static public inline function testModInverse(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testmodinverse.testModInverse(_t);
    static public inline function benchmarkModInverse(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkmodinverse.benchmarkModInverse(_b);
    static public inline function testModSqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testmodsqrt.testModSqrt(_t);
    static public inline function testJacobi(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testjacobi.testJacobi(_t);
    static public inline function testJacobiPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testjacobipanic.testJacobiPanic(_t);
    static public inline function testIssue2607(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testissue2607.testIssue2607(_t);
    static public inline function testSqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testsqrt.testSqrt(_t);
    /**
        * We can't test this together with the other Exp tests above because
        * it requires a different receiver setup.
    **/
    static public inline function testIssue22830(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testissue22830.testIssue22830(_t);
    static public inline function benchmarkSqrt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarksqrt.benchmarkSqrt(_b);
    static public inline function benchmarkIntSqr(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkintsqr.benchmarkIntSqr(_b);
    static public inline function benchmarkDiv(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkdiv.benchmarkDiv(_b);
    static public inline function testFillBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfillbytes.testFillBytes(_t);
    static public inline function testNewIntMinInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testnewintminint64.testNewIntMinInt64(_t);
    static public inline function testNewIntAllocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testnewintallocs.testNewIntAllocs(_t);
    static public inline function testFloat64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloat64.testFloat64(_t);
    static public inline function testIntText(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testinttext.testIntText(_t);
    static public inline function testAppendText(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testappendtext.testAppendText(_t);
    static public inline function testGetString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testgetstring.testGetString(_t);
    static public inline function testSetString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testsetstring.testSetString(_t);
    static public inline function testFormat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testformat.testFormat(_t);
    static public inline function testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testscan.testScan(_t);
    static public inline function testIntGobEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testintgobencoding.testIntGobEncoding(_t);
    /**
        * Sending a nil Int pointer (inside a slice) on a round trip through gob should yield a zero.
        * TODO: top-level nils.
    **/
    static public inline function testGobEncodingNilIntInSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testgobencodingnilintinslice.testGobEncodingNilIntInSlice(_t);
    static public inline function testIntJSONEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testintjsonencoding.testIntJSONEncoding(_t);
    static public inline function testIntJSONEncodingNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testintjsonencodingnil.testIntJSONEncodingNil(_t);
    static public inline function testIntXMLEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testintxmlencoding.testIntXMLEncoding(_t);
    /**
        * Tests that the linker is able to remove references to Float, Rat,
        * and Int if unused (notably, not used by init).
    **/
    static public inline function testLinkerGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testlinkergc.testLinkerGC(_t);
    static public inline function testCmp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testcmp.testCmp(_t);
    static public inline function testSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testset.testSet(_t);
    static public inline function testFunNN(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfunnn.testFunNN(_t);
    static public inline function testMulRangeN(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testmulrangen.testMulRangeN(_t);
    /**
        * TestMulUnbalanced tests that multiplying numbers of different lengths
        * does not cause deep recursion and in turn allocate too much memory.
        * Test case for issue 3807.
    **/
    static public inline function testMulUnbalanced(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testmulunbalanced.testMulUnbalanced(_t);
    static public inline function benchmarkMul(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkmul.benchmarkMul(_b);
    static public inline function benchmarkNatMul(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarknatmul.benchmarkNatMul(_b);
    static public inline function testNLZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testnlz.testNLZ(_t);
    static public inline function testShiftLeft(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testshiftleft.testShiftLeft(_t);
    static public inline function testShiftRight(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testshiftright.testShiftRight(_t);
    static public inline function benchmarkZeroShifts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkzeroshifts.benchmarkZeroShifts(_b);
    static public inline function testModW(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testmodw.testModW(_t);
    static public inline function testMontgomery(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testmontgomery.testMontgomery(_t);
    static public inline function testExpNN(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testexpnn.testExpNN(_t);
    static public inline function fuzzExpMont(_f:stdgo.Ref<stdgo._internal.testing.Testing_f.F>):Void stdgo._internal.math.big.Big_fuzzexpmont.fuzzExpMont(_f);
    static public inline function benchmarkExp3Power(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkexp3power.benchmarkExp3Power(_b);
    static public inline function testFibo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfibo.testFibo(_t);
    static public inline function benchmarkFibo(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkfibo.benchmarkFibo(_b);
    static public inline function testBit(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testbit.testBit(_t);
    static public inline function testSticky(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_teststicky.testSticky(_t);
    static public inline function testSqr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testsqr.testSqr(_t);
    static public inline function benchmarkNatSqr(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarknatsqr.benchmarkNatSqr(_b);
    static public inline function testNatSubMod2N(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testnatsubmod2n.testNatSubMod2N(_t);
    static public inline function benchmarkNatSetBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarknatsetbytes.benchmarkNatSetBytes(_b);
    static public inline function testNatDiv(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testnatdiv.testNatDiv(_t);
    /**
        * TestIssue37499 triggers the edge case of divBasic where
        * the inaccurate estimate of the first word's quotient
        * happens at the very beginning of the loop.
    **/
    static public inline function testIssue37499(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testissue37499.testIssue37499(_t);
    /**
        * TestIssue42552 triggers an edge case of recursive division
        * where the first division loop is never entered, and correcting
        * the remainder takes exactly two iterations in the final loop.
    **/
    static public inline function testIssue42552(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testissue42552.testIssue42552(_t);
    static public inline function testMaxBase(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testmaxbase.testMaxBase(_t);
    static public inline function testString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_teststring.testString(_t);
    static public inline function testScanBase(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testscanbase.testScanBase(_t);
    /**
        * Test case for BenchmarkScanPi.
    **/
    static public inline function testScanPi(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testscanpi.testScanPi(_t);
    static public inline function testScanPiParallel(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testscanpiparallel.testScanPiParallel(_t);
    static public inline function benchmarkScanPi(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkscanpi.benchmarkScanPi(_b);
    static public inline function benchmarkStringPiParallel(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkstringpiparallel.benchmarkStringPiParallel(_b);
    static public inline function benchmarkScan(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkscan.benchmarkScan(_b);
    static public inline function benchmarkString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkstring.benchmarkString(_b);
    static public inline function benchmarkLeafSize(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkleafsize.benchmarkLeafSize(_b);
    static public inline function leafSizeHelper(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _base:stdgo.GoInt, _size:stdgo.GoInt):Void stdgo._internal.math.big.Big_leafsizehelper.leafSizeHelper(_b, _base, _size);
    static public inline function testStringPowers(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_teststringpowers.testStringPowers(_t);
    static public inline function testProbablyPrime(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testprobablyprime.testProbablyPrime(_t);
    static public inline function benchmarkProbablyPrime(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkprobablyprime.benchmarkProbablyPrime(_b);
    static public inline function testMillerRabinPseudoprimes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testmillerrabinpseudoprimes.testMillerRabinPseudoprimes(_t);
    static public inline function testLucasPseudoprimes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testlucaspseudoprimes.testLucasPseudoprimes(_t);
    /**
        * NewRat creates a new Rat with numerator a and denominator b.
    **/
    static public inline function newRat(_a:stdgo.GoInt64, _b:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return stdgo._internal.math.big.Big_newrat.newRat(_a, _b);
    static public inline function testZeroRat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testzerorat.testZeroRat(_t);
    static public inline function testRatSign(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratsign.testRatSign(_t);
    static public inline function testRatCmp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratcmp.testRatCmp(_t);
    static public inline function testIsInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testisint.testIsInt(_t);
    static public inline function testRatAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratabs.testRatAbs(_t);
    static public inline function testRatNeg(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratneg.testRatNeg(_t);
    static public inline function testRatInv(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratinv.testRatInv(_t);
    static public inline function testRatBin(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratbin.testRatBin(_t);
    static public inline function testIssue820(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testissue820.testIssue820(_t);
    static public inline function testRatSetFrac64Rat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratsetfrac64rat.testRatSetFrac64Rat(_t);
    static public inline function testIssue2379(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testissue2379.testIssue2379(_t);
    static public inline function testIssue3521(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testissue3521.testIssue3521(_t);
    static public inline function testFloat32Distribution(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloat32distribution.testFloat32Distribution(_t);
    static public inline function testFloat64Distribution(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloat64distribution.testFloat64Distribution(_t);
    /**
        * TestSetFloat64NonFinite checks that SetFloat64 of a non-finite value
        * returns nil.
    **/
    static public inline function testSetFloat64NonFinite(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testsetfloat64nonfinite.testSetFloat64NonFinite(_t);
    static public inline function testIsFinite(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testisfinite.testIsFinite(_t);
    static public inline function testRatSetInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratsetint64.testRatSetInt64(_t);
    static public inline function testRatSetUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratsetuint64.testRatSetUint64(_t);
    static public inline function benchmarkRatCmp(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkratcmp.benchmarkRatCmp(_b);
    /**
        * TestIssue34919 verifies that a Rat's denominator is not modified
        * when simply accessing the Rat value.
    **/
    static public inline function testIssue34919(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testissue34919.testIssue34919(_t);
    static public inline function testDenomRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testdenomrace.testDenomRace(_t);
    static public inline function testScanExponent(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testscanexponent.testScanExponent(_t);
    static public inline function testRatSetString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratsetstring.testRatSetString(_t);
    static public inline function testRatSetStringZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratsetstringzero.testRatSetStringZero(_t);
    static public inline function testRatScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratscan.testRatScan(_t);
    static public inline function testFloatString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatstring.testFloatString(_t);
    static public inline function testFloat32SpecialCases(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloat32specialcases.testFloat32SpecialCases(_t);
    static public inline function testFloat64SpecialCases(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloat64specialcases.testFloat64SpecialCases(_t);
    static public inline function testIssue31184(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testissue31184.testIssue31184(_t);
    static public inline function testIssue45910(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testissue45910.testIssue45910(_t);
    static public inline function testRatGobEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratgobencoding.testRatGobEncoding(_t);
    /**
        * Sending a nil Rat pointer (inside a slice) on a round trip through gob should yield a zero.
        * TODO: top-level nils.
    **/
    static public inline function testGobEncodingNilRatInSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testgobencodingnilratinslice.testGobEncodingNilRatInSlice(_t);
    static public inline function testRatJSONEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratjsonencoding.testRatJSONEncoding(_t);
    static public inline function testRatXMLEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratxmlencoding.testRatXMLEncoding(_t);
    static public inline function testRatGobDecodeShortBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testratgobdecodeshortbuffer.testRatGobDecodeShortBuffer(_t);
    /**
        * TestFloatSqrt64 tests that Float.Sqrt of numbers with 53bit mantissa
        * behaves like float math.Sqrt.
    **/
    static public inline function testFloatSqrt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatsqrt64.testFloatSqrt64(_t);
    static public inline function testFloatSqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatsqrt.testFloatSqrt(_t);
    static public inline function testFloatSqrtSpecial(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.math.big.Big_testfloatsqrtspecial.testFloatSqrtSpecial(_t);
    static public inline function benchmarkFloatSqrt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.math.big.Big_benchmarkfloatsqrt.benchmarkFloatSqrt(_b);
}
