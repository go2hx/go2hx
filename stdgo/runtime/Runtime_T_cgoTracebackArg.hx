package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_cgoTracebackArg_static_extension) abstract T_cgoTracebackArg(stdgo._internal.runtime.Runtime_T_cgoTracebackArg.T_cgoTracebackArg) from stdgo._internal.runtime.Runtime_T_cgoTracebackArg.T_cgoTracebackArg to stdgo._internal.runtime.Runtime_T_cgoTracebackArg.T_cgoTracebackArg {
    public function new() this = new stdgo._internal.runtime.Runtime_T_cgoTracebackArg.T_cgoTracebackArg();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
