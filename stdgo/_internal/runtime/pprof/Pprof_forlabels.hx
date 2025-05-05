package stdgo._internal.runtime.pprof;
function forLabels(_ctx:stdgo._internal.context.Context_context.Context, _f:(stdgo.GoString, stdgo.GoString) -> Bool):Void {
        var _ctxLabels = (stdgo._internal.runtime.pprof.Pprof__labelvalue._labelValue(_ctx) : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/label.go#L103"
        for (_k => _v in _ctxLabels) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/label.go#L104"
            if (!_f(_k?.__copy__(), _v?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/label.go#L105"
                break;
            };
        };
    }
