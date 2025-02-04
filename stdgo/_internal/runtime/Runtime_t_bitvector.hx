package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_bitvector_static_extension.T_bitvector_static_extension) class T_bitvector {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bitvector();
    }
}
