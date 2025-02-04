package stdgo._internal.runtime.metrics;
@:structInit @:using(stdgo._internal.runtime.metrics.Metrics_sample_static_extension.Sample_static_extension) class Sample {
    public var name : stdgo.GoString = "";
    public var value : stdgo._internal.runtime.metrics.Metrics_value.Value = ({} : stdgo._internal.runtime.metrics.Metrics_value.Value);
    public function new(?name:stdgo.GoString, ?value:stdgo._internal.runtime.metrics.Metrics_value.Value) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Sample(name, value);
    }
}
