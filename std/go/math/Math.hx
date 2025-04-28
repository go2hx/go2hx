package std.go.math;

import stdgo.math.Math as GoMath;

function _archHypot(_p:stdgo.GoFloat64, _q:stdgo.GoFloat64):stdgo.GoFloat64 {
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

function trunc(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
	return if (_x > 0) {
		GoMath.floor(_x);
	} else {
		GoMath.ceil(_x);
	};
}

function log(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
	return std.Math.log(_x.toBasic());
}

function pow(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
	@:define("(js || interp)") {
		if (_x == 1 && std.Math.isNaN(_y.toBasic()))
			return 1;
		if ((_x == -1 || _x == 1) && GoMath.isInf(_y, 0))
			return 1;
	};
	return std.Math.pow(_x.toBasic(), _y.toBasic());
}

function mod(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
	return _x.toBasic() % _y.toBasic();
}

function float64bits(_f:stdgo.GoFloat64):stdgo.GoUInt64 {
	final bits = haxe.io.Bytes.alloc(8);
	bits.setDouble(0, _f.toBasic());
	return haxe.Int64.make(bits.get(4) | (bits.get(5) << 8) | (bits.get(6) << 16) | (bits.get(7) << 24),
		bits.get(0) | (bits.get(1) << 8) | (bits.get(2) << 16) | (bits.get(3) << 24));
}

function float32bits(_f:stdgo.GoFloat32):stdgo.GoUInt32 {
	final bits = haxe.io.Bytes.alloc(4);
	bits.setFloat(0, _f.toBasic());
	return (bits.get(0)) | (bits.get(1) << 8) | (bits.get(2) << 16) | (bits.get(3) << 24);
}

function float32frombits(_b:stdgo.GoUInt32):stdgo.GoFloat32 {
	final bits = haxe.io.Bytes.alloc(4);
	final v = _b.toBasic();
	bits.set(0, v & 0xff);
	bits.set(1, (v >> 8) & 0xff);
	bits.set(2, (v >> 16) & 0xff);
	bits.set(3, (v >> 24) & 0xff); // little-endian
	return bits.getFloat(0);
}

function float64frombits(_b:stdgo.GoUInt64):stdgo.GoFloat64 {
	final bits = haxe.io.Bytes.alloc(8);
	final low = _b.toBasic().low;
	final high = _b.toBasic().high;
	bits.set(0, low & 0xff);
	bits.set(1, (low >> 8) & 0xff);
	bits.set(2, (low >> 16) & 0xff);
	bits.set(3, (low >> 24) & 0xff); // little-endian
	bits.set(4, high & 0xff);
	bits.set(5, (high >> 8) & 0xff);
	bits.set(6, (high >> 16) & 0xff);
	bits.set(7, (high >> 24) & 0xff); // little-endian
	return bits.getDouble(0);
}

function naN():stdgo.GoFloat64
	return std.Math.NaN;

function inf():stdgo.GoFloat64 {
	if (_sign >= 0)
		return std.Math.POSITIVE_INFINITY;
	return std.Math.NEGATIVE_INFINITY;
}

function signbit(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
	if (std.Math.isNaN(_x.toBasic()))
		return false;
	return stdgo._internal.math.Math_float64bits.float64bits(_x) & ((1 : stdgo.GoUInt64) << (63 : stdgo.GoUInt64)) != (0 : stdgo.GoUInt64);
}

function exp(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
	return std.Math.exp(_x.toBasic());
}

function isNanN(_f:stdgo.GoFloat64):stdgo.GoFloat64 {
	return std.Math.isNaN(_f.toBasic());
}

function abs(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
	return std.Math.abs(_x.toBasic());
}

function floor(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
	if (!std.Math.isFinite(_x.toBasic()) || std.Math.isNaN(_x.toBasic()))
		return _x;
	return std.Math.ffloor(_x.toBasic());
}

function ceil(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
	if (!std.Math.isFinite(_x.toBasic()) || std.Math.isNaN(_x.toBasic())) // special cases
		return _x;
	if (_x == 0.0 && GoMath.signbit(_x))
		return stdgo._internal.math.Math_negzero.negZero();
	if (_x > -1.0 && _x < 0.0) {
		//-0.0
		return stdgo._internal.math.Math_negzero.negZero();
	}
	return std.Math.ceil(_x.toBasic());
}

function sqrt(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
	return std.Math.sqrt(_x);
}

function min(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
	// special cases
	if (_x < 0 && !std.Math.isFinite(_x.toBasic()) || _y < 0 && !std.Math.isFinite(_y.toBasic()))
		return GoMath.inf(-1);
	if (_x == 0.0 && GoMath.signbit(_x) && !GoMath.isNaN(_y) || _y == 0.0 && GoMath.signbit(_y) && !GoMath.isNaN(_x))
		return GoMath.negZero();
	if (GoMath.isNaN(_x) || GoMath.isNaN(_y))
		return GoMath.naN();
	return std.Math.min(_x.toBasic(), _y.toBasic());
}

function max(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
	// special cases
	if (_x > 0 && !std.Math.isFinite(_x.toBasic()) || _y > 0 && !std.Math.isFinite(_y.toBasic()))
		return GoMath.inf(1);
	if (_x == 0.0 && _y == 0.0 && !GoMath.signbit(_x) && !GoMath.isNaN(_y) || _x == 0.0 && _y == 0.0 && !GoMath.signbit(_y) && !GoMath.isNaN(_x)) {
		return 0.0;
	}
	if (GoMath.isNaN(_x) || GoMath.isNaN(_y))
		return stdgo._internal.math.Math_nan.naN();
	return std.Math.max(_x.toBasic(), _y.toBasic());
}

function sin(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return std.Math.sin(_x.toBasic());

function cos(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return std.Math.cos(_x.toBasic());

function tan(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return std.Math.tan(_x.toBasic());

function asin(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return std.Math.asin(_x.toBasic());

function acos(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return std.Math.acos(_x.toBasic());

function atan(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return std.Math.atan(_x.toBasic());

function atan2(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64
	return std.Math.atan2(_x.toBasic(), _y.toBasic());

function isInf(_x:stdgo.GoFloat64, _sign:stdgo.GoInt):Bool
	return _sign.toBasic() >= 0 && _f == std.Math.POSITIVE_INFINITY || _sign.toBasic() <= 0 && _f == std.Math.NEGATIVE_INFINITY;

function hypnot(_p:stdgo.GoFloat64):stdgo.GoFloat64 {
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

function _archFloor(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return GoMath.floor(_x);

function _archCeil(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return GoMath.ceil(_x);

function _archTrunc(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return GoMath.trunc(_x);

function _cos(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return GoMath.cos(_x);

function _sin(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return GoMath.sin(_x);
