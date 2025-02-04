package stdgo._internal.math.cmplx;
function _cVeryclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Bool {
        return stdgo._internal.math.cmplx.Cmplx__ctolerance._cTolerance(_a, _b, (4e-16 : stdgo.GoFloat64));
    }
