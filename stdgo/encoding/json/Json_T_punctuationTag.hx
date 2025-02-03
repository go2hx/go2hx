package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_punctuationTag_static_extension) abstract T_punctuationTag(stdgo._internal.encoding.json.Json_T_punctuationTag.T_punctuationTag) from stdgo._internal.encoding.json.Json_T_punctuationTag.T_punctuationTag to stdgo._internal.encoding.json.Json_T_punctuationTag.T_punctuationTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = (v : stdgo.GoString);
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_T_punctuationTag.T_punctuationTag((v : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
