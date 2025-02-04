package stdgo._internal.math;
function _floor(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (((_x == (0 : stdgo.GoFloat64) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool) || stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt)) : Bool)) {
            return _x;
        };
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            var __tmp__ = stdgo._internal.math.Math_modf.modf(-_x), _d:stdgo.GoFloat64 = __tmp__._0, _fract:stdgo.GoFloat64 = __tmp__._1;
            if (_fract != (0 : stdgo.GoFloat64)) {
                _d = (_d + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            return -_d;
        };
        var __tmp__ = stdgo._internal.math.Math_modf.modf(_x), _d:stdgo.GoFloat64 = __tmp__._0, __0:stdgo.GoFloat64 = __tmp__._1;
        return _d;
    }
