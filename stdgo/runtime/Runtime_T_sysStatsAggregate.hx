package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_sysStatsAggregate_static_extension) abstract T_sysStatsAggregate(stdgo._internal.runtime.Runtime_T_sysStatsAggregate.T_sysStatsAggregate) from stdgo._internal.runtime.Runtime_T_sysStatsAggregate.T_sysStatsAggregate to stdgo._internal.runtime.Runtime_T_sysStatsAggregate.T_sysStatsAggregate {
    public function new() this = new stdgo._internal.runtime.Runtime_T_sysStatsAggregate.T_sysStatsAggregate();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
