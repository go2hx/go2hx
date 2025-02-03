package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_badCodeTag_static_extension) abstract T_badCodeTag(stdgo._internal.encoding.json.Json_T_badCodeTag.T_badCodeTag) from stdgo._internal.encoding.json.Json_T_badCodeTag.T_badCodeTag to stdgo._internal.encoding.json.Json_T_badCodeTag.T_badCodeTag {
    public var z(get, set) : String;
    function get_z():String return this.z;
    function set_z(v:String):String {
        this.z = (v : stdgo.GoString);
        return v;
    }
    public function new(?z:String) this = new stdgo._internal.encoding.json.Json_T_badCodeTag.T_badCodeTag((z : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
