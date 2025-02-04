package stdgo._internal.math;
function _log(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((stdgo._internal.math.Math_isnan.isNaN(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt)) : Bool)) {
            return _x;
        } else if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            return stdgo._internal.math.Math_nan.naN();
        } else if (_x == (0 : stdgo.GoFloat64)) {
            return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
        };
        var __tmp__ = stdgo._internal.math.Math_frexp.frexp(_x), _f1:stdgo.GoFloat64 = __tmp__._0, _ki:stdgo.GoInt = __tmp__._1;
        if ((_f1 < (0.7071067811865476 : stdgo.GoFloat64) : Bool)) {
            _f1 = (_f1 * (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
            _ki--;
        };
        var _f = (_f1 - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _k = (_ki : stdgo.GoFloat64);
        var _s = (_f / (((2 : stdgo.GoFloat64) + _f : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _s2 = (_s * _s : stdgo.GoFloat64);
        var _s4 = (_s2 * _s2 : stdgo.GoFloat64);
        var _t1 = (_s2 * (((0.6666666666666735 : stdgo.GoFloat64) + (_s4 * (((0.2857142874366239 : stdgo.GoFloat64) + (_s4 * (((0.1818357216161805 : stdgo.GoFloat64) + (_s4 * (0.14798198605116586 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _t2 = (_s4 * (((0.3999999999940942 : stdgo.GoFloat64) + (_s4 * (((0.22222198432149784 : stdgo.GoFloat64) + (_s4 * (0.15313837699209373 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var r = (_t1 + _t2 : stdgo.GoFloat64);
        var _hfsq = (((0.5 : stdgo.GoFloat64) * _f : stdgo.GoFloat64) * _f : stdgo.GoFloat64);
        return ((_k * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64) - ((((_hfsq - (((_s * ((_hfsq + r : stdgo.GoFloat64)) : stdgo.GoFloat64) + (_k * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) - _f : stdgo.GoFloat64)) : stdgo.GoFloat64);
    }
