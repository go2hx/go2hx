package stdgo._internal.runtime;
class T_heapStatsAggregate_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _merge(_0:stdgo.Ref<stdgo._internal.runtime.Runtime_t_heapstatsdelta.T_heapStatsDelta>):Void @:_0 __self__.value._merge(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_t_heapstatsaggregatepointer.T_heapStatsAggregatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
