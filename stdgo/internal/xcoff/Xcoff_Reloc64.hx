package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.Reloc64_static_extension) abstract Reloc64(stdgo._internal.internal.xcoff.Xcoff_Reloc64.Reloc64) from stdgo._internal.internal.xcoff.Xcoff_Reloc64.Reloc64 to stdgo._internal.internal.xcoff.Xcoff_Reloc64.Reloc64 {
    public var rvaddr(get, set) : haxe.UInt64;
    function get_rvaddr():haxe.UInt64 return this.rvaddr;
    function set_rvaddr(v:haxe.UInt64):haxe.UInt64 {
        this.rvaddr = (v : stdgo.GoUInt64);
        return v;
    }
    public var rsymndx(get, set) : std.UInt;
    function get_rsymndx():std.UInt return this.rsymndx;
    function set_rsymndx(v:std.UInt):std.UInt {
        this.rsymndx = (v : stdgo.GoUInt32);
        return v;
    }
    public var rsize(get, set) : std.UInt;
    function get_rsize():std.UInt return this.rsize;
    function set_rsize(v:std.UInt):std.UInt {
        this.rsize = (v : stdgo.GoUInt8);
        return v;
    }
    public var rtype(get, set) : std.UInt;
    function get_rtype():std.UInt return this.rtype;
    function set_rtype(v:std.UInt):std.UInt {
        this.rtype = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?rvaddr:haxe.UInt64, ?rsymndx:std.UInt, ?rsize:std.UInt, ?rtype:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_Reloc64.Reloc64((rvaddr : stdgo.GoUInt64), (rsymndx : stdgo.GoUInt32), (rsize : stdgo.GoUInt8), (rtype : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
