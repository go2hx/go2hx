package stdgo._internal.runtime;
@:structInit class LFNode {
    public var next : stdgo.GoUInt64 = 0;
    public var pushcnt : stdgo.GoUIntptr = 0;
    public function new(?next:stdgo.GoUInt64, ?pushcnt:stdgo.GoUIntptr) {
        if (next != null) this.next = next;
        if (pushcnt != null) this.pushcnt = pushcnt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LFNode(next, pushcnt);
    }
}