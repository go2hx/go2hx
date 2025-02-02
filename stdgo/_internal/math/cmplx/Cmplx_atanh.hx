package stdgo._internal.math.cmplx;
function atanh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        var _z = (new stdgo.GoComplex128(-(_x : stdgo.GoComplex128).imag, (_x : stdgo.GoComplex128).real) : stdgo.GoComplex128);
        _z = stdgo._internal.math.cmplx.Cmplx_atan.atan(_z);
        return new stdgo.GoComplex128((_z : stdgo.GoComplex128).imag, -(_z : stdgo.GoComplex128).real);
    }
