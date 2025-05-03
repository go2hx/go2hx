package stdgo._internal.internal.buildcfg;
function getgoextlinkenabled():stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L154"
        return stdgo._internal.internal.buildcfg.Buildcfg__envor._envOr(("GO_EXTLINK_ENABLED" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__();
    }
