package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.SectionHeader64_static_extension) abstract SectionHeader64(stdgo._internal.internal.xcoff.Xcoff_SectionHeader64.SectionHeader64) from stdgo._internal.internal.xcoff.Xcoff_SectionHeader64.SectionHeader64 to stdgo._internal.internal.xcoff.Xcoff_SectionHeader64.SectionHeader64 {
    public var sname(get, set) : haxe.ds.Vector<std.UInt>;
    function get_sname():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.sname) i]);
    function set_sname(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.sname = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var spaddr(get, set) : haxe.UInt64;
    function get_spaddr():haxe.UInt64 return this.spaddr;
    function set_spaddr(v:haxe.UInt64):haxe.UInt64 {
        this.spaddr = (v : stdgo.GoUInt64);
        return v;
    }
    public var svaddr(get, set) : haxe.UInt64;
    function get_svaddr():haxe.UInt64 return this.svaddr;
    function set_svaddr(v:haxe.UInt64):haxe.UInt64 {
        this.svaddr = (v : stdgo.GoUInt64);
        return v;
    }
    public var ssize(get, set) : haxe.UInt64;
    function get_ssize():haxe.UInt64 return this.ssize;
    function set_ssize(v:haxe.UInt64):haxe.UInt64 {
        this.ssize = (v : stdgo.GoUInt64);
        return v;
    }
    public var sscnptr(get, set) : haxe.UInt64;
    function get_sscnptr():haxe.UInt64 return this.sscnptr;
    function set_sscnptr(v:haxe.UInt64):haxe.UInt64 {
        this.sscnptr = (v : stdgo.GoUInt64);
        return v;
    }
    public var srelptr(get, set) : haxe.UInt64;
    function get_srelptr():haxe.UInt64 return this.srelptr;
    function set_srelptr(v:haxe.UInt64):haxe.UInt64 {
        this.srelptr = (v : stdgo.GoUInt64);
        return v;
    }
    public var slnnoptr(get, set) : haxe.UInt64;
    function get_slnnoptr():haxe.UInt64 return this.slnnoptr;
    function set_slnnoptr(v:haxe.UInt64):haxe.UInt64 {
        this.slnnoptr = (v : stdgo.GoUInt64);
        return v;
    }
    public var snreloc(get, set) : std.UInt;
    function get_snreloc():std.UInt return this.snreloc;
    function set_snreloc(v:std.UInt):std.UInt {
        this.snreloc = (v : stdgo.GoUInt32);
        return v;
    }
    public var snlnno(get, set) : std.UInt;
    function get_snlnno():std.UInt return this.snlnno;
    function set_snlnno(v:std.UInt):std.UInt {
        this.snlnno = (v : stdgo.GoUInt32);
        return v;
    }
    public var sflags(get, set) : std.UInt;
    function get_sflags():std.UInt return this.sflags;
    function set_sflags(v:std.UInt):std.UInt {
        this.sflags = (v : stdgo.GoUInt32);
        return v;
    }
    public var spad(get, set) : std.UInt;
    function get_spad():std.UInt return this.spad;
    function set_spad(v:std.UInt):std.UInt {
        this.spad = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?sname:haxe.ds.Vector<std.UInt>, ?spaddr:haxe.UInt64, ?svaddr:haxe.UInt64, ?ssize:haxe.UInt64, ?sscnptr:haxe.UInt64, ?srelptr:haxe.UInt64, ?slnnoptr:haxe.UInt64, ?snreloc:std.UInt, ?snlnno:std.UInt, ?sflags:std.UInt, ?spad:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_SectionHeader64.SectionHeader64(
([for (i in sname) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(spaddr : stdgo.GoUInt64),
(svaddr : stdgo.GoUInt64),
(ssize : stdgo.GoUInt64),
(sscnptr : stdgo.GoUInt64),
(srelptr : stdgo.GoUInt64),
(slnnoptr : stdgo.GoUInt64),
(snreloc : stdgo.GoUInt32),
(snlnno : stdgo.GoUInt32),
(sflags : stdgo.GoUInt32),
(spad : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
