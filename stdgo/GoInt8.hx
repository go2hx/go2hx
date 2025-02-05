package stdgo;

import stdgo.GoNumber;

@:notNull
abstract GoInt8(Int8) from Int8 from Int to Int8 {
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
		return this;

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

	public static function ofInt(x:Int):GoInt8
		return x;

	// could be untyped int
	@:from static function fromInt64(x:haxe.Int64):GoInt8
		return x.low;

	@:op(A >> B) private static function shr(a:GoInt8, b:GoInt8):GoInt8 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoInt8, b:GoInt8):GoInt8 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() << b.toBasic());
	}

	@:op(A + B) private static function add(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() + b.toBasic()));

	@:op(A - B) private static function sub(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() - b.toBasic()));

	@:op(A * B) private static function mul(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() * b.toBasic()));

	@:op(A & B) private static function and(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() & b.toBasic()));

	@:op(A | B) private static function or(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() | b.toBasic()));

	@:op(A ^ B) private static function xor(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() ^ b.toBasic()));

	@:op(A % B) private static function mod(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() % b.toBasic()));

	@:op(-A) private static function neg(a:GoInt8):GoInt8
		return a * -1;

	@:op(A++) inline function postInc():GoInt8 {
		return this = clamp(this + 1);
	}

	@:op(A--) inline function postDec():GoInt8 {
		return this = clamp(this - 1);
	}

	@:op(A > B) private static function gt(a:GoInt8, b:GoInt8):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoInt8, b:GoInt8):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoInt8, b:GoInt8):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoInt8, b:GoInt8):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A / B) private static function div(a:GoInt8, b:GoInt8):GoInt8 {
		if (b == 0) {
			#if numberlinkerror
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#else
			throw "divide by zero";
			#end
		}
		return clamp(Std.int(a.toBasic() / b.toBasic()));
	}

	static function clamp(x:Int)
		return clampInt8(x);
}