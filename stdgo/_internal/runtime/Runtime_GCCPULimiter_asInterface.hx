package stdgo._internal.runtime;
class GCCPULimiter_asInterface {
    @:keep
    public dynamic function resetCapacity(_now:stdgo.GoInt64, _nprocs:stdgo.GoInt32):Void __self__.value.resetCapacity(_now, _nprocs);
    @:keep
    public dynamic function addAssistTime(_t:stdgo.GoInt64):Void __self__.value.addAssistTime(_t);
    @:keep
    public dynamic function update(_now:stdgo.GoInt64):Void __self__.value.update(_now);
    @:keep
    public dynamic function finishGCTransition(_now:stdgo.GoInt64):Void __self__.value.finishGCTransition(_now);
    @:keep
    public dynamic function startGCTransition(_enableGC:Bool, _now:stdgo.GoInt64):Void __self__.value.startGCTransition(_enableGC, _now);
    @:keep
    public dynamic function needUpdate(_now:stdgo.GoInt64):Bool return __self__.value.needUpdate(_now);
    @:keep
    public dynamic function limiting():Bool return __self__.value.limiting();
    @:keep
    public dynamic function overflow():stdgo.GoUInt64 return __self__.value.overflow();
    @:keep
    public dynamic function capacity_():stdgo.GoUInt64 return __self__.value.capacity_();
    @:keep
    public dynamic function fill():stdgo.GoUInt64 return __self__.value.fill();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
