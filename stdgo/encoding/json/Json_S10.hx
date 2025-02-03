package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.S10_static_extension) abstract S10(stdgo._internal.encoding.json.Json_S10.S10) from stdgo._internal.encoding.json.Json_S10.S10 to stdgo._internal.encoding.json.Json_S10.S10 {
    public var s11(get, set) : S11;
    function get_s11():S11 return this.s11;
    function set_s11(v:S11):S11 {
        this.s11 = v;
        return v;
    }
    public var s12(get, set) : S12;
    function get_s12():S12 return this.s12;
    function set_s12(v:S12):S12 {
        this.s12 = v;
        return v;
    }
    public var s13(get, set) : S13;
    function get_s13():S13 return this.s13;
    function set_s13(v:S13):S13 {
        this.s13 = v;
        return v;
    }
    public function new(?s11:S11, ?s12:S12, ?s13:S13) this = new stdgo._internal.encoding.json.Json_S10.S10(s11, s12, s13);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
