package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_waitq_static_extension) abstract T_waitq(stdgo._internal.runtime.Runtime_T_waitq.T_waitq) from stdgo._internal.runtime.Runtime_T_waitq.T_waitq to stdgo._internal.runtime.Runtime_T_waitq.T_waitq {
    public function new() this = new stdgo._internal.runtime.Runtime_T_waitq.T_waitq();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
