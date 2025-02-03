package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.LoaderSymbol64_static_extension) abstract LoaderSymbol64(stdgo._internal.internal.xcoff.Xcoff_LoaderSymbol64.LoaderSymbol64) from stdgo._internal.internal.xcoff.Xcoff_LoaderSymbol64.LoaderSymbol64 to stdgo._internal.internal.xcoff.Xcoff_LoaderSymbol64.LoaderSymbol64 {
    public var lvalue(get, set) : haxe.UInt64;
    function get_lvalue():haxe.UInt64 return this.lvalue;
    function set_lvalue(v:haxe.UInt64):haxe.UInt64 {
        this.lvalue = (v : stdgo.GoUInt64);
        return v;
    }
    public var loffset(get, set) : std.UInt;
    function get_loffset():std.UInt return this.loffset;
    function set_loffset(v:std.UInt):std.UInt {
        this.loffset = (v : stdgo.GoUInt32);
        return v;
    }
    public var lscnum(get, set) : std.UInt;
    function get_lscnum():std.UInt return this.lscnum;
    function set_lscnum(v:std.UInt):std.UInt {
        this.lscnum = (v : stdgo.GoUInt16);
        return v;
    }
    public var lsmtype(get, set) : std.UInt;
    function get_lsmtype():std.UInt return this.lsmtype;
    function set_lsmtype(v:std.UInt):std.UInt {
        this.lsmtype = (v : stdgo.GoUInt8);
        return v;
    }
    public var lsmclas(get, set) : std.UInt;
    function get_lsmclas():std.UInt return this.lsmclas;
    function set_lsmclas(v:std.UInt):std.UInt {
        this.lsmclas = (v : stdgo.GoUInt8);
        return v;
    }
    public var lifile(get, set) : std.UInt;
    function get_lifile():std.UInt return this.lifile;
    function set_lifile(v:std.UInt):std.UInt {
        this.lifile = (v : stdgo.GoUInt32);
        return v;
    }
    public var lparm(get, set) : std.UInt;
    function get_lparm():std.UInt return this.lparm;
    function set_lparm(v:std.UInt):std.UInt {
        this.lparm = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?lvalue:haxe.UInt64, ?loffset:std.UInt, ?lscnum:std.UInt, ?lsmtype:std.UInt, ?lsmclas:std.UInt, ?lifile:std.UInt, ?lparm:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_LoaderSymbol64.LoaderSymbol64((lvalue : stdgo.GoUInt64), (loffset : stdgo.GoUInt32), (lscnum : stdgo.GoUInt16), (lsmtype : stdgo.GoUInt8), (lsmclas : stdgo.GoUInt8), (lifile : stdgo.GoUInt32), (lparm : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
