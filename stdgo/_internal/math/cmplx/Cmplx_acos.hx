package stdgo._internal.math.cmplx;
function acos(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        var _w = (stdgo._internal.math.cmplx.Cmplx_asin.asin(_x) : stdgo.GoComplex128);
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L135"
        return new stdgo.GoComplex128(((1.5707963267948966 : stdgo.GoFloat64) - (_w : stdgo.GoComplex128).real : stdgo.GoFloat64), -(_w : stdgo.GoComplex128).imag);
    }
