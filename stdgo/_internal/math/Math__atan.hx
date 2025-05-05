package stdgo._internal.math;
function _atan(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        //"file:///home/runner/.go/go1.21.3/src/math/atan.go#L104"
        if (_x == ((0 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/atan.go#L105"
            return _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/atan.go#L107"
        if ((_x > (0 : stdgo.GoFloat64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/atan.go#L108"
            return stdgo._internal.math.Math__satan._satan(_x);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/atan.go#L110"
        return -stdgo._internal.math.Math__satan._satan(-_x);
    }
