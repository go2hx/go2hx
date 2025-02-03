package stdgo;

import stdgo.GoNumber;


@:notNull
abstract GoInt64(Int64) from Int64 to Int64 {
	public inline function new(x = 0) {
		this = x;
	}

	public inline function toBasic()
		return this;

	public inline function copy():GoInt64
		return copyInt64(this);

	@:from static function fromFloat(x:Float):GoInt64
		return ofFloatInt64(x);

	@:from static function fromInt(x:Int):GoInt64
		return ofIntInt64(x);

	public function toFloat():Float {
		return toFloatInt64(this);
	}

	@:to inline function toInt():GoInt
		return toIntInt64(this);

	@:to inline function toInt32():GoInt32
		return toIntInt64(this);

	@:to inline function toInt8():GoInt8
		return clampInt8(toIntInt64(this));

	@:to inline function toInt16():GoInt16
		return clampInt16(toIntInt64(this));

	@:to inline function toInt64():GoInt64
		return this;

	@:to inline function toUInt():GoUInt
		return clampUInt(toIntInt64(this));

	@:to inline function toUInt32():GoUInt32
		return clampUInt(toIntInt64(this));

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(toIntInt64(this));

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(toIntInt64(this));

	@:to function toUInt64():GoUInt64 {
		return toUInt64Int64(this);
	}

	@:to inline function toFloat32():GoFloat32
		return toIntInt64(this);

	@:to inline function toFloat64():GoFloat64
		return toIntInt64(this);

	@:to inline function toUIntptr():GoUIntptr
		return new stdgo.GoUIntptr(toIntInt64(this));

	public static inline function ofInt(x:Int):GoInt64
		return ofIntInt64(x);

	@:op(A >> B) private static function shr(a:GoInt64, b:GoInt64):GoInt64 {
		if (shiftGuard(toIntInt64(b.toBasic())))
			return a < 0 ? -1 : 0;
		return a.toBasic() >> toIntInt64(b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoInt64, b:GoInt64):GoInt64 {
		if (shiftGuard(toIntInt64(b.toBasic())))
			return a < 0 ? -1 : 0;
		return a.toBasic() << toIntInt64(b.toBasic());
	}

	@:op(A + B) public static function add(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() + b.toBasic();

	@:op(A++) inline function postInc():GoInt64 {
		return this = this + ofIntInt64(1);
	}

	@:op(A--) inline function postDec():GoInt64
		return this = this - ofIntInt64(1);

	@:op(A * B) public static function mul(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() * b.toBasic();

	@:op(-A) private static function neg(t:GoInt64):GoInt64
		return t * -1;

	@:op(A % B) public static function mod(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() % b.toBasic();

	@:op(A / B) public static function div(a:GoInt64, b:GoInt64):GoInt64 {
		if (b == 0) {
			#if numberlinkerror
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#else
			throw "divide by zero";
			#end
		}
		return a.toBasic() / b.toBasic();
	}

	@:op(A - B) public static function sub(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() - b.toBasic();

	@:op(A | B) public static function or(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() | b.toBasic();

	@:op(A ^ B) public static function xor(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() ^ b.toBasic();

	@:op(A & B) public static function and(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() & b.toBasic();

	@:op(A > B) private static function gt(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A == B) private static function equals(a:GoInt64, b:GoInt64):Bool {
		return a.toBasic() == b.toBasic();
	}
	@:op(A != B) private static function notEquals(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() != b.toBasic();
}

