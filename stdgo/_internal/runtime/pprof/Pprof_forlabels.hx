package stdgo._internal.runtime.pprof;
function forLabels(_ctx:stdgo._internal.context.Context_context.Context, _f:(stdgo.GoString, stdgo.GoString) -> Bool):Void {
        var _ctxLabels = (stdgo._internal.runtime.pprof.Pprof__labelvalue._labelValue(_ctx) : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap);
        for (_k => _v in _ctxLabels) {
            if (!_f(_k?.__copy__(), _v?.__copy__())) {
                break;
            };
        };
    }
