package stdgo.math.cmplx;
/**
    // Package cmplx provides basic constants and mathematical functions for
    // complex numbers. Special case handling conforms to the C99 standard
    // Annex G IEC 60559-compatible complex arithmetic.
**/
private var __go2hxdoc__package : Bool;
@:invalid typedef T_ff = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.math.cmplx.Cmplx.T__struct_0;
/**
    // Abs returns the absolute value (also called the modulus) of x.
**/
inline function abs(x:stdgo.GoComplex128):Float throw "not implemented";
/**
    // Asin returns the inverse sine of x.
**/
inline function asin(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Asinh returns the inverse hyperbolic sine of x.
**/
inline function asinh(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Acos returns the inverse cosine of x.
**/
inline function acos(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Acosh returns the inverse hyperbolic cosine of x.
**/
inline function acosh(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Atan returns the inverse tangent of x.
**/
inline function atan(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Atanh returns the inverse hyperbolic tangent of x.
**/
inline function atanh(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
inline function testAbs(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testAcos(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testAcosh(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testAsin(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testAsinh(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testAtan(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testAtanh(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testConj(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testCos(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testCosh(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testExp(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIsNaN(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLog(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLog10(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testPolar(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testPow(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRect(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSin(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSinh(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSqrt(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTan(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTanh(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // See issue 17577
**/
inline function testInfiniteLoopIntanSeries(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkAbs(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAcos(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAcosh(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAsin(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAsinh(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAtan(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAtanh(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkConj(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkCos(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkCosh(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkExp(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkLog(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkLog10(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkPhase(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkPolar(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkPow(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkRect(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkSin(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkSinh(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkSqrt(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkTan(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkTanh(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
/**
    // Conj returns the complex conjugate of x.
**/
inline function conj(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Exp returns e**x, the base-e exponential of x.
**/
inline function exp(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
inline function testTanHuge(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // IsInf reports whether either real(x) or imag(x) is an infinity.
**/
inline function isInf(x:stdgo.GoComplex128):Bool throw "not implemented";
/**
    // Inf returns a complex infinity, complex(+Inf, +Inf).
**/
inline function inf():stdgo.GoComplex128 throw "not implemented";
/**
    // IsNaN reports whether either real(x) or imag(x) is NaN
    // and neither is an infinity.
**/
inline function isNaN(x:stdgo.GoComplex128):Bool throw "not implemented";
/**
    // NaN returns a complex “not-a-number” value.
**/
inline function naN():stdgo.GoComplex128 throw "not implemented";
/**
    // Log returns the natural logarithm of x.
**/
inline function log(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Log10 returns the decimal logarithm of x.
**/
inline function log10(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Phase returns the phase (also called the argument) of x.
    // The returned value is in the range [-Pi, Pi].
**/
inline function phase(x:stdgo.GoComplex128):Float throw "not implemented";
/**
    // Polar returns the absolute value r and phase θ of x,
    // such that x = r * e**θi.
    // The phase is in the range [-Pi, Pi].
**/
inline function polar(x:stdgo.GoComplex128):stdgo.Tuple<Float, Float> throw "not implemented";
/**
    // Pow returns x**y, the base-x exponential of y.
    // For generalized compatibility with math.Pow:
    //
    //	Pow(0, ±0) returns 1+0i
    //	Pow(0, c) for real(c)<0 returns Inf+0i if imag(c) is zero, otherwise Inf+Inf i.
**/
inline function pow(x:stdgo.GoComplex128, y:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Rect returns the complex number x with polar coordinates r, θ.
**/
inline function rect(r:Float, _952:Float):stdgo.GoComplex128 throw "not implemented";
/**
    // Sin returns the sine of x.
**/
inline function sin(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Sinh returns the hyperbolic sine of x.
**/
inline function sinh(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Cos returns the cosine of x.
**/
inline function cos(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Cosh returns the hyperbolic cosine of x.
**/
inline function cosh(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Sqrt returns the square root of x.
    // The result r is chosen so that real(r) ≥ 0 and imag(r) has the same sign as imag(x).
**/
inline function sqrt(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Tan returns the tangent of x.
**/
inline function tan(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Tanh returns the hyperbolic tangent of x.
**/
inline function tanh(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
/**
    // Cot returns the cotangent of x.
**/
inline function cot(x:stdgo.GoComplex128):stdgo.GoComplex128 throw "not implemented";
