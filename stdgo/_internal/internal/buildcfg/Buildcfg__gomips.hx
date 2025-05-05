package stdgo._internal.internal.buildcfg;
function _gomips():stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L91"
        {
            var _v = (stdgo._internal.internal.buildcfg.Buildcfg__envor._envOr(("GOMIPS" : stdgo.GoString), ("hardfloat" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                final __value__ = _v;
                if (__value__ == (("hardfloat" : stdgo.GoString)) || __value__ == (("softfloat" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L93"
                    return _v?.__copy__();
                };
            };
        };
        stdgo._internal.internal.buildcfg.Buildcfg_error.error = stdgo._internal.fmt.Fmt_errorf.errorf(("invalid GOMIPS: must be hardfloat, softfloat" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L96"
        return ("hardfloat" : stdgo.GoString);
    }
