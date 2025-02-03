package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.UnsupportedValueError_static_extension) abstract UnsupportedValueError(stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError) from stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError to stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError {
    public var value(get, set) : stdgo._internal.reflect.Reflect_Value.Value;
    function get_value():stdgo._internal.reflect.Reflect_Value.Value return this.value;
    function set_value(v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        this.value = v;
        return v;
    }
    public var str(get, set) : String;
    function get_str():String return this.str;
    function set_str(v:String):String {
        this.str = (v : stdgo.GoString);
        return v;
    }
    public function new(?value:stdgo._internal.reflect.Reflect_Value.Value, ?str:String) this = new stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError(value, (str : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
