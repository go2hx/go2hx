package stdgo.sort;
@:structInit @:using(stdgo.sort.Sort.T_lessSwap_static_extension) abstract T_lessSwap(stdgo._internal.sort.Sort_T_lessSwap.T_lessSwap) from stdgo._internal.sort.Sort_T_lessSwap.T_lessSwap to stdgo._internal.sort.Sort_T_lessSwap.T_lessSwap {
    public var less(get, set) : (stdgo.GoInt, stdgo.GoInt) -> Bool;
    function get_less():(stdgo.GoInt, stdgo.GoInt) -> Bool return (_0, _1) -> this.less(_0, _1);
    function set_less(v:(stdgo.GoInt, stdgo.GoInt) -> Bool):(stdgo.GoInt, stdgo.GoInt) -> Bool {
        this.less = v;
        return v;
    }
    public var swap(get, set) : (stdgo.GoInt, stdgo.GoInt) -> Void;
    function get_swap():(stdgo.GoInt, stdgo.GoInt) -> Void return (_0, _1) -> this.swap(_0, _1);
    function set_swap(v:(stdgo.GoInt, stdgo.GoInt) -> Void):(stdgo.GoInt, stdgo.GoInt) -> Void {
        this.swap = v;
        return v;
    }
    public function new(?less:(stdgo.GoInt, stdgo.GoInt) -> Bool, ?swap:(stdgo.GoInt, stdgo.GoInt) -> Void) this = new stdgo._internal.sort.Sort_T_lessSwap.T_lessSwap(less, swap);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
