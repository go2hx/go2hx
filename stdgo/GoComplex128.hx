package stdgo;

import stdgo.GoNumber;

@:notNull
abstract GoComplex128(Complex128) from Complex128 {
	public inline function new(?r:GoFloat64, ?i:GoFloat64) {
		if (r == null || i == null) {
			this = new Complex128(0, 0);
		} else {
			this = new Complex128(r.toBasic(), i.toBasic());
		}
	}

	@:to inline function toComplex64():GoComplex64 {
		return new GoComplex64(real, imag);
	}

	inline function toComplex128()
		return this;

	@:from static function fromFloat(f:GoFloat64):GoComplex128 {
		return new GoComplex128(f, 0);
	}

	public inline function toBasic()
		return this;

	public var real(get, never):GoFloat64;
	public var imag(get, never):GoFloat64;

	private inline function get_real()
		return this.real;

	private inline function get_imag()
		return this.imag;

	@:from public static inline function ofInt(x:Int):GoComplex128
		return new Complex128(x, 0);

	@:op(A + B) private static function add(a:GoComplex128, b:GoComplex128):GoComplex128
		return new GoComplex128(a.real + b.real, a.imag + b.imag);

	@:op(A * B) private static function mul(a:GoComplex128, b:GoComplex128):GoComplex128
		return new GoComplex128((a.real * b.real) - (a.imag * b.imag), (a.imag * b.real) + (a.real * b.imag));

	@:op(A / B) private static function div(a:GoComplex128, b:GoComplex128):GoComplex128 {
		if (b.real == 0.0 && b.imag == 0.0)
			return new GoComplex128(0.0, 0.0);
		return new GoComplex128(((a.real * b.real) + (a.imag * b.imag)) / ((b.real * b.real) + (b.imag * b.imag)),
			((a.imag * b.real) - (a.real * b.imag)) / ((b.real * b.real) + (b.imag * b.imag)));
	}

	@:op(A - B) private static function subInt(a:GoComplex128, b:GoInt):GoComplex128
		return new GoComplex128(a.real - b.toBasic(), a.imag);

	@:op(A - B) private static function subInt2(a:GoInt, b:GoComplex128):GoComplex128
		return new GoComplex128(a.toBasic() - b.real, b.imag);

	@:op(A - B) private static function sub(a:GoComplex128, b:GoComplex128):GoComplex128
		return new GoComplex128(a.real - b.real, a.imag - b.imag);

	@:op(A > B) private static function gt(a:GoComplex128, b:GoComplex128):Bool
		return (a.real > b.real) && (a.imag > b.imag);

	@:op(A >= B) private static function gte(a:GoComplex128, b:GoComplex128):Bool
		return (a.real >= b.real) && (a.imag >= b.imag);

	@:op(A < B) private static function lt(a:GoComplex64, b:GoComplex128):Bool
		return (a.real < b.real) && (a.imag < b.imag);

	@:op(A <= B) private static function lte(a:GoComplex128, b:GoComplex128):Bool
		return (a.real <= b.real) && (a.imag <= b.imag);

	@:op(-A) private static function neg(t:GoComplex128):GoComplex128
		return new GoComplex128(-t.real, -t.imag);

	@:op(A == B) private static function eq(a:GoComplex128, b:GoComplex128):Bool
		return a.real == b.real && a.imag == b.imag;

	@:op(A != B) private static function neq(a:GoComplex128, b:GoComplex128):Bool
		return a.real != b.real || a.imag != b.imag;
}
