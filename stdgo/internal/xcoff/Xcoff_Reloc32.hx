package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.Reloc32_static_extension) abstract Reloc32(stdgo._internal.internal.xcoff.Xcoff_Reloc32.Reloc32) from stdgo._internal.internal.xcoff.Xcoff_Reloc32.Reloc32 to stdgo._internal.internal.xcoff.Xcoff_Reloc32.Reloc32 {
    public var rvaddr(get, set) : std.UInt;
    function get_rvaddr():std.UInt return this.rvaddr;
    function set_rvaddr(v:std.UInt):std.UInt {
        this.rvaddr = (v : stdgo.GoUInt32);
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
    public function new(?rvaddr:std.UInt, ?rsymndx:std.UInt, ?rsize:std.UInt, ?rtype:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_Reloc32.Reloc32((rvaddr : stdgo.GoUInt32), (rsymndx : stdgo.GoUInt32), (rsize : stdgo.GoUInt8), (rtype : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
