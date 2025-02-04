package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_t_abistep_static_extension.T_abiStep_static_extension) class T_abiStep {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_abiStep();
    }
}
