package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_emptyTag_static_extension) abstract T_emptyTag(stdgo._internal.encoding.json.Json_T_emptyTag.T_emptyTag) from stdgo._internal.encoding.json.Json_T_emptyTag.T_emptyTag to stdgo._internal.encoding.json.Json_T_emptyTag.T_emptyTag {
    public var w(get, set) : String;
    function get_w():String return this.w;
    function set_w(v:String):String {
        this.w = (v : stdgo.GoString);
        return v;
    }
    public function new(?w:String) this = new stdgo._internal.encoding.json.Json_T_emptyTag.T_emptyTag((w : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
