package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_writeHeapBits_static_extension) abstract T_writeHeapBits(stdgo._internal.runtime.Runtime_T_writeHeapBits.T_writeHeapBits) from stdgo._internal.runtime.Runtime_T_writeHeapBits.T_writeHeapBits to stdgo._internal.runtime.Runtime_T_writeHeapBits.T_writeHeapBits {
    public function new() this = new stdgo._internal.runtime.Runtime_T_writeHeapBits.T_writeHeapBits();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
