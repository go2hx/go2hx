package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_mSpanList_static_extension) abstract T_mSpanList(stdgo._internal.runtime.Runtime_T_mSpanList.T_mSpanList) from stdgo._internal.runtime.Runtime_T_mSpanList.T_mSpanList to stdgo._internal.runtime.Runtime_T_mSpanList.T_mSpanList {
    public function new() this = new stdgo._internal.runtime.Runtime_T_mSpanList.T_mSpanList();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
