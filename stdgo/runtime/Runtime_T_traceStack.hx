package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_traceStack_static_extension) abstract T_traceStack(stdgo._internal.runtime.Runtime_T_traceStack.T_traceStack) from stdgo._internal.runtime.Runtime_T_traceStack.T_traceStack to stdgo._internal.runtime.Runtime_T_traceStack.T_traceStack {
    public function new() this = new stdgo._internal.runtime.Runtime_T_traceStack.T_traceStack();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
