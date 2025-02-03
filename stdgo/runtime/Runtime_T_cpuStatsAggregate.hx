package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_cpuStatsAggregate_static_extension) abstract T_cpuStatsAggregate(stdgo._internal.runtime.Runtime_T_cpuStatsAggregate.T_cpuStatsAggregate) from stdgo._internal.runtime.Runtime_T_cpuStatsAggregate.T_cpuStatsAggregate to stdgo._internal.runtime.Runtime_T_cpuStatsAggregate.T_cpuStatsAggregate {
    public function new() this = new stdgo._internal.runtime.Runtime_T_cpuStatsAggregate.T_cpuStatsAggregate();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
