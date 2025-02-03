package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_metricValue_static_extension) abstract T_metricValue(stdgo._internal.runtime.Runtime_T_metricValue.T_metricValue) from stdgo._internal.runtime.Runtime_T_metricValue.T_metricValue to stdgo._internal.runtime.Runtime_T_metricValue.T_metricValue {
    public function new() this = new stdgo._internal.runtime.Runtime_T_metricValue.T_metricValue();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
