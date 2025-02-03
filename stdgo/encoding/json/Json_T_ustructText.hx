package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_ustructText_static_extension) abstract T_ustructText(stdgo._internal.encoding.json.Json_T_ustructText.T_ustructText) from stdgo._internal.encoding.json.Json_T_ustructText.T_ustructText to stdgo._internal.encoding.json.Json_T_ustructText.T_ustructText {
    public var m(get, set) : T_unmarshalerText;
    function get_m():T_unmarshalerText return this.m;
    function set_m(v:T_unmarshalerText):T_unmarshalerText {
        this.m = v;
        return v;
    }
    public function new(?m:T_unmarshalerText) this = new stdgo._internal.encoding.json.Json_T_ustructText.T_ustructText(m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
