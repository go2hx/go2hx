package stdgo._internal.runtime.metrics;
class Value_asInterface {
    @:keep
    public dynamic function float64Histogram():stdgo.Ref<stdgo._internal.runtime.metrics.Metrics_Float64Histogram.Float64Histogram> return __self__.value.float64Histogram();
    @:keep
    public dynamic function float64():stdgo.GoFloat64 return __self__.value.float64();
    @:keep
    public dynamic function uint64():stdgo.GoUInt64 return __self__.value.uint64();
    @:keep
    public dynamic function kind():stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.metrics.Metrics_Value.Value>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
