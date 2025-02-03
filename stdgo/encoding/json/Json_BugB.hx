package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.BugB_static_extension) abstract BugB(stdgo._internal.encoding.json.Json_BugB.BugB) from stdgo._internal.encoding.json.Json_BugB.BugB to stdgo._internal.encoding.json.Json_BugB.BugB {
    public var bugA(get, set) : BugA;
    function get_bugA():BugA return this.bugA;
    function set_bugA(v:BugA):BugA {
        this.bugA = v;
        return v;
    }
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public function new(?bugA:BugA, ?s:String) this = new stdgo._internal.encoding.json.Json_BugB.BugB(bugA, (s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
