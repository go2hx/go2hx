package stdgo._internal.math;
function _normalize(_x:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } {
        var _y = (0 : stdgo.GoFloat64), _exp = (0 : stdgo.GoInt);
        {};
        if ((stdgo._internal.math.Math_abs.abs(_x) < (2.2250738585072014e-308 : stdgo.GoFloat64) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } = { _0 : (_x * (4.503599627370496e+15 : stdgo.GoFloat64) : stdgo.GoFloat64), _1 : (-52 : stdgo.GoInt) };
                _y = __tmp__._0;
                _exp = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } = { _0 : _x, _1 : (0 : stdgo.GoInt) };
            _y = __tmp__._0;
            _exp = __tmp__._1;
            __tmp__;
        };
    }
