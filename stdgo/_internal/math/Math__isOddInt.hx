package stdgo._internal.math;
function _isOddInt(_x:stdgo.GoFloat64):Bool {
        if ((stdgo._internal.math.Math_abs.abs(_x) >= (9.007199254740992e+15 : stdgo.GoFloat64) : Bool)) {
            return false;
        };
        var __tmp__ = stdgo._internal.math.Math_modf.modf(_x), _xi:stdgo.GoFloat64 = __tmp__._0, _xf:stdgo.GoFloat64 = __tmp__._1;
        return ((_xf == (0 : stdgo.GoFloat64)) && (((_xi : stdgo.GoInt64) & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == (1i64 : stdgo.GoInt64)) : Bool);
    }
