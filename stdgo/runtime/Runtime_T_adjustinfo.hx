package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_adjustinfo_static_extension) abstract T_adjustinfo(stdgo._internal.runtime.Runtime_T_adjustinfo.T_adjustinfo) from stdgo._internal.runtime.Runtime_T_adjustinfo.T_adjustinfo to stdgo._internal.runtime.Runtime_T_adjustinfo.T_adjustinfo {
    public function new() this = new stdgo._internal.runtime.Runtime_T_adjustinfo.T_adjustinfo();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
