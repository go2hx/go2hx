package stdgo;

import stdgo.GoNumber;

@:notNull
abstract GoComplex64(Complex64) from Complex64 {
	public inline function new(?r:GoFloat32, ?i:GoFloat32) {
		if (r == null || i == null) {
			this = new Complex64(0, 0);
		} else {
			this = new Complex64(r.toBasic(), i.toBasic());
		}
	}

	@:to inline function toComplex128():GoComplex128
		return new GoComplex128(real, imag);

	inline function toComplex64()
		return this;

	public inline function toBasic()
		return this;

	public var real(get, never):GoFloat32;
	public var imag(get, never):GoFloat32;

	private inline function get_real()
		return this.real;

	private inline function get_imag()
		return this.imag;

	@:from public static inline function ofInt(x:Int):GoComplex64
		return new Complex64(x, 0);

	@:op(A + B) private static function add(a:GoComplex64, b:GoComplex64):GoComplex64
		return new GoComplex64(a.real + b.real, a.imag.toBasic() + b.imag.toBasic());

	@:op(A * B) private static function mul(a:GoComplex64, b:GoComplex64):GoComplex64
		return new GoComplex64((a.real * b.real) - (a.imag.toBasic() * b.imag.toBasic()), (a.imag.toBasic() * b.real) + (a.real * b.imag.toBasic()));

	@:op(A / B) private static function div(a:GoComplex64, b:GoComplex64):GoComplex64 {
		// if (b.real == 0.0 && b.imag == 0.0)
		//  return std.Math.NaN;
		return new GoComplex64(((a.real * b.real) + (a.imag.toBasic() * b.imag.toBasic())) / ((b.real * b.real) + (b.imag.toBasic() * b.imag.toBasic())),
			((a.imag.toBasic() * b.real) - (a.real * b.imag.toBasic())) / ((b.real * b.real) + (b.imag.toBasic() * b.imag.toBasic())));
	}

	@:op(A - B) private static function subInt(a:GoComplex64, b:GoInt):GoComplex64
		return new GoComplex64(a.real - b.toBasic(), a.imag);

	@:op(A - B) private static function subInt2(a:GoInt, b:GoComplex64):GoComplex64
		return new GoComplex64(a.toBasic() - b.real, b.imag);

	@:op(A - B) private static function sub(a:GoComplex64, b:GoComplex64):GoComplex64
		return new GoComplex64(a.real - b.real, a.imag.toBasic() - b.imag.toBasic());

	@:op(A > B) private static function gt(a:GoComplex64, b:GoComplex64):Bool
		return (a.real > b.real) && (a.imag > b.imag);

	@:op(A >= B) private static function gte(a:GoComplex64, b:GoComplex64):Bool
		return (a.real >= b.real) && (a.imag >= b.imag);

	@:op(A < B) private static function lt(a:GoComplex64, b:GoComplex64):Bool
		return (a.real < b.real) && (a.imag < b.imag);

	@:op(A <= B) private static function lte(a:GoComplex64, b:GoComplex64):Bool
		return (a.real <= b.real) && (a.imag <= b.imag);

	@:op(-A) private static function neg(t:GoComplex64):GoComplex64
		return new GoComplex64(-t.real, -t.imag);

	@:op(A == B) private static function eq(a:GoComplex64, b:GoComplex64):Bool
		return a.real == b.real && a.imag == b.imag;

	@:op(A != B) private static function neq(a:GoComplex64, b:GoComplex64):Bool
		return a.real != b.real || a.imag != b.imag;
}
