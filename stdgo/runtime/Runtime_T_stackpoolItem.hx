package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_stackpoolItem_static_extension) abstract T_stackpoolItem(stdgo._internal.runtime.Runtime_T_stackpoolItem.T_stackpoolItem) from stdgo._internal.runtime.Runtime_T_stackpoolItem.T_stackpoolItem to stdgo._internal.runtime.Runtime_T_stackpoolItem.T_stackpoolItem {
    public function new() this = new stdgo._internal.runtime.Runtime_T_stackpoolItem.T_stackpoolItem();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
