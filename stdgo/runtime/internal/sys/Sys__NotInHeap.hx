package stdgo.runtime.internal.sys;
@:structInit @:using(stdgo.runtime.internal.sys.Sys_.NotInHeap_static_extension) abstract NotInHeap(stdgo._internal.runtime.internal.sys.Sys_NotInHeap.NotInHeap) from stdgo._internal.runtime.internal.sys.Sys_NotInHeap.NotInHeap to stdgo._internal.runtime.internal.sys.Sys_NotInHeap.NotInHeap {
    public var __1(get, set) : T_nih;
    function get___1():T_nih return this.__1;
    function set___1(v:T_nih):T_nih {
        this.__1 = v;
        return v;
    }
    public function new(?__1:T_nih) this = new stdgo._internal.runtime.internal.sys.Sys_NotInHeap.NotInHeap(__1);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
