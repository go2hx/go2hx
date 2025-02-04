package stdgo._internal.internal.buildcfg;
function _goarm():stdgo.GoInt {
        var _def = (("7" : stdgo.GoString) : stdgo.GoString);
        if (((stdgo._internal.internal.buildcfg.Buildcfg_goos.gOOS == ("android" : stdgo.GoString)) && (stdgo._internal.internal.buildcfg.Buildcfg_goarch.gOARCH == ("arm" : stdgo.GoString)) : Bool)) {
            _def = ("7" : stdgo.GoString);
        };
        {
            var _v = (stdgo._internal.internal.buildcfg.Buildcfg__envor._envOr(("GOARM" : stdgo.GoString), _def?.__copy__())?.__copy__() : stdgo.GoString);
            {
                final __value__ = _v;
                if (__value__ == (("5" : stdgo.GoString))) {
                    return (5 : stdgo.GoInt);
                } else if (__value__ == (("6" : stdgo.GoString))) {
                    return (6 : stdgo.GoInt);
                } else if (__value__ == (("7" : stdgo.GoString))) {
                    return (7 : stdgo.GoInt);
                };
            };
        };
        stdgo._internal.internal.buildcfg.Buildcfg_error.error = stdgo._internal.fmt.Fmt_errorf.errorf(("invalid GOARM: must be 5, 6, 7" : stdgo.GoString));
        return ((_def[(0 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
    }
