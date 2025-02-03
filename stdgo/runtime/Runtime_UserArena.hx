package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.UserArena_static_extension) abstract UserArena(stdgo._internal.runtime.Runtime_UserArena.UserArena) from stdgo._internal.runtime.Runtime_UserArena.UserArena to stdgo._internal.runtime.Runtime_UserArena.UserArena {
    public function new() this = new stdgo._internal.runtime.Runtime_UserArena.UserArena();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
