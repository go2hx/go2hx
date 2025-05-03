package stdgo._internal.math.cmplx;
function _tolerance(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64, _e:stdgo.GoFloat64):Bool {
        var _d = (_a - _b : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L885"
        if ((_d < (0 : stdgo.GoFloat64) : Bool)) {
            _d = -_d;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L891"
        if (_b != ((0 : stdgo.GoFloat64))) {
            _e = (_e * _b : stdgo.GoFloat64);
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L893"
            if ((_e < (0 : stdgo.GoFloat64) : Bool)) {
                _e = -_e;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L897"
        return (_d < _e : Bool);
    }
