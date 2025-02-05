package stdgo;

import stdgo.GoNumber;

@:notNull
abstract GoUInt16(UInt16) from UInt16 from Int to UInt16 {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function toInt64():GoInt64
		return ofIntInt64(this);

	@:to inline function toInt():GoInt
		return this;

	@:to inline function toInt32():GoInt32
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
		return this;

	public static function ofInt(x:Int):GoUInt16
		return x;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	// could be untyped int
	@:from static function fromInt64(x:haxe.Int64):GoUInt16
		return x.low;

	@:op(-A) private static function neg(a:GoUInt16):GoUInt16
		return a * -1;

	@:op(A > B) private static function gt(a:GoUInt16, b:GoUInt16):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoUInt16, b:GoUInt16):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoUInt16, b:GoUInt16):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoUInt16, b:GoUInt16):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A >> B) private static function shr(a:GoUInt16, b:GoUInt16):GoUInt16 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoUInt16, b:GoUInt16):GoUInt16 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() << b.toBasic());
	}

	@:op(A + B) private static function add(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() * b.toBasic());

	@:op(A & B) private static function and(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() & b.toBasic());

	@:op(A | B) private static function or(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() | b.toBasic());

	@:op(A ^ B) private static function xor(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() ^ b.toBasic());

	@:op(A % B) private static function mod(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() % b.toBasic());

	@:op(A / B) private static function div(a:GoUInt16, b:GoUInt16):GoUInt16 {
		if (b == 0) {
			#if numberlinkerror
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#else
			throw "divide by zero";
			#end
		}
		return clamp(Std.int(a.toBasic() / b.toBasic()));
	}

	@:op(A++) inline function postInc():GoUInt16 {
		return this = clamp(this + 1);
	}

	@:op(A--) inline function postDec():GoUInt16 {
		return this = clamp(this - 1);
	}

	static function clamp(x:Int)
		return clampUInt16(x);
}