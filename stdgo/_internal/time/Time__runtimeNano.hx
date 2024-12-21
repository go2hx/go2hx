package stdgo._internal.time;
function _runtimeNano():stdgo.GoInt64 {
        #if (sys || hxnodejs) {
            return ((std.Sys.time() * 1000000 * 1000) - std.Date.now().getTimezoneOffset() * 60000000000 : stdgo.GoInt64);
        } #else null #end;
        return 0;
    }
