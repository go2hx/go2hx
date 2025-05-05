package stdgo._internal.math.cmplx;
function _alike(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L901"
        if (((_a != _a) && (_b != _b) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L903"
            return true;
        } else if (_a == (_b)) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L905"
            return stdgo._internal.math.Math_signbit.signbit(_a) == (stdgo._internal.math.Math_signbit.signbit(_b));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L907"
        return false;
    }
