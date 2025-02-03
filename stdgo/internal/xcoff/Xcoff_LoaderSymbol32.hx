package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.LoaderSymbol32_static_extension) abstract LoaderSymbol32(stdgo._internal.internal.xcoff.Xcoff_LoaderSymbol32.LoaderSymbol32) from stdgo._internal.internal.xcoff.Xcoff_LoaderSymbol32.LoaderSymbol32 to stdgo._internal.internal.xcoff.Xcoff_LoaderSymbol32.LoaderSymbol32 {
    public var lname(get, set) : haxe.ds.Vector<std.UInt>;
    function get_lname():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.lname) i]);
    function set_lname(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.lname = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var lvalue(get, set) : std.UInt;
    function get_lvalue():std.UInt return this.lvalue;
    function set_lvalue(v:std.UInt):std.UInt {
        this.lvalue = (v : stdgo.GoUInt32);
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
    public function new(?lname:haxe.ds.Vector<std.UInt>, ?lvalue:std.UInt, ?lscnum:std.UInt, ?lsmtype:std.UInt, ?lsmclas:std.UInt, ?lifile:std.UInt, ?lparm:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_LoaderSymbol32.LoaderSymbol32(([for (i in lname) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (lvalue : stdgo.GoUInt32), (lscnum : stdgo.GoUInt16), (lsmtype : stdgo.GoUInt8), (lsmclas : stdgo.GoUInt8), (lifile : stdgo.GoUInt32), (lparm : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
