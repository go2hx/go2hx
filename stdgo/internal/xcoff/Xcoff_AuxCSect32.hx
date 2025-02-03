package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.AuxCSect32_static_extension) abstract AuxCSect32(stdgo._internal.internal.xcoff.Xcoff_AuxCSect32.AuxCSect32) from stdgo._internal.internal.xcoff.Xcoff_AuxCSect32.AuxCSect32 to stdgo._internal.internal.xcoff.Xcoff_AuxCSect32.AuxCSect32 {
    public var xscnlen(get, set) : std.UInt;
    function get_xscnlen():std.UInt return this.xscnlen;
    function set_xscnlen(v:std.UInt):std.UInt {
        this.xscnlen = (v : stdgo.GoUInt32);
        return v;
    }
    public var xparmhash(get, set) : std.UInt;
    function get_xparmhash():std.UInt return this.xparmhash;
    function set_xparmhash(v:std.UInt):std.UInt {
        this.xparmhash = (v : stdgo.GoUInt32);
        return v;
    }
    public var xsnhash(get, set) : std.UInt;
    function get_xsnhash():std.UInt return this.xsnhash;
    function set_xsnhash(v:std.UInt):std.UInt {
        this.xsnhash = (v : stdgo.GoUInt16);
        return v;
    }
    public var xsmtyp(get, set) : std.UInt;
    function get_xsmtyp():std.UInt return this.xsmtyp;
    function set_xsmtyp(v:std.UInt):std.UInt {
        this.xsmtyp = (v : stdgo.GoUInt8);
        return v;
    }
    public var xsmclas(get, set) : std.UInt;
    function get_xsmclas():std.UInt return this.xsmclas;
    function set_xsmclas(v:std.UInt):std.UInt {
        this.xsmclas = (v : stdgo.GoUInt8);
        return v;
    }
    public var xstab(get, set) : std.UInt;
    function get_xstab():std.UInt return this.xstab;
    function set_xstab(v:std.UInt):std.UInt {
        this.xstab = (v : stdgo.GoUInt32);
        return v;
    }
    public var xsnstab(get, set) : std.UInt;
    function get_xsnstab():std.UInt return this.xsnstab;
    function set_xsnstab(v:std.UInt):std.UInt {
        this.xsnstab = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?xscnlen:std.UInt, ?xparmhash:std.UInt, ?xsnhash:std.UInt, ?xsmtyp:std.UInt, ?xsmclas:std.UInt, ?xstab:std.UInt, ?xsnstab:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_AuxCSect32.AuxCSect32((xscnlen : stdgo.GoUInt32), (xparmhash : stdgo.GoUInt32), (xsnhash : stdgo.GoUInt16), (xsmtyp : stdgo.GoUInt8), (xsmclas : stdgo.GoUInt8), (xstab : stdgo.GoUInt32), (xsnstab : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
