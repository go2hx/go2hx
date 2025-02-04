package stdgo._internal.math;
function logb(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (_x == (0 : stdgo.GoFloat64)) {
            return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
        } else if (stdgo._internal.math.Math_isnan.isNaN(_x)) {
            return _x;
        };
        return (stdgo._internal.math.Math__ilogb._ilogb(_x) : stdgo.GoFloat64);
    }
