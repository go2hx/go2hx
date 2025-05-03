package stdgo._internal.math.cmplx;
function isNaN(_x:stdgo.GoComplex128):Bool {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/isnan.go#L12"
        if ((stdgo._internal.math.Math_isinf.isInf((_x : stdgo.GoComplex128).real, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isinf.isInf((_x : stdgo.GoComplex128).imag, (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/isnan.go#L14"
            return false;
        } else if ((stdgo._internal.math.Math_isnan.isNaN((_x : stdgo.GoComplex128).real) || stdgo._internal.math.Math_isnan.isNaN((_x : stdgo.GoComplex128).imag) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/isnan.go#L16"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/isnan.go#L18"
        return false;
    }
