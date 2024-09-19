package stdgo._internal.crypto.tls;
class T_certCache_asInterface {
    @:keep
    public dynamic function _newCert(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>; var _1 : stdgo.Error; } return __self__.value._newCert(_der);
    @:keep
    public dynamic function _evict(_e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>):Void __self__.value._evict(_e);
    @:keep
    public dynamic function _active(_e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert> return __self__.value._active(_e);
    @:embedded
    public dynamic function _missLocked():Void __self__.value._missLocked();
    @:embedded
    public dynamic function _loadReadOnly():stdgo._internal.sync.Sync_T_readOnly.T_readOnly return __self__.value._loadReadOnly();
    @:embedded
    public dynamic function _dirtyLocked():Void __self__.value._dirtyLocked();
    @:embedded
    public dynamic function swap(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.swap(_parsedName, _constraint);
    @:embedded
    public dynamic function store(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):Void __self__.value.store(_parsedName, _constraint);
    @:embedded
    public dynamic function range(_f:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void __self__.value.range(_f);
    @:embedded
    public dynamic function loadOrStore(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.loadOrStore(_parsedName, _constraint);
    @:embedded
    public dynamic function loadAndDelete(_key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.loadAndDelete(_key);
    @:embedded
    public dynamic function load(_key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.load(_key);
    @:embedded
    public dynamic function delete(_key:stdgo.AnyInterface):Void __self__.value.delete(_key);
    @:embedded
    public dynamic function compareAndSwap(_key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool return __self__.value.compareAndSwap(_key, _old, _new);
    @:embedded
    public dynamic function compareAndDelete(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):Bool return __self__.value.compareAndDelete(_parsedName, _constraint);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
