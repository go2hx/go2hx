package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_t_abiseq_static_extension.T_abiSeq_static_extension) class T_abiSeq {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_abiSeq();
    }
}
