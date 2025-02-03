package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.InvalidUnmarshalError_static_extension) abstract InvalidUnmarshalError(stdgo._internal.encoding.json.Json_InvalidUnmarshalError.InvalidUnmarshalError) from stdgo._internal.encoding.json.Json_InvalidUnmarshalError.InvalidUnmarshalError to stdgo._internal.encoding.json.Json_InvalidUnmarshalError.InvalidUnmarshalError {
    public var type(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_Type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.type = v;
        return v;
    }
    public function new(?type:stdgo._internal.reflect.Reflect_Type_.Type_) this = new stdgo._internal.encoding.json.Json_InvalidUnmarshalError.InvalidUnmarshalError(type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
