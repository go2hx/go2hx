package stdgo._internal.encoding.json;
@:structInit class PointerCycleIndirect {
    public var ptrs : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public function new(?ptrs:stdgo.Slice<stdgo.AnyInterface>) {
        if (ptrs != null) this.ptrs = ptrs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PointerCycleIndirect(ptrs);
    }
}
