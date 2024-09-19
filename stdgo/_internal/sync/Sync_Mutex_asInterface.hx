package stdgo._internal.sync;
class Mutex_asInterface {
    @:keep
    public dynamic function _unlockSlow(_new:stdgo.GoInt32):Void __self__.value._unlockSlow(_new);
    @:keep
    public dynamic function unlock():Void __self__.value.unlock();
    @:keep
    public dynamic function _lockSlow():Void __self__.value._lockSlow();
    @:keep
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    @:keep
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.sync.Sync_Mutex.Mutex>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
