package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_misnamedTag_static_extension) abstract T_misnamedTag(stdgo._internal.encoding.json.Json_T_misnamedTag.T_misnamedTag) from stdgo._internal.encoding.json.Json_T_misnamedTag.T_misnamedTag to stdgo._internal.encoding.json.Json_T_misnamedTag.T_misnamedTag {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = (v : stdgo.GoString);
        return v;
    }
    public function new(?x:String) this = new stdgo._internal.encoding.json.Json_T_misnamedTag.T_misnamedTag((x : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
