package stdgo._internal.sync;
class RWMutex_asInterface {
    @:keep
    public dynamic function rlocker():stdgo._internal.sync.Sync_Locker.Locker return __self__.value.rlocker();
    @:keep
    public dynamic function unlock():Void __self__.value.unlock();
    @:keep
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    @:keep
    public dynamic function lock():Void __self__.value.lock();
    @:keep
    public dynamic function _rUnlockSlow(_r:stdgo.GoInt32):Void __self__.value._rUnlockSlow(_r);
    @:keep
    public dynamic function runlock():Void __self__.value.runlock();
    @:keep
    public dynamic function tryRLock():Bool return __self__.value.tryRLock();
    @:keep
    public dynamic function rlock():Void __self__.value.rlock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.sync.Sync_RWMutex.RWMutex>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
