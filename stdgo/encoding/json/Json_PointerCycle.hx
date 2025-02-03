package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.PointerCycle_static_extension) abstract PointerCycle(stdgo._internal.encoding.json.Json_PointerCycle.PointerCycle) from stdgo._internal.encoding.json.Json_PointerCycle.PointerCycle to stdgo._internal.encoding.json.Json_PointerCycle.PointerCycle {
    public var ptr(get, set) : PointerCycle;
    function get_ptr():PointerCycle return this.ptr;
    function set_ptr(v:PointerCycle):PointerCycle {
        this.ptr = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_PointerCycle.PointerCycle>);
        return v;
    }
    public function new(?ptr:PointerCycle) this = new stdgo._internal.encoding.json.Json_PointerCycle.PointerCycle((ptr : stdgo.Ref<stdgo._internal.encoding.json.Json_PointerCycle.PointerCycle>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
