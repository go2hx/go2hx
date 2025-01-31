package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _zero(_x:stdgo.GoUInt64):stdgo.GoUInt64 {
        if (_x == ((0i64 : stdgo.GoUInt64))) {
            return (1i64 : stdgo.GoUInt64);
        };
        return (0i64 : stdgo.GoUInt64);
    }
