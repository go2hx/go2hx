package stdgo;

import stdgo.GoNumber;

@:notNull
abstract GoUInt8(UInt8) from UInt8 from Int to UInt8 {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	public static inline function ofInt(x:Int)
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

	@:to inline function toUInt8():GoUInt8 {
		trace("here");
		return clampUInt8(this);
	}

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	// could be untyped int
	@:from static function fromInt64(x:haxe.Int64):GoUInt8
		return x.low;

	@:op(A > B) private static function gt(a:GoUInt8, b:GoUInt8):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoUInt8, b:GoUInt8):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoUInt8, b:GoUInt8):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoUInt8, b:GoUInt8):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A++) inline function postInc():GoUInt8
		return this = clamp(this + 1);

	@:op(-A) private static function neg(a:GoUInt8):GoUInt8
		return a * -1;

	@:op(A--) inline function postDec():GoUInt8
		return this = clamp(this - 1);

	@:op(A + B) private static function add(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() * b.toBasic());

	@:op(A & B) private static function and(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() & b.toBasic());

	@:op(A | B) private static function or(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() | b.toBasic());

	@:op(A ^ B) private static function xor(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() ^ b.toBasic());

	@:op(A % B) private static function mod(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() % b.toBasic());

	@:op(A / B) private static function div(a:GoUInt8, b:GoUInt8):GoUInt8 {
		if (b == 0) {
			#if numberlinkerror
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#else
			throw "divide by zero";
			#end
		}
		return clamp(Std.int(a.toBasic() / b.toBasic()));
	}

	@:op(A << B) private static function shl(a:GoUInt8, b:GoUInt8):GoUInt8 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() << b.toBasic());
	}

	@:op(A >> B) private static function shr(a:GoUInt8, b:GoUInt8):GoUInt8 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	// TODO: clamp uint8
	static function clamp(x:Int)
		return clampUInt8(x);
}
