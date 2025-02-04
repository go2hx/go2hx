package stdgo._internal.math.cmplx;
function naN():stdgo.GoComplex128 {
        var _nan = (stdgo._internal.math.Math_nan.naN() : stdgo.GoFloat64);
        return new stdgo.GoComplex128(_nan, _nan);
    }
