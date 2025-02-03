package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.BugY_static_extension) abstract BugY(stdgo._internal.encoding.json.Json_BugY.BugY) from stdgo._internal.encoding.json.Json_BugY.BugY to stdgo._internal.encoding.json.Json_BugY.BugY {
    public var bugA(get, set) : BugA;
    function get_bugA():BugA return this.bugA;
    function set_bugA(v:BugA):BugA {
        this.bugA = v;
        return v;
    }
    public var bugD(get, set) : BugD;
    function get_bugD():BugD return this.bugD;
    function set_bugD(v:BugD):BugD {
        this.bugD = v;
        return v;
    }
    public function new(?bugA:BugA, ?bugD:BugD) this = new stdgo._internal.encoding.json.Json_BugY.BugY(bugA, bugD);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
