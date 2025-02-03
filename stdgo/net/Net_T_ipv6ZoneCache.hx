package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_ipv6ZoneCache_static_extension) abstract T_ipv6ZoneCache(stdgo._internal.net.Net_T_ipv6ZoneCache.T_ipv6ZoneCache) from stdgo._internal.net.Net_T_ipv6ZoneCache.T_ipv6ZoneCache to stdgo._internal.net.Net_T_ipv6ZoneCache.T_ipv6ZoneCache {
    public var rWMutex(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get_rWMutex():stdgo._internal.sync.Sync_RWMutex.RWMutex return this.rWMutex;
    function set_rWMutex(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this.rWMutex = v;
        return v;
    }
    public function new(?rWMutex:stdgo._internal.sync.Sync_RWMutex.RWMutex) this = new stdgo._internal.net.Net_T_ipv6ZoneCache.T_ipv6ZoneCache(rWMutex);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
