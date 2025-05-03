package stdgo._internal.math;
function _acos(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        //"file:///home/runner/.go/go1.21.3/src/math/asin.go#L66"
        return ((1.5707963267948966 : stdgo.GoFloat64) - stdgo._internal.math.Math_asin.asin(_x) : stdgo.GoFloat64);
    }
