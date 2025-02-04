package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_atomicoffaddr_static_extension.T_atomicOffAddr_static_extension) class T_atomicOffAddr {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_atomicOffAddr();
    }
}
