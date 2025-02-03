package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_metricName_static_extension) abstract T_metricName(stdgo._internal.runtime.Runtime_T_metricName.T_metricName) from stdgo._internal.runtime.Runtime_T_metricName.T_metricName to stdgo._internal.runtime.Runtime_T_metricName.T_metricName {
    public function new() this = new stdgo._internal.runtime.Runtime_T_metricName.T_metricName();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
