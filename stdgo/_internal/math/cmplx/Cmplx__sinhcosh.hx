package stdgo._internal.math.cmplx;
function _sinhcosh(_x:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } {
        var _sh = (0 : stdgo.GoFloat64), _ch = (0 : stdgo.GoFloat64);
        if ((stdgo._internal.math.Math_abs.abs(_x) <= (0.5 : stdgo.GoFloat64) : Bool)) {
            return { _0 : _sh = stdgo._internal.math.Math_sinh.sinh(_x), _1 : _ch = stdgo._internal.math.Math_cosh.cosh(_x) };
        };
        var _e = (stdgo._internal.math.Math_exp.exp(_x) : stdgo.GoFloat64);
        var _ei = ((0.5 : stdgo.GoFloat64) / _e : stdgo.GoFloat64);
        _e = (_e * (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64);
        return { _0 : _sh = (_e - _ei : stdgo.GoFloat64), _1 : _ch = (_e + _ei : stdgo.GoFloat64) };
    }
