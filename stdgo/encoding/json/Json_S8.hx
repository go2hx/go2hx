package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.S8_static_extension) abstract S8(stdgo._internal.encoding.json.Json_S8.S8) from stdgo._internal.encoding.json.Json_S8.S8 to stdgo._internal.encoding.json.Json_S8.S8 {
    public var s9(get, set) : S9;
    function get_s9():S9 return this.s9;
    function set_s9(v:S9):S9 {
        this.s9 = v;
        return v;
    }
    public function new(?s9:S9) this = new stdgo._internal.encoding.json.Json_S8.S8(s9);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
