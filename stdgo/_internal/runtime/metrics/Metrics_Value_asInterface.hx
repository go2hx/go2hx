package stdgo._internal.runtime.metrics;
import stdgo._internal.internal.godebugs.Godebugs;
import stdgo._internal.math.Math;
class Value_asInterface {
    @:keep
    @:tdfield
    public dynamic function float64Histogram():stdgo.Ref<stdgo._internal.runtime.metrics.Metrics_Float64Histogram.Float64Histogram> return @:_0 __self__.value.float64Histogram();
    @:keep
    @:tdfield
    public dynamic function float64():stdgo.GoFloat64 return @:_0 __self__.value.float64();
    @:keep
    @:tdfield
    public dynamic function uint64():stdgo.GoUInt64 return @:_0 __self__.value.uint64();
    @:keep
    @:tdfield
    public dynamic function kind():stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind return @:_0 __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.metrics.Metrics_ValuePointer.ValuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
