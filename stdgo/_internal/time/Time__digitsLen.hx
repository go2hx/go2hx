package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _digitsLen(_std:stdgo.GoInt):stdgo.GoInt {
        return (((_std >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt)) & (4095 : stdgo.GoInt) : stdgo.GoInt);
    }
