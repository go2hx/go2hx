package stdgo._internal.math;
function frexp(_f:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } {
        var _frac = (0 : stdgo.GoFloat64), _exp = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/frexp.go#L18"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/frexp.go#L19"
            return stdgo._internal.math.Math__archfrexp._archFrexp(_f);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/frexp.go#L21"
        return stdgo._internal.math.Math__frexp._frexp(_f);
    }
