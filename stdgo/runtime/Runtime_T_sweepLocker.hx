package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_sweepLocker_static_extension) abstract T_sweepLocker(stdgo._internal.runtime.Runtime_T_sweepLocker.T_sweepLocker) from stdgo._internal.runtime.Runtime_T_sweepLocker.T_sweepLocker to stdgo._internal.runtime.Runtime_T_sweepLocker.T_sweepLocker {
    public function new() this = new stdgo._internal.runtime.Runtime_T_sweepLocker.T_sweepLocker();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
