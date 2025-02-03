package stdgo.runtime.metrics;
@:structInit @:using(stdgo.runtime.metrics.Metrics.Description_static_extension) abstract Description(stdgo._internal.runtime.metrics.Metrics_Description.Description) from stdgo._internal.runtime.metrics.Metrics_Description.Description to stdgo._internal.runtime.metrics.Metrics_Description.Description {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var description(get, set) : String;
    function get_description():String return this.description;
    function set_description(v:String):String {
        this.description = (v : stdgo.GoString);
        return v;
    }
    public var kind(get, set) : ValueKind;
    function get_kind():ValueKind return this.kind;
    function set_kind(v:ValueKind):ValueKind {
        this.kind = v;
        return v;
    }
    public var cumulative(get, set) : Bool;
    function get_cumulative():Bool return this.cumulative;
    function set_cumulative(v:Bool):Bool {
        this.cumulative = v;
        return v;
    }
    public function new(?name:String, ?description:String, ?kind:ValueKind, ?cumulative:Bool) this = new stdgo._internal.runtime.metrics.Metrics_Description.Description((name : stdgo.GoString), (description : stdgo.GoString), kind, cumulative);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
