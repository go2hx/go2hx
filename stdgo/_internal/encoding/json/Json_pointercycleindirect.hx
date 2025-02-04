package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_pointercycleindirect_static_extension.PointerCycleIndirect_static_extension) class PointerCycleIndirect {
    public var ptrs : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public function new(?ptrs:stdgo.Slice<stdgo.AnyInterface>) {
        if (ptrs != null) this.ptrs = ptrs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PointerCycleIndirect(ptrs);
    }
}
