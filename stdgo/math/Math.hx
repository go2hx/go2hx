package stdgo.math;

import stdgo.StdGoTypes.GoFloat64;
import stdgo.StdGoTypes.GoInt;
import Math as M;

final pi = M.PI;

inline function max(a, b) {
	return M.max(a, b);
}

inline function inf(sign:GoInt) {
	if (sign >= 0)
		return Math.POSITIVE_INFINITY;
	return Math.NEGATIVE_INFINITY;
}

inline function signbit(x:GoFloat64) {
	return x <= 0;
}

inline function isNaN(x:GoFloat64)
	return M.isNaN(x.toBasic());

inline function min(a, b) {
	return M.min(a, b);
}

inline function abs(v) {
	return M.abs(v);
}

inline function exp(v:GoFloat64) {
	return M.exp(v.toBasic());
}

inline function acos(v) {
	return M.acos(v);
}

inline function acosh(v) {
	return 0;
}

inline function asin(v) {
	return M.asin(v);
}

inline function asinh(v) {
	return 0;
}

inline function atan(v) {
	return M.atan(v);
}

inline function atan2(y, x) {
	return M.atan2(y, x);
}

inline function ceil(v) {
	return M.ceil(v);
}

inline function naN() {
	return M.NaN;
}

inline function round(v) {
	return M.round(v);
}

inline function sin(v) {
	return M.sin(v);
}
