package stdgo._internal.math;
function _expm1(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
            return _x;
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt))) {
            return (-1 : stdgo.GoFloat64);
        };
        var _absx = (_x : stdgo.GoFloat64);
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _absx = -_absx;
            _sign = true;
        };
        if ((_absx >= (38.816242111356935 : stdgo.GoFloat64) : Bool)) {
            if (_sign) {
                return (-1 : stdgo.GoFloat64);
            };
            if ((_absx >= (709.782712893384 : stdgo.GoFloat64) : Bool)) {
                return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            };
        };
        var _c:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _k:stdgo.GoInt = (0 : stdgo.GoInt);
        if ((_absx > (0.34657359027997264 : stdgo.GoFloat64) : Bool)) {
            var __0:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var _lo = __1, _hi = __0;
            if ((_absx < (1.0397207708399179 : stdgo.GoFloat64) : Bool)) {
                if (!_sign) {
                    _hi = (_x - (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _lo = (1.9082149292705877e-10 : stdgo.GoFloat64);
                    _k = (1 : stdgo.GoInt);
                } else {
                    _hi = (_x + (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _lo = (-1.9082149292705877e-10 : stdgo.GoFloat64);
                    _k = (-1 : stdgo.GoInt);
                };
            } else {
                if (!_sign) {
                    _k = ((((1.4426950408889634 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
                } else {
                    _k = ((((1.4426950408889634 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
                };
                var _t = (_k : stdgo.GoFloat64);
                _hi = (_x - (_t * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
                _lo = (_t * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            _x = (_hi - _lo : stdgo.GoFloat64);
            _c = (((_hi - _x : stdgo.GoFloat64)) - _lo : stdgo.GoFloat64);
        } else if ((_absx < (5.551115123125783e-17 : stdgo.GoFloat64) : Bool)) {
            return _x;
        } else {
            _k = (0 : stdgo.GoInt);
        };
        var _hfx = ((0.5 : stdgo.GoFloat64) * _x : stdgo.GoFloat64);
        var _hxs = (_x * _hfx : stdgo.GoFloat64);
        var _r1 = ((1 : stdgo.GoFloat64) + (_hxs * (((-0.03333333333333313 : stdgo.GoFloat64) + (_hxs * (((0.0015873015872548146 : stdgo.GoFloat64) + (_hxs * (((-7.93650757867488e-05 : stdgo.GoFloat64) + (_hxs * (((4.008217827329362e-06 : stdgo.GoFloat64) + (_hxs * (-2.0109921818362437e-07 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _t = ((3 : stdgo.GoFloat64) - (_r1 * _hfx : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _e = (_hxs * ((((_r1 - _t : stdgo.GoFloat64)) / (((6 : stdgo.GoFloat64) - (_x * _t : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        if (_k == ((0 : stdgo.GoInt))) {
            return (_x - (((_x * _e : stdgo.GoFloat64) - _hxs : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        _e = (((_x * ((_e - _c : stdgo.GoFloat64)) : stdgo.GoFloat64) - _c : stdgo.GoFloat64));
        _e = (_e - (_hxs) : stdgo.GoFloat64);
        if (_k == ((-1 : stdgo.GoInt))) {
            return (((0.5 : stdgo.GoFloat64) * ((_x - _e : stdgo.GoFloat64)) : stdgo.GoFloat64) - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else if (_k == ((1 : stdgo.GoInt))) {
            if ((_x < (-0.25 : stdgo.GoFloat64) : Bool)) {
                return ((-2 : stdgo.GoFloat64) * ((_e - ((_x + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
            };
            return ((1 : stdgo.GoFloat64) + ((2 : stdgo.GoFloat64) * ((_x - _e : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else if (((_k <= (-2 : stdgo.GoInt) : Bool) || (_k > (56 : stdgo.GoInt) : Bool) : Bool)) {
            var _y = ((1 : stdgo.GoFloat64) - ((_e - _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
            _y = stdgo._internal.math.Math_float64frombits.float64frombits((stdgo._internal.math.Math_float64bits.float64bits(_y) + ((_k : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64));
            return (_y - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        if ((_k < (20 : stdgo.GoInt) : Bool)) {
            var _t = (stdgo._internal.math.Math_float64frombits.float64frombits(((4607182418800017408i64 : stdgo.GoUInt64) - (((9007199254740992i64 : stdgo.GoUInt64) >> (_k : stdgo.GoUInt) : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoFloat64);
            var _y = (_t - ((_e - _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
            _y = stdgo._internal.math.Math_float64frombits.float64frombits((stdgo._internal.math.Math_float64bits.float64bits(_y) + ((_k : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64));
            return _y;
        };
        _t = stdgo._internal.math.Math_float64frombits.float64frombits(((((1023 : stdgo.GoInt) - _k : stdgo.GoInt) : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        var _y = (_x - ((_e + _t : stdgo.GoFloat64)) : stdgo.GoFloat64);
        _y++;
        _y = stdgo._internal.math.Math_float64frombits.float64frombits((stdgo._internal.math.Math_float64bits.float64bits(_y) + ((_k : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64));
        return _y;
    }
