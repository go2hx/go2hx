package stdgo.runtime.metrics;
@:structInit @:using(stdgo.runtime.metrics.Metrics.Sample_static_extension) abstract Sample(stdgo._internal.runtime.metrics.Metrics_Sample.Sample) from stdgo._internal.runtime.metrics.Metrics_Sample.Sample to stdgo._internal.runtime.metrics.Metrics_Sample.Sample {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var value(get, set) : Value;
    function get_value():Value return this.value;
    function set_value(v:Value):Value {
        this.value = v;
        return v;
    }
    public function new(?name:String, ?value:Value) this = new stdgo._internal.runtime.metrics.Metrics_Sample.Sample((name : stdgo.GoString), value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
