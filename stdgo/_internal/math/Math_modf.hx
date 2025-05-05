package stdgo._internal.math;
function modf(_f:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } {
        var _int = (0 : stdgo.GoFloat64), _frac = (0 : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/modf.go#L15"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/modf.go#L16"
            return stdgo._internal.math.Math__archmodf._archModf(_f);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/modf.go#L18"
        return stdgo._internal.math.Math__modf._modf(_f);
    }
