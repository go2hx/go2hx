package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_gList_static_extension) abstract T_gList(stdgo._internal.runtime.Runtime_T_gList.T_gList) from stdgo._internal.runtime.Runtime_T_gList.T_gList to stdgo._internal.runtime.Runtime_T_gList.T_gList {
    public function new() this = new stdgo._internal.runtime.Runtime_T_gList.T_gList();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
