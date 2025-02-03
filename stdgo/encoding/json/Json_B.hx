package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.B_static_extension) abstract B(stdgo._internal.encoding.json.Json_B.B) from stdgo._internal.encoding.json.Json_B.B to stdgo._internal.encoding.json.Json_B.B {
    public var b(get, set) : Bool;
    function get_b():Bool return this.b;
    function set_b(v:Bool):Bool {
        this.b = v;
        return v;
    }
    public function new(?b:Bool) this = new stdgo._internal.encoding.json.Json_B.B(b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
