package stdgo._internal.math;
function frexp(_f:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } {
        var _frac = (0 : stdgo.GoFloat64), _exp = (0 : stdgo.GoInt);
        if (false) {
            return stdgo._internal.math.Math__archfrexp._archFrexp(_f);
        };
        return stdgo._internal.math.Math__frexp._frexp(_f);
    }
