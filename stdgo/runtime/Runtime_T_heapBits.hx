package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_heapBits_static_extension) abstract T_heapBits(stdgo._internal.runtime.Runtime_T_heapBits.T_heapBits) from stdgo._internal.runtime.Runtime_T_heapBits.T_heapBits to stdgo._internal.runtime.Runtime_T_heapBits.T_heapBits {
    public function new() this = new stdgo._internal.runtime.Runtime_T_heapBits.T_heapBits();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
