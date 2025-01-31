package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _now():{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt32; var _2 : stdgo.GoInt64; } {
        final n = stdgo._internal.time.Time__runtimeNano._runtimeNano();
        return { _0 : n / 1000000000, _1 : n % 1000000000, _2 : n };
    }
