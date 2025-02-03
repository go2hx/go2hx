package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_gcBitsArena_static_extension) abstract T_gcBitsArena(stdgo._internal.runtime.Runtime_T_gcBitsArena.T_gcBitsArena) from stdgo._internal.runtime.Runtime_T_gcBitsArena.T_gcBitsArena to stdgo._internal.runtime.Runtime_T_gcBitsArena.T_gcBitsArena {
    public function new() this = new stdgo._internal.runtime.Runtime_T_gcBitsArena.T_gcBitsArena();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
