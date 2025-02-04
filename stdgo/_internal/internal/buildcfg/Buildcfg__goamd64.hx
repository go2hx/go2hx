package stdgo._internal.internal.buildcfg;
function _goamd64():stdgo.GoInt {
        {
            var _v = (stdgo._internal.internal.buildcfg.Buildcfg__envor._envOr(("GOAMD64" : stdgo.GoString), ("v1" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                final __value__ = _v;
                if (__value__ == (("v1" : stdgo.GoString))) {
                    return (1 : stdgo.GoInt);
                } else if (__value__ == (("v2" : stdgo.GoString))) {
                    return (2 : stdgo.GoInt);
                } else if (__value__ == (("v3" : stdgo.GoString))) {
                    return (3 : stdgo.GoInt);
                } else if (__value__ == (("v4" : stdgo.GoString))) {
                    return (4 : stdgo.GoInt);
                };
            };
        };
        stdgo._internal.internal.buildcfg.Buildcfg_error.error = stdgo._internal.fmt.Fmt_errorf.errorf(("invalid GOAMD64: must be v1, v2, v3, v4" : stdgo.GoString));
        return ((("v1" : stdgo.GoString)[(("v" : stdgo.GoString).length : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
    }
