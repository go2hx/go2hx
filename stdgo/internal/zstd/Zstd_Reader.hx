package stdgo.internal.zstd;
@:structInit @:using(stdgo.internal.zstd.Zstd.Reader_static_extension) abstract Reader(stdgo._internal.internal.zstd.Zstd_Reader.Reader) from stdgo._internal.internal.zstd.Zstd_Reader.Reader to stdgo._internal.internal.zstd.Zstd_Reader.Reader {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _sawFrameHeader(get, set) : Bool;
    function get__sawFrameHeader():Bool return this._sawFrameHeader;
    function set__sawFrameHeader(v:Bool):Bool {
        this._sawFrameHeader = v;
        return v;
    }
    public var _hasChecksum(get, set) : Bool;
    function get__hasChecksum():Bool return this._hasChecksum;
    function set__hasChecksum(v:Bool):Bool {
        this._hasChecksum = v;
        return v;
    }
    public var _readOneFrame(get, set) : Bool;
    function get__readOneFrame():Bool return this._readOneFrame;
    function set__readOneFrame(v:Bool):Bool {
        this._readOneFrame = v;
        return v;
    }
    public var _frameSizeUnknown(get, set) : Bool;
    function get__frameSizeUnknown():Bool return this._frameSizeUnknown;
    function set__frameSizeUnknown(v:Bool):Bool {
        this._frameSizeUnknown = v;
        return v;
    }
    public var _remainingFrameSize(get, set) : haxe.UInt64;
    function get__remainingFrameSize():haxe.UInt64 return this._remainingFrameSize;
    function set__remainingFrameSize(v:haxe.UInt64):haxe.UInt64 {
        this._remainingFrameSize = (v : stdgo.GoUInt64);
        return v;
    }
    public var _blockOffset(get, set) : haxe.Int64;
    function get__blockOffset():haxe.Int64 return this._blockOffset;
    function set__blockOffset(v:haxe.Int64):haxe.Int64 {
        this._blockOffset = (v : stdgo.GoInt64);
        return v;
    }
    public var _buffer(get, set) : Array<std.UInt>;
    function get__buffer():Array<std.UInt> return [for (i in this._buffer) i];
    function set__buffer(v:Array<std.UInt>):Array<std.UInt> {
        this._buffer = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = (v : stdgo.GoInt);
        return v;
    }
    public var _repeatedOffset1(get, set) : std.UInt;
    function get__repeatedOffset1():std.UInt return this._repeatedOffset1;
    function set__repeatedOffset1(v:std.UInt):std.UInt {
        this._repeatedOffset1 = (v : stdgo.GoUInt32);
        return v;
    }
    public var _repeatedOffset2(get, set) : std.UInt;
    function get__repeatedOffset2():std.UInt return this._repeatedOffset2;
    function set__repeatedOffset2(v:std.UInt):std.UInt {
        this._repeatedOffset2 = (v : stdgo.GoUInt32);
        return v;
    }
    public var _repeatedOffset3(get, set) : std.UInt;
    function get__repeatedOffset3():std.UInt return this._repeatedOffset3;
    function set__repeatedOffset3(v:std.UInt):std.UInt {
        this._repeatedOffset3 = (v : stdgo.GoUInt32);
        return v;
    }
    public var _huffmanTable(get, set) : Array<std.UInt>;
    function get__huffmanTable():Array<std.UInt> return [for (i in this._huffmanTable) i];
    function set__huffmanTable(v:Array<std.UInt>):Array<std.UInt> {
        this._huffmanTable = ([for (i in v) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>);
        return v;
    }
    public var _huffmanTableBits(get, set) : StdTypes.Int;
    function get__huffmanTableBits():StdTypes.Int return this._huffmanTableBits;
    function set__huffmanTableBits(v:StdTypes.Int):StdTypes.Int {
        this._huffmanTableBits = (v : stdgo.GoInt);
        return v;
    }
    public var _windowSize(get, set) : StdTypes.Int;
    function get__windowSize():StdTypes.Int return this._windowSize;
    function set__windowSize(v:StdTypes.Int):StdTypes.Int {
        this._windowSize = (v : stdgo.GoInt);
        return v;
    }
    public var _window(get, set) : Array<std.UInt>;
    function get__window():Array<std.UInt> return [for (i in this._window) i];
    function set__window(v:Array<std.UInt>):Array<std.UInt> {
        this._window = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _compressedBuf(get, set) : Array<std.UInt>;
    function get__compressedBuf():Array<std.UInt> return [for (i in this._compressedBuf) i];
    function set__compressedBuf(v:Array<std.UInt>):Array<std.UInt> {
        this._compressedBuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _literals(get, set) : Array<std.UInt>;
    function get__literals():Array<std.UInt> return [for (i in this._literals) i];
    function set__literals(v:Array<std.UInt>):Array<std.UInt> {
        this._literals = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _seqTables(get, set) : haxe.ds.Vector<Array<T_fseBaselineEntry>>;
    function get__seqTables():haxe.ds.Vector<Array<T_fseBaselineEntry>> return haxe.ds.Vector.fromArrayCopy([for (i in this._seqTables) [for (i in i) i]]);
    function set__seqTables(v:haxe.ds.Vector<Array<T_fseBaselineEntry>>):haxe.ds.Vector<Array<T_fseBaselineEntry>> {
        this._seqTables = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>)] : stdgo.GoArray<stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>>);
        return v;
    }
    public var _seqTableBits(get, set) : haxe.ds.Vector<std.UInt>;
    function get__seqTableBits():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._seqTableBits) i]);
    function set__seqTableBits(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._seqTableBits = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _seqTableBuffers(get, set) : haxe.ds.Vector<Array<T_fseBaselineEntry>>;
    function get__seqTableBuffers():haxe.ds.Vector<Array<T_fseBaselineEntry>> return haxe.ds.Vector.fromArrayCopy([for (i in this._seqTableBuffers) [for (i in i) i]]);
    function set__seqTableBuffers(v:haxe.ds.Vector<Array<T_fseBaselineEntry>>):haxe.ds.Vector<Array<T_fseBaselineEntry>> {
        this._seqTableBuffers = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>)] : stdgo.GoArray<stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>>);
        return v;
    }
    public var _scratch(get, set) : haxe.ds.Vector<std.UInt>;
    function get__scratch():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._scratch) i]);
    function set__scratch(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._scratch = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _fseScratch(get, set) : Array<T_fseEntry>;
    function get__fseScratch():Array<T_fseEntry> return [for (i in this._fseScratch) i];
    function set__fseScratch(v:Array<T_fseEntry>):Array<T_fseEntry> {
        this._fseScratch = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>);
        return v;
    }
    public var _checksum(get, set) : T_xxhash64;
    function get__checksum():T_xxhash64 return this._checksum;
    function set__checksum(v:T_xxhash64):T_xxhash64 {
        this._checksum = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_sawFrameHeader:Bool, ?_hasChecksum:Bool, ?_readOneFrame:Bool, ?_frameSizeUnknown:Bool, ?_remainingFrameSize:haxe.UInt64, ?_blockOffset:haxe.Int64, ?_buffer:Array<std.UInt>, ?_off:StdTypes.Int, ?_repeatedOffset1:std.UInt, ?_repeatedOffset2:std.UInt, ?_repeatedOffset3:std.UInt, ?_huffmanTable:Array<std.UInt>, ?_huffmanTableBits:StdTypes.Int, ?_windowSize:StdTypes.Int, ?_window:Array<std.UInt>, ?_compressedBuf:Array<std.UInt>, ?_literals:Array<std.UInt>, ?_seqTables:haxe.ds.Vector<Array<T_fseBaselineEntry>>, ?_seqTableBits:haxe.ds.Vector<std.UInt>, ?_seqTableBuffers:haxe.ds.Vector<Array<T_fseBaselineEntry>>, ?_scratch:haxe.ds.Vector<std.UInt>, ?_fseScratch:Array<T_fseEntry>, ?_checksum:T_xxhash64) this = new stdgo._internal.internal.zstd.Zstd_Reader.Reader(
_r,
_sawFrameHeader,
_hasChecksum,
_readOneFrame,
_frameSizeUnknown,
(_remainingFrameSize : stdgo.GoUInt64),
(_blockOffset : stdgo.GoInt64),
([for (i in _buffer) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_off : stdgo.GoInt),
(_repeatedOffset1 : stdgo.GoUInt32),
(_repeatedOffset2 : stdgo.GoUInt32),
(_repeatedOffset3 : stdgo.GoUInt32),
([for (i in _huffmanTable) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>),
(_huffmanTableBits : stdgo.GoInt),
(_windowSize : stdgo.GoInt),
([for (i in _window) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _compressedBuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _literals) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _seqTables) ([for (i in i) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>)] : stdgo.GoArray<stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>>),
([for (i in _seqTableBits) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _seqTableBuffers) ([for (i in i) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>)] : stdgo.GoArray<stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>>),
([for (i in _scratch) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _fseScratch) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>),
_checksum);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
