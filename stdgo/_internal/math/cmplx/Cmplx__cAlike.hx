package stdgo._internal.math.cmplx;
function _cAlike(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Bool {
        var __0:Bool = false, __1:Bool = false;
var _imagAlike = __1, _realAlike = __0;
        if (stdgo._internal.math.cmplx.Cmplx__isExact._isExact(_b.real)) {
            _realAlike = stdgo._internal.math.cmplx.Cmplx__alike._alike(_a.real, _b.real);
        } else {
            _realAlike = stdgo._internal.math.cmplx.Cmplx__veryclose._veryclose(_a.real, _b.real);
        };
        if (stdgo._internal.math.cmplx.Cmplx__isExact._isExact(_b.imag)) {
            _imagAlike = stdgo._internal.math.cmplx.Cmplx__alike._alike(_a.imag, _b.imag);
        } else {
            _imagAlike = stdgo._internal.math.cmplx.Cmplx__veryclose._veryclose(_a.imag, _b.imag);
        };
        return (_realAlike && _imagAlike : Bool);
    }
