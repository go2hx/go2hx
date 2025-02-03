package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_stackScanState_static_extension) abstract T_stackScanState(stdgo._internal.runtime.Runtime_T_stackScanState.T_stackScanState) from stdgo._internal.runtime.Runtime_T_stackScanState.T_stackScanState to stdgo._internal.runtime.Runtime_T_stackScanState.T_stackScanState {
    public function new() this = new stdgo._internal.runtime.Runtime_T_stackScanState.T_stackScanState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
