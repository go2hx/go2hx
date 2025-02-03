package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_sudog_static_extension) abstract T_sudog(stdgo._internal.runtime.Runtime_T_sudog.T_sudog) from stdgo._internal.runtime.Runtime_T_sudog.T_sudog to stdgo._internal.runtime.Runtime_T_sudog.T_sudog {
    public function new() this = new stdgo._internal.runtime.Runtime_T_sudog.T_sudog();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
