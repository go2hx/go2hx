package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_heapStatsAggregate_static_extension) abstract T_heapStatsAggregate(stdgo._internal.runtime.Runtime_T_heapStatsAggregate.T_heapStatsAggregate) from stdgo._internal.runtime.Runtime_T_heapStatsAggregate.T_heapStatsAggregate to stdgo._internal.runtime.Runtime_T_heapStatsAggregate.T_heapStatsAggregate {
    public function new() this = new stdgo._internal.runtime.Runtime_T_heapStatsAggregate.T_heapStatsAggregate();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
