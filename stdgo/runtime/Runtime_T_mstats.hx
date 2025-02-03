package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_mstats_static_extension) abstract T_mstats(stdgo._internal.runtime.Runtime_T_mstats.T_mstats) from stdgo._internal.runtime.Runtime_T_mstats.T_mstats to stdgo._internal.runtime.Runtime_T_mstats.T_mstats {
    public function new() this = new stdgo._internal.runtime.Runtime_T_mstats.T_mstats();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
