package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_percentSlashTag_static_extension) abstract T_percentSlashTag(stdgo._internal.encoding.json.Json_T_percentSlashTag.T_percentSlashTag) from stdgo._internal.encoding.json.Json_T_percentSlashTag.T_percentSlashTag to stdgo._internal.encoding.json.Json_T_percentSlashTag.T_percentSlashTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = (v : stdgo.GoString);
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_T_percentSlashTag.T_percentSlashTag((v : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
