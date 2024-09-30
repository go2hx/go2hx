package stdgo._internal.time;
function _runtimeNano():stdgo.GoInt64 {
        final x = ((std.Sys.time() * 1000000 * 1000) - std.Date.now().getTimezoneOffset() * 60000000000 : stdgo.GoInt64);
        return x;
    }
