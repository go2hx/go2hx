package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.P_static_extension) abstract P(stdgo._internal.encoding.json.Json_P.P) from stdgo._internal.encoding.json.Json_P.P to stdgo._internal.encoding.json.Json_P.P {
    public var pP(get, set) : PP;
    function get_pP():PP return this.pP;
    function set_pP(v:PP):PP {
        this.pP = v;
        return v;
    }
    public function new(?pP:PP) this = new stdgo._internal.encoding.json.Json_P.P(pP);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
