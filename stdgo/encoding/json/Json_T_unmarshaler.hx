package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_unmarshaler_static_extension) abstract T_unmarshaler(stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler) from stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler to stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler {
    public var t(get, set) : Bool;
    function get_t():Bool return this.t;
    function set_t(v:Bool):Bool {
        this.t = v;
        return v;
    }
    public function new(?t:Bool) this = new stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler(t);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
