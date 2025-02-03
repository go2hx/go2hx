package stdgo.runtime.metrics;
@:structInit @:using(stdgo.runtime.metrics.Metrics.Value_static_extension) abstract Value(stdgo._internal.runtime.metrics.Metrics_Value.Value) from stdgo._internal.runtime.metrics.Metrics_Value.Value to stdgo._internal.runtime.metrics.Metrics_Value.Value {
    public var _kind(get, set) : ValueKind;
    function get__kind():ValueKind return this._kind;
    function set__kind(v:ValueKind):ValueKind {
        this._kind = v;
        return v;
    }
    public var _scalar(get, set) : haxe.UInt64;
    function get__scalar():haxe.UInt64 return this._scalar;
    function set__scalar(v:haxe.UInt64):haxe.UInt64 {
        this._scalar = (v : stdgo.GoUInt64);
        return v;
    }
    public var _pointer(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__pointer():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._pointer;
    function set__pointer(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._pointer = v;
        return v;
    }
    public function new(?_kind:ValueKind, ?_scalar:haxe.UInt64, ?_pointer:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.runtime.metrics.Metrics_Value.Value(_kind, (_scalar : stdgo.GoUInt64), _pointer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
