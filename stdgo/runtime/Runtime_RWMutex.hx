package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.RWMutex_static_extension) abstract RWMutex(stdgo._internal.runtime.Runtime_RWMutex.RWMutex) from stdgo._internal.runtime.Runtime_RWMutex.RWMutex to stdgo._internal.runtime.Runtime_RWMutex.RWMutex {
    public function new() this = new stdgo._internal.runtime.Runtime_RWMutex.RWMutex();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
