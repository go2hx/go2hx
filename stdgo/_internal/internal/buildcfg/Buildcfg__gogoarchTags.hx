package stdgo._internal.internal.buildcfg;
function _gogoarchTags():stdgo.Slice<stdgo.GoString> {
        {
            final __value__ = stdgo._internal.internal.buildcfg.Buildcfg_goarch.goarch;
            if (__value__ == (("386" : stdgo.GoString))) {
                return (new stdgo.Slice<stdgo.GoString>(1, 1, ...[((stdgo._internal.internal.buildcfg.Buildcfg_goarch.goarch + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.internal.buildcfg.Buildcfg_go386.go386?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            } else if (__value__ == (("amd64" : stdgo.GoString))) {
                var _list:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                {
                    var _i = (1 : stdgo.GoInt);
                    while ((_i <= stdgo._internal.internal.buildcfg.Buildcfg_goamd64.goamd64 : Bool)) {
                        _list = (_list.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s.v%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.internal.buildcfg.Buildcfg_goarch.goarch), stdgo.Go.toInterface(_i)).__copy__()));
                        _i++;
                    };
                };
                return _list;
            } else if (__value__ == (("arm" : stdgo.GoString))) {
                var _list:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                {
                    var _i = (5 : stdgo.GoInt);
                    while ((_i <= stdgo._internal.internal.buildcfg.Buildcfg_goarm.goarm : Bool)) {
                        _list = (_list.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s.%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.internal.buildcfg.Buildcfg_goarch.goarch), stdgo.Go.toInterface(_i)).__copy__()));
                        _i++;
                    };
                };
                return _list;
            } else if (__value__ == (("mips" : stdgo.GoString)) || __value__ == (("mipsle" : stdgo.GoString))) {
                return (new stdgo.Slice<stdgo.GoString>(1, 1, ...[((stdgo._internal.internal.buildcfg.Buildcfg_goarch.goarch + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.internal.buildcfg.Buildcfg_gomips.gomips?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            } else if (__value__ == (("mips64" : stdgo.GoString)) || __value__ == (("mips64le" : stdgo.GoString))) {
                return (new stdgo.Slice<stdgo.GoString>(1, 1, ...[((stdgo._internal.internal.buildcfg.Buildcfg_goarch.goarch + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.internal.buildcfg.Buildcfg_gomips64.gomips64?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            } else if (__value__ == (("ppc64" : stdgo.GoString)) || __value__ == (("ppc64le" : stdgo.GoString))) {
                var _list:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                {
                    var _i = (8 : stdgo.GoInt);
                    while ((_i <= stdgo._internal.internal.buildcfg.Buildcfg_goppc64.goppc64 : Bool)) {
                        _list = (_list.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s.power%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.internal.buildcfg.Buildcfg_goarch.goarch), stdgo.Go.toInterface(_i)).__copy__()));
                        _i++;
                    };
                };
                return _list;
            } else if (__value__ == (("wasm" : stdgo.GoString))) {
                var _list:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                if (stdgo._internal.internal.buildcfg.Buildcfg_gowasm.gowasm.satConv) {
                    _list = (_list.__append__((stdgo._internal.internal.buildcfg.Buildcfg_goarch.goarch + (".satconv" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()));
                };
                if (stdgo._internal.internal.buildcfg.Buildcfg_gowasm.gowasm.signExt) {
                    _list = (_list.__append__((stdgo._internal.internal.buildcfg.Buildcfg_goarch.goarch + (".signext" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()));
                };
                return _list;
            };
        };
        return (null : stdgo.Slice<stdgo.GoString>);
    }
