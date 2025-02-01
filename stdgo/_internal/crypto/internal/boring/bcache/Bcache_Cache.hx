package stdgo._internal.crypto.internal.boring.bcache;
@:structInit @:using(stdgo._internal.crypto.internal.boring.bcache.Bcache_Cache_static_extension.Cache_static_extension) class Cache<K, V> {
    public var _ptable : _internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_T_cacheTable.T_cacheTable<Dynamic, Dynamic>> = ({} : _internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_T_cacheTable.T_cacheTable<Dynamic, Dynamic>>);
    public function new(?_ptable:_internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_T_cacheTable.T_cacheTable<Dynamic, Dynamic>>) {
        if (_ptable != null) this._ptable = _ptable;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Cache(_ptable);
    }
}
