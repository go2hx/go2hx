package stdgo._internal.runtime.metrics;
@:structInit @:using(stdgo._internal.runtime.metrics.Metrics_description_static_extension.Description_static_extension) class Description {
    public var name : stdgo.GoString = "";
    public var description : stdgo.GoString = "";
    public var kind : stdgo._internal.runtime.metrics.Metrics_valuekind.ValueKind = ((0 : stdgo.GoInt) : stdgo._internal.runtime.metrics.Metrics_valuekind.ValueKind);
    public var cumulative : Bool = false;
    public function new(?name:stdgo.GoString, ?description:stdgo.GoString, ?kind:stdgo._internal.runtime.metrics.Metrics_valuekind.ValueKind, ?cumulative:Bool) {
        if (name != null) this.name = name;
        if (description != null) this.description = description;
        if (kind != null) this.kind = kind;
        if (cumulative != null) this.cumulative = cumulative;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Description(name, description, kind, cumulative);
    }
}
