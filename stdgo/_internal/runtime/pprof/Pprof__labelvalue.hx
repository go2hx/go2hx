package stdgo._internal.runtime.pprof;
function _labelValue(_ctx:stdgo._internal.context.Context_context.Context):stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_ctx.value(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.runtime.pprof.Pprof_t_labelcontextkey.T_labelContextKey() : stdgo._internal.runtime.pprof.Pprof_t_labelcontextkey.T_labelContextKey)))) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>)) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>), _1 : false };
        }, _labels = __tmp__._0, __0 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/label.go#L29"
        if (({
            final value = _labels;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/label.go#L30"
            return (null : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap);
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/label.go#L32"
        return (_labels : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap);
    }
