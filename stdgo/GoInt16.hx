package stdgo;

import stdgo.GoNumber;

@:notNull
abstract GoInt16(Int16) from Int16 from Int to Int16 {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	public static function ofInt(x:Int):GoInt16
		return x;

	@:to inline function toInt64():GoInt64
		return ofIntInt64(this);

	@:to inline function toInt():GoInt
		return this;

	@:to inline function toInt32():GoInt32
		return this;

	@:to inline function toInt8():GoInt8
		return clampInt8(this);

	@:to inline function toInt16():GoInt16
		return this;

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

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	// could be untyped int
	@:from static function fromInt64(x:haxe.Int64):GoInt16
		return x.low;

	@:op(A >> B) private static function shr(a:GoInt16, b:GoInt16):GoInt16 {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoInt16, b:GoInt16):GoInt16 {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A + B) private static function add(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() * b.toBasic());

	@:op(A & B) private static function and(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() & b.toBasic());

	@:op(A | B) private static function or(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() | b.toBasic());

	@:op(A ^ B) private static function xor(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() ^ b.toBasic());

	@:op(A % B) private static function mod(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() % b.toBasic());

	@:op(A++) inline function postInc():GoInt16 {
		return this = clamp(this + 1);
	}

	@:op(A--) inline function postDec():GoInt16 {
		return this = clamp(this - 1);
	}

	@:op(-A) private static function neg(a:GoInt16):GoInt16
		return a * -1;

	@:op(A / B) private static function div(a:GoInt16, b:GoInt16):GoInt16 {
		if (b == 0) {
			#if numberlinkerror
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#else
			throw "divide by zero";
			#end
		}
		return clamp(Std.int(a.toBasic() / b.toBasic()));
	}

	@:op(A > B) private static function gt(a:GoInt16, b:GoInt16):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoInt16, b:GoInt16):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoInt16, b:GoInt16):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoInt16, b:GoInt16):Bool
		return a.toBasic() <= b.toBasic();

	static function clamp(x:Int):Int
		return clampInt16(x);
}

