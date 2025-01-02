package stdgo.math.cmplx;
@:structInit abstract T_ff(stdgo._internal.math.cmplx.Cmplx_T_ff.T_ff) from stdgo._internal.math.cmplx.Cmplx_T_ff.T_ff to stdgo._internal.math.cmplx.Cmplx_T_ff.T_ff {
    public var _r(get, set) : StdTypes.Float;
    function get__r():StdTypes.Float return this._r;
    function set__r(v:StdTypes.Float):StdTypes.Float {
        this._r = v;
        return v;
    }
    public var _theta(get, set) : StdTypes.Float;
    function get__theta():StdTypes.Float return this._theta;
    function set__theta(v:StdTypes.Float):StdTypes.Float {
        this._theta = v;
        return v;
    }
    public function new(?_r:StdTypes.Float, ?_theta:StdTypes.Float) this = new stdgo._internal.math.cmplx.Cmplx_T_ff.T_ff(_r, _theta);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0Pointer = stdgo._internal.math.cmplx.Cmplx_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0;
/**
    Package cmplx provides basic constants and mathematical functions for
    complex numbers. Special case handling conforms to the C99 standard
    Annex G IEC 60559-compatible complex arithmetic.
**/
class Cmplx {
    /**
        Abs returns the absolute value (also called the modulus) of x.
    **/
    static public function abs(_x:stdgo.GoComplex128):StdTypes.Float {
        return stdgo._internal.math.cmplx.Cmplx_abs.abs(_x);
    }
    /**
        Asin returns the inverse sine of x.
    **/
    static public function asin(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_asin.asin(_x);
    }
    /**
        Asinh returns the inverse hyperbolic sine of x.
    **/
    static public function asinh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_asinh.asinh(_x);
    }
    /**
        Acos returns the inverse cosine of x.
    **/
    static public function acos(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_acos.acos(_x);
    }
    /**
        Acosh returns the inverse hyperbolic cosine of x.
    **/
    static public function acosh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_acosh.acosh(_x);
    }
    /**
        Atan returns the inverse tangent of x.
    **/
    static public function atan(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_atan.atan(_x);
    }
    /**
        Atanh returns the inverse hyperbolic tangent of x.
    **/
    static public function atanh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_atanh.atanh(_x);
    }
    static public function testAbs(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testAbs.testAbs(_t);
    }
    static public function testAcos(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testAcos.testAcos(_t);
    }
    static public function testAcosh(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testAcosh.testAcosh(_t);
    }
    static public function testAsin(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testAsin.testAsin(_t);
    }
    static public function testAsinh(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testAsinh.testAsinh(_t);
    }
    static public function testAtan(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testAtan.testAtan(_t);
    }
    static public function testAtanh(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testAtanh.testAtanh(_t);
    }
    static public function testConj(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testConj.testConj(_t);
    }
    static public function testCos(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testCos.testCos(_t);
    }
    static public function testCosh(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testCosh.testCosh(_t);
    }
    static public function testExp(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testExp.testExp(_t);
    }
    static public function testIsNaN(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testIsNaN.testIsNaN(_t);
    }
    static public function testLog(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testLog.testLog(_t);
    }
    static public function testLog10(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testLog10.testLog10(_t);
    }
    static public function testPolar(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testPolar.testPolar(_t);
    }
    static public function testPow(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testPow.testPow(_t);
    }
    static public function testRect(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testRect.testRect(_t);
    }
    static public function testSin(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testSin.testSin(_t);
    }
    static public function testSinh(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testSinh.testSinh(_t);
    }
    static public function testSqrt(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testSqrt.testSqrt(_t);
    }
    static public function testTan(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testTan.testTan(_t);
    }
    static public function testTanh(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testTanh.testTanh(_t);
    }
    /**
        See issue 17577
    **/
    static public function testInfiniteLoopIntanSeries(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testInfiniteLoopIntanSeries.testInfiniteLoopIntanSeries(_t);
    }
    static public function benchmarkAbs(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkAbs.benchmarkAbs(_b);
    }
    static public function benchmarkAcos(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkAcos.benchmarkAcos(_b);
    }
    static public function benchmarkAcosh(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkAcosh.benchmarkAcosh(_b);
    }
    static public function benchmarkAsin(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkAsin.benchmarkAsin(_b);
    }
    static public function benchmarkAsinh(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkAsinh.benchmarkAsinh(_b);
    }
    static public function benchmarkAtan(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkAtan.benchmarkAtan(_b);
    }
    static public function benchmarkAtanh(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkAtanh.benchmarkAtanh(_b);
    }
    static public function benchmarkConj(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkConj.benchmarkConj(_b);
    }
    static public function benchmarkCos(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkCos.benchmarkCos(_b);
    }
    static public function benchmarkCosh(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkCosh.benchmarkCosh(_b);
    }
    static public function benchmarkExp(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkExp.benchmarkExp(_b);
    }
    static public function benchmarkLog(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkLog.benchmarkLog(_b);
    }
    static public function benchmarkLog10(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkLog10.benchmarkLog10(_b);
    }
    static public function benchmarkPhase(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkPhase.benchmarkPhase(_b);
    }
    static public function benchmarkPolar(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkPolar.benchmarkPolar(_b);
    }
    static public function benchmarkPow(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkPow.benchmarkPow(_b);
    }
    static public function benchmarkRect(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkRect.benchmarkRect(_b);
    }
    static public function benchmarkSin(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkSin.benchmarkSin(_b);
    }
    static public function benchmarkSinh(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkSinh.benchmarkSinh(_b);
    }
    static public function benchmarkSqrt(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkSqrt.benchmarkSqrt(_b);
    }
    static public function benchmarkTan(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkTan.benchmarkTan(_b);
    }
    static public function benchmarkTanh(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.math.cmplx.Cmplx_benchmarkTanh.benchmarkTanh(_b);
    }
    /**
        Conj returns the complex conjugate of x.
    **/
    static public function conj(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_conj.conj(_x);
    }
    /**
        Exp returns e**x, the base-e exponential of x.
    **/
    static public function exp(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_exp.exp(_x);
    }
    static public function testTanHuge(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.math.cmplx.Cmplx_testTanHuge.testTanHuge(_t);
    }
    /**
        IsInf reports whether either real(x) or imag(x) is an infinity.
    **/
    static public function isInf(_x:stdgo.GoComplex128):Bool {
        return stdgo._internal.math.cmplx.Cmplx_isInf.isInf(_x);
    }
    /**
        Inf returns a complex infinity, complex(+Inf, +Inf).
    **/
    static public function inf():stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_inf.inf();
    }
    /**
        IsNaN reports whether either real(x) or imag(x) is NaN
        and neither is an infinity.
    **/
    static public function isNaN(_x:stdgo.GoComplex128):Bool {
        return stdgo._internal.math.cmplx.Cmplx_isNaN.isNaN(_x);
    }
    /**
        NaN returns a complex “not-a-number” value.
    **/
    static public function naN():stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_naN.naN();
    }
    /**
        Log returns the natural logarithm of x.
    **/
    static public function log(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_log.log(_x);
    }
    /**
        Log10 returns the decimal logarithm of x.
    **/
    static public function log10(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_log10.log10(_x);
    }
    /**
        Phase returns the phase (also called the argument) of x.
        The returned value is in the range [-Pi, Pi].
    **/
    static public function phase(_x:stdgo.GoComplex128):StdTypes.Float {
        return stdgo._internal.math.cmplx.Cmplx_phase.phase(_x);
    }
    /**
        Polar returns the absolute value r and phase θ of x,
        such that x = r * e**θi.
        The phase is in the range [-Pi, Pi].
    **/
    static public function polar(_x:stdgo.GoComplex128):stdgo.Tuple<StdTypes.Float, StdTypes.Float> {
        return {
            final obj = stdgo._internal.math.cmplx.Cmplx_polar.polar(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Pow returns x**y, the base-x exponential of y.
        For generalized compatibility with math.Pow:
        
        	Pow(0, ±0) returns 1+0i
        	Pow(0, c) for real(c)<0 returns Inf+0i if imag(c) is zero, otherwise Inf+Inf i.
    **/
    static public function pow(_x:stdgo.GoComplex128, _y:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_pow.pow(_x, _y);
    }
    /**
        Rect returns the complex number x with polar coordinates r, θ.
    **/
    static public function rect(_r:StdTypes.Float, __952:StdTypes.Float):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_rect.rect(_r, __952);
    }
    /**
        Sin returns the sine of x.
    **/
    static public function sin(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_sin.sin(_x);
    }
    /**
        Sinh returns the hyperbolic sine of x.
    **/
    static public function sinh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_sinh.sinh(_x);
    }
    /**
        Cos returns the cosine of x.
    **/
    static public function cos(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_cos.cos(_x);
    }
    /**
        Cosh returns the hyperbolic cosine of x.
    **/
    static public function cosh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_cosh.cosh(_x);
    }
    /**
        Sqrt returns the square root of x.
        The result r is chosen so that real(r) ≥ 0 and imag(r) has the same sign as imag(x).
    **/
    static public function sqrt(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_sqrt.sqrt(_x);
    }
    /**
        Tan returns the tangent of x.
    **/
    static public function tan(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_tan.tan(_x);
    }
    /**
        Tanh returns the hyperbolic tangent of x.
    **/
    static public function tanh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_tanh.tanh(_x);
    }
    /**
        Cot returns the cotangent of x.
    **/
    static public function cot(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx_cot.cot(_x);
    }
}
