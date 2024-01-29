package stdgo.go.constant;
/**
    // Package constant implements Values representing untyped
    // Go constants and their corresponding operations.
    //
    // A special Unknown value may be used when a value
    // is unknown due to an error. Operations on unknown
    // values produce unknown values unless specified
    // otherwise.
**/
private var __go2hxdoc__package : Bool;
final unknown : stdgo._internal.go.constant.Constant.Kind = stdgo._internal.go.constant.Constant.unknown;
final bool_ = stdgo._internal.go.constant.Constant.bool_;
final string = stdgo._internal.go.constant.Constant.string;
final int_ = stdgo._internal.go.constant.Constant.int_;
final float_ = stdgo._internal.go.constant.Constant.float_;
final complex = stdgo._internal.go.constant.Constant.complex;
typedef Value = stdgo._internal.go.constant.Constant.Value;
@:invalid typedef T_unknownVal = Dynamic;
@:invalid typedef T_stringVal = Dynamic;
@:invalid typedef T_intVal = Dynamic;
@:invalid typedef T_ratVal = Dynamic;
@:invalid typedef T_floatVal = Dynamic;
@:invalid typedef T_complexVal = Dynamic;
@:invalid typedef T_makeTestCase = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.go.constant.Constant.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.go.constant.Constant.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.go.constant.Constant.T__struct_2;
typedef Kind = stdgo._internal.go.constant.Constant.Kind;
typedef T_boolVal = stdgo._internal.go.constant.Constant.T_boolVal;
typedef T_int64Val = stdgo._internal.go.constant.Constant.T_int64Val;
/**
    // MakeUnknown returns the Unknown value.
**/
inline function makeUnknown():Value throw "not implemented";
/**
    // MakeBool returns the Bool value for b.
**/
inline function makeBool(b:Bool):Value throw "not implemented";
/**
    // MakeString returns the String value for s.
**/
inline function makeString(s:String):Value throw "not implemented";
/**
    // MakeInt64 returns the Int value for x.
**/
inline function makeInt64(x:haxe.Int64):Value throw "not implemented";
/**
    // MakeUint64 returns the Int value for x.
**/
inline function makeUint64(x:haxe.UInt64):Value throw "not implemented";
/**
    // MakeFloat64 returns the Float value for x.
    // If x is -0.0, the result is 0.0.
    // If x is not finite, the result is an Unknown.
**/
inline function makeFloat64(x:Float):Value throw "not implemented";
/**
    // MakeFromLiteral returns the corresponding integer, floating-point,
    // imaginary, character, or string value for a Go literal string. The
    // tok value must be one of token.INT, token.FLOAT, token.IMAG,
    // token.CHAR, or token.STRING. The final argument must be zero.
    // If the literal string syntax is invalid, the result is an Unknown.
**/
inline function makeFromLiteral(lit:String, tok:stdgo._internal.go.token.Token.Token, zero:UInt):Value throw "not implemented";
/**
    // BoolVal returns the Go boolean value of x, which must be a Bool or an Unknown.
    // If x is Unknown, the result is false.
**/
inline function boolVal(x:Value):Bool throw "not implemented";
/**
    // StringVal returns the Go string value of x, which must be a String or an Unknown.
    // If x is Unknown, the result is "".
**/
inline function stringVal(x:Value):String throw "not implemented";
/**
    // Int64Val returns the Go int64 value of x and whether the result is exact;
    // x must be an Int or an Unknown. If the result is not exact, its value is undefined.
    // If x is Unknown, the result is (0, false).
**/
inline function int64Val(x:Value):stdgo.Tuple.<haxe.Int64, Bool> throw "not implemented";
/**
    // Uint64Val returns the Go uint64 value of x and whether the result is exact;
    // x must be an Int or an Unknown. If the result is not exact, its value is undefined.
    // If x is Unknown, the result is (0, false).
**/
inline function uint64Val(x:Value):stdgo.Tuple.<haxe.UInt64, Bool> throw "not implemented";
/**
    // Float32Val is like Float64Val but for float32 instead of float64.
**/
inline function float32Val(x:Value):stdgo.Tuple.<Float, Bool> throw "not implemented";
/**
    // Float64Val returns the nearest Go float64 value of x and whether the result is exact;
    // x must be numeric or an Unknown, but not Complex. For values too small (too close to 0)
    // to represent as float64, Float64Val silently underflows to 0. The result sign always
    // matches the sign of x, even for 0.
    // If x is Unknown, the result is (0, false).
**/
inline function float64Val(x:Value):stdgo.Tuple.<Float, Bool> throw "not implemented";
/**
    // Val returns the underlying value for a given constant. Since it returns an
    // interface, it is up to the caller to type assert the result to the expected
    // type. The possible dynamic return types are:
    //
    //	x Kind             type of result
    //	-----------------------------------------
    //	Bool               bool
    //	String             string
    //	Int                int64 or *big.Int
    //	Float              *big.Float or *big.Rat
    //	everything else    nil
**/
inline function val(x:Value):stdgo.AnyInterface throw "not implemented";
/**
    // Make returns the Value for x.
    //
    //	type of x        result Kind
    //	----------------------------
    //	bool             Bool
    //	string           String
    //	int64            Int
    //	*big.Int         Int
    //	*big.Float       Float
    //	*big.Rat         Float
    //	anything else    Unknown
**/
inline function make(x:stdgo.AnyInterface):Value throw "not implemented";
/**
    // BitLen returns the number of bits required to represent
    // the absolute value x in binary representation; x must be an Int or an Unknown.
    // If x is Unknown, the result is 0.
**/
inline function bitLen(x:Value):Int throw "not implemented";
/**
    // Sign returns -1, 0, or 1 depending on whether x < 0, x == 0, or x > 0;
    // x must be numeric or Unknown. For complex values x, the sign is 0 if x == 0,
    // otherwise it is != 0. If x is Unknown, the result is 1.
**/
inline function sign(x:Value):Int throw "not implemented";
/**
    // Bytes returns the bytes for the absolute value of x in little-
    // endian binary representation; x must be an Int.
**/
inline function bytes(x:Value):Array<Int> throw "not implemented";
/**
    // MakeFromBytes returns the Int value given the bytes of its little-endian
    // binary representation. An empty byte slice argument represents 0.
**/
inline function makeFromBytes(bytes:Array<Int>):Value throw "not implemented";
/**
    // Num returns the numerator of x; x must be Int, Float, or Unknown.
    // If x is Unknown, or if it is too large or small to represent as a
    // fraction, the result is Unknown. Otherwise the result is an Int
    // with the same sign as x.
**/
inline function num(x:Value):Value throw "not implemented";
/**
    // Denom returns the denominator of x; x must be Int, Float, or Unknown.
    // If x is Unknown, or if it is too large or small to represent as a
    // fraction, the result is Unknown. Otherwise the result is an Int >= 1.
**/
inline function denom(x:Value):Value throw "not implemented";
/**
    // MakeImag returns the Complex value x*i;
    // x must be Int, Float, or Unknown.
    // If x is Unknown, the result is Unknown.
**/
inline function makeImag(x:Value):Value throw "not implemented";
/**
    // Real returns the real part of x, which must be a numeric or unknown value.
    // If x is Unknown, the result is Unknown.
**/
inline function real(x:Value):Value throw "not implemented";
/**
    // Imag returns the imaginary part of x, which must be a numeric or unknown value.
    // If x is Unknown, the result is Unknown.
**/
inline function imag(x:Value):Value throw "not implemented";
/**
    // ToInt converts x to an Int value if x is representable as an Int.
    // Otherwise it returns an Unknown.
**/
inline function toInt(x:Value):Value throw "not implemented";
/**
    // ToFloat converts x to a Float value if x is representable as a Float.
    // Otherwise it returns an Unknown.
**/
inline function toFloat(x:Value):Value throw "not implemented";
/**
    // ToComplex converts x to a Complex value if x is representable as a Complex.
    // Otherwise it returns an Unknown.
**/
inline function toComplex(x:Value):Value throw "not implemented";
/**
    // UnaryOp returns the result of the unary expression op y.
    // The operation must be defined for the operand.
    // If prec > 0 it specifies the ^ (xor) result size in bits.
    // If y is Unknown, the result is Unknown.
**/
inline function unaryOp(op:stdgo._internal.go.token.Token.Token, y:Value, prec:UInt):Value throw "not implemented";
/**
    // BinaryOp returns the result of the binary expression x op y.
    // The operation must be defined for the operands. If one of the
    // operands is Unknown, the result is Unknown.
    // BinaryOp doesn't handle comparisons or shifts; use Compare
    // or Shift instead.
    //
    // To force integer division of Int operands, use op == token.QUO_ASSIGN
    // instead of token.QUO; the result is guaranteed to be Int in this case.
    // Division by zero leads to a run-time panic.
**/
inline function binaryOp(x_:Value, op:stdgo._internal.go.token.Token.Token, y_:Value):Value throw "not implemented";
/**
    // Shift returns the result of the shift expression x op s
    // with op == token.SHL or token.SHR (<< or >>). x must be
    // an Int or an Unknown. If x is Unknown, the result is x.
**/
inline function shift(x:Value, op:stdgo._internal.go.token.Token.Token, s:UInt):Value throw "not implemented";
/**
    // Compare returns the result of the comparison x op y.
    // The comparison must be defined for the operands.
    // If one of the operands is Unknown, the result is
    // false.
**/
inline function compare(x_:Value, op:stdgo._internal.go.token.Token.Token, y_:Value):Bool throw "not implemented";
/**
    // TestNumbers verifies that differently written literals
    // representing the same number do have the same value.
**/
inline function testNumbers(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testOps(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFractions(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBytes(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnknown(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMakeFloat64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMake(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkStringAdd(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testBitLen(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_unknownVal_asInterface = Dynamic;
@:invalid typedef T_unknownVal_static_extension = Dynamic;
@:invalid typedef T_stringVal_asInterface = Dynamic;
@:invalid typedef T_stringVal_static_extension = Dynamic;
@:invalid typedef T_intVal_asInterface = Dynamic;
@:invalid typedef T_intVal_static_extension = Dynamic;
@:invalid typedef T_ratVal_asInterface = Dynamic;
@:invalid typedef T_ratVal_static_extension = Dynamic;
@:invalid typedef T_floatVal_asInterface = Dynamic;
@:invalid typedef T_floatVal_static_extension = Dynamic;
@:invalid typedef T_complexVal_asInterface = Dynamic;
@:invalid typedef T_complexVal_static_extension = Dynamic;
@:invalid typedef Kind_asInterface = Dynamic;
@:invalid typedef Kind_static_extension = Dynamic;
@:invalid typedef T_boolVal_asInterface = Dynamic;
@:invalid typedef T_boolVal_static_extension = Dynamic;
@:invalid typedef T_int64Val_asInterface = Dynamic;
@:invalid typedef T_int64Val_static_extension = Dynamic;
