package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_t_abidesc_static_extension.T_abiDesc_static_extension) class T_abiDesc {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_abiDesc();
    }
}
