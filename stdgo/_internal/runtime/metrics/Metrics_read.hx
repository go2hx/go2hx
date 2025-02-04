package stdgo._internal.runtime.metrics;
function read(_m:stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_sample.Sample>):Void {
        stdgo._internal.runtime.metrics.Metrics__runtime_readmetrics._runtime_readMetrics((stdgo.Go.toInterface((stdgo.Go.setRef(_m[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.metrics.Metrics_sample.Sample>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (_m.length), _m.capacity);
    }
