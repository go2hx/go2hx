package stdgo.runtime.metrics;
@:structInit @:using(stdgo.runtime.metrics.Metrics.Float64Histogram_static_extension) abstract Float64Histogram(stdgo._internal.runtime.metrics.Metrics_Float64Histogram.Float64Histogram) from stdgo._internal.runtime.metrics.Metrics_Float64Histogram.Float64Histogram to stdgo._internal.runtime.metrics.Metrics_Float64Histogram.Float64Histogram {
    public var counts(get, set) : Array<haxe.UInt64>;
    function get_counts():Array<haxe.UInt64> return [for (i in this.counts) i];
    function set_counts(v:Array<haxe.UInt64>):Array<haxe.UInt64> {
        this.counts = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        return v;
    }
    public var buckets(get, set) : Array<StdTypes.Float>;
    function get_buckets():Array<StdTypes.Float> return [for (i in this.buckets) i];
    function set_buckets(v:Array<StdTypes.Float>):Array<StdTypes.Float> {
        this.buckets = ([for (i in v) (i : stdgo.GoFloat64)] : stdgo.Slice<stdgo.GoFloat64>);
        return v;
    }
    public function new(?counts:Array<haxe.UInt64>, ?buckets:Array<StdTypes.Float>) this = new stdgo._internal.runtime.metrics.Metrics_Float64Histogram.Float64Histogram(([for (i in counts) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>), ([for (i in buckets) (i : stdgo.GoFloat64)] : stdgo.Slice<stdgo.GoFloat64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
