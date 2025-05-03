package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_labelMap_asInterface) class T_labelMap_static_extension {
    @:keep
    @:tdfield
    static public function string( _l:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>):stdgo.GoString {
        @:recv var _l:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap> = _l;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/label.go#L43"
        if (({
            final value = _l;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/label.go#L44"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _keyVals = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((_l : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap).length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/label.go#L48"
        for (_k => _v in (_l : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap)) {
            _keyVals = (_keyVals.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q:%q" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v))?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/label.go#L52"
        stdgo._internal.sort.Sort_strings.strings(_keyVals);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/label.go#L54"
        return ((("{" : stdgo.GoString) + stdgo._internal.strings.Strings_join.join(_keyVals, (", " : stdgo.GoString))?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
