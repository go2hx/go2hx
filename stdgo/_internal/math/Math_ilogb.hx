package stdgo._internal.math;
function ilogb(_x:stdgo.GoFloat64):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/logb.go#L36"
        if (_x == ((0 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/logb.go#L38"
            return (-2147483648 : stdgo.GoInt);
        } else if (stdgo._internal.math.Math_isnan.isNaN(_x)) {
            //"file:///home/runner/.go/go1.21.3/src/math/logb.go#L40"
            return (2147483647 : stdgo.GoInt);
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/logb.go#L42"
            return (2147483647 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/logb.go#L44"
        return stdgo._internal.math.Math__ilogb._ilogb(_x);
    }
