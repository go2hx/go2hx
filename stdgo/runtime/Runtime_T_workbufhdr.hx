package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_workbufhdr_static_extension) abstract T_workbufhdr(stdgo._internal.runtime.Runtime_T_workbufhdr.T_workbufhdr) from stdgo._internal.runtime.Runtime_T_workbufhdr.T_workbufhdr to stdgo._internal.runtime.Runtime_T_workbufhdr.T_workbufhdr {
    public function new() this = new stdgo._internal.runtime.Runtime_T_workbufhdr.T_workbufhdr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
