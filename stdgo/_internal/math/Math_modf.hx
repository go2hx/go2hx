package stdgo._internal.math;
function modf(_f:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } {
        var _int = (0 : stdgo.GoFloat64), _frac = (0 : stdgo.GoFloat64);
        if (false) {
            return stdgo._internal.math.Math__archmodf._archModf(_f);
        };
        return stdgo._internal.math.Math__modf._modf(_f);
    }
