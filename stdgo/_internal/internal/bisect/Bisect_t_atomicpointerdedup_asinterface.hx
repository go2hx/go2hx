package stdgo._internal.internal.bisect;
class T_atomicPointerDedup_asInterface {
    @:keep
    @:tdfield
    public dynamic function compareAndSwap(_old:stdgo.Ref<stdgo._internal.internal.bisect.Bisect_t_dedup.T_dedup>, _new_:stdgo.Ref<stdgo._internal.internal.bisect.Bisect_t_dedup.T_dedup>):Bool return @:_0 __self__.value.compareAndSwap(_old, _new_);
    @:keep
    @:tdfield
    public dynamic function load():stdgo.Ref<stdgo._internal.internal.bisect.Bisect_t_dedup.T_dedup> return @:_0 __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.bisect.Bisect_t_atomicpointerdeduppointer.T_atomicPointerDedupPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
