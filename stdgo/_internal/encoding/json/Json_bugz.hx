package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_bugz_static_extension.BugZ_static_extension) class BugZ {
    @:embedded
    public var bugA : stdgo._internal.encoding.json.Json_buga.BugA = ({} : stdgo._internal.encoding.json.Json_buga.BugA);
    @:embedded
    public var bugC : stdgo._internal.encoding.json.Json_bugc.BugC = ({} : stdgo._internal.encoding.json.Json_bugc.BugC);
    @:embedded
    public var bugY : stdgo._internal.encoding.json.Json_bugy.BugY = ({} : stdgo._internal.encoding.json.Json_bugy.BugY);
    public function new(?bugA:stdgo._internal.encoding.json.Json_buga.BugA, ?bugC:stdgo._internal.encoding.json.Json_bugc.BugC, ?bugY:stdgo._internal.encoding.json.Json_bugy.BugY) {
        if (bugA != null) this.bugA = bugA;
        if (bugC != null) this.bugC = bugC;
        if (bugY != null) this.bugY = bugY;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugZ(bugA, bugC, bugY);
    }
}
