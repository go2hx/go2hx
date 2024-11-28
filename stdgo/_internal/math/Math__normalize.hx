package stdgo._internal.math;
function _normalize(_x:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } {
        var _y = (0 : stdgo.GoFloat64), _exp = (0 : stdgo.GoInt);
        {};
        if ((stdgo._internal.math.Math_abs.abs(_x) < (2.2250738585072014e-308 : stdgo.GoFloat64) : Bool)) {
            return { _0 : _y = (_x * (4.503599627370496e+15 : stdgo.GoFloat64) : stdgo.GoFloat64), _1 : _exp = (-52 : stdgo.GoInt) };
        };
        return { _0 : _y = _x, _1 : _exp = (0 : stdgo.GoInt) };
    }
