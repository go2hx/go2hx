package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _now():{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt32; var _2 : stdgo.GoInt64; } {
        final n = stdgo._internal.time.Time__runtimeNano._runtimeNano();
        return { _0 : n / 1000000000, _1 : n % 1000000000, _2 : n };
    }