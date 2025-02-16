package stdgo.boring.bcache;
@:structInit @:using(stdgo.crypto.internal.boring.bcache.Bcache.Cache_static_extension) abstract Cache(stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache) from stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache to stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache {
    public var _ptable(get, set) : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cachetable.T_cacheTable<Dynamic, Dynamic>>;
    function get__ptable():stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cachetable.T_cacheTable<Dynamic, Dynamic>> return this._ptable;
    function set__ptable(v:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cachetable.T_cacheTable<Dynamic, Dynamic>>):stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cachetable.T_cacheTable<Dynamic, Dynamic>> {
        this._ptable = v;
        return v;
    }
    public function new(?_ptable:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cachetable.T_cacheTable<Dynamic, Dynamic>>) this = new stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache(_ptable);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.boring.bcache.Bcache.T_cacheEntry_static_extension) @:dox(hide) abstract T_cacheEntry(stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry) from stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry to stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry {
    public var _k(get, set) : Dynamic;
    function get__k():Dynamic return this._k;
    function set__k(v:Dynamic):Dynamic {
        this._k = (v : stdgo.Ref<Dynamic>);
        return v;
    }
    public var _v(get, set) : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>;
    function get__v():stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic> return this._v;
    function set__v(v:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>):stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic> {
        this._v = v;
        return v;
    }
    public var _next(get, set) : T_cacheEntry<Dynamic, Dynamic>;
    function get__next():T_cacheEntry<Dynamic, Dynamic> return this._next;
    function set__next(v:T_cacheEntry<Dynamic, Dynamic>):T_cacheEntry<Dynamic, Dynamic> {
        this._next = (v : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry<Dynamic, Dynamic>>);
        return v;
    }
    public function new(?_k:Dynamic, ?_v:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>, ?_next:T_cacheEntry<Dynamic, Dynamic>) this = new stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry((_k : stdgo.Ref<Dynamic>), _v, (_next : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry<Dynamic, Dynamic>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_cacheTable = stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cachetable.T_cacheTable<K, V>;
typedef CachePointer = stdgo._internal.crypto.internal.boring.bcache.Bcache_cachepointer.CachePointer<K, V>;
class Cache_static_extension {
    static public function put(_c:Cache<Dynamic, Dynamic>, _k:Dynamic, _v:Dynamic):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache<Dynamic, Dynamic>>);
        final _k = (_k : stdgo.Ref<Dynamic>);
        final _v = (_v : stdgo.Ref<Dynamic>);
        stdgo._internal.crypto.internal.boring.bcache.Bcache_cache_static_extension.Cache_static_extension.put(_c, _k, _v);
    }
    static public function get(_c:Cache<Dynamic, Dynamic>, _k:Dynamic):Dynamic {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache<Dynamic, Dynamic>>);
        final _k = (_k : stdgo.Ref<Dynamic>);
        return stdgo._internal.crypto.internal.boring.bcache.Bcache_cache_static_extension.Cache_static_extension.get(_c, _k);
    }
    static public function clear(_c:Cache<Dynamic, Dynamic>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache<Dynamic, Dynamic>>);
        stdgo._internal.crypto.internal.boring.bcache.Bcache_cache_static_extension.Cache_static_extension.clear(_c);
    }
    static public function _table(_c:Cache<Dynamic, Dynamic>):T_cacheTable<Dynamic, Dynamic> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache<Dynamic, Dynamic>>);
        return stdgo._internal.crypto.internal.boring.bcache.Bcache_cache_static_extension.Cache_static_extension._table(_c);
    }
    static public function register(_c:Cache<Dynamic, Dynamic>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache<Dynamic, Dynamic>>);
        stdgo._internal.crypto.internal.boring.bcache.Bcache_cache_static_extension.Cache_static_extension.register(_c);
    }
}
@:dox(hide) typedef T_cacheEntryPointer = stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentrypointer.T_cacheEntryPointer<K, V>;
@:dox(hide) class T_cacheEntry_static_extension {

}
@:dox(hide) typedef T_cacheTablePointer = stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cachetablepointer.T_cacheTablePointer<K, V>;
@:dox(hide) class T_cacheTable_static_extension {

}
/**
    * Package bcache implements a GC-friendly cache (see [Cache]) for BoringCrypto.
**/
class Bcache {

}
