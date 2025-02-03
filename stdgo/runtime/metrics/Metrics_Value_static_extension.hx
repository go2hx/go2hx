package stdgo.runtime.metrics;
class Value_static_extension {
    static public function float64Histogram(_v:Value):Float64Histogram {
        return stdgo._internal.runtime.metrics.Metrics_Value_static_extension.Value_static_extension.float64Histogram(_v);
    }
    static public function float64(_v:Value):StdTypes.Float {
        return stdgo._internal.runtime.metrics.Metrics_Value_static_extension.Value_static_extension.float64(_v);
    }
    static public function uint64(_v:Value):haxe.UInt64 {
        return stdgo._internal.runtime.metrics.Metrics_Value_static_extension.Value_static_extension.uint64(_v);
    }
    static public function kind(_v:Value):ValueKind {
        return stdgo._internal.runtime.metrics.Metrics_Value_static_extension.Value_static_extension.kind(_v);
    }
}
