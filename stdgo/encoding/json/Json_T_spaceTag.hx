package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_spaceTag_static_extension) abstract T_spaceTag(stdgo._internal.encoding.json.Json_T_spaceTag.T_spaceTag) from stdgo._internal.encoding.json.Json_T_spaceTag.T_spaceTag to stdgo._internal.encoding.json.Json_T_spaceTag.T_spaceTag {
    public var q(get, set) : String;
    function get_q():String return this.q;
    function set_q(v:String):String {
        this.q = (v : stdgo.GoString);
        return v;
    }
    public function new(?q:String) this = new stdgo._internal.encoding.json.Json_T_spaceTag.T_spaceTag((q : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
