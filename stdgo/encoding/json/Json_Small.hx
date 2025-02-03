package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.Small_static_extension) abstract Small(stdgo._internal.encoding.json.Json_Small.Small) from stdgo._internal.encoding.json.Json_Small.Small to stdgo._internal.encoding.json.Json_Small.Small {
    public var tag(get, set) : String;
    function get_tag():String return this.tag;
    function set_tag(v:String):String {
        this.tag = (v : stdgo.GoString);
        return v;
    }
    public function new(?tag:String) this = new stdgo._internal.encoding.json.Json_Small.Small((tag : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
