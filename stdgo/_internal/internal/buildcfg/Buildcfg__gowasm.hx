package stdgo._internal.internal.buildcfg;
function _gowasm():stdgo._internal.internal.buildcfg.Buildcfg_t_gowasmfeatures.T_gowasmFeatures {
        var _f = ({} : stdgo._internal.internal.buildcfg.Buildcfg_t_gowasmfeatures.T_gowasmFeatures);
        for (__0 => _opt in stdgo._internal.strings.Strings_split.split(stdgo._internal.internal.buildcfg.Buildcfg__envor._envOr(("GOWASM" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__(), ("," : stdgo.GoString))) {
            {
                final __value__ = _opt;
                if (__value__ == (("satconv" : stdgo.GoString))) {
                    _f.satConv = true;
                } else if (__value__ == (("signext" : stdgo.GoString))) {
                    _f.signExt = true;
                } else if (__value__ == ((stdgo.Go.str() : stdgo.GoString))) {} else {
                    stdgo._internal.internal.buildcfg.Buildcfg_error.error = stdgo._internal.fmt.Fmt_errorf.errorf(("invalid GOWASM: no such feature %q" : stdgo.GoString), stdgo.Go.toInterface(_opt));
                };
            };
        };
        return _f;
    }
