package stdgo._internal.encoding.gob;
@:structInit class NoInterfaceItem {
    public var i : stdgo.GoInt = 0;
    public var f : stdgo.GoFloat64 = 0;
    public function new(?i:stdgo.GoInt, ?f:stdgo.GoFloat64) {
        if (i != null) this.i = i;
        if (f != null) this.f = f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NoInterfaceItem(i, f);
    }
}
