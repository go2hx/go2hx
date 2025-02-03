package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_badFormatTag_static_extension) abstract T_badFormatTag(stdgo._internal.encoding.json.Json_T_badFormatTag.T_badFormatTag) from stdgo._internal.encoding.json.Json_T_badFormatTag.T_badFormatTag to stdgo._internal.encoding.json.Json_T_badFormatTag.T_badFormatTag {
    public var y(get, set) : String;
    function get_y():String return this.y;
    function set_y(v:String):String {
        this.y = (v : stdgo.GoString);
        return v;
    }
    public function new(?y:String) this = new stdgo._internal.encoding.json.Json_T_badFormatTag.T_badFormatTag((y : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
