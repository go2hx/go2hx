package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_polldesc_static_extension.T_pollDesc_static_extension) class T_pollDesc {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pollDesc();
    }
}
