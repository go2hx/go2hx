package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_stackpoolitem_static_extension.T_stackpoolItem_static_extension) class T_stackpoolItem {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stackpoolItem();
    }
}
