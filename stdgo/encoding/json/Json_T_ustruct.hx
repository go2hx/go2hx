package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_ustruct_static_extension) abstract T_ustruct(stdgo._internal.encoding.json.Json_T_ustruct.T_ustruct) from stdgo._internal.encoding.json.Json_T_ustruct.T_ustruct to stdgo._internal.encoding.json.Json_T_ustruct.T_ustruct {
    public var m(get, set) : T_unmarshaler;
    function get_m():T_unmarshaler return this.m;
    function set_m(v:T_unmarshaler):T_unmarshaler {
        this.m = v;
        return v;
    }
    public function new(?m:T_unmarshaler) this = new stdgo._internal.encoding.json.Json_T_ustruct.T_ustruct(m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
