package stdgo._internal.sort;
@:structInit class T_lessSwap {
    public var less : (stdgo.GoInt, stdgo.GoInt) -> Bool = null;
    public var swap : (stdgo.GoInt, stdgo.GoInt) -> Void = null;
    public function new(?less:(stdgo.GoInt, stdgo.GoInt) -> Bool, ?swap:(stdgo.GoInt, stdgo.GoInt) -> Void) {
        if (less != null) this.less = less;
        if (swap != null) this.swap = swap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lessSwap(less, swap);
    }
}