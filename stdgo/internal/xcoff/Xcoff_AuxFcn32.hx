package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.AuxFcn32_static_extension) abstract AuxFcn32(stdgo._internal.internal.xcoff.Xcoff_AuxFcn32.AuxFcn32) from stdgo._internal.internal.xcoff.Xcoff_AuxFcn32.AuxFcn32 to stdgo._internal.internal.xcoff.Xcoff_AuxFcn32.AuxFcn32 {
    public var xexptr(get, set) : std.UInt;
    function get_xexptr():std.UInt return this.xexptr;
    function set_xexptr(v:std.UInt):std.UInt {
        this.xexptr = (v : stdgo.GoUInt32);
        return v;
    }
    public var xfsize(get, set) : std.UInt;
    function get_xfsize():std.UInt return this.xfsize;
    function set_xfsize(v:std.UInt):std.UInt {
        this.xfsize = (v : stdgo.GoUInt32);
        return v;
    }
    public var xlnnoptr(get, set) : std.UInt;
    function get_xlnnoptr():std.UInt return this.xlnnoptr;
    function set_xlnnoptr(v:std.UInt):std.UInt {
        this.xlnnoptr = (v : stdgo.GoUInt32);
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
        this.xpad = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?xexptr:std.UInt, ?xfsize:std.UInt, ?xlnnoptr:std.UInt, ?xendndx:std.UInt, ?xpad:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_AuxFcn32.AuxFcn32((xexptr : stdgo.GoUInt32), (xfsize : stdgo.GoUInt32), (xlnnoptr : stdgo.GoUInt32), (xendndx : stdgo.GoUInt32), (xpad : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
