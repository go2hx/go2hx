package stdgo._internal.math.cmplx;
function atanh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        var _z = (new stdgo.GoComplex128(-_x.imag, _x.real) : stdgo.GoComplex128);
        _z = stdgo._internal.math.cmplx.Cmplx_atan.atan(_z);
        return new stdgo.GoComplex128(_z.imag, -_z.real);
    }
