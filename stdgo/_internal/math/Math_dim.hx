package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function dim(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _v = (_x - _y : stdgo.GoFloat64);
        if ((_v <= (0 : stdgo.GoFloat64) : Bool)) {
            return (0 : stdgo.GoFloat64);
        };
        return _v;
    }
