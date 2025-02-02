package stdgo._internal.math.cmplx;
function _alike(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool {
        if (((_a != _a) && (_b != _b) : Bool)) {
            return true;
        } else if (_a == (_b)) {
            return stdgo._internal.math.Math_signbit.signbit(_a) == (stdgo._internal.math.Math_signbit.signbit(_b));
        };
        return false;
    }
