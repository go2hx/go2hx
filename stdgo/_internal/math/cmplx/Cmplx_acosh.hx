package stdgo._internal.math.cmplx;
function acosh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L140"
        if (_x == (((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)))) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L141"
            return new stdgo.GoComplex128((0 : stdgo.GoFloat64), stdgo._internal.math.Math_copysign.copysign((1.5707963267948966 : stdgo.GoFloat64), (_x : stdgo.GoComplex128).imag));
        };
        var _w = (stdgo._internal.math.cmplx.Cmplx_acos.acos(_x) : stdgo.GoComplex128);
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L144"
        if (((_w : stdgo.GoComplex128).imag <= (0 : stdgo.GoFloat64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L145"
            return new stdgo.GoComplex128(-(_w : stdgo.GoComplex128).imag, (_w : stdgo.GoComplex128).real);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L147"
        return new stdgo.GoComplex128((_w : stdgo.GoComplex128).imag, -(_w : stdgo.GoComplex128).real);
    }
