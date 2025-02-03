package stdgo.crypto.internal.boring.bcache;
class Cache_static_extension {
    static public function put(_c:Cache<Dynamic, Dynamic>, _k:Dynamic, _v:Dynamic):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_Cache.Cache<Dynamic, Dynamic>>);
        final _k = (_k : stdgo.Ref<Dynamic>);
        final _v = (_v : stdgo.Ref<Dynamic>);
        stdgo._internal.crypto.internal.boring.bcache.Bcache_Cache_static_extension.Cache_static_extension.put(_c, _k, _v);
    }
    static public function get(_c:Cache<Dynamic, Dynamic>, _k:Dynamic):Dynamic {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_Cache.Cache<Dynamic, Dynamic>>);
        final _k = (_k : stdgo.Ref<Dynamic>);
        return stdgo._internal.crypto.internal.boring.bcache.Bcache_Cache_static_extension.Cache_static_extension.get(_c, _k);
    }
    static public function clear(_c:Cache<Dynamic, Dynamic>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_Cache.Cache<Dynamic, Dynamic>>);
        stdgo._internal.crypto.internal.boring.bcache.Bcache_Cache_static_extension.Cache_static_extension.clear(_c);
    }
    static public function _table(_c:Cache<Dynamic, Dynamic>):T_cacheTable<Dynamic, Dynamic> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_Cache.Cache<Dynamic, Dynamic>>);
        return stdgo._internal.crypto.internal.boring.bcache.Bcache_Cache_static_extension.Cache_static_extension._table(_c);
    }
    static public function register(_c:Cache<Dynamic, Dynamic>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_Cache.Cache<Dynamic, Dynamic>>);
        stdgo._internal.crypto.internal.boring.bcache.Bcache_Cache_static_extension.Cache_static_extension.register(_c);
    }
}
