package stdgo;

import stdgo.Pointer.PointerData;
import stdgo.StdGoTypes.AnyInterface;
import haxe.Int32;
import haxe.Int64;

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
private typedef UInt8 = Int;//#if hl hl.UI8 #elseif cpp cpp.UInt8 #elseif cs cs.UInt8 #else Int #end;
private typedef UInt16 = #if hl hl.UI16 #elseif cpp cpp.UInt16 #elseif cs cs.UInt16 #else Int #end;
private typedef UInt32 = #if cpp cpp.UInt32 #elseif cs cs.system.UInt32 #else Int64 #end;
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
		if (x < 0)
			return new __UInt64(0,0);
		return new __UInt64(x >> 31, x);
	}
}

private class __Int128 {
	public var high:Int64;
	public var low:Int64;
	public inline function new(high,low) {
		this.high = high;
		this.low = low;
	}
	public static inline function ofInt(x:Int) {
		return new __Int128(x >> 31, x);
	}
}

abstract GoUIntptr(UInt) from UInt {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uintptr";



	@:op(A + B) private static function add(lhs:GoUIntptr, rhs:GoUIntptr):GoUIntptr;



	@:op(A * B) private static function mul(lhs:GoUIntptr, rhs:GoUIntptr):GoUIntptr;

	@:op(A % B) private static function modI(lhs:GoUIntptr, rhs:Int):GoUIntptr;

	@:op(A % B) private static function modF(lhs:GoUIntptr, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUIntptr, rhs:GoUIntptr):GoUIntptr;

	@:op(A - B) private static function subI(lhs:GoUIntptr, rhs:Int):GoUIntptr;

	@:op(A - B) private static function subF(lhs:GoUIntptr, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUIntptr, rhs:GoUIntptr):GoUIntptr;


	@:op(A | B) private static function or(lhs:GoUIntptr, rhs:GoUIntptr):GoUIntptr;


	@:op(A ^ B) private static function xor(lhs:GoUIntptr, rhs:GoUIntptr):GoUIntptr;


	@:op(A & B) private static function and(lhs:GoUIntptr, rhs:GoUIntptr):GoUIntptr;

	@:op(A << B) private static function shl(lhs:GoUIntptr, rhs:Int):GoUIntptr;

	@:op(A >> B) private static function shr(lhs:GoUIntptr, rhs:Int):GoUIntptr;

	@:op(A >>> B) private static function ushr(lhs:GoUIntptr, rhs:Int):GoUIntptr;

	@:op(A > B) private static function gt(lhs:GoUIntptr, rhs:GoUIntptr):Bool;

	@:op(A >= B) private static function gte(lhs:GoUIntptr, rhs:GoUIntptr):Bool;

	@:op(A < B) private static function lt(lhs:GoUIntptr, rhs:GoUIntptr):Bool;

	@:op(A <= B) private static function lte(lhs:GoUIntptr, rhs:GoUIntptr):Bool;

	@:op(A > B) private static function gtf(lhs:GoUIntptr, rhs:Float):Bool;

	@:op(A > B) private static function gtf2(lhs:Float, rhs:GoUIntptr):Bool;

	@:op(A >= B) private static function gtef(lhs:GoUIntptr, rhs:Float):Bool;

	@:op(A >= B) private static function gtef2(lhs:Float, rhs:GoUIntptr):Bool;

	@:op(A < B) private static function ltf(lhs:GoUIntptr, rhs:Float):Bool;

	@:op(A < B) private static function ltf2(lhs:Float, rhs:GoUIntptr):Bool;

	@:op(A <= B) private static function ltef(lhs:GoUIntptr, rhs:Float):Bool;

	@:op(A <= B) private static function ltef2(lhs:Float, rhs:GoUIntptr):Bool;

	@:op(~A) private static function bneg(t:GoUIntptr):GoUIntptr;




}

abstract GoFloat(Float) from Float {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	public inline function _typeName_()
		return "float";



	@:op(A + B) private static function add(lhs:GoFloat, rhs:GoFloat):GoFloat;



	@:op(A * B) private static function mul(lhs:GoFloat, rhs:GoFloat):GoFloat;

	@:op(A % B) private static function modI(lhs:GoFloat, rhs:Int):GoFloat;

	@:op(A % B) private static function modF(lhs:GoFloat, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoFloat, rhs:GoFloat):GoFloat;

	@:op(A - B) private static function subI(lhs:GoFloat, rhs:Int):GoFloat;

	@:op(A - B) private static function subF(lhs:GoFloat, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoFloat, rhs:GoFloat):GoFloat;


	@:op(A | B) private static function or(lhs:GoFloat, rhs:GoFloat):GoFloat;


	@:op(A ^ B) private static function xor(lhs:GoFloat, rhs:GoFloat):GoFloat;


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




}

abstract GoFloat32(Float32) from Float32 {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
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





	#if (java || cs || hl || cpp)


	@:op(A + B) private static function add(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;



	@:op(A * B) private static function mul(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;

	@:op(A % B) private static function modI(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(A % B) private static function modF(lhs:GoFloat32, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;

	@:op(A - B) private static function subI(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(A - B) private static function subF(lhs:GoFloat32, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;


	@:op(A | B) private static function or(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;


	@:op(A ^ B) private static function xor(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;


	@:op(A & B) private static function and(lhs:GoFloat32, rhs:GoFloat32):GoFloat32;

	@:op(A << B) private static function shl(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(A >> B) private static function shr(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(A >>> B) private static function ushr(lhs:GoFloat32, rhs:Int):GoFloat32;

	@:op(~A) private static function bneg(t:GoFloat32):GoFloat32;
	#else
	// TODO: Clamp Float32
	#end
}

abstract GoComplex64(Int64) from Int64 {
	public inline function new(x)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	@:from public static inline function ofInt(x:Int):GoComplex64 #if lua return new GoComplex64(Int64.make((x : Int32) >> 31,
		(x : Int32))); #else return new GoComplex64(Int64.make(x >> 31, x)); #end

	public inline function _typeName_()
		return "complex64";



	@:op(A + B) private static function add(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;



	@:op(A * B) private static function mul(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;

	@:op(A % B) private static function modI(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:op(A % B) private static function modF(lhs:GoComplex64, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;

	@:op(A - B) private static function subI(lhs:GoComplex64, rhs:Int):GoComplex64;

	@:op(A - B) private static function subF(lhs:GoComplex64, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;


	@:op(A | B) private static function or(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;


	@:op(A ^ B) private static function xor(lhs:GoComplex64, rhs:GoComplex64):GoComplex64;


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




}

abstract GoComplex128(Int64) {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	public inline function _typeName_()
		return "complex128";



	@:op(A + B) private static function add(lhs:GoComplex128, rhs:GoComplex128):GoComplex128;



	@:op(A * B) private static function mul(lhs:GoComplex128, rhs:GoComplex128):GoComplex128;

	@:op(A % B) private static function modI(lhs:GoComplex128, rhs:Int):GoComplex128;

	@:op(A % B) private static function modF(lhs:GoComplex128, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoComplex128, rhs:GoComplex128):GoComplex128;

	@:op(A - B) private static function subI(lhs:GoComplex128, rhs:Int):GoComplex128;

	@:op(A - B) private static function subF(lhs:GoComplex128, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoComplex128, rhs:GoComplex128):GoComplex128;


	@:op(A | B) private static function or(lhs:GoComplex128, rhs:GoComplex128):GoComplex128;


	@:op(A ^ B) private static function xor(lhs:GoComplex128, rhs:GoComplex128):GoComplex128;


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




}


abstract GoInt(Int) from Int32 {
	public inline function new(x:Int32=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	public inline function _typeName_()
		return "int";



	@:op(A + B) private static function add(lhs:GoInt, rhs:GoInt):GoInt;



	@:op(A * B) private static function mul(lhs:GoInt, rhs:GoInt):GoInt;

	@:op(A % B) private static function modI(lhs:GoInt, rhs:Int):GoInt;

	@:op(A % B) private static function modF(lhs:GoInt, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoInt, rhs:GoInt):GoInt;

	@:op(A - B) private static function subI(lhs:GoInt, rhs:Int):GoInt;

	@:op(A - B) private static function subF(lhs:GoInt, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoInt, rhs:GoInt):GoInt;


	@:op(A | B) private static function or(lhs:GoInt, rhs:GoInt):GoInt;


	@:op(A ^ B) private static function xor(lhs:GoInt, rhs:GoInt):GoInt;


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




}

abstract GoUInt(Int) from Int {
	public inline function new(x=0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uint";



	@:op(A + B) private static function add(lhs:GoUInt, rhs:GoUInt):GoUInt;



	@:op(A * B) private static function mul(lhs:GoUInt, rhs:GoUInt):GoUInt;

	@:op(A % B) private static function modI(lhs:GoUInt, rhs:Int):GoUInt;

	@:op(A % B) private static function modF(lhs:GoUInt, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUInt, rhs:GoUInt):GoUInt;

	@:op(A - B) private static function subI(lhs:GoUInt, rhs:Int):GoUInt;

	@:op(A - B) private static function subF(lhs:GoUInt, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUInt, rhs:GoUInt):GoUInt;


	@:op(A | B) private static function or(lhs:GoUInt, rhs:GoUInt):GoUInt;


	@:op(A ^ B) private static function xor(lhs:GoUInt, rhs:GoUInt):GoUInt;


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





	// TODO: clamp uint, increase number range
}

abstract GoInt8(Int8) from Int8 {
	public inline function new(x=0)
		this = x;

	public inline function toBasic()
		return this;

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





	#if (cpp || cs || java)


	@:op(A + B) private static function add(lhs:GoInt8, rhs:GoInt8):GoInt8;



	@:op(A * B) private static function mul(lhs:GoInt8, rhs:GoInt8):GoInt8;

	@:op(A % B) private static function modI(lhs:GoInt8, rhs:Int):GoInt8;

	@:op(A % B) private static function modF(lhs:GoInt8, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoInt8, rhs:GoInt8):GoInt8;

	@:op(A - B) private static function subI(lhs:GoInt8, rhs:Int):GoInt8;

	@:op(A - B) private static function subF(lhs:GoInt8, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoInt8, rhs:GoInt8):GoInt8;


	@:op(A | B) private static function or(lhs:GoInt8, rhs:GoInt8):GoInt8;


	@:op(A ^ B) private static function xor(lhs:GoInt8, rhs:GoInt8):GoInt8;


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

abstract GoInt16(Int16) from Int16 {
	public inline function new(x=0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "int16";

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





	#if (java || cs || cpp)
	@:op(~A) private static function bneg(t:GoInt16):GoInt16;



	@:op(A + B) private static function add(lhs:GoInt16, rhs:GoInt16):GoInt16;



	@:op(A * B) private static function mul(lhs:GoInt16, rhs:GoInt16):GoInt16;

	@:op(A % B) private static function modI(lhs:GoInt16, rhs:Int):GoInt16;

	@:op(A % B) private static function modF(lhs:GoInt16, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoInt16, rhs:GoInt16):GoInt16;

	@:op(A - B) private static function subI(lhs:GoInt16, rhs:Int):GoInt16;

	@:op(A - B) private static function subF(lhs:GoInt16, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoInt16, rhs:GoInt16):GoInt16;


	@:op(A | B) private static function or(lhs:GoInt16, rhs:GoInt16):GoInt16;


	@:op(A ^ B) private static function xor(lhs:GoInt16, rhs:GoInt16):GoInt16;


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
abstract IntegerTypeInt(Int) from Int to Int {
	public inline function new(x) {
		this = x;
	}
	@:commutative @:op(A + B) private static inline function addI(lhs:IntegerTypeInt, rhs:Int):Int {
		return (lhs : Int) + rhs;
	}
	@:commutative @:op(A + B) private static inline function addI64(lhs:IntegerTypeInt, rhs:Int64):Int64 {
		return (lhs : Int64) + rhs;
	}
	@:commutative @:op(A - B) private static inline function subI(lhs:IntegerTypeInt, rhs:Int):Int {
		return (lhs : Int) - rhs;
	}
	@:commutative @:op(A - B) private static inline function subI64(lhs:IntegerTypeInt, rhs:Int64):Int64 {
		return (lhs : Int64) - rhs;
	}
	@:commutative @:op(A | B) private static inline function orI(lhs:IntegerTypeInt, rhs:Int):Int {
		return (lhs : Int) | rhs;
	}
	@:commutative @:op(A | B) private static inline function orI64(lhs:IntegerTypeInt, rhs:Int64):Int64 {
		return (lhs : Int64) | rhs;
	}
	@:commutative @:op(A ^ B) private static inline function xorI(lhs:IntegerTypeInt, rhs:Int):Int {
		return (lhs : Int) ^ rhs;
	}
	@:commutative @:op(A ^ B) private static inline function xorI64(lhs:IntegerTypeInt, rhs:Int64):Int64 {
		return (lhs : Int64) ^ rhs;
	}
	@:commutative @:op(A & B) private static inline function andI(lhs:IntegerTypeInt, rhs:Int):Int {
		return (lhs : Int) & rhs;
	}
	@:commutative @:op(A & B) private static inline function andI64(lhs:IntegerTypeInt, rhs:Int64):Int64 {
		return (lhs : Int64) & rhs;
	}
}
abstract IntegerTypeInt64(Int64) {
	public inline function new(x) {
		this = x;
	}
	@:from public static inline function ofString(x:String) {
		try {
			return new IntegerTypeInt64(Int64.parseString(x));
		}catch(e) {
			trace("integer type from string error: " + e);
			return new IntegerTypeInt64(Int64.make(0,0));
		}
	}
}

abstract GoInt64(Int64) from Int64 {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;

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



	@:op(A + B) private static function add(lhs:GoInt64, rhs:GoInt64):GoInt64;



	@:op(A * B) private static function mul(lhs:GoInt64, rhs:GoInt64):GoInt64;

	@:op(A % B) private static function modI(lhs:GoInt64, rhs:Int):GoInt64;

	@:op(A % B) private static function modF(lhs:GoInt64, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoInt64, rhs:GoInt64):GoInt64;

	@:op(A - B) private static function subI(lhs:GoInt64, rhs:Int):GoInt64;

	@:op(A - B) private static function subF(lhs:GoInt64, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoInt64, rhs:GoInt64):GoInt64;

	@:op(A | B) private static function or(lhs:GoInt64, rhs:GoInt64):GoInt64;


	@:op(A ^ B) private static function xor(lhs:GoInt64, rhs:GoInt64):GoInt64;


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




}

abstract GoUInt8(UInt8) from UInt8 {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
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





	#if (cs || cpp || hl)


	@:op(A + B) private static function add(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;



	@:op(A * B) private static function mul(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;

	@:op(A % B) private static function modI(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:op(A % B) private static function modF(lhs:GoUInt8, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;

	@:op(A - B) private static function subI(lhs:GoUInt8, rhs:Int):GoUInt8;

	@:op(A - B) private static function subF(lhs:GoUInt8, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;

	@:op(A | B) private static function or(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;


	@:op(A ^ B) private static function xor(lhs:GoUInt8, rhs:GoUInt8):GoUInt8;


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

abstract GoUInt16(UInt16) from UInt16 {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
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





	#if (cs || cpp || hl)


	@:op(A + B) private static function add(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;



	@:op(A * B) private static function mul(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;

	@:op(A % B) private static function modI(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:op(A % B) private static function modF(lhs:GoUInt16, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;

	@:op(A - B) private static function subI(lhs:GoUInt16, rhs:Int):GoUInt16;

	@:op(A - B) private static function subF(lhs:GoUInt16, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;


	@:op(A | B) private static function or(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;


	@:op(A ^ B) private static function xor(lhs:GoUInt16, rhs:GoUInt16):GoUInt16;


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
abstract GoUInt32(UInt32) from UInt32 {
	public inline function new(x=0)
		this = x;

	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uint32";

	@:commutative @:op(A ^ B) private static inline function xor(lhs:GoUInt32, rhs:Int):GoUInt32 {
		return Int64.xor(lhs.toBasic(),Int64.ofInt(rhs));
	}

	// TODO: clamp uint32, increase number range
	static function clamp(x:Int):Int {
		return x;
	}
}


abstract GoUInt64(UInt64) from UInt64 {
	public inline function new(x)
		this = x;
	public inline function toBasic()
		return this;

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

	#if (cs || cpp || eval)


	@:op(A + B) private static function add(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;



	@:op(A * B) private static function mul(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;

	@:op(A % B) private static function modI(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(A % B) private static function modF(lhs:GoUInt64, rhs:Float):Float;

	@:op(A % B) private static function mod(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;

	@:op(A - B) private static function subI(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(A - B) private static function subF(lhs:GoUInt64, rhs:Float):Float;

	@:op(A - B) private static function sub(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;


	@:op(A | B) private static function or(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;


	@:op(A ^ B) private static function xor(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;


	@:op(A & B) private static function and(lhs:GoUInt64, rhs:GoUInt64):GoUInt64;

	@:op(A << B) private static function shl(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(A >> B) private static function shr(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(A >>> B) private static function ushr(lhs:GoUInt64, rhs:Int):GoUInt64;

	@:op(~A) private static function bneg(t:GoUInt64):GoUInt64;
	#if eval
	@:op(A != B) static function eq(a:GoUInt64, b:GoUInt64):Bool;
	@:op(A == B) static function ne(a:GoUInt64, b:GoUInt64):Bool;
	@:op(A < B) static function lt(a:GoUInt64, b:GoUInt64):Bool;
	@:op(A > B) static function gt(a:GoUInt64, b:GoUInt64):Bool;
	@:op(A <= B) static function lte(a:GoUInt64, b:GoUInt64):Bool;
	@:op(A >= B) static function gte(a:GoUInt64, b:GoUInt64):Bool;
	
	#end
	#else



	// TODO: clamp uint64, increase number range
	#end
}

interface StructType {
	public final _typeName_:String;
	public var _address_:Int;
	public var _is_pointer_:Bool;
}
interface Error {
	public function error():String;
}

abstract AnyInterface({value:Any, typeName:String}) {
	public inline function new(obj=null) {
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