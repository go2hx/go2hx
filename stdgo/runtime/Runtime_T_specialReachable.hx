package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_specialReachable_static_extension) abstract T_specialReachable(stdgo._internal.runtime.Runtime_T_specialReachable.T_specialReachable) from stdgo._internal.runtime.Runtime_T_specialReachable.T_specialReachable to stdgo._internal.runtime.Runtime_T_specialReachable.T_specialReachable {
    public function new() this = new stdgo._internal.runtime.Runtime_T_specialReachable.T_specialReachable();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
