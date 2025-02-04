package stdgo._internal.runtime.metrics;
@:structInit @:using(stdgo._internal.runtime.metrics.Metrics_float64histogram_static_extension.Float64Histogram_static_extension) class Float64Histogram {
    public var counts : stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
    public var buckets : stdgo.Slice<stdgo.GoFloat64> = (null : stdgo.Slice<stdgo.GoFloat64>);
    public function new(?counts:stdgo.Slice<stdgo.GoUInt64>, ?buckets:stdgo.Slice<stdgo.GoFloat64>) {
        if (counts != null) this.counts = counts;
        if (buckets != null) this.buckets = buckets;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Float64Histogram(counts, buckets);
    }
}
