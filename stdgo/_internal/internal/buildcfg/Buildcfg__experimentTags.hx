package stdgo._internal.internal.buildcfg;
function _experimentTags():stdgo.Slice<stdgo.GoString> {
        var _list:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__0 => _exp in @:check2 stdgo._internal.internal.buildcfg.Buildcfg_experiment.experiment.enabled()) {
            _list = (_list.__append__((("goexperiment." : stdgo.GoString) + _exp?.__copy__() : stdgo.GoString)?.__copy__()));
        };
        return _list;
    }
