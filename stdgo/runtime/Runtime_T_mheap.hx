package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_mheap_static_extension) abstract T_mheap(stdgo._internal.runtime.Runtime_T_mheap.T_mheap) from stdgo._internal.runtime.Runtime_T_mheap.T_mheap to stdgo._internal.runtime.Runtime_T_mheap.T_mheap {
    public function new() this = new stdgo._internal.runtime.Runtime_T_mheap.T_mheap();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
