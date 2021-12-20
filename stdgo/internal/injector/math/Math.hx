package stdgo.internal.injector.math;

import Math as M;
import haxe.Int64;
import haxe.io.Bytes;
import stdgo.StdGoTypes;

@:local
final pi = M.PI;

@:local
final maxFloat32 = 340282346638528859811704183484516925440.000000;

inline function max(_x, _y) {
	return HaxeMath.max(_x, _y);
}

inline function min(_x, _y) {
	return HaxeMath.min(_x, _y);
}

inline function mod(_x, _y) {
	return HaxeMath.mod(_x, _y);
}

inline function log(_x)
	return HaxeMath.log(_x);

inline function sqrt(_x) {
	return HaxeMath.sqrt(_x);
}

// private version for testing ref
inline function _sqrt(_x) {
	return HaxeMath.sqrt(_x);
}

inline function inf(_sign) {
	return HaxeMath.inf(_sign);
}

inline function isNaN(_f)
	return HaxeMath.isNaN(_f);

inline function abs(_x) {
	return HaxeMath.abs(_x);
}

inline function exp(_x) {
	return HaxeMath.exp(_x);
}

inline function acos(_x) {
	return HaxeMath.acos(_x);
}

inline function cos(_x) {
	return HaxeMath.cos(_x);
}

function _archFloor(_x)
	return HaxeMath.floor(_x);

function _archCeil(_x)
	return HaxeMath.ceil(_x);

function _archTrunc(_x)
	return HaxeMath.trunc(_x);

inline function trunc(_x)
	return HaxeMath.trunc(_x);

inline function floor(_x) {
	return HaxeMath.floor(_x);
}

inline function pow(_x, _y) {
	return HaxeMath.pow(_x, _y);
}

inline function asin(_x) {
	return HaxeMath.asin(_x);
}

inline function tan(_x) {
	return HaxeMath.tan(_x);
}

inline function atan(_x) {
	return HaxeMath.atan(_x);
}

inline function atan2(_y, _x) {
	return HaxeMath.atan2(_y, _x);
}

inline function ceil(_x) {
	return HaxeMath.ceil(_x);
}

inline function naN() {
	return HaxeMath.naN();
}

inline function round(_x) {
	return HaxeMath.round(_x);
}

inline function sin(_x) {
	return HaxeMath.sin(_x);
}

inline function float32frombits(_b)
	return HaxeMath.float32frombits(_b);

inline function float32bits(_f)
	return HaxeMath.float32bits(_f);

inline function float64frombits(_b) {
	return HaxeMath.float64frombits(_b);
}

function float64bits(_f) {
	return HaxeMath.float64bits(_f);
}

class HaxeMath {
	public static function trunc(_x:GoFloat64):GoFloat64
		return _x > 0 ? M.floor(_x.toBasic()) : M.ceil(_x.toBasic());

	public static function log(_x:GoFloat64):GoFloat64
		return M.log(_x.toBasic());

	public static function pow(_x:GoFloat64, _y:GoFloat64):GoFloat64
		return M.pow(_x.toBasic(), _y.toBasic());

	public static function mod(_x:GoFloat64, _y:GoFloat64):GoFloat64
		return _x.toBasic() % _y.toBasic();

	public static function float64bits(_f:GoFloat64):GoUInt64 {
		final bits = Bytes.alloc(8);
		bits.setDouble(0, _f.toBasic());
		return Int64.make(bits.get(4) | (bits.get(5) << 8) | (bits.get(6) << 16) | (bits.get(7) << 24),
			bits.get(0) | (bits.get(1) << 8) | (bits.get(2) << 16) | (bits.get(3) << 24));
	}

	public static function float32bits(_b:GoFloat32):GoUInt32 {
		final bits = Bytes.alloc(4);
		bits.setFloat(0, _b.toBasic());
		return bits.get(0) | bits.get(1) << 8 | bits.get(2) << 16 | bits.get(3) << 24;
	}

	public static function float32frombits(_b:GoUInt32):GoFloat32 {
		final bits = Bytes.alloc(4);
		final v = _b.toBasic();
		bits.set(0, v & 0xff);
		bits.set(1, (v >> 8) & 0xff);
		bits.set(2, (v >> 16) & 0xff);
		bits.set(3, (v >> 24) & 0xff);
		return bits.getFloat(0);
	}

	public static function float64frombits(_b:GoUInt64):GoFloat64 {
		final bits = Bytes.alloc(8);
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

	public static function naN()
		return M.NaN;

	public static function inf(sign:GoInt) {
		if (sign >= 0)
			return M.POSITIVE_INFINITY;
		return M.NEGATIVE_INFINITY;
	}

	public static function exp(_x:GoFloat):GoFloat
		return M.exp(_x.toBasic());

	public static function isNaN(_f:GoFloat):Bool
		return M.isNaN(_f.toBasic());

	public static function abs(_f:GoFloat):GoFloat
		return M.abs(_f.toBasic());

	public static function floor(_f:GoFloat):GoFloat {
		if (!M.isFinite(_f.toBasic()) || M.isNaN(_f.toBasic()))
			return _f;
		return M.ffloor(_f.toBasic());
	}

	public static function ceil(_f:GoFloat):GoFloat {
		if (!M.isFinite(_f.toBasic()) || M.isNaN(_f.toBasic())) // special cases
			return _f;
		if (_f == 0.0 && _signbit(_f))
			return negZero();
		if (_f > -1.0 && _f < 0.0) {
			//-0.0
			return negZero();
		}
		return M.ceil(_f.toBasic());
	}

	private static function _signbit(_x:GoFloat64):Bool {
		return (float64bits(_x) & (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt)))) != ((0 : GoUInt64));
	}

	public static function negZero():GoFloat {
		final _sign:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt));
		final _x:GoFloat = 0;
		final _y:GoFloat = -1;
		return float64frombits((float64bits(_x) & (_sign ^ ((-1 : GoUnTypedInt)))) | (float64bits(_y) & _sign));
	}

	public static function sqrt(_x:GoFloat):GoFloat
		return M.sqrt(_x.toBasic());

	public static function min(_x:GoFloat, _y:GoFloat):GoFloat {
		// special cases
		if (_x < 0 && !M.isFinite(_x.toBasic()) || _y < 0 && !M.isFinite(_y.toBasic()))
			return inf(-1);
		if (_x == 0.0 && _signbit(_x) && !isNaN(_y) || _y == 0.0 && _signbit(_y) && !isNaN(_x))
			return negZero();
		if (isNaN(_x) || isNaN(_y))
			return naN();
		return M.min(_x.toBasic(), _y.toBasic());
	}

	public static function max(_x:GoFloat, _y:GoFloat):GoFloat {
		// special cases
		if (_x > 0 && !M.isFinite(_x.toBasic()) || _y > 0 && !M.isFinite(_y.toBasic()))
			return inf(1);
		if (_x == 0.0 && !_signbit(_x) && !isNaN(_y) || _y == 0.0 && !_signbit(_y) && !isNaN(_x))
			return 0.0;
		if (isNaN(_x) || isNaN(_y))
			return naN();
		return M.max(_x.toBasic(), _y.toBasic());
	}

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

	public static function atan2(_y:GoFloat, _x:GoFloat):GoFloat
		return M.atan2(_y.toBasic(), _x.toBasic());

	public static function round(_f:GoFloat)
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
