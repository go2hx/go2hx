package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_sweepdata_static_extension) abstract T_sweepdata(stdgo._internal.runtime.Runtime_T_sweepdata.T_sweepdata) from stdgo._internal.runtime.Runtime_T_sweepdata.T_sweepdata to stdgo._internal.runtime.Runtime_T_sweepdata.T_sweepdata {
    public function new() this = new stdgo._internal.runtime.Runtime_T_sweepdata.T_sweepdata();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
