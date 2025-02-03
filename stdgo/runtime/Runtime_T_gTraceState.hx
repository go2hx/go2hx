package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_gTraceState_static_extension) abstract T_gTraceState(stdgo._internal.runtime.Runtime_T_gTraceState.T_gTraceState) from stdgo._internal.runtime.Runtime_T_gTraceState.T_gTraceState to stdgo._internal.runtime.Runtime_T_gTraceState.T_gTraceState {
    public function new() this = new stdgo._internal.runtime.Runtime_T_gTraceState.T_gTraceState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
