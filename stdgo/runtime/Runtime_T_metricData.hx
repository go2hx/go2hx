package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_metricData_static_extension) abstract T_metricData(stdgo._internal.runtime.Runtime_T_metricData.T_metricData) from stdgo._internal.runtime.Runtime_T_metricData.T_metricData to stdgo._internal.runtime.Runtime_T_metricData.T_metricData {
    public function new() this = new stdgo._internal.runtime.Runtime_T_metricData.T_metricData();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
