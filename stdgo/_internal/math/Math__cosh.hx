package stdgo._internal.math;
function _cosh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        _x = stdgo._internal.math.Math_abs.abs(_x);
        if ((_x > (21 : stdgo.GoFloat64) : Bool)) {
            return (stdgo._internal.math.Math_exp.exp(_x) * (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        var _ex = (stdgo._internal.math.Math_exp.exp(_x) : stdgo.GoFloat64);
        return (((_ex + ((1 : stdgo.GoFloat64) / _ex : stdgo.GoFloat64) : stdgo.GoFloat64)) * (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
