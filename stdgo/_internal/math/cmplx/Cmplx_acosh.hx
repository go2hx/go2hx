package stdgo._internal.math.cmplx;
function acosh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        if (_x == (((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)))) {
            return new stdgo.GoComplex128((0 : stdgo.GoFloat64), stdgo._internal.math.Math_copysign.copysign((1.5707963267948966 : stdgo.GoFloat64), _x.imag));
        };
        var _w = (stdgo._internal.math.cmplx.Cmplx_acos.acos(_x) : stdgo.GoComplex128);
        if ((_w.imag <= (0 : stdgo.GoFloat64) : Bool)) {
            return new stdgo.GoComplex128(-_w.imag, _w.real);
        };
        return new stdgo.GoComplex128(_w.imag, -_w.real);
    }
