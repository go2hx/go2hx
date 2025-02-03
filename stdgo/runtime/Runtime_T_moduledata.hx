package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_moduledata_static_extension) abstract T_moduledata(stdgo._internal.runtime.Runtime_T_moduledata.T_moduledata) from stdgo._internal.runtime.Runtime_T_moduledata.T_moduledata to stdgo._internal.runtime.Runtime_T_moduledata.T_moduledata {
    public var notInHeap(get, set) : NotInHeap;
    function get_notInHeap():NotInHeap return this.notInHeap;
    function set_notInHeap(v:NotInHeap):NotInHeap {
        this.notInHeap = v;
        return v;
    }
    public function new(?notInHeap:NotInHeap) this = new stdgo._internal.runtime.Runtime_T_moduledata.T_moduledata(notInHeap);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
