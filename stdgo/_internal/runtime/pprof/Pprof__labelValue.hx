package stdgo._internal.runtime.pprof;
function _labelValue(_ctx:stdgo._internal.context.Context_Context.Context):stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_ctx.value(stdgo.Go.toInterface((new stdgo._internal.runtime.pprof.Pprof_T_labelContextKey.T_labelContextKey() : stdgo._internal.runtime.pprof.Pprof_T_labelContextKey.T_labelContextKey))) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>)) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>), _1 : false };
        }, _labels = __tmp__._0, __0 = __tmp__._1;
        if ((_labels == null || (_labels : Dynamic).__nil__)) {
            return (null : stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap);
        };
        return (_labels : stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap);
    }
