package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.BitsMismatch_static_extension) abstract BitsMismatch(stdgo._internal.runtime.Runtime_BitsMismatch.BitsMismatch) from stdgo._internal.runtime.Runtime_BitsMismatch.BitsMismatch to stdgo._internal.runtime.Runtime_BitsMismatch.BitsMismatch {
    public var base(get, set) : stdgo.GoUIntptr;
    function get_base():stdgo.GoUIntptr return this.base;
    function set_base(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.base = (v : stdgo.GoUIntptr);
        return v;
    }
    public var got(get, set) : haxe.UInt64;
    function get_got():haxe.UInt64 return this.got;
    function set_got(v:haxe.UInt64):haxe.UInt64 {
        this.got = (v : stdgo.GoUInt64);
        return v;
    }
    public var want(get, set) : haxe.UInt64;
    function get_want():haxe.UInt64 return this.want;
    function set_want(v:haxe.UInt64):haxe.UInt64 {
        this.want = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?base:stdgo.GoUIntptr, ?got:haxe.UInt64, ?want:haxe.UInt64) this = new stdgo._internal.runtime.Runtime_BitsMismatch.BitsMismatch((base : stdgo.GoUIntptr), (got : stdgo.GoUInt64), (want : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
