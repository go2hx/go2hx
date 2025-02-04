package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_rwmutex_static_extension.RWMutex_static_extension) class RWMutex {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RWMutex();
    }
}
