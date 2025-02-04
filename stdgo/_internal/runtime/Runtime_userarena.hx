package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_userarena_static_extension.UserArena_static_extension) class UserArena {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UserArena();
    }
}
