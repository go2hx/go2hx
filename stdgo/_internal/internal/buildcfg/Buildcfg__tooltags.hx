package stdgo._internal.internal.buildcfg;
function _toolTags():stdgo.Slice<stdgo.GoString> {
        var _tags = stdgo._internal.internal.buildcfg.Buildcfg__experimenttags._experimentTags();
        _tags = (_tags.__append__(...(stdgo._internal.internal.buildcfg.Buildcfg__gogoarchtags._gogoarchTags() : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L160"
        return _tags;
    }
