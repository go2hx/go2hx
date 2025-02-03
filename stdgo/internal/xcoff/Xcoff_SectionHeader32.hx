package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.SectionHeader32_static_extension) abstract SectionHeader32(stdgo._internal.internal.xcoff.Xcoff_SectionHeader32.SectionHeader32) from stdgo._internal.internal.xcoff.Xcoff_SectionHeader32.SectionHeader32 to stdgo._internal.internal.xcoff.Xcoff_SectionHeader32.SectionHeader32 {
    public var sname(get, set) : haxe.ds.Vector<std.UInt>;
    function get_sname():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.sname) i]);
    function set_sname(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.sname = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var spaddr(get, set) : std.UInt;
    function get_spaddr():std.UInt return this.spaddr;
    function set_spaddr(v:std.UInt):std.UInt {
        this.spaddr = (v : stdgo.GoUInt32);
        return v;
    }
    public var svaddr(get, set) : std.UInt;
    function get_svaddr():std.UInt return this.svaddr;
    function set_svaddr(v:std.UInt):std.UInt {
        this.svaddr = (v : stdgo.GoUInt32);
        return v;
    }
    public var ssize(get, set) : std.UInt;
    function get_ssize():std.UInt return this.ssize;
    function set_ssize(v:std.UInt):std.UInt {
        this.ssize = (v : stdgo.GoUInt32);
        return v;
    }
    public var sscnptr(get, set) : std.UInt;
    function get_sscnptr():std.UInt return this.sscnptr;
    function set_sscnptr(v:std.UInt):std.UInt {
        this.sscnptr = (v : stdgo.GoUInt32);
        return v;
    }
    public var srelptr(get, set) : std.UInt;
    function get_srelptr():std.UInt return this.srelptr;
    function set_srelptr(v:std.UInt):std.UInt {
        this.srelptr = (v : stdgo.GoUInt32);
        return v;
    }
    public var slnnoptr(get, set) : std.UInt;
    function get_slnnoptr():std.UInt return this.slnnoptr;
    function set_slnnoptr(v:std.UInt):std.UInt {
        this.slnnoptr = (v : stdgo.GoUInt32);
        return v;
    }
    public var snreloc(get, set) : std.UInt;
    function get_snreloc():std.UInt return this.snreloc;
    function set_snreloc(v:std.UInt):std.UInt {
        this.snreloc = (v : stdgo.GoUInt16);
        return v;
    }
    public var snlnno(get, set) : std.UInt;
    function get_snlnno():std.UInt return this.snlnno;
    function set_snlnno(v:std.UInt):std.UInt {
        this.snlnno = (v : stdgo.GoUInt16);
        return v;
    }
    public var sflags(get, set) : std.UInt;
    function get_sflags():std.UInt return this.sflags;
    function set_sflags(v:std.UInt):std.UInt {
        this.sflags = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?sname:haxe.ds.Vector<std.UInt>, ?spaddr:std.UInt, ?svaddr:std.UInt, ?ssize:std.UInt, ?sscnptr:std.UInt, ?srelptr:std.UInt, ?slnnoptr:std.UInt, ?snreloc:std.UInt, ?snlnno:std.UInt, ?sflags:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_SectionHeader32.SectionHeader32(([for (i in sname) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (spaddr : stdgo.GoUInt32), (svaddr : stdgo.GoUInt32), (ssize : stdgo.GoUInt32), (sscnptr : stdgo.GoUInt32), (srelptr : stdgo.GoUInt32), (slnnoptr : stdgo.GoUInt32), (snreloc : stdgo.GoUInt16), (snlnno : stdgo.GoUInt16), (sflags : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
