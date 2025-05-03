package stdgo._internal.internal.buildcfg;
function _goppc64():stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L109"
        {
            var _v = (stdgo._internal.internal.buildcfg.Buildcfg__envor._envOr(("GOPPC64" : stdgo.GoString), ("power8" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                final __value__ = _v;
                if (__value__ == (("power8" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L111"
                    return (8 : stdgo.GoInt);
                } else if (__value__ == (("power9" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L113"
                    return (9 : stdgo.GoInt);
                } else if (__value__ == (("power10" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L115"
                    return (10 : stdgo.GoInt);
                };
            };
        };
        stdgo._internal.internal.buildcfg.Buildcfg_error.error = stdgo._internal.fmt.Fmt_errorf.errorf(("invalid GOPPC64: must be power8, power9, power10" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L118"
        return ((("power8" : stdgo.GoString)[(("power" : stdgo.GoString).length : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
    }
