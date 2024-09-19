package stdgo._internal.math;
function floor(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (!std.Math.isFinite(_x.toBasic()) || std.Math.isNaN(_x.toBasic())) return _x;
        return std.Math.ffloor(_x.toBasic());
    }
