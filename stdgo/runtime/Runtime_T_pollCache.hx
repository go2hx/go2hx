package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_pollCache_static_extension) abstract T_pollCache(stdgo._internal.runtime.Runtime_T_pollCache.T_pollCache) from stdgo._internal.runtime.Runtime_T_pollCache.T_pollCache to stdgo._internal.runtime.Runtime_T_pollCache.T_pollCache {
    public function new() this = new stdgo._internal.runtime.Runtime_T_pollCache.T_pollCache();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
