package stdgo;

import stdgo.Pointer.PointerData;
import stdgo.StdGoTypes.AnyInterface;

typedef GoByte = GoUInt8;
typedef GoRune = GoInt;
typedef GoInt32 = GoInt;
typedef GoFloat64 = GoFloat;
private typedef Int = StdTypes.Int;
private typedef Int8 = #if cpp cpp.Int8 #elseif cs cs.Int8 #elseif java java.Int8 #else Int #end;
private typedef Int16 = #if cpp cpp.Int16 #elseif cs cs.Int16 #elseif java java.Int16 #else Int #end;
private typedef Int32 = haxe.Int32; // #if cpp cpp.Int32 #elseif cs cs.system.Int32 #else haxe.Int32 #end;
private typedef Int64 = haxe.Int64; // #if cpp cpp.Int64 #elseif cs cs.system.Int64 #elseif java java.Int64 #elseif eval eval.integers.Int64 #else haxe.Int64 #end;
private typedef UInt = Int;
private typedef UInt8 = #if hl hl.UI8 #elseif cpp cpp.UInt8 #elseif cs cs.UInt8 #else Int #end;
private typedef UInt16 = #if hl hl.UI16 #elseif cpp cpp.UInt16 #elseif cs cs.UInt16 #else Int #end;
private typedef UInt32 = #if cpp cpp.UInt32 #elseif cs cs.system.UInt32 #else Int #end;
private typedef UInt64 = #if cpp cpp.UInt64 #elseif eval eval.integers.UInt64 #else haxe.Int64 #end // __UInt64 #end;
private typedef Float = StdTypes.Float;
private typedef Float32 = #if (java || cs || hl || cpp) StdTypes.Single #else Float #end;
private typedef Float64 = #if cpp cpp.Float64 #else Float #end

private class __UInt64 {
	public var high:Int64;
	public var low:Int64;

	public inline function new(high, low) {
		this.high = high;
		this.low = low;
	}

	public static inline function ofInt(x:Int) {
		return new __UInt64(x >> 31, x);
	}
}

abstract GoUIntPtr(UInt) from UInt to UInt {
	public inline function new(x)
		this = x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uintptr";

	@:commutative @:op(A + B) private static function addI(lhs:GoUIntPtr, rhs:Int):GoUIntPtr;

	@:commutative @:op(A + B) private static function addF(lhs:GoUIntPtr, rhs:Float):Float;

	@:op(A + B) private static function add(lhs:GoUIntPtr, rhs:GoUIntPtr):GoUIntPtr;

	@:commutative @:op(A * B) private static function mulI(lhs:GoUIntPtr, rhs:Int):GoUIntPtr;

	@:commutative @:op(A * B) private static function mulF(lhs:GoUIntPtr, rhs:Float):Float;

	@:op(A * B) private static function mul(lhs:GoUIntPtr, rhs:GoUIntPtr):GoUIntPtr;

	@:op(A % B) private static function modI(lhs:GoUIntPtr, rhs:Int):GoUIntPtr;

	@:op(A % B) private static function modF(lhs:GoUIntPtr, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUIntPtr, rhs:GoUIntPtr):GoUIntPtr;

	@:op(A - B) private static function subI(lhs:GoUIntPtr, rhs:Int):GoUIntPtr;

	@:op(A - B) private static function subF(lhs:GoUIntPtr, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUIntPtr, rhs:GoUIntPtr):GoUIntPtr;

	@:op(A / B) private static function divI(lhs:GoUIntPtr, rhs:Int):Float;

	@:op(A / B) private static function divF(lhs:GoUIntPtr, rhs:Float):Float;

	@:op(A / B) private static function div(lhs:GoUIntPtr, rhs:GoUIntPtr):GoUIntPtr;

	@:commutative @:op(A | B) private static function orI(lhs:GoUIntPtr, rhs:Int):GoUIntPtr;

	@:op(A | B) private static function or(lhs:GoUIntPtr, rhs:GoUIntPtr):GoUIntPtr;

	@:commutative @:op(A ^ B) private static function xorI(lhs:GoUIntPtr, rhs:Int):GoUIntPtr;

	@:op(A ^ B) private static function xor(lhs:GoUIntPtr, rhs:GoUIntPtr):GoUIntPtr;

	@:commutative @:op(A & B) private static function andI(lhs:GoUIntPtr, rhs:Int):GoUIntPtr;

	@:op(A & B) private static function and(lhs:GoUIntPtr, rhs:GoUIntPtr):GoUIntPtr;

	@:op(A << B) private static function shl(lhs:GoUIntPtr, rhs:Int):GoUIntPtr;

	@:op(A >> B) private static function shr(lhs:GoUIntPtr, rhs:Int):GoUIntPtr;

	@:op(A >>> B) private static function ushr(lhs:GoUIntPtr, rhs:Int):GoUIntPtr;

	@:op(A > B) private static function gt(lhs:GoUIntPtr, rhs:GoUIntPtr):Bool;

	@:op(A >= B) private static function gte(lhs:GoUIntPtr, rhs:GoUIntPtr):Bool;

	@:op(A < B) private static function lt(lhs:GoUIntPtr, rhs:GoUIntPtr):Bool;

	@:op(A <= B) private static function lte(lhs:GoUIntPtr, rhs:GoUIntPtr):Bool;

	@:op(A > B) private static function gtf(lhs:GoUIntPtr, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoUIntPtr):Bool;

	@:op(A >= B) private static function gtef(lhs:GoUIntPtr, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoUIntPtr):Bool;

	@:op(A < B) private static function ltf(lhs:GoUIntPtr, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoUIntPtr):Bool;

	@:op(A <= B) private static function ltef(lhs:GoUIntPtr, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoUIntPtr):Bool;

	@:op(~A) private static function bneg(t:GoUIntPtr):GoUIntPtr;

	@:commutative @:op(A == B) private static function equalsInt<T:Int>(a:GoUIntPtr, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsInt<T:Int>(a:GoUIntPtr, b:T):Bool;

	@:commutative @:op(A == B) private static function equalsFloat<T:Float>(a:GoUIntPtr, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsFloat<T:Float>(a:GoUIntPtr, b:T):Bool;
}

abstract GoFloat(Float) from Float to Float {
	public inline function new(x)
		this = x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	public inline function _typeName_()
		return "float";

	@:commutative @:op(A + B) private static function addI(lhs:GoFloat, rhs:Int):GoFloat;

	@:commutative @:op(A + B) private static function addF(lhs:GoFloat, rhs:Float):Float;

	@:op(A + B) private static function add(lhs:GoFloat, rhs:GoFloat):GoFloat;

	@:commutative @:op(A * B) private static function mulI(lhs:GoFloat, rhs:Int):GoFloat;

	@:commutative @:op(A * B) private static function mulF(lhs:GoFloat, rhs:Float):Float;

	@:op(A * B) private static function mul(lhs:GoFloat, rhs:GoFloat):GoFloat;

	@:op(A % B) private static function modI(lhs:GoFloat, rhs:Int):GoFloat;

	@:op(A % B) private static function modF(lhs:GoFloat, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoFloat, rhs:GoFloat):GoFloat;

	@:op(A - B) private static function subI(lhs:GoFloat, rhs:Int):GoFloat;

	@:op(A - B) private static function subF(lhs:GoFloat, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoFloat, rhs:GoFloat):GoFloat;

	@:op(A / B) private static function divI(lhs:GoFloat, rhs:Int):Float;

	@:op(A / B) private static function divF(lhs:GoFloat, rhs:Float):Float;

	@:op(A / B) private static function div(lhs:GoFloat, rhs:GoFloat):Float;

	@:commutative @:op(A | B) private static function orI(lhs:GoFloat, rhs:Int):GoFloat;

	@:op(A | B) private static function or(lhs:GoFloat, rhs:GoFloat):GoFloat;

	@:commutative @:op(A ^ B) private static function xorI(lhs:GoFloat, rhs:Int):GoFloat;

	@:op(A ^ B) private static function xor(lhs:GoFloat, rhs:GoFloat):GoFloat;

	@:commutative @:op(A & B) private static function andI(lhs:GoFloat, rhs:Int):GoFloat;

	@:op(A & B) private static function and(lhs:GoFloat, rhs:GoFloat):GoFloat;

	@:op(A << B) private static function shl(lhs:GoFloat, rhs:Int):GoFloat;

	@:op(A >> B) private static function shr(lhs:GoFloat, rhs:Int):GoFloat;

	@:op(A >>> B) private static function ushr(lhs:GoFloat, rhs:Int):GoFloat;

	@:op(A > B) private static function gt(lhs:GoFloat, rhs:GoFloat):Bool;

	@:op(A >= B) private static function gte(lhs:GoFloat, rhs:GoFloat):Bool;

	@:op(A < B) private static function lt(lhs:GoFloat, rhs:GoFloat):Bool;

	@:op(A <= B) private static function lte(lhs:GoFloat, rhs:GoFloat):Bool;

	@:op(A > B) private static function gtf(lhs:GoFloat, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoFloat):Bool;

	@:op(A >= B) private static function gtef(lhs:GoFloat, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoFloat):Bool;

	@:op(A < B) private static function ltf(lhs:GoFloat, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoFloat):Bool;

	@:op(A <= B) private static function ltef(lhs:GoFloat, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoFloat):Bool;

	@:op(~A) private static function bneg(t:GoFloat):GoFloat;

	@:commutative @:op(A == B) private static function equalsInt<T:Int>(a:GoFloat, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsInt<T:Int>(a:GoFloat, b:T):Bool;

	@:commutative @:op(A == B) private static function equalsFloat<T:Float>(a:GoFloat, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsFloat<T:Float>(a:GoFloat, b:T):Bool;
}

abstract GoFloat32(Float32) from Float32 to Float32 {
	public inline function new(x)
		this = x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "float32";

	@:op(A > B) private static function gt(lhs:GoFloat32, rhs:GoFloat32):Bool;

	@:op(A >= B) private static function gte(lhs:GoFloat32, rhs:GoFloat32):Bool;

	@:op(A < B) private static function lt(lhs:GoFloat32, rhs:GoFloat32):Bool;

	@:op(A <= B) private static function lte(lhs:GoFloat32, rhs:GoFloat32):Bool;

	@:op(A > B) private static function gtf(lhs:GoFloat32, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoFloat32):Bool;

	@:op(A >= B) private static function gtef(lhs:GoFloat32, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoFloat32):Bool;

	@:op(A < B) private static function ltf(lhs:GoFloat32, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoFloat32):Bool;

	@:op(A <= B) private static function ltef(lhs:GoFloat32, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoFloat32):Bool;

	@:commutative @:op(A == B) private static function equalsInt<T:Int>(a:GoFloat32, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsInt<T:Int>(a:GoFloat32, b:T):Bool;

	@:commutative @:op(A == B) private static function equalsFloat<T:Float>(a:GoFloat32, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsFloat<T:Float>(a:GoFloat32, b:T):Bool;

	#if (java || cs || hl || cpp)
	@:commutative @:op(A + B) private static function addI(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:commutative @:op(A + B) private static function addF(lhs:GoFloat32, rhs:Float):Float;

	@:op(A + B) private static function add(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;

	@:commutative @:op(A * B) private static function mulI(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:commutative @:op(A * B) private static function mulF(lhs:GoFloat32, rhs:Float):Float;

	@:op(A * B) private static function mul(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;

	@:op(A % B) private static function modI(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(A % B) private static function modF(lhs:GoFloat32, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;

	@:op(A - B) private static function subI(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(A - B) private static function subF(lhs:GoFloat32, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;

	@:op(A / B) private static function divI(lhs:GoFloat32, rhs:Int):Float;

	@:op(A / B) private static function divF(lhs:GoFloat32, rhs:Float):Float;

	@:op(A / B) private static function div(lhs:GoFloat32, rhs:GoFloat32):Float;

	@:commutative @:op(A | B) private static function orI(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(A | B) private static function or(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;

	@:commutative @:op(A ^ B) private static function xorI(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(A ^ B) private static function xor(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;

	@:commutative @:op(A & B) private static function andI(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(A & B) private static function and(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;

	@:op(A << B) private static function shl(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(A >> B) private static function shr(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(A >>> B) private static function ushr(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(~A) private static function bneg(t:GoFloat32):GoFloat32;
	#else
	// TODO: Clamp Float32
	#end
}

abstract GoComplex64(Int64) from Int64 to Int64 {
	public inline function new(x)
		this = x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	@:from public static inline function ofInt(x:Int):GoComplex64 #if lua return new GoComplex64(Int64.make((x : Int32) >> 31,
		(x : Int32))); #else return new GoComplex64(Int64.make(x >> 31, x)); #end

	public inline function _typeName_()
		return "complex64";

	@:commutative @:op(A + B) private static function addI(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:commutative @:op(A + B) private static function addF(lhs:GoComplex64, rhs:Float):Float;

	@:op(A + B) private static function add(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;

	@:commutative @:op(A * B) private static function mulI(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:commutative @:op(A * B) private static function mulF(lhs:GoComplex64, rhs:Float):Float;

	@:op(A * B) private static function mul(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;

	@:op(A % B) private static function modI(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:op(A % B) private static function modF(lhs:GoComplex64, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;

	@:op(A - B) private static function subI(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:op(A - B) private static function subF(lhs:GoComplex64, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;

	@:op(A / B) private static function divI(lhs:GoComplex64, rhs:Int):Float;

	@:op(A / B) private static function divF(lhs:GoComplex64, rhs:Float):Float;

	@:op(A / B) private static function div(lhs:GoComplex64, rhs:GoComplex64):Float;

	@:commutative @:op(A | B) private static function orI(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:op(A | B) private static function or(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;

	@:commutative @:op(A ^ B) private static function xorI(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:op(A ^ B) private static function xor(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;

	@:commutative @:op(A & B) private static function andI(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:op(A & B) private static function and(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;

	@:op(A << B) private static function shl(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:op(A >> B) private static function shr(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:op(A >>> B) private static function ushr(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:op(A > B) private static function gt(lhs:GoComplex64, rhs:GoComplex64):Bool;

	@:op(A >= B) private static function gte(lhs:GoComplex64, rhs:GoComplex64):Bool;

	@:op(A < B) private static function lt(lhs:GoComplex64, rhs:GoComplex64):Bool;

	@:op(A <= B) private static function lte(lhs:GoComplex64, rhs:GoComplex64):Bool;

	@:op(A > B) private static function gtf(lhs:GoComplex64, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoComplex64):Bool;

	@:op(A >= B) private static function gtef(lhs:GoComplex64, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoComplex64):Bool;

	@:op(A < B) private static function ltf(lhs:GoComplex64, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoComplex64):Bool;

	@:op(A <= B) private static function ltef(lhs:GoComplex64, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoComplex64):Bool;

	@:op(~A) private static function bneg(t:GoComplex64):GoComplex64;

	@:commutative @:op(A == B) private static function equalsInt<T:Int>(a:GoComplex64, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsInt<T:Int>(a:GoComplex64, b:T):Bool;

	@:commutative @:op(A == B) private static function equalsFloat<T:Float>(a:GoComplex64, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsFloat<T:Float>(a:GoComplex64, b:T):Bool;
}

abstract GoComplex128(Int64) from Int64 to Int64 {
	public inline function new(x)
		this = x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	@:from public static inline function ofInt(x:Int):GoComplex128
		return (Int64.make(x >> 31, x) : GoComplex128);
	public inline function _typeName_()
		return "complex128";

	@:commutative @:op(A + B) private static function addI(lhs:GoComplex128, rhs:Int):GoComplex128;

	@:commutative @:op(A + B) private static function addF(lhs:GoComplex128, rhs:Float):Float;

	@:op(A + B) private static function add(lhs:GoComplex128, rhs:GoComplex128):GoComplex128;

	@:commutative @:op(A * B) private static function mulI(lhs:GoComplex128, rhs:Int):GoComplex128;

	@:commutative @:op(A * B) private static function mulF(lhs:GoComplex128, rhs:Float):Float;

	@:op(A * B) private static function mul(lhs:GoComplex128, rhs:GoComplex128):GoComplex128;

	@:op(A % B) private static function modI(lhs:GoComplex128, rhs:Int):GoComplex128;

	@:op(A % B) private static function modF(lhs:GoComplex128, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoComplex128, rhs:GoComplex128):GoComplex128;

	@:op(A - B) private static function subI(lhs:GoComplex128, rhs:Int):GoComplex128;

	@:op(A - B) private static function subF(lhs:GoComplex128, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoComplex128, rhs:GoComplex128):GoComplex128;

	@:op(A / B) private static function divI(lhs:GoComplex128, rhs:Int):Float;

	@:op(A / B) private static function divF(lhs:GoComplex128, rhs:Float):Float;

	@:op(A / B) private static function div(lhs:GoComplex128, rhs:GoComplex128):Float;

	@:commutative @:op(A | B) private static function orI(lhs:GoComplex128, rhs:Int):GoComplex128;

	@:op(A | B) private static function or(lhs:GoComplex128, rhs:GoComplex128):GoComplex128;

	@:commutative @:op(A ^ B) private static function xorI(lhs:GoComplex128, rhs:Int):GoComplex128;

	@:op(A ^ B) private static function xor(lhs:GoComplex128, rhs:GoComplex128):GoComplex128;

	@:commutative @:op(A & B) private static function andI(lhs:GoComplex128, rhs:Int):GoComplex128;

	@:op(A & B) private static function and(lhs:GoComplex128, rhs:GoComplex128):GoComplex128;

	@:op(A << B) private static function shl(lhs:GoComplex128, rhs:Int):GoComplex128;

	@:op(A >> B) private static function shr(lhs:GoComplex128, rhs:Int):GoComplex128;

	@:op(A >>> B) private static function ushr(lhs:GoComplex128, rhs:Int):GoComplex128;

	@:op(A > B) private static function gt(lhs:GoComplex128, rhs:GoComplex128):Bool;

	@:op(A >= B) private static function gte(lhs:GoComplex128, rhs:GoComplex128):Bool;

	@:op(A < B) private static function lt(lhs:GoComplex128, rhs:GoComplex128):Bool;

	@:op(A <= B) private static function lte(lhs:GoComplex128, rhs:GoComplex128):Bool;

	@:op(A > B) private static function gtf(lhs:GoComplex128, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoComplex128):Bool;

	@:op(A >= B) private static function gtef(lhs:GoComplex128, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoComplex128):Bool;

	@:op(A < B) private static function ltf(lhs:GoComplex128, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoComplex128):Bool;

	@:op(A <= B) private static function ltef(lhs:GoComplex128, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoComplex128):Bool;

	@:op(~A) private static function bneg(t:GoComplex128):GoComplex128;

	@:commutative @:op(A == B) private static function equalsInt<T:Int>(a:GoComplex128, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsInt<T:Int>(a:GoComplex128, b:T):Bool;

	@:commutative @:op(A == B) private static function equalsFloat<T:Float>(a:GoComplex128, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsFloat<T:Float>(a:GoComplex128, b:T):Bool;
}

abstract GoInt(Int) from Int32 to Int32 {
	public inline function new(x)
		this = x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	@:to inline function toUInt32()
		return new GoUInt32(this);
	@:to inline function toInt32()
		return new GoInt32(this);
	public inline function toInt():Int {
		return this;
	}
	public inline function _typeName_()
		return "int";

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

	//@:op(A / B) private static function divI(lhs:GoInt, rhs:Int):Float;

	//@:op(A / B) private static function divF(lhs:GoInt, rhs:Float):Float;

	//@:op(A / B) private static function div(lhs:GoInt, rhs:GoInt):Float;

	@:commutative @:op(A | B) private static function orI(lhs:GoInt, rhs:Int):GoInt;

	@:op(A | B) private static function or(lhs:GoInt, rhs:GoInt):GoInt;

	@:commutative @:op(A ^ B) private static function xorI(lhs:GoInt, rhs:Int):GoInt;

	@:op(A ^ B) private static function xor(lhs:GoInt, rhs:GoInt):GoInt;

	@:commutative @:op(A & B) private static function andI(lhs:GoInt, rhs:Int):GoInt;

	@:op(A & B) private static function and(lhs:GoInt, rhs:GoInt):GoInt;

	@:op(A << B) private static function shl(lhs:GoInt, rhs:Int):GoInt;

	@:op(A >> B) private static function shr(lhs:GoInt, rhs:Int):GoInt;

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
	public inline function new(x)
		this = x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uint";

	@:commutative @:op(A + B) private static function addI(lhs:GoUInt, rhs:Int):GoUInt;

	@:commutative @:op(A + B) private static function addF(lhs:GoUInt, rhs:Float):Float;

	@:op(A + B) private static function add(lhs:GoUInt, rhs:GoUInt):GoUInt;

	@:commutative @:op(A * B) private static function mulI(lhs:GoUInt, rhs:Int):GoUInt;

	@:commutative @:op(A * B) private static function mulF(lhs:GoUInt, rhs:Float):Float;

	@:op(A * B) private static function mul(lhs:GoUInt, rhs:GoUInt):GoUInt;

	@:op(A % B) private static function modI(lhs:GoUInt, rhs:Int):GoUInt;

	@:op(A % B) private static function modF(lhs:GoUInt, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUInt, rhs:GoUInt):GoUInt;

	@:op(A - B) private static function subI(lhs:GoUInt, rhs:Int):GoUInt;

	@:op(A - B) private static function subF(lhs:GoUInt, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUInt, rhs:GoUInt):GoUInt;

	@:op(A / B) private static function divI(lhs:GoUInt, rhs:Int):Float;

	@:op(A / B) private static function divF(lhs:GoUInt, rhs:Float):Float;

	@:op(A / B) private static function div(lhs:GoUInt, rhs:GoUInt):Float;

	@:commutative @:op(A | B) private static function orI(lhs:GoUInt, rhs:Int):GoUInt;

	@:op(A | B) private static function or(lhs:GoUInt, rhs:GoUInt):GoUInt;

	@:commutative @:op(A ^ B) private static function xorI(lhs:GoUInt, rhs:Int):GoUInt;

	@:op(A ^ B) private static function xor(lhs:GoUInt, rhs:GoUInt):GoUInt;

	@:commutative @:op(A & B) private static function andI(lhs:GoUInt, rhs:Int):GoUInt;

	@:op(A & B) private static function and(lhs:GoUInt, rhs:GoUInt):GoUInt;

	@:op(A << B) private static function shl(lhs:GoUInt, rhs:Int):GoUInt;

	@:op(A >> B) private static function shr(lhs:GoUInt, rhs:Int):GoUInt;

	@:op(A >>> B) private static function ushr(lhs:GoUInt, rhs:Int):GoUInt;

	@:op(A > B) private static function gt(lhs:GoUInt, rhs:GoUInt):Bool;

	@:op(A >= B) private static function gte(lhs:GoUInt, rhs:GoUInt):Bool;

	@:op(A < B) private static function lt(lhs:GoUInt, rhs:GoUInt):Bool;

	@:op(A <= B) private static function lte(lhs:GoUInt, rhs:GoUInt):Bool;

	@:op(A > B) private static function gtf(lhs:GoUInt, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoUInt):Bool;

	@:op(A >= B) private static function gtef(lhs:GoUInt, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoUInt):Bool;

	@:op(A < B) private static function ltf(lhs:GoUInt, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoUInt):Bool;

	@:op(A <= B) private static function ltef(lhs:GoUInt, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoUInt):Bool;

	@:op(~A) private static function bneg(t:GoUInt):GoUInt;

	@:commutative @:op(A == B) private static function equalsInt<T:Int>(a:GoUInt, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsInt<T:Int>(a:GoUInt, b:T):Bool;

	@:commutative @:op(A == B) private static function equalsFloat<T:Float>(a:GoUInt, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsFloat<T:Float>(a:GoUInt, b:T):Bool;

	// TODO: clamp uint, increase number range
}

abstract GoInt8(Int8) from Int8 to Int8 {
	public inline function new(x)
		this = x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	@:from static function ofUInt8(x:GoUInt8):GoInt8 {
		return new GoInt8(x);
	}
	public inline function _typeName_()
		return "int8";

	@:op(A > B) private static function gt(lhs:GoInt8, rhs:GoInt8):Bool;

	@:op(A >= B) private static function gte(lhs:GoInt8, rhs:GoInt8):Bool;

	@:op(A < B) private static function lt(lhs:GoInt8, rhs:GoInt8):Bool;

	@:op(A <= B) private static function lte(lhs:GoInt8, rhs:GoInt8):Bool;

	@:op(A > B) private static function gtf(lhs:GoInt8, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoInt8):Bool;

	@:op(A >= B) private static function gtef(lhs:GoInt8, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoInt8):Bool;

	@:op(A < B) private static function ltf(lhs:GoInt8, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoInt8):Bool;

	@:op(A <= B) private static function ltef(lhs:GoInt8, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoInt8):Bool;

	@:commutative @:op(A == B) private static function equalsInt<T:Int>(a:GoInt8, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsInt<T:Int>(a:GoInt8, b:T):Bool;

	@:commutative @:op(A == B) private static function equalsFloat<T:Float>(a:GoInt8, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsFloat<T:Float>(a:GoInt8, b:T):Bool;

	#if (cpp || cs || java)
	@:commutative @:op(A + B) private static function addI(lhs:GoInt8, rhs:Int):GoInt8;

	@:commutative @:op(A + B) private static function addF(lhs:GoInt8, rhs:Float):Float;

	@:op(A + B) private static function add(lhs:GoInt8, rhs:GoInt8):GoInt8;

	@:commutative @:op(A * B) private static function mulI(lhs:GoInt8, rhs:Int):GoInt8;

	@:commutative @:op(A * B) private static function mulF(lhs:GoInt8, rhs:Float):Float;

	@:op(A * B) private static function mul(lhs:GoInt8, rhs:GoInt8):GoInt8;

	@:op(A % B) private static function modI(lhs:GoInt8, rhs:Int):GoInt8;

	@:op(A % B) private static function modF(lhs:GoInt8, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoInt8, rhs:GoInt8):GoInt8;

	@:op(A - B) private static function subI(lhs:GoInt8, rhs:Int):GoInt8;

	@:op(A - B) private static function subF(lhs:GoInt8, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoInt8, rhs:GoInt8):GoInt8;

	@:op(A / B) private static function divI(lhs:GoInt8, rhs:Int):Float;

	@:op(A / B) private static function divF(lhs:GoInt8, rhs:Float):Float;

	@:op(A / B) private static function div(lhs:GoInt8, rhs:GoInt8):Float;

	@:commutative @:op(A | B) private static function orI(lhs:GoInt8, rhs:Int):GoInt8;

	@:op(A | B) private static function or(lhs:GoInt8, rhs:GoInt8):GoInt8;

	@:commutative @:op(A ^ B) private static function xorI(lhs:GoInt8, rhs:Int):GoInt8;

	@:op(A ^ B) private static function xor(lhs:GoInt8, rhs:GoInt8):GoInt8;

	@:commutative @:op(A & B) private static function andI(lhs:GoInt8, rhs:Int):GoInt8;

	@:op(A & B) private static function and(lhs:GoInt8, rhs:GoInt8):GoInt8;

	@:op(A << B) private static function shl(lhs:GoInt8, rhs:Int):GoInt8;

	@:op(A >> B) private static function shr(lhs:GoInt8, rhs:Int):GoInt8;

	@:op(A >>> B) private static function ushr(lhs:GoInt8, rhs:Int):GoInt8;

	@:op(~A) private static function bneg(t:GoInt8):GoInt8;
	#else
	// TODO: clamp int8
	static function clamp(x:Int):Int {
		var r = x & 0xFF;
		if ((r & 0x80) != 0) {
			return -1 - 0xFF + r;
		}
		return r;
	}
	#end
}

abstract GoInt16(Int16) from Int16 to Int16 {
	public inline function new(x)
		this = x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "int16";

	@:from private static inline function fromUInt8(x:GoUInt8):GoInt16 {
		return new GoInt16(x);
	}

	@:op(A > B) private static function gt(lhs:GoInt16, rhs:GoInt16):Bool;

	@:op(A >= B) private static function gte(lhs:GoInt16, rhs:GoInt16):Bool;

	@:op(A < B) private static function lt(lhs:GoInt16, rhs:GoInt16):Bool;

	@:op(A <= B) private static function lte(lhs:GoInt16, rhs:GoInt16):Bool;

	@:op(A > B) private static function gtf(lhs:GoInt16, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoInt16):Bool;

	@:op(A >= B) private static function gtef(lhs:GoInt16, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoInt16):Bool;

	@:op(A < B) private static function ltf(lhs:GoInt16, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoInt16):Bool;

	@:op(A <= B) private static function ltef(lhs:GoInt16, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoInt16):Bool;

	@:commutative @:op(A == B) private static function equalsInt<T:Int>(a:GoInt16, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsInt<T:Int>(a:GoInt16, b:T):Bool;

	@:commutative @:op(A == B) private static function equalsFloat<T:Float>(a:GoInt16, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsFloat<T:Float>(a:GoInt16, b:T):Bool;

	#if (java || cs || cpp)
	@:op(~A) private static function bneg(t:GoInt16):GoInt16;

	@:commutative @:op(A + B) private static function addI(lhs:GoInt16, rhs:Int):GoInt16;

	@:commutative @:op(A + B) private static function addF(lhs:GoInt16, rhs:Float):Float;

	@:op(A + B) private static function add(lhs:GoInt16, rhs:GoInt16):GoInt16;

	@:commutative @:op(A * B) private static function mulI(lhs:GoInt16, rhs:Int):GoInt16;

	@:commutative @:op(A * B) private static function mulF(lhs:GoInt16, rhs:Float):Float;

	@:op(A * B) private static function mul(lhs:GoInt16, rhs:GoInt16):GoInt16;

	@:op(A % B) private static function modI(lhs:GoInt16, rhs:Int):GoInt16;

	@:op(A % B) private static function modF(lhs:GoInt16, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoInt16, rhs:GoInt16):GoInt16;

	@:op(A - B) private static function subI(lhs:GoInt16, rhs:Int):GoInt16;

	@:op(A - B) private static function subF(lhs:GoInt16, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoInt16, rhs:GoInt16):GoInt16;

	@:op(A / B) private static function divI(lhs:GoInt16, rhs:Int):Float;

	@:op(A / B) private static function divF(lhs:GoInt16, rhs:Float):Float;

	@:op(A / B) private static function div(lhs:GoInt16, rhs:GoInt16):Float;

	@:commutative @:op(A | B) private static function orI(lhs:GoInt16, rhs:Int):GoInt16;

	@:op(A | B) private static function or(lhs:GoInt16, rhs:GoInt16):GoInt16;

	@:commutative @:op(A ^ B) private static function xorI(lhs:GoInt16, rhs:Int):GoInt16;

	@:op(A ^ B) private static function xor(lhs:GoInt16, rhs:GoInt16):GoInt16;

	@:commutative @:op(A & B) private static function andI(lhs:GoInt16, rhs:Int):GoInt16;

	@:op(A & B) private static function and(lhs:GoInt16, rhs:GoInt16):GoInt16;

	@:op(A << B) private static function shl(lhs:GoInt16, rhs:Int):GoInt16;

	@:op(A >> B) private static function shr(lhs:GoInt16, rhs:Int):GoInt16;

	@:op(A >>> B) private static function ushr(lhs:GoInt16, rhs:Int):GoInt16;
	#else
	@:op(A + B) private static inline function add(a:GoInt16,b:GoInt16):GoInt16
		return clamp((a : Int) + (b : Int));
	static function clamp(x:Int):Int {
		var r = x & 0xFFFF;
		if ((r & 0x8000) != 0) {
			return -1 - 0xFFFF + r;
		}
		return r;
	}
	#end
}

abstract GoInt64(Int64) from Int64 to Int64 {
	public inline function new(x)
		this = x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	@:to inline function toString() {
		return haxe.Int64.toStr(this);
	}

	public inline function _typeName_()
		return "int64";

	@:from public static inline function ofInt8(x:GoInt8):GoInt64 {
		return ofInt(x);
	}
	@:from public static inline function ofUInt8(x:GoUInt8):GoInt64 {
		return ofInt(x);
	}

	@:from public static inline function ofInt(x:Int):GoInt64
		return (Int64.make(x >> 31, x) : GoInt64);

	@:commutative @:op(A + B) private static function addI(lhs:GoInt64, rhs:Int):GoInt64;

	@:commutative @:op(A + B) private static function addF(lhs:GoInt64, rhs:Float):Float;

	@:op(A + B) private static function add(lhs:GoInt64, rhs:GoInt64):GoInt64;

	@:commutative @:op(A * B) private static function mulI(lhs:GoInt64, rhs:Int):GoInt64;

	@:commutative @:op(A * B) private static function mulF(lhs:GoInt64, rhs:Float):Float;

	@:op(A * B) private static function mul(lhs:GoInt64, rhs:GoInt64):GoInt64;

	@:op(A % B) private static function modI(lhs:GoInt64, rhs:Int):GoInt64;

	@:op(A % B) private static function modF(lhs:GoInt64, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoInt64, rhs:GoInt64):GoInt64;

	@:op(A - B) private static function subI(lhs:GoInt64, rhs:Int):GoInt64;

	@:op(A - B) private static function subF(lhs:GoInt64, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoInt64, rhs:GoInt64):GoInt64;

	@:op(A / B) private static function divI(lhs:GoInt64, rhs:Int):Float;

	@:op(A / B) private static function divF(lhs:GoInt64, rhs:Float):Float;

	@:op(A / B) private static function div(lhs:GoInt64, rhs:GoInt64):Float;

	@:commutative @:op(A | B) private static function orI(lhs:GoInt64, rhs:Int):GoInt64;

	@:op(A | B) private static function or(lhs:GoInt64, rhs:GoInt64):GoInt64;

	@:commutative @:op(A ^ B) private static function xorI(lhs:GoInt64, rhs:Int):GoInt64;

	@:op(A ^ B) private static function xor(lhs:GoInt64, rhs:GoInt64):GoInt64;

	@:commutative @:op(A & B) private static function andI(lhs:GoInt64, rhs:Int):GoInt64;

	@:op(A & B) private static function and(lhs:GoInt64, rhs:GoInt64):GoInt64;

	@:op(A << B) private static function shl(lhs:GoInt64, rhs:Int):GoInt64;

	@:op(A >> B) private static function shr(lhs:GoInt64, rhs:Int):GoInt64;

	@:op(A >>> B) private static function ushr(lhs:GoInt64, rhs:Int):GoInt64;

	@:op(A > B) private static function gt(lhs:GoInt64, rhs:GoInt64):Bool;

	@:op(A >= B) private static function gte(lhs:GoInt64, rhs:GoInt64):Bool;

	@:op(A < B) private static function lt(lhs:GoInt64, rhs:GoInt64):Bool;

	@:op(A <= B) private static function lte(lhs:GoInt64, rhs:GoInt64):Bool;

	@:op(A > B) private static function gtf(lhs:GoInt64, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoInt64):Bool;

	@:op(A >= B) private static function gtef(lhs:GoInt64, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoInt64):Bool;

	@:op(A < B) private static function ltf(lhs:GoInt64, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoInt64):Bool;

	@:op(A <= B) private static function ltef(lhs:GoInt64, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoInt64):Bool;

	@:op(~A) private static function bneg(t:GoInt64):GoInt64;

	@:op(A == B) private static function equals(a:GoInt64,b:GoInt64):Bool {
		return haxe.Int64.eq(a,b);
	}
	@:op(A != B) private static function notEquals(a:GoInt64,b:GoInt64):Bool {
		return !haxe.Int64.eq(a,b);
	}

	@:commutative @:op(A == B) private static function equalsInt<T:Int>(a:GoInt64, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsInt<T:Int>(a:GoInt64, b:T):Bool;

	@:commutative @:op(A == B) private static function equalsFloat<T:Float>(a:GoInt64, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsFloat<T:Float>(a:GoInt64, b:T):Bool;
}

abstract GoUInt8(UInt8) from UInt8 to UInt8 {
	public inline function new(x)
		this = x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	@:from public static inline function ofInt(x:Int):GoUInt8 {
		return new GoUInt8(x);
	}
	public inline function _typeName_()
		return "uint8";

	@:op(A > B) private static function gt(lhs:GoUInt8, rhs:GoUInt8):Bool;

	@:op(A >= B) private static function gte(lhs:GoUInt8, rhs:GoUInt8):Bool;

	@:op(A < B) private static function lt(lhs:GoUInt8, rhs:GoUInt8):Bool;

	@:op(A <= B) private static function lte(lhs:GoUInt8, rhs:GoUInt8):Bool;

	@:op(A > B) private static function gtf(lhs:GoUInt8, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoUInt8):Bool;

	@:op(A >= B) private static function gtef(lhs:GoUInt8, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoUInt8):Bool;

	@:op(A < B) private static function ltf(lhs:GoUInt8, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoUInt8):Bool;

	@:op(A <= B) private static function ltef(lhs:GoUInt8, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoUInt8):Bool;

	@:commutative @:op(A == B) private static function equalsInt<T:Int>(a:GoUInt8, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsInt<T:Int>(a:GoUInt8, b:T):Bool;

	@:commutative @:op(A == B) private static function equalsFloat<T:Float>(a:GoUInt8, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsFloat<T:Float>(a:GoUInt8, b:T):Bool;

	#if (cs || cpp || hl)
	@:commutative @:op(A + B) private static function addI(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:commutative @:op(A + B) private static function addF(lhs:GoUInt8, rhs:Float):Float;

	@:op(A + B) private static function add(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;

	@:commutative @:op(A * B) private static function mulI(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:commutative @:op(A * B) private static function mulF(lhs:GoUInt8, rhs:Float):Float;

	@:op(A * B) private static function mul(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;

	@:op(A % B) private static function modI(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:op(A % B) private static function modF(lhs:GoUInt8, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;

	@:op(A - B) private static function subI(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:op(A - B) private static function subF(lhs:GoUInt8, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;

	@:op(A / B) private static function divI(lhs:GoUInt8, rhs:Int):Float;

	@:op(A / B) private static function divF(lhs:GoUInt8, rhs:Float):Float;

	@:op(A / B) private static function div(lhs:GoUInt8, rhs:GoUInt8):Float;

	@:commutative @:op(A | B) private static function orI(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:op(A | B) private static function or(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;

	@:commutative @:op(A ^ B) private static function xorI(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:op(A ^ B) private static function xor(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;

	@:commutative @:op(A & B) private static function andI(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:op(A & B) private static function and(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;

	@:op(A << B) private static function shl(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:op(A >> B) private static function shr(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:op(A >>> B) private static function ushr(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:op(~A) private static function bneg(t:GoUInt8):GoUInt8;
	#else
	// TODO: clamp uint8
	static function clamp(x:Int):Int {
		return x & 0xFF;
	}
	#end
}

abstract GoUInt16(UInt16) from UInt16 to UInt16 {
	public inline function new(x)
		this = x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uint16";

	@:op(A > B) private static function gt(lhs:GoUInt16, rhs:GoUInt16):Bool;

	@:op(A >= B) private static function gte(lhs:GoUInt16, rhs:GoUInt16):Bool;

	@:op(A < B) private static function lt(lhs:GoUInt16, rhs:GoUInt16):Bool;

	@:op(A <= B) private static function lte(lhs:GoUInt16, rhs:GoUInt16):Bool;

	@:op(A > B) private static function gtf(lhs:GoUInt16, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoUInt16):Bool;

	@:op(A >= B) private static function gtef(lhs:GoUInt16, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoUInt16):Bool;

	@:op(A < B) private static function ltf(lhs:GoUInt16, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoUInt16):Bool;

	@:op(A <= B) private static function ltef(lhs:GoUInt16, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoUInt16):Bool;

	@:commutative @:op(A == B) private static function equalsInt<T:Int>(a:GoUInt16, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsInt<T:Int>(a:GoUInt16, b:T):Bool;

	@:commutative @:op(A == B) private static function equalsFloat<T:Float>(a:GoUInt16, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsFloat<T:Float>(a:GoUInt16, b:T):Bool;

	#if (cs || cpp || hl)
	@:commutative @:op(A + B) private static function addI(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:commutative @:op(A + B) private static function addF(lhs:GoUInt16, rhs:Float):Float;

	@:op(A + B) private static function add(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;

	@:commutative @:op(A * B) private static function mulI(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:commutative @:op(A * B) private static function mulF(lhs:GoUInt16, rhs:Float):Float;

	@:op(A * B) private static function mul(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;

	@:op(A % B) private static function modI(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:op(A % B) private static function modF(lhs:GoUInt16, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;

	@:op(A - B) private static function subI(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:op(A - B) private static function subF(lhs:GoUInt16, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;

	@:op(A / B) private static function divI(lhs:GoUInt16, rhs:Int):Float;

	@:op(A / B) private static function divF(lhs:GoUInt16, rhs:Float):Float;

	@:op(A / B) private static function div(lhs:GoUInt16, rhs:GoUInt16):Float;

	@:commutative @:op(A | B) private static function orI(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:op(A | B) private static function or(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;

	@:commutative @:op(A ^ B) private static function xorI(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:op(A ^ B) private static function xor(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;

	@:commutative @:op(A & B) private static function andI(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:op(A & B) private static function and(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;

	@:op(A << B) private static function shl(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:op(A >> B) private static function shr(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:op(A >>> B) private static function ushr(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:op(~A) private static function bneg(t:GoUInt16):GoUInt16;
	#else
	// TODO: clamp uint16
	static function clamp(x:Int):Int {
		return x & 0xFFFF;
	}
	#end
}

abstract GoUInt32(UInt32) from UInt32 to UInt32 {
	public inline function new(x)
		this = x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uint32";

	@:from public static inline function ofInt(x:Int):GoUInt32 {
		return (x : GoUInt32);
	}

	@:from public static inline function ofFloat(x:Float):GoUInt32 {
		return (Std.int(x) : GoUInt32);
	}

	@:op(A > B) private static function gt(lhs:GoUInt32, rhs:GoUInt32):Bool;

	@:op(A >= B) private static function gte(lhs:GoUInt32, rhs:GoUInt32):Bool;

	@:op(A < B) private static function lt(lhs:GoUInt32, rhs:GoUInt32):Bool;

	@:op(A <= B) private static function lte(lhs:GoUInt32, rhs:GoUInt32):Bool;

	@:op(A > B) private static function gtf(lhs:GoUInt32, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoUInt32):Bool;

	@:op(A >= B) private static function gtef(lhs:GoUInt32, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoUInt32):Bool;

	@:op(A < B) private static function ltf(lhs:GoUInt32, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoUInt32):Bool;

	@:op(A <= B) private static function ltef(lhs:GoUInt32, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoUInt32):Bool;

	@:commutative @:op(A == B) private static function equalsInt<T:Int>(a:GoUInt32, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsInt<T:Int>(a:GoUInt32, b:T):Bool;

	@:commutative @:op(A == B) private static function equalsFloat<T:Float>(a:GoUInt32, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsFloat<T:Float>(a:GoUInt32, b:T):Bool;

	@:op(A / B) private static function divI(lhs:GoUInt32, rhs:Int):GoUInt32 {
		return clamp(Std.int((lhs : Int) / (rhs : Int)));
	}

	@:op(A / B) private static function divF(lhs:GoUInt32, rhs:Float):GoUInt32 {
		return clamp(Std.int((lhs : Int) / rhs));
	}

	@:op(A / B) private static function div(lhs:GoUInt32, rhs:GoUInt32):GoUInt32 {
		return clamp(Std.int((lhs : Int) / (rhs : Int)));
	}

	#if (cs || cpp)
	@:commutative @:op(A + B) private static function addI(lhs:GoUInt32, rhs:Int):GoUInt32;

	@:commutative @:op(A + B) private static function addF(lhs:GoUInt32, rhs:Float):Float;

	@:op(A + B) private static function add(lhs:GoUInt32, rhs:GoUInt32):GoUInt32;

	@:commutative @:op(A * B) private static function mulI(lhs:GoUInt32, rhs:Int):GoUInt32;

	@:commutative @:op(A * B) private static function mulF(lhs:GoUInt32, rhs:Float):Float;

	@:op(A * B) private static function mul(lhs:GoUInt32, rhs:GoUInt32):GoUInt32;

	@:op(A % B) private static function modI(lhs:GoUInt32, rhs:Int):GoUInt32;

	@:op(A % B) private static function modF(lhs:GoUInt32, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUInt32, rhs:GoUInt32):GoUInt32;

	@:op(A - B) private static function subI(lhs:GoUInt32, rhs:Int):GoUInt32;

	@:op(A - B) private static function subF(lhs:GoUInt32, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUInt32, rhs:GoUInt32):GoUInt32;

	@:commutative @:op(A | B) private static function orI(lhs:GoUInt32, rhs:Int):GoUInt32;

	@:op(A | B) private static function or(lhs:GoUInt32, rhs:GoUInt32):GoUInt32;

	@:commutative @:op(A ^ B) private static function xorI(lhs:GoUInt32, rhs:Int):GoUInt32;

	@:op(A ^ B) private static function xor(lhs:GoUInt32, rhs:GoUInt32):GoUInt32;

	@:commutative @:op(A & B) private static function andI(lhs:GoUInt32, rhs:Int):GoUInt32;

	@:op(A & B) private static function and(lhs:GoUInt32, rhs:GoUInt32):GoUInt32;

	@:op(A << B) private static function shl(lhs:GoUInt32, rhs:Int):GoUInt32;

	@:op(A >> B) private static function shr(lhs:GoUInt32, rhs:Int):GoUInt32;

	@:op(A >>> B) private static function ushr(lhs:GoUInt32, rhs:Int):GoUInt32;

	@:op(~A) private static function bneg(t:GoUInt32):GoUInt32;
	#else
	@:commutative @:op(A + B) private static function addI(lhs:GoUInt32, rhs:Int):GoUInt32 {
		return clamp((lhs : Int) + (rhs : Int));
	}
	@:commutative @:op(A ^ B) private static function xor(lhs:GoUInt32, rhs:Int):GoUInt32 {
		return clamp((lhs : Int) ^ (rhs : Int));
	}
	@:commutative @:op(A - B) private static function subI(lhs:GoUInt32, rhs:Int):GoUInt32 {
		return clamp((lhs : Int) - (rhs : Int));
	}
	@:commutative @:op(A * B) private static function mulI(lhs:GoUInt32, rhs:Int):GoUInt32 {
		return clamp((lhs : Int) * (rhs : Int));
	}
	// TODO: clamp uint32, increase number range
	static function clamp(x:Int):Int {
		return x;
	}
	#end
}

abstract GoUInt64(UInt64) from UInt64 to UInt64 {
	public inline function new(x)
		this = x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uint64";

	@:from public static inline function ofInt(x:Int):GoUInt64 {
		return new GoUInt64(UInt64.ofInt(x));
	}

	@:from public static inline function ofFloat(x:Float):GoUInt64 {
		return (Std.int(x) : GoUInt64);
	}

	@:op(A > B) private static function gt(lhs:GoUInt64, rhs:GoUInt64):Bool;

	@:op(A >= B) private static function gte(lhs:GoUInt64, rhs:GoUInt64):Bool;

	@:op(A < B) private static function lt(lhs:GoUInt64, rhs:GoUInt64):Bool;

	@:op(A <= B) private static function lte(lhs:GoUInt64, rhs:GoUInt64):Bool;

	@:op(A > B) private static function gtf(lhs:GoUInt64, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoUInt64):Bool;

	@:op(A >= B) private static function gtef(lhs:GoUInt64, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoUInt64):Bool;

	@:op(A < B) private static function ltf(lhs:GoUInt64, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoUInt64):Bool;

	@:op(A <= B) private static function ltef(lhs:GoUInt64, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoUInt64):Bool;

	@:commutative @:op(A == B) private static function equalsInt<T:Int>(a:GoUInt64, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsInt<T:Int>(a:GoUInt64, b:T):Bool;

	@:commutative @:op(A == B) private static function equalsFloat<T:Float>(a:GoUInt64, b:T):Bool;

	@:commutative @:op(A != B) private static function notEqualsFloat<T:Float>(a:GoUInt64, b:T):Bool;

	#if (cs || cpp || eval)
	@:commutative @:op(A + B) private static function addI(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:commutative @:op(A + B) private static function addF(lhs:GoUInt64, rhs:Float):Float;

	@:op(A + B) private static function add(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;

	@:commutative @:op(A * B) private static function mulI(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:commutative @:op(A * B) private static function mulF(lhs:GoUInt64, rhs:Float):Float;

	@:op(A * B) private static function mul(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;

	@:op(A % B) private static function modI(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(A % B) private static function modF(lhs:GoUInt64, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;

	@:op(A - B) private static function subI(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(A - B) private static function subF(lhs:GoUInt64, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;

	//@:op(A / B) private static function divI(lhs:GoUInt64, rhs:Int):Float;

	//@:op(A / B) private static function divF(lhs:GoUInt64, rhs:Float):Float;

	//@:op(A / B) private static function div(lhs:GoUInt64, rhs:GoUInt64):Float;

	@:commutative @:op(A | B) private static function orI(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(A | B) private static function or(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;

	@:commutative @:op(A ^ B) private static function xorI(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(A ^ B) private static function xor(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;

	@:commutative @:op(A & B) private static function andI(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(A & B) private static function and(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;

	@:op(A << B) private static function shl(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(A >> B) private static function shr(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(A >>> B) private static function ushr(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(~A) private static function bneg(t:GoUInt64):GoUInt64;
	#else
	// TODO: clamp uint64, increase number range
	#end
}

interface StructType {
	public final _typeName_:String;
	public final _address_:String;
	public var _is_pointer_:Bool;
}

abstract AnyInterface({value:Any, typeName:String}) {
	public inline function new(obj) {
		this = obj;
	}

	@:to private inline function to<T>() {
		return (this.value : T);
	}

	@:from private static inline function from<T>(x:T) {
		if (x == null)
			return new AnyInterface({value: null,typeName: "null"});
		return new AnyInterface({value: x, typeName: "unknown"});
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
	function set(i:Int, value:T):T;
}

interface MapAccess<K, V> {
	function get(k:K):Null<V>;
	function set(k:K, v:V):Void;
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
