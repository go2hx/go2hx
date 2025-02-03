package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_unicodeTag_static_extension) abstract T_unicodeTag(stdgo._internal.encoding.json.Json_T_unicodeTag.T_unicodeTag) from stdgo._internal.encoding.json.Json_T_unicodeTag.T_unicodeTag to stdgo._internal.encoding.json.Json_T_unicodeTag.T_unicodeTag {
    public var w(get, set) : String;
    function get_w():String return this.w;
    function set_w(v:String):String {
        this.w = (v : stdgo.GoString);
        return v;
    }
    public function new(?w:String) this = new stdgo._internal.encoding.json.Json_T_unicodeTag.T_unicodeTag((w : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
