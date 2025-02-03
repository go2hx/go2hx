package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_timeHistogram_static_extension) abstract T_timeHistogram(stdgo._internal.runtime.Runtime_T_timeHistogram.T_timeHistogram) from stdgo._internal.runtime.Runtime_T_timeHistogram.T_timeHistogram to stdgo._internal.runtime.Runtime_T_timeHistogram.T_timeHistogram {
    public function new() this = new stdgo._internal.runtime.Runtime_T_timeHistogram.T_timeHistogram();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
