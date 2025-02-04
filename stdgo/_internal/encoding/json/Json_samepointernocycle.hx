package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_samepointernocycle_static_extension.SamePointerNoCycle_static_extension) class SamePointerNoCycle {
    public var ptr1 : stdgo.Ref<stdgo._internal.encoding.json.Json_samepointernocycle.SamePointerNoCycle> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_samepointernocycle.SamePointerNoCycle>);
    public var ptr2 : stdgo.Ref<stdgo._internal.encoding.json.Json_samepointernocycle.SamePointerNoCycle> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_samepointernocycle.SamePointerNoCycle>);
    public function new(?ptr1:stdgo.Ref<stdgo._internal.encoding.json.Json_samepointernocycle.SamePointerNoCycle>, ?ptr2:stdgo.Ref<stdgo._internal.encoding.json.Json_samepointernocycle.SamePointerNoCycle>) {
        if (ptr1 != null) this.ptr1 = ptr1;
        if (ptr2 != null) this.ptr2 = ptr2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SamePointerNoCycle(ptr1, ptr2);
    }
}
