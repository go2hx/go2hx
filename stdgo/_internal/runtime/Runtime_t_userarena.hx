package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_userarena_static_extension.T_userArena_static_extension) class T_userArena {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_userArena();
    }
}
