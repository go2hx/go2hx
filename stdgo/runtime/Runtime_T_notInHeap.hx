package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_notInHeap_static_extension) abstract T_notInHeap(stdgo._internal.runtime.Runtime_T_notInHeap.T_notInHeap) from stdgo._internal.runtime.Runtime_T_notInHeap.T_notInHeap to stdgo._internal.runtime.Runtime_T_notInHeap.T_notInHeap {
    public function new() this = new stdgo._internal.runtime.Runtime_T_notInHeap.T_notInHeap();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
