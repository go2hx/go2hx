package stdgo._internal.runtime.pprof;
function withLabels(_ctx:stdgo._internal.context.Context_Context.Context, _labels:stdgo._internal.runtime.pprof.Pprof_LabelSet.LabelSet):stdgo._internal.context.Context_Context.Context {
        var _parentLabels = (stdgo._internal.runtime.pprof.Pprof__labelValue._labelValue(_ctx) : stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap);
        var _childLabels = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap);
        for (_k => _v in _parentLabels) {
            _childLabels[_k] = _v?.__copy__();
        };
        for (__0 => _label in _labels._list) {
            _childLabels[_label._key] = _label._value?.__copy__();
        };
        return stdgo._internal.context.Context_withValue.withValue(_ctx, stdgo.Go.toInterface((new stdgo._internal.runtime.pprof.Pprof_T_labelContextKey.T_labelContextKey() : stdgo._internal.runtime.pprof.Pprof_T_labelContextKey.T_labelContextKey)), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_childLabels) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>))));
    }
