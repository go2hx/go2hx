package stdgo._internal.math.cmplx;
function isInf(_x:stdgo.GoComplex128):Bool {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/isinf.go#L11"
        if ((stdgo._internal.math.Math_isinf.isInf((_x : stdgo.GoComplex128).real, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isinf.isInf((_x : stdgo.GoComplex128).imag, (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/isinf.go#L12"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/isinf.go#L14"
        return false;
    }
