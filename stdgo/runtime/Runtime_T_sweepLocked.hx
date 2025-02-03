package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_sweepLocked_static_extension) abstract T_sweepLocked(stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked) from stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked to stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked {
    public function new() this = new stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
