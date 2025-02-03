package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_mspan_static_extension) abstract T_mspan(stdgo._internal.runtime.Runtime_T_mspan.T_mspan) from stdgo._internal.runtime.Runtime_T_mspan.T_mspan to stdgo._internal.runtime.Runtime_T_mspan.T_mspan {
    public function new() this = new stdgo._internal.runtime.Runtime_T_mspan.T_mspan();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
