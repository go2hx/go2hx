package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_randomOrder_static_extension) abstract T_randomOrder(stdgo._internal.runtime.Runtime_T_randomOrder.T_randomOrder) from stdgo._internal.runtime.Runtime_T_randomOrder.T_randomOrder to stdgo._internal.runtime.Runtime_T_randomOrder.T_randomOrder {
    public function new() this = new stdgo._internal.runtime.Runtime_T_randomOrder.T_randomOrder();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
