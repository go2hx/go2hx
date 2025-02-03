package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.AuxFile64_static_extension) abstract AuxFile64(stdgo._internal.internal.xcoff.Xcoff_AuxFile64.AuxFile64) from stdgo._internal.internal.xcoff.Xcoff_AuxFile64.AuxFile64 to stdgo._internal.internal.xcoff.Xcoff_AuxFile64.AuxFile64 {
    public var xfname(get, set) : haxe.ds.Vector<std.UInt>;
    function get_xfname():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.xfname) i]);
    function set_xfname(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.xfname = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var xftype(get, set) : std.UInt;
    function get_xftype():std.UInt return this.xftype;
    function set_xftype(v:std.UInt):std.UInt {
        this.xftype = (v : stdgo.GoUInt8);
        return v;
    }
    public var xauxtype(get, set) : std.UInt;
    function get_xauxtype():std.UInt return this.xauxtype;
    function set_xauxtype(v:std.UInt):std.UInt {
        this.xauxtype = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?xfname:haxe.ds.Vector<std.UInt>, ?xftype:std.UInt, ?xauxtype:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_AuxFile64.AuxFile64(([for (i in xfname) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (xftype : stdgo.GoUInt8), (xauxtype : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
