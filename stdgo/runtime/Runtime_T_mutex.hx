package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_mutex_static_extension) abstract T_mutex(stdgo._internal.runtime.Runtime_T_mutex.T_mutex) from stdgo._internal.runtime.Runtime_T_mutex.T_mutex to stdgo._internal.runtime.Runtime_T_mutex.T_mutex {
    public function new() this = new stdgo._internal.runtime.Runtime_T_mutex.T_mutex();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
