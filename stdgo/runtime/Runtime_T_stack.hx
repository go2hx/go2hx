package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_stack_static_extension) abstract T_stack(stdgo._internal.runtime.Runtime_T_stack.T_stack) from stdgo._internal.runtime.Runtime_T_stack.T_stack to stdgo._internal.runtime.Runtime_T_stack.T_stack {
    public function new() this = new stdgo._internal.runtime.Runtime_T_stack.T_stack();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
