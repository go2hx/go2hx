package stdgo._internal.runtime.pprof;
function setGoroutineLabels(_ctx:stdgo._internal.context.Context_Context.Context):Void {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_ctx.value(stdgo.Go.toInterface((new stdgo._internal.runtime.pprof.Pprof_T_labelContextKey.T_labelContextKey() : stdgo._internal.runtime.pprof.Pprof_T_labelContextKey.T_labelContextKey))) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>)) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>), _1 : false };
        }, _ctxLabels = __tmp__._0, __0 = __tmp__._1;
        stdgo._internal.runtime.pprof.Pprof__runtime_setProfLabel._runtime_setProfLabel((stdgo.Go.toInterface(_ctxLabels) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
    }
