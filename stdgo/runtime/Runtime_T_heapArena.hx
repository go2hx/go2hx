package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_heapArena_static_extension) abstract T_heapArena(stdgo._internal.runtime.Runtime_T_heapArena.T_heapArena) from stdgo._internal.runtime.Runtime_T_heapArena.T_heapArena to stdgo._internal.runtime.Runtime_T_heapArena.T_heapArena {
    public function new() this = new stdgo._internal.runtime.Runtime_T_heapArena.T_heapArena();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
