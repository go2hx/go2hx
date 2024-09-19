package stdgo._internal.internal.bisect;
class T_atomicPointerDedup_asInterface {
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.Ref<stdgo._internal.internal.bisect.Bisect_T_dedup.T_dedup>, _new:stdgo.Ref<stdgo._internal.internal.bisect.Bisect_T_dedup.T_dedup>):Bool return __self__.value.compareAndSwap(_old, _new);
    @:keep
    public dynamic function load():stdgo.Ref<stdgo._internal.internal.bisect.Bisect_T_dedup.T_dedup> return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.bisect.Bisect_T_atomicPointerDedup.T_atomicPointerDedup>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
