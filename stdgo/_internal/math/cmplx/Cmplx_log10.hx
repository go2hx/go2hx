package stdgo._internal.math.cmplx;
function log10(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        var _z = (stdgo._internal.math.cmplx.Cmplx_log.log(_x) : stdgo.GoComplex128);
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/log.go#L64"
        return new stdgo.GoComplex128(((0.4342944819032518 : stdgo.GoFloat64) * (_z : stdgo.GoComplex128).real : stdgo.GoFloat64), ((0.4342944819032518 : stdgo.GoFloat64) * (_z : stdgo.GoComplex128).imag : stdgo.GoFloat64));
    }
