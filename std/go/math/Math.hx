package std.go.math;

import go.math.Math as GoMath;

function _archHypot(_p:go.GoFloat64, _q:go.GoFloat64):go.GoFloat64 {
	if (GoMath.isInf(_p, 0) || GoMath.isInf(_q, 0))
		return GoMath.inf(1);
	if (!std.Math.isFinite(_p.toBasic()) || std.Math.isNaN(_q.toBasic()))
		return GoMath.naN();
	_p = GoMath.abs(_p);
	_q = GoMath.abs(_q);
	if (_p < _q) {
		final temp = _p;
		_p = _q;
		_q = temp;
	}
	if (_p == 0)
		return 0;
	_q = _q / _p;
	return _p * GoMath.sqrt(1 + _q * _q);
}


function pow(_x:go.GoFloat64, _y:go.GoFloat64):go.GoFloat64 {
	@:define("(js || interp)") {
		if (_x == 1 && std.Math.isNaN(_y.toBasic()))
			return 1;
		if ((_x == -1 || _x == 1) && GoMath.isInf(_y, 0))
			return 1;
	};
	return std.Math.pow(_x.toBasic(), _y.toBasic());
}

function max(_x:go.GoFloat64, _y:go.GoFloat64):go.GoFloat64 {
	// special cases
	if (_x > 0 && !std.Math.isFinite(_x.toBasic()) || _y > 0 && !std.Math.isFinite(_y.toBasic()))
		return GoMath.inf(1);
    final case1 = _x == 0.0 && _y == 0.0 && !GoMath.signbit(_x);
	if (_x == 0.0 && _y == 0.0 && (!GoMath.signbit(_x) || !GoMath.signbit(_y))) {
		return 0.0;
	}
    final case2 = !GoMath.isNaN(_y) || _x == 0.0;
    final case3 = _y == 0.0 && !GoMath.signbit(_y) && !GoMath.isNaN(_x);
	if (case1 && case2 && case3) {
		return 0.0;
	}
	if (GoMath.isNaN(_x) || GoMath.isNaN(_y))
		return go._internal.math.Math_nan.naN();
	return std.Math.max(_x.toBasic(), _y.toBasic());
}

function trunc(_x:go.GoFloat64):go.GoFloat64 {
	return if (_x > 0) {
		GoMath.floor(_x);
	} else {
		GoMath.ceil(_x);
	};
}

function inf(_sign):go.GoFloat64 {
	if (_sign >= 0)
		return std.Math.POSITIVE_INFINITY;
	return std.Math.NEGATIVE_INFINITY;
}

function isInf(_x:go.GoFloat64, _sign:go.GoInt, _f):Bool
	return _sign.toBasic() >= 0 && _f == std.Math.POSITIVE_INFINITY || _sign.toBasic() <= 0 && _f == std.Math.NEGATIVE_INFINITY;

function signbit(_x:go.GoFloat64):Bool {
	if (std.Math.isNaN(_x.toBasic()))
		return false;
	return go._internal.math.Math_float64bits.float64bits(_x) & ((1 : go.GoUInt64) << (63 : go.GoUInt64)) != (0 : go.GoUInt64);
}

function floor(_x:go.GoFloat64):go.GoFloat64 {
	if (!std.Math.isFinite(_x.toBasic()) || std.Math.isNaN(_x.toBasic()))
		return _x;
	return std.Math.ffloor(_x.toBasic());
}

function ceil(_x:go.GoFloat64):go.GoFloat64 {
	if (!std.Math.isFinite(_x.toBasic()) || std.Math.isNaN(_x.toBasic())) // special cases
		return _x;
	if (_x == 0.0 && GoMath.signbit(_x))
		return go._internal.math.Math_negzero.negZero();
	if (_x > -1.0 && _x < 0.0) {
		//-0.0
		return go._internal.math.Math_negzero.negZero();
	}
	return std.Math.ceil(_x.toBasic());
}

function min(_x:go.GoFloat64, _y:go.GoFloat64):go.GoFloat64 {
	// special cases
	if (_x < 0 && !std.Math.isFinite(_x.toBasic()) || _y < 0 && !std.Math.isFinite(_y.toBasic()))
		return GoMath.inf(-1);
	if (_x == 0.0 && GoMath.signbit(_x) && !GoMath.isNaN(_y) || _y == 0.0 && GoMath.signbit(_y) && !GoMath.isNaN(_x))
		return go._internal.math.Math_negzero.negZero();
	if (GoMath.isNaN(_x) || GoMath.isNaN(_y))
		return GoMath.naN();
	return std.Math.min(_x.toBasic(), _y.toBasic());
}


function hypnot(_p:go.GoFloat64, _q):go.GoFloat64 {
	if (GoMath.isInf(_p, 0) || GoMath.isInf(_q, 0))
		return GoMath.inf(1);
	if (_p == std.Math.NaN || _q == std.Math.NaN)
		return GoMath.naN();
	_p = GoMath.abs(_p);
	_q = GoMath.abs(_q);
	if (_p < _q) {
		final temp = _p;
		_p = _q;
		_q = temp;
	}
	if (_p == 0)
		return 0;
	_q = _q / _p;
	return _p * GoMath.sqrt(1 + _q * _q);
}