package stdgo._internal.math.cmplx;
function _cAlike(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Bool {
        var _realAlike:Bool = false, _imagAlike:Bool = false;
        if (stdgo._internal.math.cmplx.Cmplx__isexact._isExact((_b : stdgo.GoComplex128).real)) {
            _realAlike = stdgo._internal.math.cmplx.Cmplx__alike._alike((_a : stdgo.GoComplex128).real, (_b : stdgo.GoComplex128).real);
        } else {
            _realAlike = stdgo._internal.math.cmplx.Cmplx__veryclose._veryclose((_a : stdgo.GoComplex128).real, (_b : stdgo.GoComplex128).real);
        };
        if (stdgo._internal.math.cmplx.Cmplx__isexact._isExact((_b : stdgo.GoComplex128).imag)) {
            _imagAlike = stdgo._internal.math.cmplx.Cmplx__alike._alike((_a : stdgo.GoComplex128).imag, (_b : stdgo.GoComplex128).imag);
        } else {
            _imagAlike = stdgo._internal.math.cmplx.Cmplx__veryclose._veryclose((_a : stdgo.GoComplex128).imag, (_b : stdgo.GoComplex128).imag);
        };
        return (_realAlike && _imagAlike : Bool);
    }
