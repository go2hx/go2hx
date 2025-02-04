package stdgo._internal.runtime.pprof;
function withLabels(_ctx:stdgo._internal.context.Context_context.Context, _labels:stdgo._internal.runtime.pprof.Pprof_labelset.LabelSet):stdgo._internal.context.Context_context.Context {
        var _parentLabels = (stdgo._internal.runtime.pprof.Pprof__labelvalue._labelValue(_ctx) : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap);
        var _childLabels = ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap) : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap);
        for (_k => _v in _parentLabels) {
            _childLabels[_k] = _v?.__copy__();
        };
        for (__0 => _label in _labels._list) {
            _childLabels[_label._key] = _label._value?.__copy__();
        };
        return stdgo._internal.context.Context_withvalue.withValue(_ctx, stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.runtime.pprof.Pprof_t_labelcontextkey.T_labelContextKey() : stdgo._internal.runtime.pprof.Pprof_t_labelcontextkey.T_labelContextKey))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_childLabels) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>))));
    }
