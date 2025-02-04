package stdgo._internal.internal.buildcfg;
function _gomips64():stdgo.GoString {
        {
            var _v = (stdgo._internal.internal.buildcfg.Buildcfg__envor._envOr(("GOMIPS64" : stdgo.GoString), ("hardfloat" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                final __value__ = _v;
                if (__value__ == (("hardfloat" : stdgo.GoString)) || __value__ == (("softfloat" : stdgo.GoString))) {
                    return _v?.__copy__();
                };
            };
        };
        stdgo._internal.internal.buildcfg.Buildcfg_error.error = stdgo._internal.fmt.Fmt_errorf.errorf(("invalid GOMIPS64: must be hardfloat, softfloat" : stdgo.GoString));
        return ("hardfloat" : stdgo.GoString);
    }
