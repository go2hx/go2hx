package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_notifyList_static_extension) abstract T_notifyList(stdgo._internal.runtime.Runtime_T_notifyList.T_notifyList) from stdgo._internal.runtime.Runtime_T_notifyList.T_notifyList to stdgo._internal.runtime.Runtime_T_notifyList.T_notifyList {
    public function new() this = new stdgo._internal.runtime.Runtime_T_notifyList.T_notifyList();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
