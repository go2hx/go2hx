package stdgo.runtime;
private function set_timeHistogramMetricsBuckets(v:() -> stdgo.Slice<stdgo.GoFloat64>):() -> stdgo.Slice<stdgo.GoFloat64> {
        stdgo._internal.runtime.Runtime_timeHistogramMetricsBuckets.timeHistogramMetricsBuckets = v;
        return v;
    }
