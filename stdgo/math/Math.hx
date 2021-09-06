package stdgo.math;

import Math as M;
import stdgo.StdGoTypes.GoFloat64 as Float;
import stdgo.StdGoTypes.GoInt;

final pi = M.PI;
final maxFloat32:Float = M.POSITIVE_INFINITY;

inline function max(a:Float, b:Float):Float {
	return M.max(a.toBasic(), b.toBasic());
}

inline function min(a:Float, b:Float):Float {
	return M.min(a.toBasic(), b.toBasic());
}

inline function inf(sign:GoInt):Float {
	if (sign >= 0)
		return M.POSITIVE_INFINITY;
	return M.NEGATIVE_INFINITY;
}

inline function signbit(x:Float):Bool {
	return x <= 0;
}

inline function isNaN(x:Float)
	return M.isNaN(x.toBasic());

inline function abs(x:Float):Float {
	return M.abs(x.toBasic());
}

inline function exp(x:Float):Float {
	return M.exp(x.toBasic());
}

inline function acos(x:Float):Float {
	return M.acos(x.toBasic());
}

inline function cos(x:Float):Float {
	return M.cos(x.toBasic());
}

inline function acosh(x:Float):Float {
	return 0; // TODO
}

inline function atanh(x:Float):Float {
	return 0; // TODO
}

inline function cosh(x:Float):Float {
	return 0; // TODO
}

inline function cbrt(x:Float):Float {
	return 0; // TODO
}

inline function erf(x:Float):Float {
	return 0; // TODO
}

inline function erfc(x:Float):Float {
	return 0; // TODO
}

inline function exp2(x:Float):Float {
	return 0; // TODO
}

inline function expm1(x:Float):Float {
	return 0; // TODO
}

inline function frexp(x:Float):{_frac:Float, _exp:GoInt} {
	return {_frac: 0, _exp: 0}; // TODO
}

inline function hypot(x:Float, y:Float):Float {
	return 0; // TODO
}

inline function mod(x:Float, y:Float):Float {
	return 0; // TODO
}

inline function floor(x:Float):Float {
	return M.ffloor(x.toBasic());
}

inline function pow(x:Float, y:Float):Float {
	return M.pow(x.toBasic(), y.toBasic());
}

inline function trunc(x:Float):Float {
	return 0; // TODO
}

inline function remainder(x:Float, y:Float):Float {
	return 0; // TODO
}

inline function modf(x:Float):{_int:Float, _frac:Float} {
	return {_int: 0, _frac: 0}; // TODO
}

inline function ldexp(x:Float, y:Float):Float {
	return 0; // TODO
}

inline function log(x:Float):Float {
	return M.log(x.toBasic());
}

inline function logp(x:Float):Float {
	return 0; // TODO
}

inline function log1p(x:Float):Float {
	return 0; // TODO
}

inline function log10(x:Float):Float {
	return 0; // TODO
}

inline function log2(x:Float):Float {
	return 0; // TODO
}

inline function asin(x:Float):Float {
	return M.asin(x.toBasic());
}

inline function asinh(x:Float):Float {
	return 0; // TODO
}

inline function sinh(x:Float):Float {
	return 0; // TODO
}

inline function tanh(x:Float):Float {
	return 0; // TODO
}

inline function tan(x:Float):Float {
	return M.tan(x.toBasic());
}

inline function atan(x:Float):Float {
	return M.atan(x.toBasic());
}

inline function atan2(y:Float, x:Float):Float {
	return M.atan2(y.toBasic(), x.toBasic());
}

inline function ceil(x:Float):Float {
	return M.ceil(x.toBasic());
}

inline function naN():Float {
	return M.NaN;
}

inline function round(x:Float):Float {
	return M.round(x.toBasic());
}

inline function sin(x:Float):Float {
	return M.sin(x.toBasic());
}
