package stdgo._internal.runtime;
class RWMutex_asInterface {
    @:keep
    @:tdfield
    public dynamic function unlock():Void @:_0 __self__.value.unlock();
    @:keep
    @:tdfield
    public dynamic function lock():Void @:_0 __self__.value.lock();
    @:keep
    @:tdfield
    public dynamic function rUnlock():Void @:_0 __self__.value.rUnlock();
    @:keep
    @:tdfield
    public dynamic function rLock():Void @:_0 __self__.value.rLock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_rwmutexpointer.RWMutexPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
