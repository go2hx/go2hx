package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.SymEnt64_static_extension) abstract SymEnt64(stdgo._internal.internal.xcoff.Xcoff_SymEnt64.SymEnt64) from stdgo._internal.internal.xcoff.Xcoff_SymEnt64.SymEnt64 to stdgo._internal.internal.xcoff.Xcoff_SymEnt64.SymEnt64 {
    public var nvalue(get, set) : haxe.UInt64;
    function get_nvalue():haxe.UInt64 return this.nvalue;
    function set_nvalue(v:haxe.UInt64):haxe.UInt64 {
        this.nvalue = (v : stdgo.GoUInt64);
        return v;
    }
    public var noffset(get, set) : std.UInt;
    function get_noffset():std.UInt return this.noffset;
    function set_noffset(v:std.UInt):std.UInt {
        this.noffset = (v : stdgo.GoUInt32);
        return v;
    }
    public var nscnum(get, set) : std.UInt;
    function get_nscnum():std.UInt return this.nscnum;
    function set_nscnum(v:std.UInt):std.UInt {
        this.nscnum = (v : stdgo.GoUInt16);
        return v;
    }
    public var ntype(get, set) : std.UInt;
    function get_ntype():std.UInt return this.ntype;
    function set_ntype(v:std.UInt):std.UInt {
        this.ntype = (v : stdgo.GoUInt16);
        return v;
    }
    public var nsclass(get, set) : std.UInt;
    function get_nsclass():std.UInt return this.nsclass;
    function set_nsclass(v:std.UInt):std.UInt {
        this.nsclass = (v : stdgo.GoUInt8);
        return v;
    }
    public var nnumaux(get, set) : std.UInt;
    function get_nnumaux():std.UInt return this.nnumaux;
    function set_nnumaux(v:std.UInt):std.UInt {
        this.nnumaux = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?nvalue:haxe.UInt64, ?noffset:std.UInt, ?nscnum:std.UInt, ?ntype:std.UInt, ?nsclass:std.UInt, ?nnumaux:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_SymEnt64.SymEnt64((nvalue : stdgo.GoUInt64), (noffset : stdgo.GoUInt32), (nscnum : stdgo.GoUInt16), (ntype : stdgo.GoUInt16), (nsclass : stdgo.GoUInt8), (nnumaux : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
