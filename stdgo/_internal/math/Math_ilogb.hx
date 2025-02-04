package stdgo._internal.math;
function ilogb(_x:stdgo.GoFloat64):stdgo.GoInt {
        if (_x == (0 : stdgo.GoFloat64)) {
            return (-2147483648 : stdgo.GoInt);
        } else if (stdgo._internal.math.Math_isnan.isNaN(_x)) {
            return (2147483647 : stdgo.GoInt);
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            return (2147483647 : stdgo.GoInt);
        };
        return stdgo._internal.math.Math__ilogb._ilogb(_x);
    }
