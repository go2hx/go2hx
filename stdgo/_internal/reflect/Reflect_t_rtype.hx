package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_t_rtype_static_extension.T_rtype_static_extension) class T_rtype {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rtype();
    }
}
