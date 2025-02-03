package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_userArena_static_extension) abstract T_userArena(stdgo._internal.runtime.Runtime_T_userArena.T_userArena) from stdgo._internal.runtime.Runtime_T_userArena.T_userArena to stdgo._internal.runtime.Runtime_T_userArena.T_userArena {
    public function new() this = new stdgo._internal.runtime.Runtime_T_userArena.T_userArena();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
