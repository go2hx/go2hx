package stdgo._internal.internal.buildcfg;
function getgoextlinkenabled():stdgo.GoString {
        return stdgo._internal.internal.buildcfg.Buildcfg__envOr._envOr(("GO_EXTLINK_ENABLED" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__();
    }
