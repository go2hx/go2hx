package stdgo._internal.os;
function getenv(_key:stdgo.GoString):stdgo.GoString {
        return std.Sys.getEnv(_key) ?? "";
    }
