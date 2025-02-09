package stdgo;

import stdgo.GoNumber;

@:notNull
abstract GoFloat32(Float32) from Float32 to Float32 {
	public inline function new(x = 0)
		this = x;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:to inline function toInt64():GoInt64 {
		if (std.Math.isNaN(this))
			return -9223372036854775808i64;
		return ofFloatInt64(this);
	}

	@:to inline function toInt():GoInt {
		if (std.Math.isNaN(this))
			return -2147483648;
		return Std.int(this);
	}

	@:to inline function toInt32():GoInt32 {
		if (std.Math.isNaN(this))
			return -2147483648;
		return Std.int(this);
	}

	@:to inline function toInt8():GoInt8
		return clampInt8(Std.int(this));

	@:to inline function toInt16():GoInt16
		return clampInt16(Std.int(this));

	@:to inline function toUInt():GoUInt
		return clampUInt(Std.int(this));

	@:to inline function toUInt32():GoUInt32
		return clampUInt(Std.int(this));

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(Std.int(this));

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(Std.int(this));

	@:to inline function toUInt64():GoUInt64 {
		if (std.Math.isNaN(this))
			return -9223372036854775808i64;
		return this;
	}

	@:to inline function toComplex64():GoComplex64
		return new GoComplex64(this, 0);

	@:to inline function toComplex128():GoComplex128
		return new GoComplex128(this, 0);

	public inline function toBasic()
		return this;

	@:op(A + B) private static function add(a:GoFloat32, b:GoFloat32):GoFloat32
		return a.toBasic() + b.toBasic();

	@:op(A - B) private static function sub(a:GoFloat32, b:GoFloat32):GoFloat32
		return a.toBasic() - b.toBasic();

	@:op(A * B) private static function mul(a:GoFloat32, b:GoFloat32):GoFloat32
		return a.toBasic() * b.toBasic();

	@:op(A % B) private static function mod(a:GoFloat32, b:GoFloat32):GoFloat32
		return a.toBasic() % b.toBasic();

	@:op(A / B) private static function div(a:GoFloat32, b:GoFloat32):GoFloat32 {
		#if numberlinkmath
		if (b == 0) {
			var flip = a >= 0;
			if (stdgo._internal.math.Math_signbit.signbit(b))
				flip = !flip;
			if (flip) {
				return std.Math.POSITIVE_INFINITY;
			}else{
				return std.Math.NEGATIVE_INFINITY;
			}
		}
		#end
		return a.toBasic() / b.toBasic();
	}

	@:op(-A) private static function neg(t:GoFloat32):GoFloat32
		return t.toBasic() * -1;

	@:op(A++) private inline function postInc():GoFloat32 {
		return this = this + 1;
	}

	@:op(A--) private inline function postDec():GoFloat32 {
		return this = this - 1;
	}

	@:op(A > B) private static function gt(a:GoFloat32, b:GoFloat32):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoFloat32, b:GoFloat32):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoFloat32, b:GoFloat32):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoFloat32, b:GoFloat32):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A > B) private static function gtf(a:GoFloat32, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoFloat32):Bool;

	@:op(A >= B) private static function gtef(a:GoFloat32, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoFloat32):Bool;

	@:op(A < B) private static function ltf(a:GoFloat32, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoFloat32):Bool;

	@:op(A <= B) private static function ltef(a:GoFloat32, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoFloat32):Bool;
	// https://github.com/HaxeFoundation/haxe/issues/11990
	// Temp fix use Float64 for eq
	@:op(A == B) private static function eq(a:GoFloat32, b:GoFloat32):Bool
		return (a.toBasic() : Float64) == (b.toBasic() : Float64);

	@:op(A != B) private static function notEq(a:GoFloat32, b:GoFloat32):Bool
		return !eq(a, b);
}