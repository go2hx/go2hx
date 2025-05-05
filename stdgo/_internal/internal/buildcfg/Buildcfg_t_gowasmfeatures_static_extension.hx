package stdgo._internal.internal.buildcfg;
@:keep @:allow(stdgo._internal.internal.buildcfg.Buildcfg.T_gowasmFeatures_asInterface) class T_gowasmFeatures_static_extension {
    @:keep
    @:tdfield
    static public function string( _f:stdgo._internal.internal.buildcfg.Buildcfg_t_gowasmfeatures.T_gowasmFeatures):stdgo.GoString {
        @:recv var _f:stdgo._internal.internal.buildcfg.Buildcfg_t_gowasmfeatures.T_gowasmFeatures = _f?.__copy__();
        var _flags:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L128"
        if (_f.satConv) {
            _flags = (_flags.__append__(("satconv" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L131"
        if (_f.signExt) {
            _flags = (_flags.__append__(("signext" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L134"
        return stdgo._internal.strings.Strings_join.join(_flags, ("," : stdgo.GoString))?.__copy__();
    }
}
