package stdgo._internal.runtime.metrics;
import stdgo._internal.runtime.Runtime;
@:structInit class Sample {
    public var name : stdgo.GoString = "";
    public var value : stdgo._internal.runtime.metrics.Metrics_Value.Value = ({} : stdgo._internal.runtime.metrics.Metrics_Value.Value);
    public function new(?name:stdgo.GoString, ?value:stdgo._internal.runtime.metrics.Metrics_Value.Value) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Sample(name, value);
    }
}
