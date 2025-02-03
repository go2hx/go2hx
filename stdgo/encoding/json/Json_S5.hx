package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.S5_static_extension) abstract S5(stdgo._internal.encoding.json.Json_S5.S5) from stdgo._internal.encoding.json.Json_S5.S5 to stdgo._internal.encoding.json.Json_S5.S5 {
    public var s6(get, set) : S6;
    function get_s6():S6 return this.s6;
    function set_s6(v:S6):S6 {
        this.s6 = v;
        return v;
    }
    public var s7(get, set) : S7;
    function get_s7():S7 return this.s7;
    function set_s7(v:S7):S7 {
        this.s7 = v;
        return v;
    }
    public var s8(get, set) : S8;
    function get_s8():S8 return this.s8;
    function set_s8(v:S8):S8 {
        this.s8 = v;
        return v;
    }
    public function new(?s6:S6, ?s7:S7, ?s8:S8) this = new stdgo._internal.encoding.json.Json_S5.S5(s6, s7, s8);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
