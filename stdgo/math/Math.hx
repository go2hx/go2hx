package stdgo.math;
/**
    // Package math provides basic constants and mathematical functions.
    //
    // This package does not guarantee bit-identical results across architectures.
**/
private var __go2hxdoc__package : Bool;
final e : Float = stdgo._internal.math.Math.e;
final pi : Float = stdgo._internal.math.Math.pi;
final phi : Float = stdgo._internal.math.Math.phi;
final sqrt2 : Float = stdgo._internal.math.Math.sqrt2;
final sqrtE : Float = stdgo._internal.math.Math.sqrtE;
final sqrtPi : Float = stdgo._internal.math.Math.sqrtPi;
final sqrtPhi : Float = stdgo._internal.math.Math.sqrtPhi;
final ln2 : Float = stdgo._internal.math.Math.ln2;
final log2E : Float = stdgo._internal.math.Math.log2E;
final ln10 : Float = stdgo._internal.math.Math.ln10;
final log10E : Float = stdgo._internal.math.Math.log10E;
final maxFloat32 : Float = stdgo._internal.math.Math.maxFloat32;
final smallestNonzeroFloat32 : Float = stdgo._internal.math.Math.smallestNonzeroFloat32;
final maxFloat64 : Float = stdgo._internal.math.Math.maxFloat64;
final smallestNonzeroFloat64 : Float = stdgo._internal.math.Math.smallestNonzeroFloat64;
final maxInt : haxe.UInt64 = stdgo._internal.math.Math.maxInt;
final minInt : haxe.UInt64 = stdgo._internal.math.Math.minInt;
final maxInt8 : haxe.UInt64 = stdgo._internal.math.Math.maxInt8;
final minInt8 : haxe.UInt64 = stdgo._internal.math.Math.minInt8;
final maxInt16 : haxe.UInt64 = stdgo._internal.math.Math.maxInt16;
final minInt16 : haxe.UInt64 = stdgo._internal.math.Math.minInt16;
final maxInt32 : haxe.UInt64 = stdgo._internal.math.Math.maxInt32;
final minInt32 : haxe.UInt64 = stdgo._internal.math.Math.minInt32;
final maxInt64 : haxe.UInt64 = stdgo._internal.math.Math.maxInt64;
final minInt64 : haxe.UInt64 = stdgo._internal.math.Math.minInt64;
final maxUint : haxe.UInt64 = stdgo._internal.math.Math.maxUint;
final maxUint8 : haxe.UInt64 = stdgo._internal.math.Math.maxUint8;
final maxUint16 : haxe.UInt64 = stdgo._internal.math.Math.maxUint16;
final maxUint32 : haxe.UInt64 = stdgo._internal.math.Math.maxUint32;
final maxUint64 : haxe.UInt64 = stdgo._internal.math.Math.maxUint64;
final reduceThreshold : haxe.UInt64 = stdgo._internal.math.Math.reduceThreshold;
var expGo(get, set) : stdgo.GoFloat64 -> stdgo.GoFloat64;
function get_expGo():stdgo.GoFloat64 -> stdgo.GoFloat64 return stdgo._internal.math.Math.expGo;
function set_expGo(v:stdgo.GoFloat64 -> stdgo.GoFloat64):stdgo.GoFloat64 -> stdgo.GoFloat64 return stdgo._internal.math.Math.expGo = v;
var exp2Go(get, set) : stdgo.GoFloat64 -> stdgo.GoFloat64;
function get_exp2Go():stdgo.GoFloat64 -> stdgo.GoFloat64 return stdgo._internal.math.Math.exp2Go;
function set_exp2Go(v:stdgo.GoFloat64 -> stdgo.GoFloat64):stdgo.GoFloat64 -> stdgo.GoFloat64 return stdgo._internal.math.Math.exp2Go = v;
var hypotGo(get, set) : (stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64;
function get_hypotGo():(stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64 return stdgo._internal.math.Math.hypotGo;
function set_hypotGo(v:(stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64):(stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64 return stdgo._internal.math.Math.hypotGo = v;
var sqrtGo(get, set) : stdgo.GoFloat64 -> stdgo.GoFloat64;
function get_sqrtGo():stdgo.GoFloat64 -> stdgo.GoFloat64 return stdgo._internal.math.Math.sqrtGo;
function set_sqrtGo(v:stdgo.GoFloat64 -> stdgo.GoFloat64):stdgo.GoFloat64 -> stdgo.GoFloat64 return stdgo._internal.math.Math.sqrtGo = v;
var trigReduce(get, set) : stdgo.GoFloat64 -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; };
function get_trigReduce():stdgo.GoFloat64 -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; } return stdgo._internal.math.Math.trigReduce;
function set_trigReduce(v:stdgo.GoFloat64 -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; }):stdgo.GoFloat64 -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; } return stdgo._internal.math.Math.trigReduce = v;
/**
    // Abs returns the absolute value of x.
    //
    // Special cases are:
    //
    //	Abs(±Inf) = +Inf
    //	Abs(NaN) = NaN
**/
inline function abs(x:Float):Float throw "not implemented";
/**
    // Acosh returns the inverse hyperbolic cosine of x.
    //
    // Special cases are:
    //
    //	Acosh(+Inf) = +Inf
    //	Acosh(x) = NaN if x < 1
    //	Acosh(NaN) = NaN
**/
inline function acosh(x:Float):Float throw "not implemented";
/**
    // Asin returns the arcsine, in radians, of x.
    //
    // Special cases are:
    //
    //	Asin(±0) = ±0
    //	Asin(x) = NaN if x < -1 or x > 1
**/
inline function asin(x:Float):Float throw "not implemented";
/**
    // Acos returns the arccosine, in radians, of x.
    //
    // Special case is:
    //
    //	Acos(x) = NaN if x < -1 or x > 1
**/
inline function acos(x:Float):Float throw "not implemented";
/**
    // Asinh returns the inverse hyperbolic sine of x.
    //
    // Special cases are:
    //
    //	Asinh(±0) = ±0
    //	Asinh(±Inf) = ±Inf
    //	Asinh(NaN) = NaN
**/
inline function asinh(x:Float):Float throw "not implemented";
/**
    // Atan returns the arctangent, in radians, of x.
    //
    // Special cases are:
    //
    //	Atan(±0) = ±0
    //	Atan(±Inf) = ±Pi/2
**/
inline function atan(x:Float):Float throw "not implemented";
/**
    // Atan2 returns the arc tangent of y/x, using
    // the signs of the two to determine the quadrant
    // of the return value.
    //
    // Special cases are (in order):
    //
    //	Atan2(y, NaN) = NaN
    //	Atan2(NaN, x) = NaN
    //	Atan2(+0, x>=0) = +0
    //	Atan2(-0, x>=0) = -0
    //	Atan2(+0, x<=-0) = +Pi
    //	Atan2(-0, x<=-0) = -Pi
    //	Atan2(y>0, 0) = +Pi/2
    //	Atan2(y<0, 0) = -Pi/2
    //	Atan2(+Inf, +Inf) = +Pi/4
    //	Atan2(-Inf, +Inf) = -Pi/4
    //	Atan2(+Inf, -Inf) = 3Pi/4
    //	Atan2(-Inf, -Inf) = -3Pi/4
    //	Atan2(y, +Inf) = 0
    //	Atan2(y>0, -Inf) = +Pi
    //	Atan2(y<0, -Inf) = -Pi
    //	Atan2(+Inf, x) = +Pi/2
    //	Atan2(-Inf, x) = -Pi/2
**/
inline function atan2(y:Float, x:Float):Float throw "not implemented";
/**
    // Atanh returns the inverse hyperbolic tangent of x.
    //
    // Special cases are:
    //
    //	Atanh(1) = +Inf
    //	Atanh(±0) = ±0
    //	Atanh(-1) = -Inf
    //	Atanh(x) = NaN if x < -1 or x > 1
    //	Atanh(NaN) = NaN
**/
inline function atanh(x:Float):Float throw "not implemented";
/**
    // Inf returns positive infinity if sign >= 0, negative infinity if sign < 0.
**/
inline function inf(sign:Int):Float throw "not implemented";
/**
    // NaN returns an IEEE 754 “not-a-number” value.
**/
inline function naN():Float throw "not implemented";
/**
    // IsNaN reports whether f is an IEEE 754 “not-a-number” value.
**/
inline function isNaN(f:Float):Bool throw "not implemented";
/**
    // IsInf reports whether f is an infinity, according to sign.
    // If sign > 0, IsInf reports whether f is positive infinity.
    // If sign < 0, IsInf reports whether f is negative infinity.
    // If sign == 0, IsInf reports whether f is either infinity.
**/
inline function isInf(f:Float, sign:Int):Bool throw "not implemented";
/**
    // Cbrt returns the cube root of x.
    //
    // Special cases are:
    //
    //	Cbrt(±0) = ±0
    //	Cbrt(±Inf) = ±Inf
    //	Cbrt(NaN) = NaN
**/
inline function cbrt(x:Float):Float throw "not implemented";
/**
    // Copysign returns a value with the magnitude of f
    // and the sign of sign.
**/
inline function copysign(f:Float, sign:Float):Float throw "not implemented";
/**
    // Dim returns the maximum of x-y or 0.
    //
    // Special cases are:
    //
    //	Dim(+Inf, +Inf) = NaN
    //	Dim(-Inf, -Inf) = NaN
    //	Dim(x, NaN) = Dim(NaN, x) = NaN
**/
inline function dim(x:Float, y:Float):Float throw "not implemented";
/**
    // Max returns the larger of x or y.
    //
    // Special cases are:
    //
    //	Max(x, +Inf) = Max(+Inf, x) = +Inf
    //	Max(x, NaN) = Max(NaN, x) = NaN
    //	Max(+0, ±0) = Max(±0, +0) = +0
    //	Max(-0, -0) = -0
    //
    // Note that this differs from the built-in function max when called
    // with NaN and +Inf.
**/
inline function max(x:Float, y:Float):Float throw "not implemented";
/**
    // Min returns the smaller of x or y.
    //
    // Special cases are:
    //
    //	Min(x, -Inf) = Min(-Inf, x) = -Inf
    //	Min(x, NaN) = Min(NaN, x) = NaN
    //	Min(-0, ±0) = Min(±0, -0) = -0
    //
    // Note that this differs from the built-in function min when called
    // with NaN and -Inf.
**/
inline function min(x:Float, y:Float):Float throw "not implemented";
/**
    // Erf returns the error function of x.
    //
    // Special cases are:
    //
    //	Erf(+Inf) = 1
    //	Erf(-Inf) = -1
    //	Erf(NaN) = NaN
**/
inline function erf(x:Float):Float throw "not implemented";
/**
    // Erfc returns the complementary error function of x.
    //
    // Special cases are:
    //
    //	Erfc(+Inf) = 0
    //	Erfc(-Inf) = 2
    //	Erfc(NaN) = NaN
**/
inline function erfc(x:Float):Float throw "not implemented";
/**
    // Erfinv returns the inverse error function of x.
    //
    // Special cases are:
    //
    //	Erfinv(1) = +Inf
    //	Erfinv(-1) = -Inf
    //	Erfinv(x) = NaN if x < -1 or x > 1
    //	Erfinv(NaN) = NaN
**/
inline function erfinv(x:Float):Float throw "not implemented";
/**
    // Erfcinv returns the inverse of Erfc(x).
    //
    // Special cases are:
    //
    //	Erfcinv(0) = +Inf
    //	Erfcinv(2) = -Inf
    //	Erfcinv(x) = NaN if x < 0 or x > 2
    //	Erfcinv(NaN) = NaN
**/
inline function erfcinv(x:Float):Float throw "not implemented";
/**
    // Exp returns e**x, the base-e exponential of x.
    //
    // Special cases are:
    //
    //	Exp(+Inf) = +Inf
    //	Exp(NaN) = NaN
    //
    // Very large values overflow to 0 or +Inf.
    // Very small values underflow to 1.
**/
inline function exp(x:Float):Float throw "not implemented";
/**
    // Exp2 returns 2**x, the base-2 exponential of x.
    //
    // Special cases are the same as Exp.
**/
inline function exp2(x:Float):Float throw "not implemented";
/**
    // Expm1 returns e**x - 1, the base-e exponential of x minus 1.
    // It is more accurate than Exp(x) - 1 when x is near zero.
    //
    // Special cases are:
    //
    //	Expm1(+Inf) = +Inf
    //	Expm1(-Inf) = -1
    //	Expm1(NaN) = NaN
    //
    // Very large values overflow to -1 or +Inf.
**/
inline function expm1(x:Float):Float throw "not implemented";
/**
    // Floor returns the greatest integer value less than or equal to x.
    //
    // Special cases are:
    //
    //	Floor(±0) = ±0
    //	Floor(±Inf) = ±Inf
    //	Floor(NaN) = NaN
**/
inline function floor(x:Float):Float throw "not implemented";
/**
    // Ceil returns the least integer value greater than or equal to x.
    //
    // Special cases are:
    //
    //	Ceil(±0) = ±0
    //	Ceil(±Inf) = ±Inf
    //	Ceil(NaN) = NaN
**/
inline function ceil(x:Float):Float throw "not implemented";
/**
    // Trunc returns the integer value of x.
    //
    // Special cases are:
    //
    //	Trunc(±0) = ±0
    //	Trunc(±Inf) = ±Inf
    //	Trunc(NaN) = NaN
**/
inline function trunc(x:Float):Float throw "not implemented";
/**
    // Round returns the nearest integer, rounding half away from zero.
    //
    // Special cases are:
    //
    //	Round(±0) = ±0
    //	Round(±Inf) = ±Inf
    //	Round(NaN) = NaN
**/
inline function round(x:Float):Float throw "not implemented";
/**
    // RoundToEven returns the nearest integer, rounding ties to even.
    //
    // Special cases are:
    //
    //	RoundToEven(±0) = ±0
    //	RoundToEven(±Inf) = ±Inf
    //	RoundToEven(NaN) = NaN
**/
inline function roundToEven(x:Float):Float throw "not implemented";
/**
    // FMA returns x * y + z, computed with only one rounding.
    // (That is, FMA returns the fused multiply-add of x, y, and z.)
**/
inline function fma(x:Float, y:Float, z:Float):Float throw "not implemented";
/**
    // Frexp breaks f into a normalized fraction
    // and an integral power of two.
    // It returns frac and exp satisfying f == frac × 2**exp,
    // with the absolute value of frac in the interval [½, 1).
    //
    // Special cases are:
    //
    //	Frexp(±0) = ±0, 0
    //	Frexp(±Inf) = ±Inf, 0
    //	Frexp(NaN) = NaN, 0
**/
inline function frexp(f:Float):stdgo.Tuple<Float, Int> throw "not implemented";
/**
    // Gamma returns the Gamma function of x.
    //
    // Special cases are:
    //
    //	Gamma(+Inf) = +Inf
    //	Gamma(+0) = +Inf
    //	Gamma(-0) = -Inf
    //	Gamma(x) = NaN for integer x < 0
    //	Gamma(-Inf) = NaN
    //	Gamma(NaN) = NaN
**/
inline function gamma(x:Float):Float throw "not implemented";
/**
    // Hypot returns Sqrt(p*p + q*q), taking care to avoid
    // unnecessary overflow and underflow.
    //
    // Special cases are:
    //
    //	Hypot(±Inf, q) = +Inf
    //	Hypot(p, ±Inf) = +Inf
    //	Hypot(NaN, q) = NaN
    //	Hypot(p, NaN) = NaN
**/
inline function hypot(p:Float, q:Float):Float throw "not implemented";
/**
    // J0 returns the order-zero Bessel function of the first kind.
    //
    // Special cases are:
    //
    //	J0(±Inf) = 0
    //	J0(0) = 1
    //	J0(NaN) = NaN
**/
inline function j0(x:Float):Float throw "not implemented";
/**
    // Y0 returns the order-zero Bessel function of the second kind.
    //
    // Special cases are:
    //
    //	Y0(+Inf) = 0
    //	Y0(0) = -Inf
    //	Y0(x < 0) = NaN
    //	Y0(NaN) = NaN
**/
inline function y0(x:Float):Float throw "not implemented";
/**
    // J1 returns the order-one Bessel function of the first kind.
    //
    // Special cases are:
    //
    //	J1(±Inf) = 0
    //	J1(NaN) = NaN
**/
inline function j1(x:Float):Float throw "not implemented";
/**
    // Y1 returns the order-one Bessel function of the second kind.
    //
    // Special cases are:
    //
    //	Y1(+Inf) = 0
    //	Y1(0) = -Inf
    //	Y1(x < 0) = NaN
    //	Y1(NaN) = NaN
**/
inline function y1(x:Float):Float throw "not implemented";
/**
    // Jn returns the order-n Bessel function of the first kind.
    //
    // Special cases are:
    //
    //	Jn(n, ±Inf) = 0
    //	Jn(n, NaN) = NaN
**/
inline function jn(n:Int, x:Float):Float throw "not implemented";
/**
    // Yn returns the order-n Bessel function of the second kind.
    //
    // Special cases are:
    //
    //	Yn(n, +Inf) = 0
    //	Yn(n ≥ 0, 0) = -Inf
    //	Yn(n < 0, 0) = +Inf if n is odd, -Inf if n is even
    //	Yn(n, x < 0) = NaN
    //	Yn(n, NaN) = NaN
**/
inline function yn(n:Int, x:Float):Float throw "not implemented";
/**
    // Ldexp is the inverse of Frexp.
    // It returns frac × 2**exp.
    //
    // Special cases are:
    //
    //	Ldexp(±0, exp) = ±0
    //	Ldexp(±Inf, exp) = ±Inf
    //	Ldexp(NaN, exp) = NaN
**/
inline function ldexp(frac:Float, exp:Int):Float throw "not implemented";
/**
    // Lgamma returns the natural logarithm and sign (-1 or +1) of Gamma(x).
    //
    // Special cases are:
    //
    //	Lgamma(+Inf) = +Inf
    //	Lgamma(0) = +Inf
    //	Lgamma(-integer) = +Inf
    //	Lgamma(-Inf) = -Inf
    //	Lgamma(NaN) = NaN
**/
inline function lgamma(x:Float):stdgo.Tuple<Float, Int> throw "not implemented";
/**
    // Log returns the natural logarithm of x.
    //
    // Special cases are:
    //
    //	Log(+Inf) = +Inf
    //	Log(0) = -Inf
    //	Log(x < 0) = NaN
    //	Log(NaN) = NaN
**/
inline function log(x:Float):Float throw "not implemented";
/**
    // Log10 returns the decimal logarithm of x.
    // The special cases are the same as for Log.
**/
inline function log10(x:Float):Float throw "not implemented";
/**
    // Log2 returns the binary logarithm of x.
    // The special cases are the same as for Log.
**/
inline function log2(x:Float):Float throw "not implemented";
/**
    // Log1p returns the natural logarithm of 1 plus its argument x.
    // It is more accurate than Log(1 + x) when x is near zero.
    //
    // Special cases are:
    //
    //	Log1p(+Inf) = +Inf
    //	Log1p(±0) = ±0
    //	Log1p(-1) = -Inf
    //	Log1p(x < -1) = NaN
    //	Log1p(NaN) = NaN
**/
inline function log1p(x:Float):Float throw "not implemented";
/**
    // Logb returns the binary exponent of x.
    //
    // Special cases are:
    //
    //	Logb(±Inf) = +Inf
    //	Logb(0) = -Inf
    //	Logb(NaN) = NaN
**/
inline function logb(x:Float):Float throw "not implemented";
/**
    // Ilogb returns the binary exponent of x as an integer.
    //
    // Special cases are:
    //
    //	Ilogb(±Inf) = MaxInt32
    //	Ilogb(0) = MinInt32
    //	Ilogb(NaN) = MaxInt32
**/
inline function ilogb(x:Float):Int throw "not implemented";
/**
    // Mod returns the floating-point remainder of x/y.
    // The magnitude of the result is less than y and its
    // sign agrees with that of x.
    //
    // Special cases are:
    //
    //	Mod(±Inf, y) = NaN
    //	Mod(NaN, y) = NaN
    //	Mod(x, 0) = NaN
    //	Mod(x, ±Inf) = x
    //	Mod(x, NaN) = NaN
**/
inline function mod(x:Float, y:Float):Float throw "not implemented";
/**
    // Modf returns integer and fractional floating-point numbers
    // that sum to f. Both values have the same sign as f.
    //
    // Special cases are:
    //
    //	Modf(±Inf) = ±Inf, NaN
    //	Modf(NaN) = NaN, NaN
**/
inline function modf(f:Float):stdgo.Tuple<Float, Float> throw "not implemented";
/**
    // Nextafter32 returns the next representable float32 value after x towards y.
    //
    // Special cases are:
    //
    //	Nextafter32(x, x)   = x
    //	Nextafter32(NaN, y) = NaN
    //	Nextafter32(x, NaN) = NaN
**/
inline function nextafter32(x:Float, y:Float):Float throw "not implemented";
/**
    // Nextafter returns the next representable float64 value after x towards y.
    //
    // Special cases are:
    //
    //	Nextafter(x, x)   = x
    //	Nextafter(NaN, y) = NaN
    //	Nextafter(x, NaN) = NaN
**/
inline function nextafter(x:Float, y:Float):Float throw "not implemented";
/**
    // Pow returns x**y, the base-x exponential of y.
    //
    // Special cases are (in order):
    //
    //	Pow(x, ±0) = 1 for any x
    //	Pow(1, y) = 1 for any y
    //	Pow(x, 1) = x for any x
    //	Pow(NaN, y) = NaN
    //	Pow(x, NaN) = NaN
    //	Pow(±0, y) = ±Inf for y an odd integer < 0
    //	Pow(±0, -Inf) = +Inf
    //	Pow(±0, +Inf) = +0
    //	Pow(±0, y) = +Inf for finite y < 0 and not an odd integer
    //	Pow(±0, y) = ±0 for y an odd integer > 0
    //	Pow(±0, y) = +0 for finite y > 0 and not an odd integer
    //	Pow(-1, ±Inf) = 1
    //	Pow(x, +Inf) = +Inf for |x| > 1
    //	Pow(x, -Inf) = +0 for |x| > 1
    //	Pow(x, +Inf) = +0 for |x| < 1
    //	Pow(x, -Inf) = +Inf for |x| < 1
    //	Pow(+Inf, y) = +Inf for y > 0
    //	Pow(+Inf, y) = +0 for y < 0
    //	Pow(-Inf, y) = Pow(-0, -y)
    //	Pow(x, y) = NaN for finite x < 0 and finite non-integer y
**/
inline function pow(x:Float, y:Float):Float throw "not implemented";
/**
    // Pow10 returns 10**n, the base-10 exponential of n.
    //
    // Special cases are:
    //
    //	Pow10(n) =    0 for n < -323
    //	Pow10(n) = +Inf for n > 308
**/
inline function pow10(n:Int):Float throw "not implemented";
/**
    // Remainder returns the IEEE 754 floating-point remainder of x/y.
    //
    // Special cases are:
    //
    //	Remainder(±Inf, y) = NaN
    //	Remainder(NaN, y) = NaN
    //	Remainder(x, 0) = NaN
    //	Remainder(x, ±Inf) = x
    //	Remainder(x, NaN) = NaN
**/
inline function remainder(x:Float, y:Float):Float throw "not implemented";
/**
    // Signbit reports whether x is negative or negative zero.
**/
inline function signbit(x:Float):Bool throw "not implemented";
/**
    // Cos returns the cosine of the radian argument x.
    //
    // Special cases are:
    //
    //	Cos(±Inf) = NaN
    //	Cos(NaN) = NaN
**/
inline function cos(x:Float):Float throw "not implemented";
/**
    // Sin returns the sine of the radian argument x.
    //
    // Special cases are:
    //
    //	Sin(±0) = ±0
    //	Sin(±Inf) = NaN
    //	Sin(NaN) = NaN
**/
inline function sin(x:Float):Float throw "not implemented";
/**
    // Sincos returns Sin(x), Cos(x).
    //
    // Special cases are:
    //
    //	Sincos(±0) = ±0, 1
    //	Sincos(±Inf) = NaN, NaN
    //	Sincos(NaN) = NaN, NaN
**/
inline function sincos(x:Float):stdgo.Tuple<Float, Float> throw "not implemented";
/**
    // Sinh returns the hyperbolic sine of x.
    //
    // Special cases are:
    //
    //	Sinh(±0) = ±0
    //	Sinh(±Inf) = ±Inf
    //	Sinh(NaN) = NaN
**/
inline function sinh(x:Float):Float throw "not implemented";
/**
    // Cosh returns the hyperbolic cosine of x.
    //
    // Special cases are:
    //
    //	Cosh(±0) = 1
    //	Cosh(±Inf) = +Inf
    //	Cosh(NaN) = NaN
**/
inline function cosh(x:Float):Float throw "not implemented";
/**
    // Sqrt returns the square root of x.
    //
    // Special cases are:
    //
    //	Sqrt(+Inf) = +Inf
    //	Sqrt(±0) = ±0
    //	Sqrt(x < 0) = NaN
    //	Sqrt(NaN) = NaN
**/
inline function sqrt(x:Float):Float throw "not implemented";
/**
    // Tan returns the tangent of the radian argument x.
    //
    // Special cases are:
    //
    //	Tan(±0) = ±0
    //	Tan(±Inf) = NaN
    //	Tan(NaN) = NaN
**/
inline function tan(x:Float):Float throw "not implemented";
/**
    // Tanh returns the hyperbolic tangent of x.
    //
    // Special cases are:
    //
    //	Tanh(±0) = ±0
    //	Tanh(±Inf) = ±1
    //	Tanh(NaN) = NaN
**/
inline function tanh(x:Float):Float throw "not implemented";
/**
    // Float32bits returns the IEEE 754 binary representation of f,
    // with the sign bit of f and the result in the same bit position.
    // Float32bits(Float32frombits(x)) == x.
**/
inline function float32bits(f:Float):UInt throw "not implemented";
/**
    // Float32frombits returns the floating-point number corresponding
    // to the IEEE 754 binary representation b, with the sign bit of b
    // and the result in the same bit position.
    // Float32frombits(Float32bits(x)) == x.
**/
inline function float32frombits(b:UInt):Float throw "not implemented";
/**
    // Float64bits returns the IEEE 754 binary representation of f,
    // with the sign bit of f and the result in the same bit position,
    // and Float64bits(Float64frombits(x)) == x.
**/
inline function float64bits(f:Float):haxe.UInt64 throw "not implemented";
/**
    // Float64frombits returns the floating-point number corresponding
    // to the IEEE 754 binary representation b, with the sign bit of b
    // and the result in the same bit position.
    // Float64frombits(Float64bits(x)) == x.
**/
inline function float64frombits(b:haxe.UInt64):Float throw "not implemented";
private inline function negZero() throw "not implemented";
