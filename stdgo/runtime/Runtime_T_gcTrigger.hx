package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_gcTrigger_static_extension) abstract T_gcTrigger(stdgo._internal.runtime.Runtime_T_gcTrigger.T_gcTrigger) from stdgo._internal.runtime.Runtime_T_gcTrigger.T_gcTrigger to stdgo._internal.runtime.Runtime_T_gcTrigger.T_gcTrigger {
    public function new() this = new stdgo._internal.runtime.Runtime_T_gcTrigger.T_gcTrigger();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
