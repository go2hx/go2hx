package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_pTraceState_static_extension) abstract T_pTraceState(stdgo._internal.runtime.Runtime_T_pTraceState.T_pTraceState) from stdgo._internal.runtime.Runtime_T_pTraceState.T_pTraceState to stdgo._internal.runtime.Runtime_T_pTraceState.T_pTraceState {
    public function new() this = new stdgo._internal.runtime.Runtime_T_pTraceState.T_pTraceState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
