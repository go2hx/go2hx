package stdgo.crypto.internal.boring.bcache;
@:structInit @:using(stdgo.crypto.internal.boring.bcache.Bcache.T_cacheEntry_static_extension) abstract T_cacheEntry(stdgo._internal.crypto.internal.boring.bcache.Bcache_T_cacheEntry.T_cacheEntry) from stdgo._internal.crypto.internal.boring.bcache.Bcache_T_cacheEntry.T_cacheEntry to stdgo._internal.crypto.internal.boring.bcache.Bcache_T_cacheEntry.T_cacheEntry {
    public var _k(get, set) : Dynamic;
    function get__k():Dynamic return this._k;
    function set__k(v:Dynamic):Dynamic {
        this._k = (v : stdgo.Ref<Dynamic>);
        return v;
    }
    public var _v(get, set) : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<Dynamic>;
    function get__v():stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<Dynamic> return this._v;
    function set__v(v:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<Dynamic>):stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<Dynamic> {
        this._v = v;
        return v;
    }
    public var _next(get, set) : T_cacheEntry<Dynamic, Dynamic>;
    function get__next():T_cacheEntry<Dynamic, Dynamic> return this._next;
    function set__next(v:T_cacheEntry<Dynamic, Dynamic>):T_cacheEntry<Dynamic, Dynamic> {
        this._next = (v : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_T_cacheEntry.T_cacheEntry<Dynamic, Dynamic>>);
        return v;
    }
    public function new(?_k:Dynamic, ?_v:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<Dynamic>, ?_next:T_cacheEntry<Dynamic, Dynamic>) this = new stdgo._internal.crypto.internal.boring.bcache.Bcache_T_cacheEntry.T_cacheEntry((_k : stdgo.Ref<Dynamic>), _v, (_next : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_T_cacheEntry.T_cacheEntry<Dynamic, Dynamic>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
