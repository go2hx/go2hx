package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_BugY_static_extension.BugY_static_extension) class BugY {
    @:embedded
    public var bugA : stdgo._internal.encoding.json.Json_BugA.BugA = ({} : stdgo._internal.encoding.json.Json_BugA.BugA);
    @:embedded
    public var bugD : stdgo._internal.encoding.json.Json_BugD.BugD = ({} : stdgo._internal.encoding.json.Json_BugD.BugD);
    public function new(?bugA:stdgo._internal.encoding.json.Json_BugA.BugA, ?bugD:stdgo._internal.encoding.json.Json_BugD.BugD) {
        if (bugA != null) this.bugA = bugA;
        if (bugD != null) this.bugD = bugD;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugY(bugA, bugD);
    }
}