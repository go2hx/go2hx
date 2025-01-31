package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function ilogb(_x:stdgo.GoFloat64):stdgo.GoInt {
        if (_x == (0 : stdgo.GoFloat64)) {
            return (-2147483648 : stdgo.GoInt);
        } else if (stdgo._internal.math.Math_isNaN.isNaN(_x)) {
            return (2147483647 : stdgo.GoInt);
        } else if (stdgo._internal.math.Math_isInf.isInf(_x, (0 : stdgo.GoInt))) {
            return (2147483647 : stdgo.GoInt);
        };
        return stdgo._internal.math.Math__ilogb._ilogb(_x);
    }
