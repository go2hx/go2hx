package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_decodeThis_static_extension) abstract T_decodeThis(stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis) from stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis to stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis {
    public var _v(get, set) : stdgo.AnyInterface;
    function get__v():stdgo.AnyInterface return this._v;
    function set__v(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._v = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_v:stdgo.AnyInterface) this = new stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis((_v : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
