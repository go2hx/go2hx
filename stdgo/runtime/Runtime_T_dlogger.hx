package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_dlogger_static_extension) abstract T_dlogger(stdgo._internal.runtime.Runtime_T_dlogger.T_dlogger) from stdgo._internal.runtime.Runtime_T_dlogger.T_dlogger to stdgo._internal.runtime.Runtime_T_dlogger.T_dlogger {
    public function new() this = new stdgo._internal.runtime.Runtime_T_dlogger.T_dlogger();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
