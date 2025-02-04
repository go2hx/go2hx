package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_bugb_static_extension.BugB_static_extension) class BugB {
    @:embedded
    public var bugA : stdgo._internal.encoding.json.Json_buga.BugA = ({} : stdgo._internal.encoding.json.Json_buga.BugA);
    public var s : stdgo.GoString = "";
    public function new(?bugA:stdgo._internal.encoding.json.Json_buga.BugA, ?s:stdgo.GoString) {
        if (bugA != null) this.bugA = bugA;
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugB(bugA, s);
    }
}
