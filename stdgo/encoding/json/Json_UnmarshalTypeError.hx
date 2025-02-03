package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.UnmarshalTypeError_static_extension) abstract UnmarshalTypeError(stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError) from stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError to stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError {
    public var value(get, set) : String;
    function get_value():String return this.value;
    function set_value(v:String):String {
        this.value = (v : stdgo.GoString);
        return v;
    }
    public var type(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_Type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.type = v;
        return v;
    }
    public var offset(get, set) : haxe.Int64;
    function get_offset():haxe.Int64 return this.offset;
    function set_offset(v:haxe.Int64):haxe.Int64 {
        this.offset = (v : stdgo.GoInt64);
        return v;
    }
    public var struct_(get, set) : String;
    function get_struct_():String return this.struct_;
    function set_struct_(v:String):String {
        this.struct_ = (v : stdgo.GoString);
        return v;
    }
    public var field(get, set) : String;
    function get_field():String return this.field;
    function set_field(v:String):String {
        this.field = (v : stdgo.GoString);
        return v;
    }
    public function new(?value:String, ?type:stdgo._internal.reflect.Reflect_Type_.Type_, ?offset:haxe.Int64, ?struct_:String, ?field:String) this = new stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError((value : stdgo.GoString), type, (offset : stdgo.GoInt64), (struct_ : stdgo.GoString), (field : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
