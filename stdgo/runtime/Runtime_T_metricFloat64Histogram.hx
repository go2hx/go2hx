package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_metricFloat64Histogram_static_extension) abstract T_metricFloat64Histogram(stdgo._internal.runtime.Runtime_T_metricFloat64Histogram.T_metricFloat64Histogram) from stdgo._internal.runtime.Runtime_T_metricFloat64Histogram.T_metricFloat64Histogram to stdgo._internal.runtime.Runtime_T_metricFloat64Histogram.T_metricFloat64Histogram {
    public function new() this = new stdgo._internal.runtime.Runtime_T_metricFloat64Histogram.T_metricFloat64Histogram();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
