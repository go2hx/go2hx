package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_pointercycle_static_extension.PointerCycle_static_extension) class PointerCycle {
    public var ptr : stdgo.Ref<stdgo._internal.encoding.json.Json_pointercycle.PointerCycle> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_pointercycle.PointerCycle>);
    public function new(?ptr:stdgo.Ref<stdgo._internal.encoding.json.Json_pointercycle.PointerCycle>) {
        if (ptr != null) this.ptr = ptr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PointerCycle(ptr);
    }
}
