package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_atomicMSpanPointer_static_extension) abstract T_atomicMSpanPointer(stdgo._internal.runtime.Runtime_T_atomicMSpanPointer.T_atomicMSpanPointer) from stdgo._internal.runtime.Runtime_T_atomicMSpanPointer.T_atomicMSpanPointer to stdgo._internal.runtime.Runtime_T_atomicMSpanPointer.T_atomicMSpanPointer {
    public function new() this = new stdgo._internal.runtime.Runtime_T_atomicMSpanPointer.T_atomicMSpanPointer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
