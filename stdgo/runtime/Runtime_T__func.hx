package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T__func_static_extension) abstract T__func(stdgo._internal.runtime.Runtime_T__func.T__func) from stdgo._internal.runtime.Runtime_T__func.T__func to stdgo._internal.runtime.Runtime_T__func.T__func {
    public var notInHeap(get, set) : NotInHeap;
    function get_notInHeap():NotInHeap return this.notInHeap;
    function set_notInHeap(v:NotInHeap):NotInHeap {
        this.notInHeap = v;
        return v;
    }
    public function new(?notInHeap:NotInHeap) this = new stdgo._internal.runtime.Runtime_T__func.T__func(notInHeap);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
