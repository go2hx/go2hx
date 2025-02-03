package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.T_bigarFileHeader_static_extension) abstract T_bigarFileHeader(stdgo._internal.internal.xcoff.Xcoff_T_bigarFileHeader.T_bigarFileHeader) from stdgo._internal.internal.xcoff.Xcoff_T_bigarFileHeader.T_bigarFileHeader to stdgo._internal.internal.xcoff.Xcoff_T_bigarFileHeader.T_bigarFileHeader {
    public var flmagic(get, set) : haxe.ds.Vector<std.UInt>;
    function get_flmagic():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.flmagic) i]);
    function set_flmagic(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.flmagic = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var flmemoff(get, set) : haxe.ds.Vector<std.UInt>;
    function get_flmemoff():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.flmemoff) i]);
    function set_flmemoff(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.flmemoff = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var flgstoff(get, set) : haxe.ds.Vector<std.UInt>;
    function get_flgstoff():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.flgstoff) i]);
    function set_flgstoff(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.flgstoff = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var flgst64off(get, set) : haxe.ds.Vector<std.UInt>;
    function get_flgst64off():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.flgst64off) i]);
    function set_flgst64off(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.flgst64off = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var flfstmoff(get, set) : haxe.ds.Vector<std.UInt>;
    function get_flfstmoff():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.flfstmoff) i]);
    function set_flfstmoff(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.flfstmoff = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var fllstmoff(get, set) : haxe.ds.Vector<std.UInt>;
    function get_fllstmoff():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.fllstmoff) i]);
    function set_fllstmoff(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.fllstmoff = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var flfreeoff(get, set) : haxe.ds.Vector<std.UInt>;
    function get_flfreeoff():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.flfreeoff) i]);
    function set_flfreeoff(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.flfreeoff = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?flmagic:haxe.ds.Vector<std.UInt>, ?flmemoff:haxe.ds.Vector<std.UInt>, ?flgstoff:haxe.ds.Vector<std.UInt>, ?flgst64off:haxe.ds.Vector<std.UInt>, ?flfstmoff:haxe.ds.Vector<std.UInt>, ?fllstmoff:haxe.ds.Vector<std.UInt>, ?flfreeoff:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.internal.xcoff.Xcoff_T_bigarFileHeader.T_bigarFileHeader(([for (i in flmagic) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in flmemoff) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in flgstoff) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in flgst64off) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in flfstmoff) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in fllstmoff) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in flfreeoff) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
