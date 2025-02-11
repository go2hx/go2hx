package stdgo;

import stdgo.GoNumber;

@:notNull
abstract GoFloat64(Float) from Float to Float {
	public inline function new(x = 0.0)
		this = x;

	@:to inline function toFloat32():GoFloat32 {
		#if interp
		// lose precision
		final array = new haxe.io.Float32Array(1);
		array.set(0, this);
		return array.get(0);
		#else
		return this;
		#end
	}

	@:to inline function toInt64():GoInt64 {
		if (std.Math.isNaN(this))
			return -9223372036854775808i64;
		return ofFloatInt64(this);
	}

	@:to function toInt():GoInt {
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

	public static function ofInt(x:Int):GoUInt
		return x;

	public inline function toBasic()
		return this;

	@:op(A + B) private static function add(a:GoFloat, b:GoFloat):GoFloat {
		return a.toBasic() + b.toBasic();
	}

	@:op(A / B) private static function div(a:GoFloat, b:GoFloat):GoFloat {
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

	@:op(A * B) private static function mul(a:GoFloat, b:GoFloat):GoFloat
		return a.toBasic() * b.toBasic();

	@:op(A - B) private static function sub(a:GoFloat, b:GoFloat):GoFloat
		return a.toBasic() - b.toBasic();

	@:op(A % B) private static function mod(a:GoFloat64, b:GoFloat64):GoFloat64
		return a.toBasic() % b.toBasic();

	@:op(A != B) private static function notEq(a:GoFloat, b:GoFloat):Bool
		return !eq(a,b);

	@:op(A == B) private static function eq(a:GoFloat, b:GoFloat):Bool
		return a.toBasic() == b.toBasic();

	@:op(A > B) private static function gt(a:GoFloat64, b:GoFloat64):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoFloat64, b:GoFloat64):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoFloat64, b:GoFloat64):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoFloat64, b:GoFloat64):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A > B) private static function gtf(a:GoFloat64, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoFloat64):Bool;

	@:op(A >= B) private static function gtef(a:GoFloat64, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoFloat64):Bool;

	@:op(A < B) private static function ltf(a:GoFloat64, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoFloat64):Bool;

	@:op(A <= B) private static function ltef(a:GoFloat64, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoFloat64):Bool;

	@:op(~A) private static function bneg(t:GoFloat):GoFloat;

	@:op(-A) private static function neg(t:GoFloat):GoFloat {
		#if interp
		if (t == 0) // && t / 0 != Math.POSITIVE_INFINITY)
			return -0.0;
		#end
		return t.toBasic() * -1;
	}

	@:op(A--) private inline function postDec():GoFloat
		return this = this - 1;

	@:op(A++) private inline function postInc():GoFloat
		return this = this + 1;
}