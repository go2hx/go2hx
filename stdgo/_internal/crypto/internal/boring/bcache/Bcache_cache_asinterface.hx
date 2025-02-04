package stdgo._internal.crypto.internal.boring.bcache;
class Cache_asInterface<K, V> {
    @:keep
    @:tdfield
    public var put : (_k:stdgo.Ref<Dynamic>, _v:stdgo.Ref<Dynamic>) -> Void;
    @:keep
    @:tdfield
    public var get : (_k:stdgo.Ref<Dynamic>) -> stdgo.Ref<Dynamic>;
    @:keep
    @:tdfield
    public var clear : () -> Void;
    @:keep
    @:tdfield
    public var _table : () -> stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cachetable.T_cacheTable<Dynamic, Dynamic>>;
    @:keep
    @:tdfield
    public var register : () -> Void;
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.boring.bcache.Bcache_cachepointer.CachePointer<K, V>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
