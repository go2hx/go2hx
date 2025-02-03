package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.SymEnt32_static_extension) abstract SymEnt32(stdgo._internal.internal.xcoff.Xcoff_SymEnt32.SymEnt32) from stdgo._internal.internal.xcoff.Xcoff_SymEnt32.SymEnt32 to stdgo._internal.internal.xcoff.Xcoff_SymEnt32.SymEnt32 {
    public var nname(get, set) : haxe.ds.Vector<std.UInt>;
    function get_nname():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.nname) i]);
    function set_nname(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.nname = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var nvalue(get, set) : std.UInt;
    function get_nvalue():std.UInt return this.nvalue;
    function set_nvalue(v:std.UInt):std.UInt {
        this.nvalue = (v : stdgo.GoUInt32);
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
    public function new(?nname:haxe.ds.Vector<std.UInt>, ?nvalue:std.UInt, ?nscnum:std.UInt, ?ntype:std.UInt, ?nsclass:std.UInt, ?nnumaux:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_SymEnt32.SymEnt32(([for (i in nname) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (nvalue : stdgo.GoUInt32), (nscnum : stdgo.GoUInt16), (ntype : stdgo.GoUInt16), (nsclass : stdgo.GoUInt8), (nnumaux : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
