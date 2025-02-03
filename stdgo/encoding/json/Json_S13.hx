package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.S13_static_extension) abstract S13(stdgo._internal.encoding.json.Json_S13.S13) from stdgo._internal.encoding.json.Json_S13.S13 to stdgo._internal.encoding.json.Json_S13.S13 {
    public var s8(get, set) : S8;
    function get_s8():S8 return this.s8;
    function set_s8(v:S8):S8 {
        this.s8 = v;
        return v;
    }
    public function new(?s8:S8) this = new stdgo._internal.encoding.json.Json_S13.S13(s8);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
