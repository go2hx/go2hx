package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.S6_static_extension) abstract S6(stdgo._internal.encoding.json.Json_S6.S6) from stdgo._internal.encoding.json.Json_S6.S6 to stdgo._internal.encoding.json.Json_S6.S6 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_S6.S6((x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
