package stdgo._internal.time;
function _runtimeNano():stdgo.GoInt64 {
        return (((#if (sys || hxnodejs) std.Sys.time() #else haxe.Timer.stamp() #end) * 1000000 * 1000) - std.Date.now().getTimezoneOffset() * 60000000000 : stdgo.GoInt64);
    }
