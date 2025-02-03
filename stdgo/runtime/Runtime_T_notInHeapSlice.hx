package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_notInHeapSlice_static_extension) abstract T_notInHeapSlice(stdgo._internal.runtime.Runtime_T_notInHeapSlice.T_notInHeapSlice) from stdgo._internal.runtime.Runtime_T_notInHeapSlice.T_notInHeapSlice to stdgo._internal.runtime.Runtime_T_notInHeapSlice.T_notInHeapSlice {
    public function new() this = new stdgo._internal.runtime.Runtime_T_notInHeapSlice.T_notInHeapSlice();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
