package stdgo.math;
/**
    Package cmplx provides basic constants and mathematical functions for
    complex numbers. Special case handling conforms to the C99 standard
    Annex G IEC 60559-compatible complex arithmetic.
**/
private var __go2hxdoc__package : Bool;
@:forward @:forward.new abstract T_ff(stdgo._internal.math.cmplx.Cmplx.T_ff) from stdgo._internal.math.cmplx.Cmplx.T_ff to stdgo._internal.math.cmplx.Cmplx.T_ff {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.math.cmplx.Cmplx.T__struct_0_asInterface) from stdgo._internal.math.cmplx.Cmplx.T__struct_0_asInterface to stdgo._internal.math.cmplx.Cmplx.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.math.cmplx.Cmplx.T__struct_0_static_extension) from stdgo._internal.math.cmplx.Cmplx.T__struct_0_static_extension to stdgo._internal.math.cmplx.Cmplx.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.math.cmplx.Cmplx.T__struct_0;
/**
    Abs returns the absolute value (also called the modulus) of x.
**/
function abs(x:stdgo.GoComplex128):StdTypes.Float {
        return stdgo._internal.math.cmplx.Cmplx.abs(x);
    }
/**
    Asin returns the inverse sine of x.
**/
function asin(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.asin(x);
    }
/**
    Asinh returns the inverse hyperbolic sine of x.
**/
function asinh(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.asinh(x);
    }
/**
    Acos returns the inverse cosine of x.
**/
function acos(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.acos(x);
    }
/**
    Acosh returns the inverse hyperbolic cosine of x.
**/
function acosh(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.acosh(x);
    }
/**
    Atan returns the inverse tangent of x.
**/
function atan(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.atan(x);
    }
/**
    Atanh returns the inverse hyperbolic tangent of x.
**/
function atanh(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.atanh(x);
    }
function testAbs(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testAbs(t);
    }
function testAcos(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testAcos(t);
    }
function testAcosh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testAcosh(t);
    }
function testAsin(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testAsin(t);
    }
function testAsinh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testAsinh(t);
    }
function testAtan(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testAtan(t);
    }
function testAtanh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testAtanh(t);
    }
function testConj(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testConj(t);
    }
function testCos(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testCos(t);
    }
function testCosh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testCosh(t);
    }
function testExp(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testExp(t);
    }
function testIsNaN(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testIsNaN(t);
    }
function testLog(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testLog(t);
    }
function testLog10(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testLog10(t);
    }
function testPolar(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testPolar(t);
    }
function testPow(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testPow(t);
    }
function testRect(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testRect(t);
    }
function testSin(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testSin(t);
    }
function testSinh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testSinh(t);
    }
function testSqrt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testSqrt(t);
    }
function testTan(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testTan(t);
    }
function testTanh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testTanh(t);
    }
/**
    See issue 17577
**/
function testInfiniteLoopIntanSeries(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testInfiniteLoopIntanSeries(t);
    }
function benchmarkAbs(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkAbs(b);
    }
function benchmarkAcos(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkAcos(b);
    }
function benchmarkAcosh(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkAcosh(b);
    }
function benchmarkAsin(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkAsin(b);
    }
function benchmarkAsinh(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkAsinh(b);
    }
function benchmarkAtan(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkAtan(b);
    }
function benchmarkAtanh(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkAtanh(b);
    }
function benchmarkConj(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkConj(b);
    }
function benchmarkCos(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkCos(b);
    }
function benchmarkCosh(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkCosh(b);
    }
function benchmarkExp(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkExp(b);
    }
function benchmarkLog(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkLog(b);
    }
function benchmarkLog10(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkLog10(b);
    }
function benchmarkPhase(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkPhase(b);
    }
function benchmarkPolar(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkPolar(b);
    }
function benchmarkPow(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkPow(b);
    }
function benchmarkRect(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkRect(b);
    }
function benchmarkSin(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkSin(b);
    }
function benchmarkSinh(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkSinh(b);
    }
function benchmarkSqrt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkSqrt(b);
    }
function benchmarkTan(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkTan(b);
    }
function benchmarkTanh(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.cmplx.Cmplx.benchmarkTanh(b);
    }
/**
    Conj returns the complex conjugate of x.
**/
function conj(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.conj(x);
    }
/**
    Exp returns e**x, the base-e exponential of x.
**/
function exp(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.exp(x);
    }
function testTanHuge(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.cmplx.Cmplx.testTanHuge(t);
    }
/**
    IsInf reports whether either real(x) or imag(x) is an infinity.
**/
function isInf(x:stdgo.GoComplex128):Bool {
        return stdgo._internal.math.cmplx.Cmplx.isInf(x);
    }
/**
    Inf returns a complex infinity, complex(+Inf, +Inf).
**/
function inf():stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.inf();
    }
/**
    IsNaN reports whether either real(x) or imag(x) is NaN
    and neither is an infinity.
**/
function isNaN(x:stdgo.GoComplex128):Bool {
        return stdgo._internal.math.cmplx.Cmplx.isNaN(x);
    }
/**
    NaN returns a complex “not-a-number” value.
**/
function naN():stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.naN();
    }
/**
    Log returns the natural logarithm of x.
**/
function log(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.log(x);
    }
/**
    Log10 returns the decimal logarithm of x.
**/
function log10(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.log10(x);
    }
/**
    Phase returns the phase (also called the argument) of x.
    The returned value is in the range [-Pi, Pi].
**/
function phase(x:stdgo.GoComplex128):StdTypes.Float {
        return stdgo._internal.math.cmplx.Cmplx.phase(x);
    }
/**
    Polar returns the absolute value r and phase θ of x,
    such that x = r * e**θi.
    The phase is in the range [-Pi, Pi].
**/
function polar(x:stdgo.GoComplex128):stdgo.Tuple<StdTypes.Float, StdTypes.Float> {
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
function pow(x:stdgo.GoComplex128, y:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.pow(x, y);
    }
/**
    Rect returns the complex number x with polar coordinates r, θ.
**/
function rect(r:StdTypes.Float, _952:StdTypes.Float):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.rect(r, _952);
    }
/**
    Sin returns the sine of x.
**/
function sin(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.sin(x);
    }
/**
    Sinh returns the hyperbolic sine of x.
**/
function sinh(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.sinh(x);
    }
/**
    Cos returns the cosine of x.
**/
function cos(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.cos(x);
    }
/**
    Cosh returns the hyperbolic cosine of x.
**/
function cosh(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.cosh(x);
    }
/**
    Sqrt returns the square root of x.
    The result r is chosen so that real(r) ≥ 0 and imag(r) has the same sign as imag(x).
**/
function sqrt(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.sqrt(x);
    }
/**
    Tan returns the tangent of x.
**/
function tan(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.tan(x);
    }
/**
    Tanh returns the hyperbolic tangent of x.
**/
function tanh(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.tanh(x);
    }
/**
    Cot returns the cotangent of x.
**/
function cot(x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return stdgo._internal.math.cmplx.Cmplx.cot(x);
    }
