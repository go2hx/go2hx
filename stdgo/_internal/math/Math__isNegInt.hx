package stdgo._internal.math;
function _isNegInt(_x:stdgo.GoFloat64):Bool {
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            var __tmp__ = stdgo._internal.math.Math_modf.modf(_x), __0:stdgo.GoFloat64 = __tmp__._0, _xf:stdgo.GoFloat64 = __tmp__._1;
            return _xf == (0 : stdgo.GoFloat64);
        };
        return false;
    }
