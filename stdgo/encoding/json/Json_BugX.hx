package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.BugX_static_extension) abstract BugX(stdgo._internal.encoding.json.Json_BugX.BugX) from stdgo._internal.encoding.json.Json_BugX.BugX to stdgo._internal.encoding.json.Json_BugX.BugX {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var bugA(get, set) : BugA;
    function get_bugA():BugA return this.bugA;
    function set_bugA(v:BugA):BugA {
        this.bugA = v;
        return v;
    }
    public var bugB(get, set) : BugB;
    function get_bugB():BugB return this.bugB;
    function set_bugB(v:BugB):BugB {
        this.bugB = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?bugA:BugA, ?bugB:BugB) this = new stdgo._internal.encoding.json.Json_BugX.BugX((a : stdgo.GoInt), bugA, bugB);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
