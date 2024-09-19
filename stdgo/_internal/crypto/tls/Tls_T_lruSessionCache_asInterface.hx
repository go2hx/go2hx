package stdgo._internal.crypto.tls;
class T_lruSessionCache_asInterface {
    @:keep
    public dynamic function get(_sessionKey:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>; var _1 : Bool; } return __self__.value.get(_sessionKey);
    @:keep
    public dynamic function put(_sessionKey:stdgo.GoString, _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>):Void __self__.value.put(_sessionKey, _cs);
    @:embedded
    public dynamic function _unlockSlow(__0:stdgo.GoInt32):Void __self__.value._unlockSlow(__0);
    @:embedded
    public dynamic function _lockSlow():Void __self__.value._lockSlow();
    @:embedded
    public dynamic function unlock():Void __self__.value.unlock();
    @:embedded
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    @:embedded
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
