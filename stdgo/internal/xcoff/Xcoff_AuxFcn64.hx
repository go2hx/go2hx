package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.AuxFcn64_static_extension) abstract AuxFcn64(stdgo._internal.internal.xcoff.Xcoff_AuxFcn64.AuxFcn64) from stdgo._internal.internal.xcoff.Xcoff_AuxFcn64.AuxFcn64 to stdgo._internal.internal.xcoff.Xcoff_AuxFcn64.AuxFcn64 {
    public var xlnnoptr(get, set) : haxe.UInt64;
    function get_xlnnoptr():haxe.UInt64 return this.xlnnoptr;
    function set_xlnnoptr(v:haxe.UInt64):haxe.UInt64 {
        this.xlnnoptr = (v : stdgo.GoUInt64);
        return v;
    }
    public var xfsize(get, set) : std.UInt;
    function get_xfsize():std.UInt return this.xfsize;
    function set_xfsize(v:std.UInt):std.UInt {
        this.xfsize = (v : stdgo.GoUInt32);
        return v;
    }
    public var xendndx(get, set) : std.UInt;
    function get_xendndx():std.UInt return this.xendndx;
    function set_xendndx(v:std.UInt):std.UInt {
        this.xendndx = (v : stdgo.GoUInt32);
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
    public function new(?xlnnoptr:haxe.UInt64, ?xfsize:std.UInt, ?xendndx:std.UInt, ?xpad:std.UInt, ?xauxtype:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_AuxFcn64.AuxFcn64((xlnnoptr : stdgo.GoUInt64), (xfsize : stdgo.GoUInt32), (xendndx : stdgo.GoUInt32), (xpad : stdgo.GoUInt8), (xauxtype : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
