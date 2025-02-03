package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_tracestat_static_extension) abstract T_tracestat(stdgo._internal.runtime.Runtime_T_tracestat.T_tracestat) from stdgo._internal.runtime.Runtime_T_tracestat.T_tracestat to stdgo._internal.runtime.Runtime_T_tracestat.T_tracestat {
    public function new() this = new stdgo._internal.runtime.Runtime_T_tracestat.T_tracestat();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
