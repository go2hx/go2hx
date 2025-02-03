package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_pageCache_static_extension) abstract T_pageCache(stdgo._internal.runtime.Runtime_T_pageCache.T_pageCache) from stdgo._internal.runtime.Runtime_T_pageCache.T_pageCache to stdgo._internal.runtime.Runtime_T_pageCache.T_pageCache {
    public function new() this = new stdgo._internal.runtime.Runtime_T_pageCache.T_pageCache();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
