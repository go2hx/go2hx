package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _runtimeNano():stdgo.GoInt64 {
        return (((#if (sys || hxnodejs) std.Sys.time() #else haxe.Timer.stamp() #end) * 1000000 * 1000) - std.Date.now().getTimezoneOffset() * 60000000000 : stdgo.GoInt64);
    }
