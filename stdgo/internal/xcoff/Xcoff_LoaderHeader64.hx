package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.LoaderHeader64_static_extension) abstract LoaderHeader64(stdgo._internal.internal.xcoff.Xcoff_LoaderHeader64.LoaderHeader64) from stdgo._internal.internal.xcoff.Xcoff_LoaderHeader64.LoaderHeader64 to stdgo._internal.internal.xcoff.Xcoff_LoaderHeader64.LoaderHeader64 {
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
    public var lstlen(get, set) : std.UInt;
    function get_lstlen():std.UInt return this.lstlen;
    function set_lstlen(v:std.UInt):std.UInt {
        this.lstlen = (v : stdgo.GoUInt32);
        return v;
    }
    public var limpoff(get, set) : haxe.UInt64;
    function get_limpoff():haxe.UInt64 return this.limpoff;
    function set_limpoff(v:haxe.UInt64):haxe.UInt64 {
        this.limpoff = (v : stdgo.GoUInt64);
        return v;
    }
    public var lstoff(get, set) : haxe.UInt64;
    function get_lstoff():haxe.UInt64 return this.lstoff;
    function set_lstoff(v:haxe.UInt64):haxe.UInt64 {
        this.lstoff = (v : stdgo.GoUInt64);
        return v;
    }
    public var lsymoff(get, set) : haxe.UInt64;
    function get_lsymoff():haxe.UInt64 return this.lsymoff;
    function set_lsymoff(v:haxe.UInt64):haxe.UInt64 {
        this.lsymoff = (v : stdgo.GoUInt64);
        return v;
    }
    public var lrldoff(get, set) : haxe.UInt64;
    function get_lrldoff():haxe.UInt64 return this.lrldoff;
    function set_lrldoff(v:haxe.UInt64):haxe.UInt64 {
        this.lrldoff = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?lversion:std.UInt, ?lnsyms:std.UInt, ?lnreloc:std.UInt, ?listlen:std.UInt, ?lnimpid:std.UInt, ?lstlen:std.UInt, ?limpoff:haxe.UInt64, ?lstoff:haxe.UInt64, ?lsymoff:haxe.UInt64, ?lrldoff:haxe.UInt64) this = new stdgo._internal.internal.xcoff.Xcoff_LoaderHeader64.LoaderHeader64((lversion : stdgo.GoUInt32), (lnsyms : stdgo.GoUInt32), (lnreloc : stdgo.GoUInt32), (listlen : stdgo.GoUInt32), (lnimpid : stdgo.GoUInt32), (lstlen : stdgo.GoUInt32), (limpoff : stdgo.GoUInt64), (lstoff : stdgo.GoUInt64), (lsymoff : stdgo.GoUInt64), (lrldoff : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
