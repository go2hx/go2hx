package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_metricSample_static_extension) abstract T_metricSample(stdgo._internal.runtime.Runtime_T_metricSample.T_metricSample) from stdgo._internal.runtime.Runtime_T_metricSample.T_metricSample to stdgo._internal.runtime.Runtime_T_metricSample.T_metricSample {
    public function new() this = new stdgo._internal.runtime.Runtime_T_metricSample.T_metricSample();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
