package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.LoaderHeader32_static_extension) abstract LoaderHeader32(stdgo._internal.internal.xcoff.Xcoff_LoaderHeader32.LoaderHeader32) from stdgo._internal.internal.xcoff.Xcoff_LoaderHeader32.LoaderHeader32 to stdgo._internal.internal.xcoff.Xcoff_LoaderHeader32.LoaderHeader32 {
    public var lversion(get, set) : std.UInt;
    function get_lversion():std.UInt return this.lversion;
    function set_lversion(v:std.UInt):std.UInt {
        this.lversion = (v : stdgo.GoUInt32);
        return v;
    }
    public var lnsyms(get, set) : std.UInt;
    function get_lnsyms():std.UInt return this.lnsyms;
    function set_lnsyms(v:std.UInt):std.UInt {
        this.lnsyms = (v : stdgo.GoUInt32);
        return v;
    }
    public var lnreloc(get, set) : std.UInt;
    function get_lnreloc():std.UInt return this.lnreloc;
    function set_lnreloc(v:std.UInt):std.UInt {
        this.lnreloc = (v : stdgo.GoUInt32);
        return v;
    }
    public var listlen(get, set) : std.UInt;
    function get_listlen():std.UInt return this.listlen;
    function set_listlen(v:std.UInt):std.UInt {
        this.listlen = (v : stdgo.GoUInt32);
        return v;
    }
    public var lnimpid(get, set) : std.UInt;
    function get_lnimpid():std.UInt return this.lnimpid;
    function set_lnimpid(v:std.UInt):std.UInt {
        this.lnimpid = (v : stdgo.GoUInt32);
        return v;
    }
    public var limpoff(get, set) : std.UInt;
    function get_limpoff():std.UInt return this.limpoff;
    function set_limpoff(v:std.UInt):std.UInt {
        this.limpoff = (v : stdgo.GoUInt32);
        return v;
    }
    public var lstlen(get, set) : std.UInt;
    function get_lstlen():std.UInt return this.lstlen;
    function set_lstlen(v:std.UInt):std.UInt {
        this.lstlen = (v : stdgo.GoUInt32);
        return v;
    }
    public var lstoff(get, set) : std.UInt;
    function get_lstoff():std.UInt return this.lstoff;
    function set_lstoff(v:std.UInt):std.UInt {
        this.lstoff = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?lversion:std.UInt, ?lnsyms:std.UInt, ?lnreloc:std.UInt, ?listlen:std.UInt, ?lnimpid:std.UInt, ?limpoff:std.UInt, ?lstlen:std.UInt, ?lstoff:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_LoaderHeader32.LoaderHeader32((lversion : stdgo.GoUInt32), (lnsyms : stdgo.GoUInt32), (lnreloc : stdgo.GoUInt32), (listlen : stdgo.GoUInt32), (lnimpid : stdgo.GoUInt32), (limpoff : stdgo.GoUInt32), (lstlen : stdgo.GoUInt32), (lstoff : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
