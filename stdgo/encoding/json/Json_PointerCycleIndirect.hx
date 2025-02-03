package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.PointerCycleIndirect_static_extension) abstract PointerCycleIndirect(stdgo._internal.encoding.json.Json_PointerCycleIndirect.PointerCycleIndirect) from stdgo._internal.encoding.json.Json_PointerCycleIndirect.PointerCycleIndirect to stdgo._internal.encoding.json.Json_PointerCycleIndirect.PointerCycleIndirect {
    public var ptrs(get, set) : Array<stdgo.AnyInterface>;
    function get_ptrs():Array<stdgo.AnyInterface> return [for (i in this.ptrs) i];
    function set_ptrs(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this.ptrs = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?ptrs:Array<stdgo.AnyInterface>) this = new stdgo._internal.encoding.json.Json_PointerCycleIndirect.PointerCycleIndirect(([for (i in ptrs) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
