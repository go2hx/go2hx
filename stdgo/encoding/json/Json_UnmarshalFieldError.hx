package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.UnmarshalFieldError_static_extension) abstract UnmarshalFieldError(stdgo._internal.encoding.json.Json_UnmarshalFieldError.UnmarshalFieldError) from stdgo._internal.encoding.json.Json_UnmarshalFieldError.UnmarshalFieldError to stdgo._internal.encoding.json.Json_UnmarshalFieldError.UnmarshalFieldError {
    public var key(get, set) : String;
    function get_key():String return this.key;
    function set_key(v:String):String {
        this.key = (v : stdgo.GoString);
        return v;
    }
    public var type(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_Type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.type = v;
        return v;
    }
    public var field(get, set) : stdgo._internal.reflect.Reflect_StructField.StructField;
    function get_field():stdgo._internal.reflect.Reflect_StructField.StructField return this.field;
    function set_field(v:stdgo._internal.reflect.Reflect_StructField.StructField):stdgo._internal.reflect.Reflect_StructField.StructField {
        this.field = v;
        return v;
    }
    public function new(?key:String, ?type:stdgo._internal.reflect.Reflect_Type_.Type_, ?field:stdgo._internal.reflect.Reflect_StructField.StructField) this = new stdgo._internal.encoding.json.Json_UnmarshalFieldError.UnmarshalFieldError((key : stdgo.GoString), type, field);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
