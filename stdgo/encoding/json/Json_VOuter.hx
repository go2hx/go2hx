package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.VOuter_static_extension) abstract VOuter(stdgo._internal.encoding.json.Json_VOuter.VOuter) from stdgo._internal.encoding.json.Json_VOuter.VOuter to stdgo._internal.encoding.json.Json_VOuter.VOuter {
    public var v(get, set) : V;
    function get_v():V return this.v;
    function set_v(v:V):V {
        this.v = v;
        return v;
    }
    public function new(?v:V) this = new stdgo._internal.encoding.json.Json_VOuter.VOuter(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
