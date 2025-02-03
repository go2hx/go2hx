package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.GCCPULimiter_static_extension) abstract GCCPULimiter(stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter) from stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter to stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter {
    public function new() this = new stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
