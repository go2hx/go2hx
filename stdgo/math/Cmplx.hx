package stdgo.math;
/**
    Package cmplx provides basic constants and mathematical functions for
    complex numbers. Special case handling conforms to the C99 standard
    Annex G IEC 60559-compatible complex arithmetic.
**/
private var __go2hxdoc__package : Bool;
abstract T_ff(stdgo._internal.math.cmplx.Cmplx.T_ff) from stdgo._internal.math.cmplx.Cmplx.T_ff to stdgo._internal.math.cmplx.Cmplx.T_ff {
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
    public function new(?_r:StdTypes.Float, ?_theta:StdTypes.Float) this = new stdgo._internal.math.cmplx.Cmplx.T_ff(_r, _theta);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0 = stdgo._internal.math.cmplx.Cmplx.T__struct_0;
class Cmplx {
    /**
        Abs returns the absolute value (also called the modulus) of x.
    **/
    static public function abs(x:stdgo.GoComplex128):StdTypes.Float {
        return stdgo._internal.math.cmplx.Cmplx.abs(x);
    }
    /**
        Asin returns the inverse sine of x.
    **/
    static public function asin(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.asin(x);
    }
    /**
        Asinh returns the inverse hyperbolic sine of x.
    **/
    static public function asinh(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.asinh(x);
    }
    /**
        Acos returns the inverse cosine of x.
    **/
    static public function acos(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.acos(x);
    }
    /**
        Acosh returns the inverse hyperbolic cosine of x.
    **/
    static public function acosh(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.acosh(x);
    }
    /**
        Atan returns the inverse tangent of x.
    **/
    static public function atan(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.atan(x);
    }
    /**
        Atanh returns the inverse hyperbolic tangent of x.
    **/
    static public function atanh(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.atanh(x);
    }
    static public function testAbs(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testAbs(t);
    }
    static public function testAcos(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testAcos(t);
    }
    static public function testAcosh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testAcosh(t);
    }
    static public function testAsin(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testAsin(t);
    }
    static public function testAsinh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testAsinh(t);
    }
    static public function testAtan(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testAtan(t);
    }
    static public function testAtanh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testAtanh(t);
    }
    static public function testConj(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testConj(t);
    }
    static public function testCos(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testCos(t);
    }
    static public function testCosh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testCosh(t);
    }
    static public function testExp(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testExp(t);
    }
    static public function testIsNaN(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testIsNaN(t);
    }
    static public function testLog(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testLog(t);
    }
    static public function testLog10(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testLog10(t);
    }
    static public function testPolar(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testPolar(t);
    }
    static public function testPow(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testPow(t);
    }
    static public function testRect(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testRect(t);
    }
    static public function testSin(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testSin(t);
    }
    static public function testSinh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testSinh(t);
    }
    static public function testSqrt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testSqrt(t);
    }
    static public function testTan(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testTan(t);
    }
    static public function testTanh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testTanh(t);
    }
    /**
        See issue 17577
    **/
    static public function testInfiniteLoopIntanSeries(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testInfiniteLoopIntanSeries(t);
    }
    static public function benchmarkAbs(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkAbs(b);
    }
    static public function benchmarkAcos(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkAcos(b);
    }
    static public function benchmarkAcosh(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkAcosh(b);
    }
    static public function benchmarkAsin(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkAsin(b);
    }
    static public function benchmarkAsinh(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkAsinh(b);
    }
    static public function benchmarkAtan(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkAtan(b);
    }
    static public function benchmarkAtanh(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkAtanh(b);
    }
    static public function benchmarkConj(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkConj(b);
    }
    static public function benchmarkCos(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkCos(b);
    }
    static public function benchmarkCosh(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkCosh(b);
    }
    static public function benchmarkExp(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkExp(b);
    }
    static public function benchmarkLog(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkLog(b);
    }
    static public function benchmarkLog10(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkLog10(b);
    }
    static public function benchmarkPhase(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkPhase(b);
    }
    static public function benchmarkPolar(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkPolar(b);
    }
    static public function benchmarkPow(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkPow(b);
    }
    static public function benchmarkRect(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkRect(b);
    }
    static public function benchmarkSin(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkSin(b);
    }
    static public function benchmarkSinh(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkSinh(b);
    }
    static public function benchmarkSqrt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkSqrt(b);
    }
    static public function benchmarkTan(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkTan(b);
    }
    static public function benchmarkTanh(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkTanh(b);
    }
    /**
        Conj returns the complex conjugate of x.
    **/
    static public function conj(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.conj(x);
    }
    /**
        Exp returns e**x, the base-e exponential of x.
    **/
    static public function exp(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.exp(x);
    }
    static public function testTanHuge(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testTanHuge(t);
    }
    /**
        IsInf reports whether either real(x) or imag(x) is an infinity.
    **/
    static public function isInf(x:stdgo.GoComplex128):Bool {
        return stdgo._internal.math.cmplx.Cmplx.isInf(x);
    }
    /**
        Inf returns a complex infinity, complex(+Inf, +Inf).
    **/
    static public function inf():stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.inf();
    }
    /**
        IsNaN reports whether either real(x) or imag(x) is NaN
        and neither is an infinity.
    **/
    static public function isNaN(x:stdgo.GoComplex128):Bool {
        return stdgo._internal.math.cmplx.Cmplx.isNaN(x);
    }
    /**
        NaN returns a complex “not-a-number” value.
    **/
    static public function naN():stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.naN();
    }
    /**
        Log returns the natural logarithm of x.
    **/
    static public function log(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.log(x);
    }
    /**
        Log10 returns the decimal logarithm of x.
    **/
    static public function log10(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.log10(x);
    }
    /**
        Phase returns the phase (also called the argument) of x.
        The returned value is in the range [-Pi, Pi].
    **/
    static public function phase(x:stdgo.GoComplex128):StdTypes.Float {
        return stdgo._internal.math.cmplx.Cmplx.phase(x);
    }
    /**
        Polar returns the absolute value r and phase θ of x,
        such that x = r * e**θi.
        The phase is in the range [-Pi, Pi].
    **/
    static public function polar(x:stdgo.GoComplex128):stdgo.Tuple<StdTypes.Float, StdTypes.Float> {
        return {
            final obj = stdgo._internal.math.cmplx.Cmplx.polar(x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Pow returns x**y, the base-x exponential of y.
        For generalized compatibility with math.Pow:
        
        	Pow(0, ±0) returns 1+0i
        	Pow(0, c) for real(c)<0 returns Inf+0i if imag(c) is zero, otherwise Inf+Inf i.
    **/
    static public function pow(x:stdgo.GoComplex128, y:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.pow(x, y);
    }
    /**
        Rect returns the complex number x with polar coordinates r, θ.
    **/
    static public function rect(r:StdTypes.Float, _952:StdTypes.Float):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.rect(r, _952);
    }
    /**
        Sin returns the sine of x.
    **/
    static public function sin(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.sin(x);
    }
    /**
        Sinh returns the hyperbolic sine of x.
    **/
    static public function sinh(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.sinh(x);
    }
    /**
        Cos returns the cosine of x.
    **/
    static public function cos(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.cos(x);
    }
    /**
        Cosh returns the hyperbolic cosine of x.
    **/
    static public function cosh(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.cosh(x);
    }
    /**
        Sqrt returns the square root of x.
        The result r is chosen so that real(r) ≥ 0 and imag(r) has the same sign as imag(x).
    **/
    static public function sqrt(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.sqrt(x);
    }
    /**
        Tan returns the tangent of x.
    **/
    static public function tan(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.tan(x);
    }
    /**
        Tanh returns the hyperbolic tangent of x.
    **/
    static public function tanh(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.tanh(x);
    }
    /**
        Cot returns the cotangent of x.
    **/
    static public function cot(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.cot(x);
    }
}
