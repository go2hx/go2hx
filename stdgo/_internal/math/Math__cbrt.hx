package stdgo._internal.math;
function _cbrt(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (((_x == (0 : stdgo.GoFloat64) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool) || stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt)) : Bool)) {
            return _x;
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        var _t = (stdgo._internal.math.Math_float64frombits.float64frombits(((stdgo._internal.math.Math_float64bits.float64bits(_x) / (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (3071306043645493248i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoFloat64);
        if ((_x < (2.2250738585072014e-308 : stdgo.GoFloat64) : Bool)) {
            _t = (1.8014398509481984e+16 : stdgo.GoFloat64);
            _t = (_t * (_x) : stdgo.GoFloat64);
            _t = stdgo._internal.math.Math_float64frombits.float64frombits(((stdgo._internal.math.Math_float64bits.float64bits(_t) / (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (2990241250352824320i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        };
        var _r = ((_t * _t : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
        var _s = ((0.5428571428571428 : stdgo.GoFloat64) + (_r * _t : stdgo.GoFloat64) : stdgo.GoFloat64);
        _t = (_t * (((0.35714285714285715 : stdgo.GoFloat64) + ((1.6071428571428572 : stdgo.GoFloat64) / (((_s + (1.4142857142857144 : stdgo.GoFloat64) : stdgo.GoFloat64) + ((-0.7053061224489796 : stdgo.GoFloat64) / _s : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        _t = stdgo._internal.math.Math_float64frombits.float64frombits(((stdgo._internal.math.Math_float64bits.float64bits(_t) & (-1073741824i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (1073741824i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        _s = (_t * _t : stdgo.GoFloat64);
        _r = (_x / _s : stdgo.GoFloat64);
        var _w = (_t + _t : stdgo.GoFloat64);
        _r = (((_r - _t : stdgo.GoFloat64)) / ((_w + _r : stdgo.GoFloat64)) : stdgo.GoFloat64);
        _t = (_t + (_t * _r : stdgo.GoFloat64) : stdgo.GoFloat64);
        if (_sign) {
            _t = -_t;
        };
        return _t;
    }
