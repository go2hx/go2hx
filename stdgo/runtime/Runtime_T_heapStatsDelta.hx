package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_heapStatsDelta_static_extension) abstract T_heapStatsDelta(stdgo._internal.runtime.Runtime_T_heapStatsDelta.T_heapStatsDelta) from stdgo._internal.runtime.Runtime_T_heapStatsDelta.T_heapStatsDelta to stdgo._internal.runtime.Runtime_T_heapStatsDelta.T_heapStatsDelta {
    public function new() this = new stdgo._internal.runtime.Runtime_T_heapStatsDelta.T_heapStatsDelta();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
