package stdgo._internal.runtime.internal.sys;
@:structInit @:using(stdgo._internal.runtime.internal.sys.Sys__notinheap_static_extension.NotInHeap_static_extension) class NotInHeap {
    @:optional
    public var __1 : stdgo._internal.runtime.internal.sys.Sys_t_nih.T_nih = ({} : stdgo._internal.runtime.internal.sys.Sys_t_nih.T_nih);
    public function new(?__1:stdgo._internal.runtime.internal.sys.Sys_t_nih.T_nih) {
        if (__1 != null) this.__1 = __1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NotInHeap(__1);
    }
}
