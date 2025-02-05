package stdgo;

import stdgo.GoNumber;

@:notNull
abstract GoUInt32(UInt) from UInt from Int to UInt to Int {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return clamp(this);

	@:to inline function toInt64():GoInt64
		return ofUIntUInt64(this);

	@:to inline function toInt():GoInt
		return this;

	@:to inline function toInt32():GoInt32 // TODO check if max range conversion is the same as go
		return this;

	@:to inline function toInt8():GoInt8
		return clampInt8(this);

	@:to inline function toInt16():GoInt16
		return clampInt16(this);

	@:to inline function toUInt():GoUInt
		return clampUInt(this);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return ofUIntUInt64(this);

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	public static function ofInt(x:Int):GoUInt32
		return x;

	// could be untyped int
	@:from static function fromInt64(x:haxe.Int64):GoUInt32
		return x.low;

	@:op(A + B) private static function add(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(GoNumber.mulInt(a.toBasic(), b.toBasic()));

	@:op(A & B) private static function and(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() & b.toBasic());

	@:op(A | B) private static function or(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() | b.toBasic());

	@:op(A ^ B) private static function xor(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() ^ b.toBasic());

	@:op(A % B) private static function mod(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() % b.toBasic());

	@:op(A / B) private static function div(a:GoUInt32, b:GoUInt32):GoUInt32 {
		if (b == 0) {
			#if numberlinkerror
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#else
			throw "divide by zero";
			#end
		}
		return clamp(Std.int(a.toBasic() / b.toBasic()));
	}

	@:op(A >> B) private static function shr(a:GoUInt32, b:GoUInt32):GoUInt32 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoUInt32, b:GoUInt32):GoUInt32 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() << b.toBasic());
	}

	@:op(A++) inline function postInc():GoUInt32 {
		return this = clamp(this + 1);
	}

	@:op(-A) private static function neg(a:GoUInt32):GoUInt32
		return a * -1;

	@:op(A--) inline function postDec():GoUInt32 {
		return this = clamp(this - 1);
	}

	static function clamp(x:UInt32):UInt32
		return clampUInt(x);

	@:op(A == B) private static function equals(a:GoUInt32, b:GoUInt32):Bool
		return a.toBasic() == b.toBasic();

	@:op(A != B) private static function notEquals(a:GoUInt32, b:GoUInt32):Bool
		return !equals(a,b);

	@:op(A > B) private static function gt(a:GoUInt32, b:GoUInt32):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoUInt32, b:GoUInt32):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoUInt32, b:GoUInt32):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoUInt32, b:GoUInt32):Bool
		return a.toBasic() <= b.toBasic();
}
