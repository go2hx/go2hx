package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_gcCPULimiterState_static_extension) abstract T_gcCPULimiterState(stdgo._internal.runtime.Runtime_T_gcCPULimiterState.T_gcCPULimiterState) from stdgo._internal.runtime.Runtime_T_gcCPULimiterState.T_gcCPULimiterState to stdgo._internal.runtime.Runtime_T_gcCPULimiterState.T_gcCPULimiterState {
    public function new() this = new stdgo._internal.runtime.Runtime_T_gcCPULimiterState.T_gcCPULimiterState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
