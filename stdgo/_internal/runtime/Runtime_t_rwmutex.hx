package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_rwmutex_static_extension.T_rwmutex_static_extension) class T_rwmutex {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rwmutex();
    }
}
