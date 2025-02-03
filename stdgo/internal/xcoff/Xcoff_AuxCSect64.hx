package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.AuxCSect64_static_extension) abstract AuxCSect64(stdgo._internal.internal.xcoff.Xcoff_AuxCSect64.AuxCSect64) from stdgo._internal.internal.xcoff.Xcoff_AuxCSect64.AuxCSect64 to stdgo._internal.internal.xcoff.Xcoff_AuxCSect64.AuxCSect64 {
    public var xscnlenlo(get, set) : std.UInt;
    function get_xscnlenlo():std.UInt return this.xscnlenlo;
    function set_xscnlenlo(v:std.UInt):std.UInt {
        this.xscnlenlo = (v : stdgo.GoUInt32);
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
    public var xscnlenhi(get, set) : std.UInt;
    function get_xscnlenhi():std.UInt return this.xscnlenhi;
    function set_xscnlenhi(v:std.UInt):std.UInt {
        this.xscnlenhi = (v : stdgo.GoUInt32);
        return v;
    }
    public var xpad(get, set) : std.UInt;
    function get_xpad():std.UInt return this.xpad;
    function set_xpad(v:std.UInt):std.UInt {
        this.xpad = (v : stdgo.GoUInt8);
        return v;
    }
    public var xauxtype(get, set) : std.UInt;
    function get_xauxtype():std.UInt return this.xauxtype;
    function set_xauxtype(v:std.UInt):std.UInt {
        this.xauxtype = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?xscnlenlo:std.UInt, ?xparmhash:std.UInt, ?xsnhash:std.UInt, ?xsmtyp:std.UInt, ?xsmclas:std.UInt, ?xscnlenhi:std.UInt, ?xpad:std.UInt, ?xauxtype:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_AuxCSect64.AuxCSect64((xscnlenlo : stdgo.GoUInt32), (xparmhash : stdgo.GoUInt32), (xsnhash : stdgo.GoUInt16), (xsmtyp : stdgo.GoUInt8), (xsmclas : stdgo.GoUInt8), (xscnlenhi : stdgo.GoUInt32), (xpad : stdgo.GoUInt8), (xauxtype : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
