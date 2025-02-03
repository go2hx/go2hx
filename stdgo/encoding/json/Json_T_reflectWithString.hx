package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_reflectWithString_static_extension) abstract T_reflectWithString(stdgo._internal.encoding.json.Json_T_reflectWithString.T_reflectWithString) from stdgo._internal.encoding.json.Json_T_reflectWithString.T_reflectWithString to stdgo._internal.encoding.json.Json_T_reflectWithString.T_reflectWithString {
    public var _k(get, set) : stdgo._internal.reflect.Reflect_Value.Value;
    function get__k():stdgo._internal.reflect.Reflect_Value.Value return this._k;
    function set__k(v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        this._k = v;
        return v;
    }
    public var _v(get, set) : stdgo._internal.reflect.Reflect_Value.Value;
    function get__v():stdgo._internal.reflect.Reflect_Value.Value return this._v;
    function set__v(v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        this._v = v;
        return v;
    }
    public var _ks(get, set) : String;
    function get__ks():String return this._ks;
    function set__ks(v:String):String {
        this._ks = (v : stdgo.GoString);
        return v;
    }
    public function new(?_k:stdgo._internal.reflect.Reflect_Value.Value, ?_v:stdgo._internal.reflect.Reflect_Value.Value, ?_ks:String) this = new stdgo._internal.encoding.json.Json_T_reflectWithString.T_reflectWithString(_k, _v, (_ks : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
