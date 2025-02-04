package stdgo._internal.internal.buildcfg;
function _goppc64():stdgo.GoInt {
        {
            var _v = (stdgo._internal.internal.buildcfg.Buildcfg__envor._envOr(("GOPPC64" : stdgo.GoString), ("power8" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                final __value__ = _v;
                if (__value__ == (("power8" : stdgo.GoString))) {
                    return (8 : stdgo.GoInt);
                } else if (__value__ == (("power9" : stdgo.GoString))) {
                    return (9 : stdgo.GoInt);
                } else if (__value__ == (("power10" : stdgo.GoString))) {
                    return (10 : stdgo.GoInt);
                };
            };
        };
        stdgo._internal.internal.buildcfg.Buildcfg_error.error = stdgo._internal.fmt.Fmt_errorf.errorf(("invalid GOPPC64: must be power8, power9, power10" : stdgo.GoString));
        return ((("power8" : stdgo.GoString)[(("power" : stdgo.GoString).length : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
    }
