package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.S12_static_extension) abstract S12(stdgo._internal.encoding.json.Json_S12.S12) from stdgo._internal.encoding.json.Json_S12.S12 to stdgo._internal.encoding.json.Json_S12.S12 {
    public var s6(get, set) : S6;
    function get_s6():S6 return this.s6;
    function set_s6(v:S6):S6 {
        this.s6 = v;
        return v;
    }
    public function new(?s6:S6) this = new stdgo._internal.encoding.json.Json_S12.S12(s6);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
