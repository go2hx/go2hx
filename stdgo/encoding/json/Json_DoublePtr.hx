package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.DoublePtr_static_extension) abstract DoublePtr(stdgo._internal.encoding.json.Json_DoublePtr.DoublePtr) from stdgo._internal.encoding.json.Json_DoublePtr.DoublePtr to stdgo._internal.encoding.json.Json_DoublePtr.DoublePtr {
    public var i(get, set) : stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>;
    function get_i():stdgo.Pointer<stdgo.Pointer<StdTypes.Int>> return this.i;
    function set_i(v:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>):stdgo.Pointer<stdgo.Pointer<StdTypes.Int>> {
        this.i = v;
        return v;
    }
    public var j(get, set) : stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>;
    function get_j():stdgo.Pointer<stdgo.Pointer<StdTypes.Int>> return this.j;
    function set_j(v:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>):stdgo.Pointer<stdgo.Pointer<StdTypes.Int>> {
        this.j = v;
        return v;
    }
    public function new(?i:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>, ?j:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>) this = new stdgo._internal.encoding.json.Json_DoublePtr.DoublePtr(i, j);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
