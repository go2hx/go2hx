package stdgo._internal.math;
function dim(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _v = (_x - _y : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/dim.go#L21"
        if ((_v <= (0 : stdgo.GoFloat64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/dim.go#L23"
            return (0 : stdgo.GoFloat64);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/dim.go#L26"
        return _v;
    }
