package stdgo.math;

import Math as M;
import stdgo.StdGoTypes.GoFloat;
import stdgo.StdGoTypes.GoInt;

final pi = M.PI;
final maxFloat32 = 340282346638528859811704183484516925440.000000;

inline function max(_x, _y) {
	return HaxeMath.max(_x, _y);
}

inline function min(_x, _y) {
	return HaxeMath.min(_x, _y);
}

inline function sqrt(_f) {
	return HaxeMath.sqrt(_f);
}

inline function inf(_sign) {
	return HaxeMath.inf(_sign);
}

inline function isnaN(_f)
	return HaxeMath.isNaN(_f);

inline function abs(_f) {
	return HaxeMath.abs(_f);
}

inline function exp(_f) {
	return M.exp(_f);
}

inline function acos(_f) {
	return HaxeMath.acos(_f);
}

inline function cos(_f) {
	return HaxeMath.cos(_f);
}

inline function floor(_f) {
	return HaxeMath.floor(_f);
}

inline function pow(_x, _y) {
	return M.pow(_x, _y);
}

inline function asin(_f) {
	return HaxeMath.asin(_f);
}

inline function tan(_f) {
	return HaxeMath.tan(_f);
}

inline function atan(_f) {
	return HaxeMath.atan(_f);
}

inline function atan2(y, x) {
	return HaxeMath.atan2(x, y);
}

inline function ceil(_f) {
	return HaxeMath.ceil(_f);
}

inline function naN() {
	return HaxeMath.naN();
}

inline function round(_f) {
	return HaxeMath.round(_f);
}

inline function sin(_f) {
	return HaxeMath.sin(_f);
}

class HaxeMath {
	public static function naN()
		return M.NaN;

	public static function inf(sign:GoInt) {
		if (sign >= 0)
			return M.POSITIVE_INFINITY;
		return M.NEGATIVE_INFINITY;
	}

	public static function isNaN(_f:GoFloat):Bool
		return M.isNaN(_f.toBasic());

	public static function abs(_f:GoFloat):GoFloat
		return M.abs(_f.toBasic());

	public static function floor(_f:GoFloat):GoFloat
		return M.ffloor(_f.toBasic());

	public static function ceil(_f:GoFloat):GoFloat
		return M.ceil(_f.toBasic());

	public static function sqrt(_f:GoFloat):GoFloat
		return M.sqrt(_f.toBasic());

	public static function min(_x:GoFloat, _y:GoFloat):GoFloat
		return M.min(_x.toBasic(), _y.toBasic());

	public static function max(_x:GoFloat, _y:GoFloat):GoFloat
		return M.max(_x.toBasic(), _y.toBasic());

	public static function sin(_f:GoFloat):GoFloat
		return M.sin(_f.toBasic());

	public static function cos(_f:GoFloat):GoFloat
		return M.cos(_f.toBasic());

	public static function tan(_f:GoFloat):GoFloat
		return M.tan(_f.toBasic());

	public static function asin(_f:GoFloat):GoFloat
		return M.asin(_f.toBasic());

	public static function acos(_f:GoFloat):GoFloat
		return M.acos(_f.toBasic());

	public static function atan(_f:GoFloat):GoFloat
		return M.atan(_f.toBasic());

	public static function atan2(_x:GoFloat, _y:GoFloat):GoFloat
		return M.atan2(_x.toBasic(), _y.toBasic());

	public static function round(_f)
		return M.round(_f.toBasic());

	public static function isInf(_f:GoFloat, _sign:GoInt) {
		return _sign >= 0 && _f == M.POSITIVE_INFINITY || _sign <= 0 && _f == M.NEGATIVE_INFINITY;
	}

	public static function hypnot(_p:GoFloat, _q:GoFloat):GoFloat {
		if (isInf(_p, 0) || isInf(_q, 0))
			return inf(1);
		if (_p == M.NaN || _q == M.NaN)
			return naN();
		_p = abs(_p);
		_q = abs(_q);
		if (_p < _q) {
			final temp = _p;
			_p = _q;
			_q = temp;
		}
		if (_p == 0)
			return 0;
		_q = _q / _p;
		return _p * sqrt(1 + _q * _q);
	}
}
