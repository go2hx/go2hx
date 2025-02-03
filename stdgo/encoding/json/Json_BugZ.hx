package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.BugZ_static_extension) abstract BugZ(stdgo._internal.encoding.json.Json_BugZ.BugZ) from stdgo._internal.encoding.json.Json_BugZ.BugZ to stdgo._internal.encoding.json.Json_BugZ.BugZ {
    public var bugA(get, set) : BugA;
    function get_bugA():BugA return this.bugA;
    function set_bugA(v:BugA):BugA {
        this.bugA = v;
        return v;
    }
    public var bugC(get, set) : BugC;
    function get_bugC():BugC return this.bugC;
    function set_bugC(v:BugC):BugC {
        this.bugC = v;
        return v;
    }
    public var bugY(get, set) : BugY;
    function get_bugY():BugY return this.bugY;
    function set_bugY(v:BugY):BugY {
        this.bugY = v;
        return v;
    }
    public function new(?bugA:BugA, ?bugC:BugC, ?bugY:BugY) this = new stdgo._internal.encoding.json.Json_BugZ.BugZ(bugA, bugC, bugY);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
