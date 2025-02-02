package stdgo._internal.math;
function inf(_sign:stdgo.GoInt):stdgo.GoFloat64 {
        if (_sign >= 0) return std.Math.POSITIVE_INFINITY;
        return std.Math.NEGATIVE_INFINITY;
    }
