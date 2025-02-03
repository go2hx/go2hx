package stdgo.internal.coverage;
@:structInit @:using(stdgo.internal.coverage.Coverage.CounterFileHeader_static_extension) abstract CounterFileHeader(stdgo._internal.internal.coverage.Coverage_CounterFileHeader.CounterFileHeader) from stdgo._internal.internal.coverage.Coverage_CounterFileHeader.CounterFileHeader to stdgo._internal.internal.coverage.Coverage_CounterFileHeader.CounterFileHeader {
    public var magic(get, set) : haxe.ds.Vector<std.UInt>;
    function get_magic():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.magic) i]);
    function set_magic(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.magic = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var version(get, set) : std.UInt;
    function get_version():std.UInt return this.version;
    function set_version(v:std.UInt):std.UInt {
        this.version = (v : stdgo.GoUInt32);
        return v;
    }
    public var metaHash(get, set) : haxe.ds.Vector<std.UInt>;
    function get_metaHash():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.metaHash) i]);
    function set_metaHash(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.metaHash = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var cFlavor(get, set) : CounterFlavor;
    function get_cFlavor():CounterFlavor return this.cFlavor;
    function set_cFlavor(v:CounterFlavor):CounterFlavor {
        this.cFlavor = v;
        return v;
    }
    public var bigEndian(get, set) : Bool;
    function get_bigEndian():Bool return this.bigEndian;
    function set_bigEndian(v:Bool):Bool {
        this.bigEndian = v;
        return v;
    }
    public var __7(get, set) : haxe.ds.Vector<std.UInt>;
    function get___7():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__7) i]);
    function set___7(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__7 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?magic:haxe.ds.Vector<std.UInt>, ?version:std.UInt, ?metaHash:haxe.ds.Vector<std.UInt>, ?cFlavor:CounterFlavor, ?bigEndian:Bool, ?__7:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.internal.coverage.Coverage_CounterFileHeader.CounterFileHeader(([for (i in magic) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (version : stdgo.GoUInt32), ([for (i in metaHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), cFlavor, bigEndian, ([for (i in __7) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
