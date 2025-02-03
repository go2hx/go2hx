package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_mcache_static_extension) abstract T_mcache(stdgo._internal.runtime.Runtime_T_mcache.T_mcache) from stdgo._internal.runtime.Runtime_T_mcache.T_mcache to stdgo._internal.runtime.Runtime_T_mcache.T_mcache {
    public function new() this = new stdgo._internal.runtime.Runtime_T_mcache.T_mcache();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
