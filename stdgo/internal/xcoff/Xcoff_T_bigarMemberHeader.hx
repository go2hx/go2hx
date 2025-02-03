package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.T_bigarMemberHeader_static_extension) abstract T_bigarMemberHeader(stdgo._internal.internal.xcoff.Xcoff_T_bigarMemberHeader.T_bigarMemberHeader) from stdgo._internal.internal.xcoff.Xcoff_T_bigarMemberHeader.T_bigarMemberHeader to stdgo._internal.internal.xcoff.Xcoff_T_bigarMemberHeader.T_bigarMemberHeader {
    public var arsize(get, set) : haxe.ds.Vector<std.UInt>;
    function get_arsize():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.arsize) i]);
    function set_arsize(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.arsize = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var arnxtmem(get, set) : haxe.ds.Vector<std.UInt>;
    function get_arnxtmem():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.arnxtmem) i]);
    function set_arnxtmem(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.arnxtmem = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var arprvmem(get, set) : haxe.ds.Vector<std.UInt>;
    function get_arprvmem():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.arprvmem) i]);
    function set_arprvmem(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.arprvmem = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var ardate(get, set) : haxe.ds.Vector<std.UInt>;
    function get_ardate():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.ardate) i]);
    function set_ardate(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.ardate = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var aruid(get, set) : haxe.ds.Vector<std.UInt>;
    function get_aruid():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.aruid) i]);
    function set_aruid(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.aruid = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var argid(get, set) : haxe.ds.Vector<std.UInt>;
    function get_argid():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.argid) i]);
    function set_argid(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.argid = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var armode(get, set) : haxe.ds.Vector<std.UInt>;
    function get_armode():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.armode) i]);
    function set_armode(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.armode = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var arnamlen(get, set) : haxe.ds.Vector<std.UInt>;
    function get_arnamlen():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.arnamlen) i]);
    function set_arnamlen(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.arnamlen = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?arsize:haxe.ds.Vector<std.UInt>, ?arnxtmem:haxe.ds.Vector<std.UInt>, ?arprvmem:haxe.ds.Vector<std.UInt>, ?ardate:haxe.ds.Vector<std.UInt>, ?aruid:haxe.ds.Vector<std.UInt>, ?argid:haxe.ds.Vector<std.UInt>, ?armode:haxe.ds.Vector<std.UInt>, ?arnamlen:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.internal.xcoff.Xcoff_T_bigarMemberHeader.T_bigarMemberHeader(([for (i in arsize) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in arnxtmem) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in arprvmem) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in ardate) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in aruid) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in argid) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in armode) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in arnamlen) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
