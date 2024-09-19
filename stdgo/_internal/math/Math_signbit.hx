package stdgo._internal.math;
function signbit(_x:stdgo.GoFloat64):Bool {
        if (std.Math.isNaN(_x.toBasic())) return false;
        return stdgo._internal.math.Math_float64bits.float64bits(_x) & ((1 : stdgo.GoUInt64) << (63 : stdgo.GoUInt64)) != (0 : stdgo.GoUInt64);
    }
