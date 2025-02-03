package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_consistentHeapStats_static_extension) abstract T_consistentHeapStats(stdgo._internal.runtime.Runtime_T_consistentHeapStats.T_consistentHeapStats) from stdgo._internal.runtime.Runtime_T_consistentHeapStats.T_consistentHeapStats to stdgo._internal.runtime.Runtime_T_consistentHeapStats.T_consistentHeapStats {
    public function new() this = new stdgo._internal.runtime.Runtime_T_consistentHeapStats.T_consistentHeapStats();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
