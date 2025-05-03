package stdgo._internal.internal.buildcfg;
function _experimentTags():stdgo.Slice<stdgo.GoString> {
        var _list:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L170"
        for (__0 => _exp in stdgo._internal.internal.buildcfg.Buildcfg_experiment.experiment.enabled()) {
            _list = (_list.__append__((("goexperiment." : stdgo.GoString) + _exp?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L173"
        return _list;
    }
