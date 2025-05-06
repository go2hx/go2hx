package stdgo.go.constant;
var unknown : Kind = 0i64;
var bool_ : Kind = 1i64;
var string : Kind = 2i64;
var int_ : Kind = 3i64;
var float_ : Kind = 4i64;
var complex : Kind = 5i64;
typedef Value = stdgo._internal.go.constant.Constant_value.Value;
typedef Kind = stdgo._internal.go.constant.Constant_kind.Kind;
typedef KindPointer = stdgo._internal.go.constant.Constant_kindpointer.KindPointer;
/**
    * Package constant implements Values representing untyped
    * Go constants and their corresponding operations.
    * 
    * A special Unknown value may be used when a value
    * is unknown due to an error. Operations on unknown
    * values produce unknown values unless specified
    * otherwise.
**/
class Constant {
    /**
        * MakeUnknown returns the Unknown value.
    **/
    static public inline function makeUnknown():stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_makeunknown.makeUnknown();
    /**
        * MakeBool returns the Bool value for b.
    **/
    static public inline function makeBool(_b:Bool):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_makebool.makeBool(_b);
    /**
        * MakeString returns the String value for s.
    **/
    static public inline function makeString(_s:stdgo.GoString):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_makestring.makeString(_s);
    /**
        * MakeInt64 returns the Int value for x.
    **/
    static public inline function makeInt64(_x:stdgo.GoInt64):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_makeint64.makeInt64(_x);
    /**
        * MakeUint64 returns the Int value for x.
    **/
    static public inline function makeUint64(_x:stdgo.GoUInt64):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_makeuint64.makeUint64(_x);
    /**
        * MakeFloat64 returns the Float value for x.
        * If x is -0.0, the result is 0.0.
        * If x is not finite, the result is an Unknown.
    **/
    static public inline function makeFloat64(_x:stdgo.GoFloat64):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_makefloat64.makeFloat64(_x);
    /**
        * MakeFromLiteral returns the corresponding integer, floating-point,
        * imaginary, character, or string value for a Go literal string. The
        * tok value must be one of token.INT, token.FLOAT, token.IMAG,
        * token.CHAR, or token.STRING. The final argument must be zero.
        * If the literal string syntax is invalid, the result is an Unknown.
    **/
    static public inline function makeFromLiteral(_lit:stdgo.GoString, _tok:stdgo._internal.go.token.Token_token.Token, _zero:stdgo.GoUInt):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_lit, _tok, _zero);
    /**
        * BoolVal returns the Go boolean value of x, which must be a Bool or an Unknown.
        * If x is Unknown, the result is false.
    **/
    static public inline function boolVal(_x:Value):Bool return stdgo._internal.go.constant.Constant_boolval.boolVal(_x);
    /**
        * StringVal returns the Go string value of x, which must be a String or an Unknown.
        * If x is Unknown, the result is "".
    **/
    static public inline function stringVal(_x:Value):stdgo.GoString return stdgo._internal.go.constant.Constant_stringval.stringVal(_x);
    /**
        * Int64Val returns the Go int64 value of x and whether the result is exact;
        * x must be an Int or an Unknown. If the result is not exact, its value is undefined.
        * If x is Unknown, the result is (0, false).
    **/
    static public inline function int64Val(_x:Value):{ var _0 : stdgo.GoInt64; var _1 : Bool; } return stdgo._internal.go.constant.Constant_int64val.int64Val(_x);
    /**
        * Uint64Val returns the Go uint64 value of x and whether the result is exact;
        * x must be an Int or an Unknown. If the result is not exact, its value is undefined.
        * If x is Unknown, the result is (0, false).
    **/
    static public inline function uint64Val(_x:Value):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } return stdgo._internal.go.constant.Constant_uint64val.uint64Val(_x);
    /**
        * Float32Val is like Float64Val but for float32 instead of float64.
    **/
    static public inline function float32Val(_x:Value):{ var _0 : stdgo.GoFloat32; var _1 : Bool; } return stdgo._internal.go.constant.Constant_float32val.float32Val(_x);
    /**
        * Float64Val returns the nearest Go float64 value of x and whether the result is exact;
        * x must be numeric or an Unknown, but not Complex. For values too small (too close to 0)
        * to represent as float64, Float64Val silently underflows to 0. The result sign always
        * matches the sign of x, even for 0.
        * If x is Unknown, the result is (0, false).
    **/
    static public inline function float64Val(_x:Value):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } return stdgo._internal.go.constant.Constant_float64val.float64Val(_x);
    /**
        * Val returns the underlying value for a given constant. Since it returns an
        * interface, it is up to the caller to type assert the result to the expected
        * type. The possible dynamic return types are:
        * 
        * 	x Kind             type of result
        * 	-----------------------------------------
        * 	Bool               bool
        * 	String             string
        * 	Int                int64 or *big.Int
        * 	Float              *big.Float or *big.Rat
        * 	everything else    nil
    **/
    static public inline function val(_x:Value):stdgo.AnyInterface return stdgo._internal.go.constant.Constant_val.val(_x);
    /**
        * Make returns the Value for x.
        * 
        * 	type of x        result Kind
        * 	----------------------------
        * 	bool             Bool
        * 	string           String
        * 	int64            Int
        * 	*big.Int         Int
        * 	*big.Float       Float
        * 	*big.Rat         Float
        * 	anything else    Unknown
    **/
    static public inline function make(_x:stdgo.AnyInterface):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_make.make(_x);
    /**
        * BitLen returns the number of bits required to represent
        * the absolute value x in binary representation; x must be an Int or an Unknown.
        * If x is Unknown, the result is 0.
    **/
    static public inline function bitLen(_x:Value):stdgo.GoInt return stdgo._internal.go.constant.Constant_bitlen.bitLen(_x);
    /**
        * Sign returns -1, 0, or 1 depending on whether x < 0, x == 0, or x > 0;
        * x must be numeric or Unknown. For complex values x, the sign is 0 if x == 0,
        * otherwise it is != 0. If x is Unknown, the result is 1.
    **/
    static public inline function sign(_x:Value):stdgo.GoInt return stdgo._internal.go.constant.Constant_sign.sign(_x);
    /**
        * Bytes returns the bytes for the absolute value of x in little-
        * endian binary representation; x must be an Int.
    **/
    static public inline function bytes(_x:Value):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.go.constant.Constant_bytes.bytes(_x);
    /**
        * MakeFromBytes returns the Int value given the bytes of its little-endian
        * binary representation. An empty byte slice argument represents 0.
    **/
    static public inline function makeFromBytes(_bytes:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_makefrombytes.makeFromBytes(_bytes);
    /**
        * Num returns the numerator of x; x must be Int, Float, or Unknown.
        * If x is Unknown, or if it is too large or small to represent as a
        * fraction, the result is Unknown. Otherwise the result is an Int
        * with the same sign as x.
    **/
    static public inline function num(_x:Value):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_num.num(_x);
    /**
        * Denom returns the denominator of x; x must be Int, Float, or Unknown.
        * If x is Unknown, or if it is too large or small to represent as a
        * fraction, the result is Unknown. Otherwise the result is an Int >= 1.
    **/
    static public inline function denom(_x:Value):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_denom.denom(_x);
    /**
        * MakeImag returns the Complex value x*i;
        * x must be Int, Float, or Unknown.
        * If x is Unknown, the result is Unknown.
    **/
    static public inline function makeImag(_x:Value):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_makeimag.makeImag(_x);
    /**
        * Real returns the real part of x, which must be a numeric or unknown value.
        * If x is Unknown, the result is Unknown.
    **/
    static public inline function real(_x:Value):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_real.real(_x);
    /**
        * Imag returns the imaginary part of x, which must be a numeric or unknown value.
        * If x is Unknown, the result is Unknown.
    **/
    static public inline function imag(_x:Value):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_imag.imag(_x);
    /**
        * ToInt converts x to an Int value if x is representable as an Int.
        * Otherwise it returns an Unknown.
    **/
    static public inline function toInt(_x:Value):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_toint.toInt(_x);
    /**
        * ToFloat converts x to a Float value if x is representable as a Float.
        * Otherwise it returns an Unknown.
    **/
    static public inline function toFloat(_x:Value):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_tofloat.toFloat(_x);
    /**
        * ToComplex converts x to a Complex value if x is representable as a Complex.
        * Otherwise it returns an Unknown.
    **/
    static public inline function toComplex(_x:Value):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_tocomplex.toComplex(_x);
    /**
        * UnaryOp returns the result of the unary expression op y.
        * The operation must be defined for the operand.
        * If prec > 0 it specifies the ^ (xor) result size in bits.
        * If y is Unknown, the result is Unknown.
    **/
    static public inline function unaryOp(_op:stdgo._internal.go.token.Token_token.Token, _y:Value, _prec:stdgo.GoUInt):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_unaryop.unaryOp(_op, _y, _prec);
    /**
        * BinaryOp returns the result of the binary expression x op y.
        * The operation must be defined for the operands. If one of the
        * operands is Unknown, the result is Unknown.
        * BinaryOp doesn't handle comparisons or shifts; use Compare
        * or Shift instead.
        * 
        * To force integer division of Int operands, use op == token.QUO_ASSIGN
        * instead of token.QUO; the result is guaranteed to be Int in this case.
        * Division by zero leads to a run-time panic.
    **/
    static public inline function binaryOp(_x_:Value, _op:stdgo._internal.go.token.Token_token.Token, _y_:Value):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_binaryop.binaryOp(_x_, _op, _y_);
    /**
        * Shift returns the result of the shift expression x op s
        * with op == token.SHL or token.SHR (<< or >>). x must be
        * an Int or an Unknown. If x is Unknown, the result is x.
    **/
    static public inline function shift(_x:Value, _op:stdgo._internal.go.token.Token_token.Token, _s:stdgo.GoUInt):stdgo._internal.go.constant.Constant_value.Value return stdgo._internal.go.constant.Constant_shift.shift(_x, _op, _s);
    /**
        * Compare returns the result of the comparison x op y.
        * The comparison must be defined for the operands.
        * If one of the operands is Unknown, the result is
        * false.
    **/
    static public inline function compare(_x_:Value, _op:stdgo._internal.go.token.Token_token.Token, _y_:Value):Bool return stdgo._internal.go.constant.Constant_compare.compare(_x_, _op, _y_);
    /**
        * TestNumbers verifies that differently written literals
        * representing the same number do have the same value.
    **/
    static public inline function testNumbers(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.constant.Constant_testnumbers.testNumbers(_t);
    static public inline function testOps(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.constant.Constant_testops.testOps(_t);
    static public inline function testString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.constant.Constant_teststring.testString(_t);
    static public inline function testFractions(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.constant.Constant_testfractions.testFractions(_t);
    static public inline function testBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.constant.Constant_testbytes.testBytes(_t);
    static public inline function testUnknown(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.constant.Constant_testunknown.testUnknown(_t);
    static public inline function testMakeFloat64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.constant.Constant_testmakefloat64.testMakeFloat64(_t);
    static public inline function testMake(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.constant.Constant_testmake.testMake(_t);
    static public inline function benchmarkStringAdd(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.go.constant.Constant_benchmarkstringadd.benchmarkStringAdd(_b);
    static public inline function testBitLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.constant.Constant_testbitlen.testBitLen(_t);
}
