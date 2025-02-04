package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_t_emptyinterface_static_extension.T_emptyInterface_static_extension) class T_emptyInterface {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_emptyInterface();
    }
}
