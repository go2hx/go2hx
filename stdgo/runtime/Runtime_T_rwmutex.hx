package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_rwmutex_static_extension) abstract T_rwmutex(stdgo._internal.runtime.Runtime_T_rwmutex.T_rwmutex) from stdgo._internal.runtime.Runtime_T_rwmutex.T_rwmutex to stdgo._internal.runtime.Runtime_T_rwmutex.T_rwmutex {
    public function new() this = new stdgo._internal.runtime.Runtime_T_rwmutex.T_rwmutex();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
