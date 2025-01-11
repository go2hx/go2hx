package stdgo;

import stdgo.GoNumber;

@:notNull
abstract GoUInt64(UInt64) from UInt64 to UInt64 {
	public inline function new(x = 0) {
		this = x;
	}

	public inline function copy():GoUInt64
		return copyUInt64(this);

	public inline function toBasic():UInt64
		return this;

	@:to inline function toComplex128():GoComplex128 {
		return toFloat64() + new GoComplex128(0,0);
	}

	@:to inline function toComplex64():GoComplex64 {
		return toFloat32() + new GoComplex64(0,0);
	}

	@:to inline function toInt():GoInt
		return toIntInt64(this);

	@:to inline function toInt32():GoInt32
		return toIntInt64(this);

	@:to inline function toInt64():GoInt64
		return toInt64UInt64(this);

	@:to inline function toInt8():GoInt8
		return clampInt8(toIntInt64(this));

	@:to inline function toInt16():GoInt16
		return clampInt16(toIntInt64(this));

	@:to inline function toUInt():GoUInt
		return clampUInt(toIntInt64(this));

	@:to inline function toUInt32():GoUInt32
		return clampUInt(toIntInt64(this));

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(toIntInt64(this));

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(toIntInt64(this));

	@:to inline function toUInt64():GoUInt64
		return this > zeroUInt64() ? this : zeroUInt64();

	@:to inline function toFloat32():GoFloat32
		return toFloatUInt64(this);

	@:to inline function toFloat64():GoFloat64 {
		return toFloatUInt64(this);
	}

	@:from public static inline function ofInt(x:Int):GoUInt64
		return ofIntUInt64(x);

	@:from public static inline function ofFloat(x:Float):GoUInt64
		return ofFloatUInt64(x);

	@:op(A > B) private static function gt(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A >> B) private static function shr(a:GoUInt64, b:GoUInt64):GoUInt64 {
		if (b < 0 || b >= 64)
			return a < 0 ? -1 : 0;
		return a.toBasic() >> toIntInt64(b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoUInt64, b:GoUInt64):GoUInt64 {
		if (b < 0 || b >= 64)
			return 0;
		return a.toBasic() << toIntInt64(b.toBasic());
	}

	@:op(A >>> B) private static function ushr(a:GoUInt64, b:GoUInt64):GoUInt64 {
		if (b < 0 || b >= 64)
			return a < 0 ? -1 : 0;
		return a.toBasic() >>> toIntInt64(b.toBasic());
	}

	@:op(A != B) private static function neq(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() != b.toBasic();

	@:op(A == B) private static function equals(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() == b.toBasic();

	@:op(A + B) private static function add(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() + b.toBasic();

	@:op(A - B) private static function sub(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() - b.toBasic();

	@:op(A * B) private static function mul(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() * b.toBasic();

	@:op(A & B) private static function and(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() & b.toBasic();

	@:op(A | B) private static function or(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() | b.toBasic();

	@:op(A ^ B) private static function xor(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() ^ b.toBasic();

	@:op(A % B) private static function mod(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() % b.toBasic();

	@:op(A / B) private static function div(a:GoUInt64, b:GoUInt64):GoUInt64 {
		if (b == 0) {
			#if numberlinkerror
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#else
			throw "divide by zero";
			#end
		}
		return a.toBasic() / b.toBasic();
	}

	@:op(A++) inline function postInc():GoUInt64
		return this = this + ofIntUInt64(1);

	@:op(-A) inline function neg():GoInt64
		return this * -1;

	@:op(A--) inline function postDec():GoUInt64 {
		return this = this - ofIntUInt64(1);
	}
}
