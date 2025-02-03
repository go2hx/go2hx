package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.FileHeader32_static_extension) abstract FileHeader32(stdgo._internal.internal.xcoff.Xcoff_FileHeader32.FileHeader32) from stdgo._internal.internal.xcoff.Xcoff_FileHeader32.FileHeader32 to stdgo._internal.internal.xcoff.Xcoff_FileHeader32.FileHeader32 {
    public var fmagic(get, set) : std.UInt;
    function get_fmagic():std.UInt return this.fmagic;
    function set_fmagic(v:std.UInt):std.UInt {
        this.fmagic = (v : stdgo.GoUInt16);
        return v;
    }
    public var fnscns(get, set) : std.UInt;
    function get_fnscns():std.UInt return this.fnscns;
    function set_fnscns(v:std.UInt):std.UInt {
        this.fnscns = (v : stdgo.GoUInt16);
        return v;
    }
    public var ftimedat(get, set) : std.UInt;
    function get_ftimedat():std.UInt return this.ftimedat;
    function set_ftimedat(v:std.UInt):std.UInt {
        this.ftimedat = (v : stdgo.GoUInt32);
        return v;
    }
    public var fsymptr(get, set) : std.UInt;
    function get_fsymptr():std.UInt return this.fsymptr;
    function set_fsymptr(v:std.UInt):std.UInt {
        this.fsymptr = (v : stdgo.GoUInt32);
        return v;
    }
    public var fnsyms(get, set) : std.UInt;
    function get_fnsyms():std.UInt return this.fnsyms;
    function set_fnsyms(v:std.UInt):std.UInt {
        this.fnsyms = (v : stdgo.GoUInt32);
        return v;
    }
    public var fopthdr(get, set) : std.UInt;
    function get_fopthdr():std.UInt return this.fopthdr;
    function set_fopthdr(v:std.UInt):std.UInt {
        this.fopthdr = (v : stdgo.GoUInt16);
        return v;
    }
    public var fflags(get, set) : std.UInt;
    function get_fflags():std.UInt return this.fflags;
    function set_fflags(v:std.UInt):std.UInt {
        this.fflags = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?fmagic:std.UInt, ?fnscns:std.UInt, ?ftimedat:std.UInt, ?fsymptr:std.UInt, ?fnsyms:std.UInt, ?fopthdr:std.UInt, ?fflags:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_FileHeader32.FileHeader32((fmagic : stdgo.GoUInt16), (fnscns : stdgo.GoUInt16), (ftimedat : stdgo.GoUInt32), (fsymptr : stdgo.GoUInt32), (fnsyms : stdgo.GoUInt32), (fopthdr : stdgo.GoUInt16), (fflags : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
