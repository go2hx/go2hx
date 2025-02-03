package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.SamePointerNoCycle_static_extension) abstract SamePointerNoCycle(stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle) from stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle to stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle {
    public var ptr1(get, set) : SamePointerNoCycle;
    function get_ptr1():SamePointerNoCycle return this.ptr1;
    function set_ptr1(v:SamePointerNoCycle):SamePointerNoCycle {
        this.ptr1 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle>);
        return v;
    }
    public var ptr2(get, set) : SamePointerNoCycle;
    function get_ptr2():SamePointerNoCycle return this.ptr2;
    function set_ptr2(v:SamePointerNoCycle):SamePointerNoCycle {
        this.ptr2 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle>);
        return v;
    }
    public function new(?ptr1:SamePointerNoCycle, ?ptr2:SamePointerNoCycle) this = new stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle((ptr1 : stdgo.Ref<stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle>), (ptr2 : stdgo.Ref<stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
