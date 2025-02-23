package stdgo;
@:structInit @:using(stdgo.math.cmplx.Cmplx.T_ff_static_extension) @:dox(hide) abstract T_ff(stdgo._internal.math.cmplx.Cmplx_t_ff.T_ff) from stdgo._internal.math.cmplx.Cmplx_t_ff.T_ff to stdgo._internal.math.cmplx.Cmplx_t_ff.T_ff {
    public var _r(get, set) : StdTypes.Float;
    function get__r():StdTypes.Float return this._r;
    function set__r(v:StdTypes.Float):StdTypes.Float {
        this._r = (v : stdgo.GoFloat64);
        return v;
    }
    public var _theta(get, set) : StdTypes.Float;
    function get__theta():StdTypes.Float return this._theta;
    function set__theta(v:StdTypes.Float):StdTypes.Float {
        this._theta = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?_r:StdTypes.Float, ?_theta:StdTypes.Float) this = new stdgo._internal.math.cmplx.Cmplx_t_ff.T_ff((_r : stdgo.GoFloat64), (_theta : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.math.cmplx.Cmplx_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.math.cmplx.Cmplx_t__struct_0.T__struct_0;
@:dox(hide) typedef T_ffPointer = stdgo._internal.math.cmplx.Cmplx_t_ffpointer.T_ffPointer;
@:dox(hide) class T_ff_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.math.cmplx.Cmplx_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
/**
    * Package cmplx provides basic constants and mathematical functions for
    * complex numbers. Special case handling conforms to the C99 standard
    * Annex G IEC 60559-compatible complex arithmetic.
**/
class Cmplx {
    /**
        * Abs returns the absolute value (also called the modulus) of x.
    **/
    static public inline function abs(_x:stdgo.GoComplex128):StdTypes.Float {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_abs.abs(_x);
    }
    /**
        * Asin returns the inverse sine of x.
    **/
    static public inline function asin(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_asin.asin(_x);
    }
    /**
        * Asinh returns the inverse hyperbolic sine of x.
    **/
    static public inline function asinh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_asinh.asinh(_x);
    }
    /**
        * Acos returns the inverse cosine of x.
    **/
    static public inline function acos(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_acos.acos(_x);
    }
    /**
        * Acosh returns the inverse hyperbolic cosine of x.
    **/
    static public inline function acosh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_acosh.acosh(_x);
    }
    /**
        * Atan returns the inverse tangent of x.
    **/
    static public inline function atan(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_atan.atan(_x);
    }
    /**
        * Atanh returns the inverse hyperbolic tangent of x.
    **/
    static public inline function atanh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_atanh.atanh(_x);
    }
    static public inline function testAbs(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testabs.testAbs(_t);
    }
    static public inline function testAcos(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testacos.testAcos(_t);
    }
    static public inline function testAcosh(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testacosh.testAcosh(_t);
    }
    static public inline function testAsin(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testasin.testAsin(_t);
    }
    static public inline function testAsinh(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testasinh.testAsinh(_t);
    }
    static public inline function testAtan(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testatan.testAtan(_t);
    }
    static public inline function testAtanh(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testatanh.testAtanh(_t);
    }
    static public inline function testConj(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testconj.testConj(_t);
    }
    static public inline function testCos(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testcos.testCos(_t);
    }
    static public inline function testCosh(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testcosh.testCosh(_t);
    }
    static public inline function testExp(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testexp.testExp(_t);
    }
    static public inline function testIsNaN(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testisnan.testIsNaN(_t);
    }
    static public inline function testLog(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testlog.testLog(_t);
    }
    static public inline function testLog10(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testlog10.testLog10(_t);
    }
    static public inline function testPolar(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testpolar.testPolar(_t);
    }
    static public inline function testPow(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testpow.testPow(_t);
    }
    static public inline function testRect(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testrect.testRect(_t);
    }
    static public inline function testSin(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testsin.testSin(_t);
    }
    static public inline function testSinh(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testsinh.testSinh(_t);
    }
    static public inline function testSqrt(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testsqrt.testSqrt(_t);
    }
    static public inline function testTan(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testtan.testTan(_t);
    }
    static public inline function testTanh(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testtanh.testTanh(_t);
    }
    /**
        * See issue 17577
    **/
    static public inline function testInfiniteLoopIntanSeries(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testinfiniteloopintanseries.testInfiniteLoopIntanSeries(_t);
    }
    static public inline function benchmarkAbs(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarkabs.benchmarkAbs(_b);
    }
    static public inline function benchmarkAcos(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarkacos.benchmarkAcos(_b);
    }
    static public inline function benchmarkAcosh(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarkacosh.benchmarkAcosh(_b);
    }
    static public inline function benchmarkAsin(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarkasin.benchmarkAsin(_b);
    }
    static public inline function benchmarkAsinh(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarkasinh.benchmarkAsinh(_b);
    }
    static public inline function benchmarkAtan(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarkatan.benchmarkAtan(_b);
    }
    static public inline function benchmarkAtanh(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarkatanh.benchmarkAtanh(_b);
    }
    static public inline function benchmarkConj(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarkconj.benchmarkConj(_b);
    }
    static public inline function benchmarkCos(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarkcos.benchmarkCos(_b);
    }
    static public inline function benchmarkCosh(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarkcosh.benchmarkCosh(_b);
    }
    static public inline function benchmarkExp(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarkexp.benchmarkExp(_b);
    }
    static public inline function benchmarkLog(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarklog.benchmarkLog(_b);
    }
    static public inline function benchmarkLog10(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarklog10.benchmarkLog10(_b);
    }
    static public inline function benchmarkPhase(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarkphase.benchmarkPhase(_b);
    }
    static public inline function benchmarkPolar(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarkpolar.benchmarkPolar(_b);
    }
    static public inline function benchmarkPow(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarkpow.benchmarkPow(_b);
    }
    static public inline function benchmarkRect(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarkrect.benchmarkRect(_b);
    }
    static public inline function benchmarkSin(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarksin.benchmarkSin(_b);
    }
    static public inline function benchmarkSinh(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarksinh.benchmarkSinh(_b);
    }
    static public inline function benchmarkSqrt(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarksqrt.benchmarkSqrt(_b);
    }
    static public inline function benchmarkTan(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarktan.benchmarkTan(_b);
    }
    static public inline function benchmarkTanh(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.cmplx.Cmplx_benchmarktanh.benchmarkTanh(_b);
    }
    /**
        * Conj returns the complex conjugate of x.
    **/
    static public inline function conj(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_conj.conj(_x);
    }
    /**
        * Exp returns e**x, the base-e exponential of x.
    **/
    static public inline function exp(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_exp.exp(_x);
    }
    static public inline function testTanHuge(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.cmplx.Cmplx_testtanhuge.testTanHuge(_t);
    }
    /**
        * IsInf reports whether either real(x) or imag(x) is an infinity.
    **/
    static public inline function isInf(_x:stdgo.GoComplex128):Bool {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_isinf.isInf(_x);
    }
    /**
        * Inf returns a complex infinity, complex(+Inf, +Inf).
    **/
    static public inline function inf():stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_inf.inf();
    }
    /**
        * IsNaN reports whether either real(x) or imag(x) is NaN
        * and neither is an infinity.
    **/
    static public inline function isNaN(_x:stdgo.GoComplex128):Bool {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_isnan.isNaN(_x);
    }
    /**
        * NaN returns a complex “not-a-number” value.
    **/
    static public inline function naN():stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_nan.naN();
    }
    /**
        * Log returns the natural logarithm of x.
    **/
    static public inline function log(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_log.log(_x);
    }
    /**
        * Log10 returns the decimal logarithm of x.
    **/
    static public inline function log10(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_log10.log10(_x);
    }
    /**
        * Phase returns the phase (also called the argument) of x.
        * The returned value is in the range [-Pi, Pi].
    **/
    static public inline function phase(_x:stdgo.GoComplex128):StdTypes.Float {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_phase.phase(_x);
    }
    /**
        * Polar returns the absolute value r and phase θ of x,
        * such that x = r * e**θi.
        * The phase is in the range [-Pi, Pi].
    **/
    static public inline function polar(_x:stdgo.GoComplex128):stdgo.Tuple<StdTypes.Float, StdTypes.Float> {
        final _x = (_x : stdgo.GoComplex128);
        return {
            final obj = stdgo._internal.math.cmplx.Cmplx_polar.polar(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Pow returns x**y, the base-x exponential of y.
        * For generalized compatibility with math.Pow:
        * 
        * 	Pow(0, ±0) returns 1+0i
        * 	Pow(0, c) for real(c)<0 returns Inf+0i if imag(c) is zero, otherwise Inf+Inf i.
    **/
    static public inline function pow(_x:stdgo.GoComplex128, _y:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        final _y = (_y : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_pow.pow(_x, _y);
    }
    /**
        * Rect returns the complex number x with polar coordinates r, θ.
    **/
    static public inline function rect(_r:StdTypes.Float, __952:StdTypes.Float):stdgo.GoComplex128 {
        final _r = (_r : stdgo.GoFloat64);
        final __952 = (__952 : stdgo.GoFloat64);
        return stdgo._internal.math.cmplx.Cmplx_rect.rect(_r, __952);
    }
    /**
        * Sin returns the sine of x.
    **/
    static public inline function sin(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_sin.sin(_x);
    }
    /**
        * Sinh returns the hyperbolic sine of x.
    **/
    static public inline function sinh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_sinh.sinh(_x);
    }
    /**
        * Cos returns the cosine of x.
    **/
    static public inline function cos(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_cos.cos(_x);
    }
    /**
        * Cosh returns the hyperbolic cosine of x.
    **/
    static public inline function cosh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_cosh.cosh(_x);
    }
    /**
        * Sqrt returns the square root of x.
        * The result r is chosen so that real(r) ≥ 0 and imag(r) has the same sign as imag(x).
    **/
    static public inline function sqrt(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_sqrt.sqrt(_x);
    }
    /**
        * Tan returns the tangent of x.
    **/
    static public inline function tan(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_tan.tan(_x);
    }
    /**
        * Tanh returns the hyperbolic tangent of x.
    **/
    static public inline function tanh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_tanh.tanh(_x);
    }
    /**
        * Cot returns the cotangent of x.
    **/
    static public inline function cot(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.math.cmplx.Cmplx_cot.cot(_x);
    }
}
