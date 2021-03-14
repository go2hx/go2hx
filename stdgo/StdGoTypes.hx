package stdgo;
import stdgo.Pointer.PointerData;
import stdgo.StdGoTypes.AnyInterface;

typedef Byte = GoUInt8;
typedef Rune = GoInt32;

typedef Int = StdTypes.Int;
typedef Int8 = Int;
typedef Int16 = Int;
typedef Int32 = Int;
typedef Int64 = Int;

typedef UInt = Int;
typedef UInt8 = Int;
typedef UInt16 = Int;
typedef UInt32 = Int;
typedef UInt64 = Int;

abstract GoUIntPtr(UInt) from UInt to UInt {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "uintptr";
}
abstract GoRune(Int) from Int to Int {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "rune";
}
abstract GoByte(UInt) from UInt to UInt {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "byte";
}
abstract GoFloat(Float) from Float to Float {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "float";
}
abstract GoFloat32(Float) from Float to Float {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "float32";
}
abstract GoFloat64(Float) from Float to Float {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "float64";
}
abstract GoComplex64(Int) from Int to Int {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "complex64";
}
abstract GoComplex128(Int) from Int to Int {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "complex128";
}
abstract GoInt(Int) from Int to Int {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "int";
    public inline function new()
        this = 0;
    @:commutative @:op(A + B) private static function addI(lhs:GoInt, rhs:Int):GoInt;

	@:commutative @:op(A + B) private static function addF(lhs:GoInt, rhs:Float):Float;

	@:op(A + B) private static function add(lhs:GoInt, rhs:GoInt):GoInt;

	@:commutative @:op(A * B) private static function mulI(lhs:GoInt, rhs:Int):GoInt;

	@:commutative @:op(A * B) private static function mulF(lhs:GoInt, rhs:Float):Float;

	@:op(A * B) private static function mul(lhs:GoInt, rhs:GoInt):GoInt;

	@:op(A % B) private static function modI(lhs:GoInt, rhs:Int):GoInt;

	@:op(A % B) private static function modF(lhs:GoInt, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoInt, rhs:GoInt):GoInt;

	@:op(A - B) private static function subI(lhs:GoInt, rhs:Int):GoInt;

	@:op(A - B) private static function subF(lhs:GoInt, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoInt, rhs:GoInt):GoInt;

	@:op(A / B) private static function divI(lhs:GoInt, rhs:Int):Float;

	@:op(A / B) private static function divF(lhs:GoInt, rhs:Float):Float;

	@:op(A / B) private static function div(lhs:GoInt, rhs:GoInt):Float;

	@:commutative @:op(A | B) private static function orI(lhs:GoInt, rhs:Int):GoInt;

	@:op(A | B) private static function or(lhs:GoInt, rhs:GoInt):GoInt;

	@:commutative @:op(A ^ B) private static function xorI(lhs:GoInt, rhs:Int):GoInt;

	@:op(A ^ B) private static function xor(lhs:GoInt, rhs:GoInt):GoInt;

	@:commutative @:op(A & B) private static function andI(lhs:GoInt, rhs:Int):GoInt;

	@:op(A & B) private static function and(lhs:GoInt, rhs:GoInt):GoInt;

	@:op(A << B) private static function shl(lhs:GoInt, rhs:Int):GoInt;

	@:op(A >> B) private static inline function shr(lhs:GoInt, rhs:Int):GoInt
		return lhs >>> rhs;

	@:op(A >>> B) private static function ushr(lhs:GoInt, rhs:Int):GoInt;

	@:op(A > B) private static function gt(lhs:GoInt, rhs:GoInt):Bool;

	@:op(A >= B) private static function gte(lhs:GoInt, rhs:GoInt):Bool;

	@:op(A < B) private static function lt(lhs:GoInt, rhs:GoInt):Bool;

	@:op(A <= B) private static function lte(lhs:GoInt, rhs:GoInt):Bool;

	@:op(A > B) private static function gtf(lhs:GoInt, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoInt):Bool;

	@:op(A >= B) private static function gtef(lhs:GoInt, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoInt):Bool;

	@:op(A < B) private static function ltf(lhs:GoInt, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoInt):Bool;

	@:op(A <= B) private static function ltef(lhs:GoInt, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoInt):Bool;

	@:op(~A) private static function bneg(t:GoInt):GoInt;

	@:commutative @:op(A == B) private static function equalsInt<T:Int>(a:GoInt, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsInt<T:Int>(a:GoInt, b:T):Bool;

	@:commutative @:op(A == B) private static function equalsFloat<T:Float>(a:GoInt, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsFloat<T:Float>(a:GoInt, b:T):Bool;
}
abstract GoUInt(Int) from Int to Int {

    public inline function new()
        this = 0;
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "uint";
}
abstract GoInt8(Int) from Int to Int {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "int8";
}
abstract GoInt16(Int) from Int to Int {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "int16";
}
abstract GoInt32(Int) from Int to Int {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "int32";
}
abstract GoInt64(Int) from Int to Int {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "int64";
}

abstract GoUInt8(Int) from Int to Int {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "uint8";
}
abstract GoUInt16(Int) from Int to Int {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "uint16";
}
abstract GoUInt32(Int) from Int to Int {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "uint32";
}
abstract GoUInt64(Int) from Int to Int {
    @:to inline function __promote()
        return new AnyInterface({value: this,typeName: _typeName_()});
    public inline function _typeName_()
        return "uint64";
}

interface InterfaceType {
    public var _typeName_:String;
    public var _is_pointer_:Bool;
}


abstract AnyInterface({value:Any,typeName:String}) {
    public inline function new(obj) {
        this = obj;
    }
    @:to private inline function to<T>() {
        return (this.value : T);
    }
    @:from private static inline function from<T>(x:T) {
        trace("Unknown type Any expr: " + x);
        return new AnyInterface({value: x,typeName: "unknown"});
    }
    public inline function typeName() {
        return this.typeName;
    }
    public inline function value() {
        return this.value;
    }
}

interface ArrayAccess<T> {
	function get(i:Int):T;
	function set(i:Int,value:T):T;
}
interface MapAccess<K,V> {
    function get(k:K):Null<V>;
    function set(k:K,v:V):Void;
}


/*
uint8       the set of all unsigned  8-bit integers (0 to 255)
uint16      the set of all unsigned 16-bit integers (0 to 65535)
uint32      the set of all unsigned 32-bit integers (0 to 4294967295)
uint64      the set of all unsigned 64-bit integers (0 to 18446744073709551615)

int8        the set of all signed  8-bit integers (-128 to 127)
int16       the set of all signed 16-bit integers (-32768 to 32767)
int32       the set of all signed 32-bit integers (-2147483648 to 2147483647)
int64       the set of all signed 64-bit integers (-9223372036854775808 to 9223372036854775807)

float32     the set of all IEEE-754 32-bit floating-point numbers
float64     the set of all IEEE-754 64-bit floating-point numbers

complex64   the set of all complex numbers with float32 real and imaginary parts
complex128  the set of all complex numbers with float64 real and imaginary parts

byte        alias for uint8
rune        alias for int32
*/