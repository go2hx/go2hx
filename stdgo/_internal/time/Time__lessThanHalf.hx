package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _lessThanHalf(_x:stdgo._internal.time.Time_Duration.Duration, _y:stdgo._internal.time.Time_Duration.Duration):Bool {
        return (((_x : stdgo.GoUInt64) + (_x : stdgo.GoUInt64) : stdgo.GoUInt64) < (_y : stdgo.GoUInt64) : Bool);
    }
