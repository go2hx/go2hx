package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.BugA_static_extension) abstract BugA(stdgo._internal.encoding.json.Json_BugA.BugA) from stdgo._internal.encoding.json.Json_BugA.BugA to stdgo._internal.encoding.json.Json_BugA.BugA {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.encoding.json.Json_BugA.BugA((s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
