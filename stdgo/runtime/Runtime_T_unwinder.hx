package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_unwinder_static_extension) abstract T_unwinder(stdgo._internal.runtime.Runtime_T_unwinder.T_unwinder) from stdgo._internal.runtime.Runtime_T_unwinder.T_unwinder to stdgo._internal.runtime.Runtime_T_unwinder.T_unwinder {
    public function new() this = new stdgo._internal.runtime.Runtime_T_unwinder.T_unwinder();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
