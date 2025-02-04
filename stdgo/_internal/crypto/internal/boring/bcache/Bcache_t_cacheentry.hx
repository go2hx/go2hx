package stdgo._internal.crypto.internal.boring.bcache;
@:structInit @:using(stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry_static_extension.T_cacheEntry_static_extension) class T_cacheEntry<K, V> {
    public var _k : stdgo.Ref<Dynamic> = (null : stdgo.Ref<Dynamic>);
    public var _v : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic> = ({} : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>);
    public var _next : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry<Dynamic, Dynamic>> = (null : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry<Dynamic, Dynamic>>);
    public function new(?_k:stdgo.Ref<Dynamic>, ?_v:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>, ?_next:stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry<Dynamic, Dynamic>>) {
        if (_k != null) this._k = _k;
        if (_v != null) this._v = _v;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cacheEntry(_k, _v, _next);
    }
}
