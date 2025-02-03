package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_basicLatin4xTag_static_extension) abstract T_basicLatin4xTag(stdgo._internal.encoding.json.Json_T_basicLatin4xTag.T_basicLatin4xTag) from stdgo._internal.encoding.json.Json_T_basicLatin4xTag.T_basicLatin4xTag to stdgo._internal.encoding.json.Json_T_basicLatin4xTag.T_basicLatin4xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = (v : stdgo.GoString);
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_T_basicLatin4xTag.T_basicLatin4xTag((v : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
