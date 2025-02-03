package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.LFNode_static_extension) abstract LFNode(stdgo._internal.runtime.Runtime_LFNode.LFNode) from stdgo._internal.runtime.Runtime_LFNode.LFNode to stdgo._internal.runtime.Runtime_LFNode.LFNode {
    public var next(get, set) : haxe.UInt64;
    function get_next():haxe.UInt64 return this.next;
    function set_next(v:haxe.UInt64):haxe.UInt64 {
        this.next = (v : stdgo.GoUInt64);
        return v;
    }
    public var pushcnt(get, set) : stdgo.GoUIntptr;
    function get_pushcnt():stdgo.GoUIntptr return this.pushcnt;
    function set_pushcnt(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.pushcnt = (v : stdgo.GoUIntptr);
        return v;
    }
    public function new(?next:haxe.UInt64, ?pushcnt:stdgo.GoUIntptr) this = new stdgo._internal.runtime.Runtime_LFNode.LFNode((next : stdgo.GoUInt64), (pushcnt : stdgo.GoUIntptr));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
