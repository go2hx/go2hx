package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.BugD_static_extension) abstract BugD(stdgo._internal.encoding.json.Json_BugD.BugD) from stdgo._internal.encoding.json.Json_BugD.BugD to stdgo._internal.encoding.json.Json_BugD.BugD {
    public var xXX(get, set) : String;
    function get_xXX():String return this.xXX;
    function set_xXX(v:String):String {
        this.xXX = (v : stdgo.GoString);
        return v;
    }
    public function new(?xXX:String) this = new stdgo._internal.encoding.json.Json_BugD.BugD((xXX : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
