package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_sysmontick_static_extension) abstract T_sysmontick(stdgo._internal.runtime.Runtime_T_sysmontick.T_sysmontick) from stdgo._internal.runtime.Runtime_T_sysmontick.T_sysmontick to stdgo._internal.runtime.Runtime_T_sysmontick.T_sysmontick {
    public function new() this = new stdgo._internal.runtime.Runtime_T_sysmontick.T_sysmontick();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
