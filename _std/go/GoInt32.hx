package go;

import go.GoNumber;

@:notNull
abstract GoInt32(Int32) from Int32 to Int32 to Int {
	public inline function new(x:Int32 = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:from static function fromFloat(x:Float):GoInt32
		return Std.int(x);

	@:to inline function toInt64():go.GoInt64
		return ofIntInt64(this);

	@:to inline function toInt():go.GoInt
		return this;

	@:to inline function toInt32():go.GoInt32
		return this;

	@:to inline function toInt8():go.GoInt8
		return clampInt8(this);

	@:to inline function toInt16():go.GoInt16
		return clampInt16(this);

	@:to inline function toUInt32():go.GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():go.GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt():go.GoUInt
		return clampUInt(this);

	@:to inline function toUInt16():go.GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():go.GoUInt64
		return this;

	@:to inline function toFloat32():go.GoFloat32
		return this;

	@:to inline function toFloat64():go.GoFloat64
		return this;

	@:to inline function toUIntptr():go.GoUIntptr
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
			throw @:privateAccess go.Error._divideError.__underlying__();
		}
		return Std.int(a.toBasic() / b.toBasic());
	}

	@:op(A * B) private static function mul(a:GoInt32, b:GoInt32):GoInt32
		return a.toBasic() * b.toBasic();

	@:op(A % B) private static function mod(a:GoInt32, b:GoInt32):GoInt32 {
		if (b == 0) {
			throw @:privateAccess go.Error._divideError.__underlying__();
		}
		return a.toBasic() % b.toBasic();
	}

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
