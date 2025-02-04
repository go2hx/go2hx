package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_offaddr_static_extension.T_offAddr_static_extension) class T_offAddr {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_offAddr();
    }
}
