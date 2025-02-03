package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_cpuStats_static_extension) abstract T_cpuStats(stdgo._internal.runtime.Runtime_T_cpuStats.T_cpuStats) from stdgo._internal.runtime.Runtime_T_cpuStats.T_cpuStats to stdgo._internal.runtime.Runtime_T_cpuStats.T_cpuStats {
    public function new() this = new stdgo._internal.runtime.Runtime_T_cpuStats.T_cpuStats();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
