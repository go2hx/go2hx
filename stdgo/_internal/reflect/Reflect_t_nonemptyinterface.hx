package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_t_nonemptyinterface_static_extension.T_nonEmptyInterface_static_extension) class T_nonEmptyInterface {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nonEmptyInterface();
    }
}
