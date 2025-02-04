package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_glist_static_extension.T_gList_static_extension) class T_gList {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gList();
    }
}
