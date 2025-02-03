package stdgo.internal.coverage;
@:structInit @:using(stdgo.internal.coverage.Coverage.CounterFileFooter_static_extension) abstract CounterFileFooter(stdgo._internal.internal.coverage.Coverage_CounterFileFooter.CounterFileFooter) from stdgo._internal.internal.coverage.Coverage_CounterFileFooter.CounterFileFooter to stdgo._internal.internal.coverage.Coverage_CounterFileFooter.CounterFileFooter {
    public var magic(get, set) : haxe.ds.Vector<std.UInt>;
    function get_magic():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.magic) i]);
    function set_magic(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.magic = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var __10(get, set) : haxe.ds.Vector<std.UInt>;
    function get___10():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__10) i]);
    function set___10(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__10 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var numSegments(get, set) : std.UInt;
    function get_numSegments():std.UInt return this.numSegments;
    function set_numSegments(v:std.UInt):std.UInt {
        this.numSegments = (v : stdgo.GoUInt32);
        return v;
    }
    public var __11(get, set) : haxe.ds.Vector<std.UInt>;
    function get___11():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__11) i]);
    function set___11(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__11 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?magic:haxe.ds.Vector<std.UInt>, ?__10:haxe.ds.Vector<std.UInt>, ?numSegments:std.UInt, ?__11:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.internal.coverage.Coverage_CounterFileFooter.CounterFileFooter(([for (i in magic) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in __10) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (numSegments : stdgo.GoUInt32), ([for (i in __11) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
