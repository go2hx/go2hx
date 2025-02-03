package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.W_static_extension) abstract W(stdgo._internal.encoding.json.Json_W.W) from stdgo._internal.encoding.json.Json_W.W to stdgo._internal.encoding.json.Json_W.W {
    public var s(get, set) : SS;
    function get_s():SS return this.s;
    function set_s(v:SS):SS {
        this.s = v;
        return v;
    }
    public function new(?s:SS) this = new stdgo._internal.encoding.json.Json_W.W(s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
