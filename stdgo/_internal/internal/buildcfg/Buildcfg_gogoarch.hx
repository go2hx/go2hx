package stdgo._internal.internal.buildcfg;
function gOGOARCH():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _name = ("" : stdgo.GoString), _value = ("" : stdgo.GoString);
        {
            final __value__ = stdgo._internal.internal.buildcfg.Buildcfg_goarch.gOARCH;
            if (__value__ == (("386" : stdgo.GoString))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : ("GO386" : stdgo.GoString), _1 : stdgo._internal.internal.buildcfg.Buildcfg_go386.gO386?.__copy__() };
                    _name = __tmp__._0;
                    _value = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == (("amd64" : stdgo.GoString))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : ("GOAMD64" : stdgo.GoString), _1 : stdgo._internal.fmt.Fmt_sprintf.sprintf(("v%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.internal.buildcfg.Buildcfg_goamd64.gOAMD64))?.__copy__() };
                    _name = __tmp__._0;
                    _value = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == (("arm" : stdgo.GoString))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : ("GOARM" : stdgo.GoString), _1 : stdgo._internal.strconv.Strconv_itoa.itoa(stdgo._internal.internal.buildcfg.Buildcfg_goarm.gOARM)?.__copy__() };
                    _name = __tmp__._0;
                    _value = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == (("mips" : stdgo.GoString)) || __value__ == (("mipsle" : stdgo.GoString))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : ("GOMIPS" : stdgo.GoString), _1 : stdgo._internal.internal.buildcfg.Buildcfg_gomips.gOMIPS?.__copy__() };
                    _name = __tmp__._0;
                    _value = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == (("mips64" : stdgo.GoString)) || __value__ == (("mips64le" : stdgo.GoString))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : ("GOMIPS64" : stdgo.GoString), _1 : stdgo._internal.internal.buildcfg.Buildcfg_gomips64.gOMIPS64?.__copy__() };
                    _name = __tmp__._0;
                    _value = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == (("ppc64" : stdgo.GoString)) || __value__ == (("ppc64le" : stdgo.GoString))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : ("GOPPC64" : stdgo.GoString), _1 : stdgo._internal.fmt.Fmt_sprintf.sprintf(("power%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.internal.buildcfg.Buildcfg_goppc64.gOPPC64))?.__copy__() };
                    _name = __tmp__._0;
                    _value = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == (("wasm" : stdgo.GoString))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : ("GOWASM" : stdgo.GoString), _1 : (stdgo._internal.internal.buildcfg.Buildcfg_gowasm.gOWASM.string() : stdgo.GoString)?.__copy__() };
                    _name = __tmp__._0;
                    _value = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
            _name = __tmp__._0;
            _value = __tmp__._1;
            __tmp__;
        };
    }
