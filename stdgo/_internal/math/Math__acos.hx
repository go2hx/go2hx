package stdgo._internal.math;
function _acos(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        return ((1.5707963267948966 : stdgo.GoFloat64) - stdgo._internal.math.Math_asin.asin(_x) : stdgo.GoFloat64);
    }
