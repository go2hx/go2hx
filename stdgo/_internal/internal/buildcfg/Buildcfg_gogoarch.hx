package stdgo._internal.internal.buildcfg;
function gogoarch():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _name = ("" : stdgo.GoString), _value = ("" : stdgo.GoString);
        {
            final __value__ = stdgo._internal.internal.buildcfg.Buildcfg_goarch.goarch;
            if (__value__ == (("386" : stdgo.GoString))) {
                return { _0 : ("GO386" : stdgo.GoString), _1 : stdgo._internal.internal.buildcfg.Buildcfg_go386.go386?.__copy__() };
            } else if (__value__ == (("amd64" : stdgo.GoString))) {
                return { _0 : ("GOAMD64" : stdgo.GoString), _1 : stdgo._internal.fmt.Fmt_sprintf.sprintf(("v%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.internal.buildcfg.Buildcfg_goamd64.goamd64))?.__copy__() };
            } else if (__value__ == (("arm" : stdgo.GoString))) {
                return { _0 : ("GOARM" : stdgo.GoString), _1 : stdgo._internal.strconv.Strconv_itoa.itoa(stdgo._internal.internal.buildcfg.Buildcfg_goarm.goarm)?.__copy__() };
            } else if (__value__ == (("mips" : stdgo.GoString)) || __value__ == (("mipsle" : stdgo.GoString))) {
                return { _0 : ("GOMIPS" : stdgo.GoString), _1 : stdgo._internal.internal.buildcfg.Buildcfg_gomips.gomips?.__copy__() };
            } else if (__value__ == (("mips64" : stdgo.GoString)) || __value__ == (("mips64le" : stdgo.GoString))) {
                return { _0 : ("GOMIPS64" : stdgo.GoString), _1 : stdgo._internal.internal.buildcfg.Buildcfg_gomips64.gomips64?.__copy__() };
            } else if (__value__ == (("ppc64" : stdgo.GoString)) || __value__ == (("ppc64le" : stdgo.GoString))) {
                return { _0 : ("GOPPC64" : stdgo.GoString), _1 : stdgo._internal.fmt.Fmt_sprintf.sprintf(("power%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.internal.buildcfg.Buildcfg_goppc64.goppc64))?.__copy__() };
            } else if (__value__ == (("wasm" : stdgo.GoString))) {
                return { _0 : ("GOWASM" : stdgo.GoString), _1 : (stdgo._internal.internal.buildcfg.Buildcfg_gowasm.gowasm.string() : stdgo.GoString)?.__copy__() };
            };
        };
        return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__() };
    }
