package stdgo.crypto.internal.boring.bcache;
@:structInit @:using(stdgo.crypto.internal.boring.bcache.Bcache.Cache_static_extension) abstract Cache(stdgo._internal.crypto.internal.boring.bcache.Bcache_Cache.Cache) from stdgo._internal.crypto.internal.boring.bcache.Bcache_Cache.Cache to stdgo._internal.crypto.internal.boring.bcache.Bcache_Cache.Cache {
    public var _ptable(get, set) : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_T_cacheTable.T_cacheTable<Dynamic, Dynamic>>;
    function get__ptable():stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_T_cacheTable.T_cacheTable<Dynamic, Dynamic>> return this._ptable;
    function set__ptable(v:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_T_cacheTable.T_cacheTable<Dynamic, Dynamic>>):stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_T_cacheTable.T_cacheTable<Dynamic, Dynamic>> {
        this._ptable = v;
        return v;
    }
    public function new(?_ptable:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_T_cacheTable.T_cacheTable<Dynamic, Dynamic>>) this = new stdgo._internal.crypto.internal.boring.bcache.Bcache_Cache.Cache(_ptable);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
