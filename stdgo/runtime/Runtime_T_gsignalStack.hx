package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_gsignalStack_static_extension) abstract T_gsignalStack(stdgo._internal.runtime.Runtime_T_gsignalStack.T_gsignalStack) from stdgo._internal.runtime.Runtime_T_gsignalStack.T_gsignalStack to stdgo._internal.runtime.Runtime_T_gsignalStack.T_gsignalStack {
    public function new() this = new stdgo._internal.runtime.Runtime_T_gsignalStack.T_gsignalStack();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
