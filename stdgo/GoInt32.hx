package stdgo;

import stdgo.GoNumber;

@:notNull
abstract GoInt32(Int32) from Int32 to Int32 to Int {
	public inline function new(x:Int32 = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:from static function fromFloat(x:Float):GoInt32
		return Std.int(x);

	@:to inline function toInt64():stdgo.GoInt64
		return ofIntInt64(this);

	@:to inline function toInt():stdgo.GoInt
		return this;

	@:to inline function toInt32():stdgo.GoInt32
		return this;

	@:to inline function toInt8():stdgo.GoInt8
		return clampInt8(this);

	@:to inline function toInt16():stdgo.GoInt16
		return clampInt16(this);

	@:to inline function toUInt32():stdgo.GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():stdgo.GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt():stdgo.GoUInt
		return clampUInt(this);

	@:to inline function toUInt16():stdgo.GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():stdgo.GoUInt64
		return this;

	@:to inline function toFloat32():stdgo.GoFloat32
		return this;

	@:to inline function toFloat64():stdgo.GoFloat64
		return this;

	@:to inline function toUIntptr():stdgo.GoUIntptr
		return new GoUIntptr(this);

	public static function ofInt(x:Int):GoInt32
		return x;

	// could be untyped int
	@:from static function fromInt64(x:haxe.Int64):GoInt32
		return x.low;

	@:op(A + B) private static function add(a:GoInt32, b:GoInt32):GoInt32
		return a.toBasic() + b.toBasic();

	@:op(A / B) private static inline function div(a:GoInt32, b:GoInt32):GoInt32 {
		if (b == 0) {
			#if numberlinkerror
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#else
			throw "divide by zero";
			#end
		}
		return Std.int(a.toBasic() / b.toBasic());
	}

	@:op(A * B) private static function mul(a:GoInt32, b:GoInt32):GoInt32
		return a.toBasic() * b.toBasic();

	@:op(A % B) private static function mod(a:GoInt32, b:GoInt32):GoInt32
		return a.toBasic() % b.toBasic();

	@:op(A - B) private static function sub(a:GoInt32, b:GoInt32):GoInt32
		return a.toBasic() - b.toBasic();

	@:op(A | B) private static function or(a:GoInt32, b:GoInt32):GoInt32
		return a.toBasic() | b.toBasic();

	@:op(A ^ B) private static function xor(a:GoInt32, b:GoInt32):GoInt32
		return a.toBasic() ^ b.toBasic();

	@:op(A & B) private static function and(a:GoInt32, b:GoInt32):GoInt32
		return a.toBasic() & b.toBasic();

	@:op(-A) inline function neg():GoInt32
		return this * -1;

	@:op(A >> B) private static function shr(a:GoInt32, b:GoInt32):GoInt32 {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return a.toBasic() >> b.toBasic();
	}

	@:op(A << B) private static function shl(a:GoInt32, b:GoInt32):GoInt32 {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return a.toBasic() << b.toBasic();
	}

	@:op(A > B) private static function gt(a:GoInt32, b:GoInt32):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoInt32, b:GoInt32):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoInt32, b:GoInt32):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoInt32, b:GoInt32):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A++) inline function postInc():GoInt32 {
		return this = this + 1;
	}

	@:op(A--) inline function postDec():GoInt32 {
		return this = this - 1;
	}
}