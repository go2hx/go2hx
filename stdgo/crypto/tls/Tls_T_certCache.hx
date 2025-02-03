package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_certCache_static_extension) abstract T_certCache(stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache) from stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache to stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache {
    public var map_(get, set) : stdgo._internal.sync.Sync_Map_.Map_;
    function get_map_():stdgo._internal.sync.Sync_Map_.Map_ return this.map_;
    function set_map_(v:stdgo._internal.sync.Sync_Map_.Map_):stdgo._internal.sync.Sync_Map_.Map_ {
        this.map_ = v;
        return v;
    }
    public function new(?map_:stdgo._internal.sync.Sync_Map_.Map_) this = new stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache(map_);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
