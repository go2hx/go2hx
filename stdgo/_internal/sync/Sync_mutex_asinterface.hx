package stdgo._internal.sync;
class Mutex_asInterface {
    @:keep
    @:tdfield
    public dynamic function _unlockSlow(_new_:stdgo.GoInt32):Void @:_0 __self__.value._unlockSlow(_new_);
    @:keep
    @:tdfield
    public dynamic function unlock():Void @:_0 __self__.value.unlock();
    @:keep
    @:tdfield
    public dynamic function _lockSlow():Void @:_0 __self__.value._lockSlow();
    @:keep
    @:tdfield
    public dynamic function tryLock():Bool return @:_0 __self__.value.tryLock();
    @:keep
    @:tdfield
    public dynamic function lock():Void @:_0 __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.sync.Sync_mutexpointer.MutexPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
