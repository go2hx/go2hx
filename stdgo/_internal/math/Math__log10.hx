package stdgo._internal.math;
function _log10(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        return (stdgo._internal.math.Math_log.log(_x) * (0.4342944819032518 : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
