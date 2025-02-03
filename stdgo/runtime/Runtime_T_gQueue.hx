package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_gQueue_static_extension) abstract T_gQueue(stdgo._internal.runtime.Runtime_T_gQueue.T_gQueue) from stdgo._internal.runtime.Runtime_T_gQueue.T_gQueue to stdgo._internal.runtime.Runtime_T_gQueue.T_gQueue {
    public function new() this = new stdgo._internal.runtime.Runtime_T_gQueue.T_gQueue();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
