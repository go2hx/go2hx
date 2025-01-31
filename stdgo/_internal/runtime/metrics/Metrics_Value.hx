package stdgo._internal.runtime.metrics;
import stdgo._internal.internal.godebugs.Godebugs;
import stdgo._internal.math.Math;
@:structInit @:using(stdgo._internal.runtime.metrics.Metrics_Value_static_extension.Value_static_extension) class Value {
    public var _kind : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind = ((0 : stdgo.GoInt) : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind);
    public var _scalar : stdgo.GoUInt64 = 0;
    public var _pointer : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?_kind:stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind, ?_scalar:stdgo.GoUInt64, ?_pointer:stdgo._internal.unsafe.Unsafe.UnsafePointer) {
        if (_kind != null) this._kind = _kind;
        if (_scalar != null) this._scalar = _scalar;
        if (_pointer != null) this._pointer = _pointer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Value(_kind, _scalar, _pointer);
    }
}
