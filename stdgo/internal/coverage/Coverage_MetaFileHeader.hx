package stdgo.internal.coverage;
@:structInit @:using(stdgo.internal.coverage.Coverage.MetaFileHeader_static_extension) abstract MetaFileHeader(stdgo._internal.internal.coverage.Coverage_MetaFileHeader.MetaFileHeader) from stdgo._internal.internal.coverage.Coverage_MetaFileHeader.MetaFileHeader to stdgo._internal.internal.coverage.Coverage_MetaFileHeader.MetaFileHeader {
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
    public var totalLength(get, set) : haxe.UInt64;
    function get_totalLength():haxe.UInt64 return this.totalLength;
    function set_totalLength(v:haxe.UInt64):haxe.UInt64 {
        this.totalLength = (v : stdgo.GoUInt64);
        return v;
    }
    public var entries(get, set) : haxe.UInt64;
    function get_entries():haxe.UInt64 return this.entries;
    function set_entries(v:haxe.UInt64):haxe.UInt64 {
        this.entries = (v : stdgo.GoUInt64);
        return v;
    }
    public var metaFileHash(get, set) : haxe.ds.Vector<std.UInt>;
    function get_metaFileHash():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.metaFileHash) i]);
    function set_metaFileHash(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.metaFileHash = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var strTabOffset(get, set) : std.UInt;
    function get_strTabOffset():std.UInt return this.strTabOffset;
    function set_strTabOffset(v:std.UInt):std.UInt {
        this.strTabOffset = (v : stdgo.GoUInt32);
        return v;
    }
    public var strTabLength(get, set) : std.UInt;
    function get_strTabLength():std.UInt return this.strTabLength;
    function set_strTabLength(v:std.UInt):std.UInt {
        this.strTabLength = (v : stdgo.GoUInt32);
        return v;
    }
    public var cMode(get, set) : CounterMode;
    function get_cMode():CounterMode return this.cMode;
    function set_cMode(v:CounterMode):CounterMode {
        this.cMode = v;
        return v;
    }
    public var cGranularity(get, set) : CounterGranularity;
    function get_cGranularity():CounterGranularity return this.cGranularity;
    function set_cGranularity(v:CounterGranularity):CounterGranularity {
        this.cGranularity = v;
        return v;
    }
    public var __1(get, set) : haxe.ds.Vector<std.UInt>;
    function get___1():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__1) i]);
    function set___1(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__1 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?magic:haxe.ds.Vector<std.UInt>, ?version:std.UInt, ?totalLength:haxe.UInt64, ?entries:haxe.UInt64, ?metaFileHash:haxe.ds.Vector<std.UInt>, ?strTabOffset:std.UInt, ?strTabLength:std.UInt, ?cMode:CounterMode, ?cGranularity:CounterGranularity, ?__1:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.internal.coverage.Coverage_MetaFileHeader.MetaFileHeader(([for (i in magic) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (version : stdgo.GoUInt32), (totalLength : stdgo.GoUInt64), (entries : stdgo.GoUInt64), ([for (i in metaFileHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (strTabOffset : stdgo.GoUInt32), (strTabLength : stdgo.GoUInt32), cMode, cGranularity, ([for (i in __1) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
