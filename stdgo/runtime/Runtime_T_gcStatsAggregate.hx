package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_gcStatsAggregate_static_extension) abstract T_gcStatsAggregate(stdgo._internal.runtime.Runtime_T_gcStatsAggregate.T_gcStatsAggregate) from stdgo._internal.runtime.Runtime_T_gcStatsAggregate.T_gcStatsAggregate to stdgo._internal.runtime.Runtime_T_gcStatsAggregate.T_gcStatsAggregate {
    public function new() this = new stdgo._internal.runtime.Runtime_T_gcStatsAggregate.T_gcStatsAggregate();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
