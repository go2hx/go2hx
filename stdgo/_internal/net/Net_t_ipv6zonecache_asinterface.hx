package stdgo._internal.net;
class T_ipv6ZoneCache_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _rUnlockSlow(_0:stdgo.GoInt32):Void @:_0 __self__.value._rUnlockSlow(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function unlock():Void @:_0 __self__.value.unlock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function tryRLock():Bool return @:_0 __self__.value.tryRLock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function tryLock():Bool return @:_0 __self__.value.tryLock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function rUnlock():Void @:_0 __self__.value.rUnlock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function rLocker():stdgo._internal.sync.Sync_locker.Locker return @:_0 __self__.value.rLocker();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function rLock():Void @:_0 __self__.value.rLock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lock():Void @:_0 __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t_ipv6zonecachepointer.T_ipv6ZoneCachePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
