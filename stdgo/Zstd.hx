package stdgo;
@:structInit @:using(stdgo.internal.zstd.Zstd.T_bitReader_static_extension) @:dox(hide) abstract T_bitReader(stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader) from stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader to stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader {
    public var _r(get, set) : Reader;
    function get__r():Reader return this._r;
    function set__r(v:Reader):Reader {
        this._r = (v : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        return v;
    }
    public var _data(get, set) : T_block;
    function get__data():T_block return this._data;
    function set__data(v:T_block):T_block {
        this._data = v;
        return v;
    }
    public var _off(get, set) : std.UInt;
    function get__off():std.UInt return this._off;
    function set__off(v:std.UInt):std.UInt {
        this._off = (v : stdgo.GoUInt32);
        return v;
    }
    public var _bits(get, set) : std.UInt;
    function get__bits():std.UInt return this._bits;
    function set__bits(v:std.UInt):std.UInt {
        this._bits = (v : stdgo.GoUInt32);
        return v;
    }
    public var _cnt(get, set) : std.UInt;
    function get__cnt():std.UInt return this._cnt;
    function set__cnt(v:std.UInt):std.UInt {
        this._cnt = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_r:Reader, ?_data:T_block, ?_off:std.UInt, ?_bits:std.UInt, ?_cnt:std.UInt) this = new stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader((_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>), _data, (_off : stdgo.GoUInt32), (_bits : stdgo.GoUInt32), (_cnt : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.zstd.Zstd.T_reverseBitReader_static_extension) @:dox(hide) abstract T_reverseBitReader(stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader) from stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader to stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader {
    public var _r(get, set) : Reader;
    function get__r():Reader return this._r;
    function set__r(v:Reader):Reader {
        this._r = (v : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        return v;
    }
    public var _data(get, set) : T_block;
    function get__data():T_block return this._data;
    function set__data(v:T_block):T_block {
        this._data = v;
        return v;
    }
    public var _off(get, set) : std.UInt;
    function get__off():std.UInt return this._off;
    function set__off(v:std.UInt):std.UInt {
        this._off = (v : stdgo.GoUInt32);
        return v;
    }
    public var _start(get, set) : std.UInt;
    function get__start():std.UInt return this._start;
    function set__start(v:std.UInt):std.UInt {
        this._start = (v : stdgo.GoUInt32);
        return v;
    }
    public var _bits(get, set) : std.UInt;
    function get__bits():std.UInt return this._bits;
    function set__bits(v:std.UInt):std.UInt {
        this._bits = (v : stdgo.GoUInt32);
        return v;
    }
    public var _cnt(get, set) : std.UInt;
    function get__cnt():std.UInt return this._cnt;
    function set__cnt(v:std.UInt):std.UInt {
        this._cnt = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_r:Reader, ?_data:T_block, ?_off:std.UInt, ?_start:std.UInt, ?_bits:std.UInt, ?_cnt:std.UInt) this = new stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader((_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>), _data, (_off : stdgo.GoUInt32), (_start : stdgo.GoUInt32), (_bits : stdgo.GoUInt32), (_cnt : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.zstd.Zstd.T_seqCodeInfoData_static_extension) @:dox(hide) abstract T_seqCodeInfoData(stdgo._internal.internal.zstd.Zstd_t_seqcodeinfodata.T_seqCodeInfoData) from stdgo._internal.internal.zstd.Zstd_t_seqcodeinfodata.T_seqCodeInfoData to stdgo._internal.internal.zstd.Zstd_t_seqcodeinfodata.T_seqCodeInfoData {
    public var _predefTable(get, set) : Array<T_fseBaselineEntry>;
    function get__predefTable():Array<T_fseBaselineEntry> return [for (i in this._predefTable) i];
    function set__predefTable(v:Array<T_fseBaselineEntry>):Array<T_fseBaselineEntry> {
        this._predefTable = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
        return v;
    }
    public var _predefTableBits(get, set) : StdTypes.Int;
    function get__predefTableBits():StdTypes.Int return this._predefTableBits;
    function set__predefTableBits(v:StdTypes.Int):StdTypes.Int {
        this._predefTableBits = (v : stdgo.GoInt);
        return v;
    }
    public var _maxSym(get, set) : StdTypes.Int;
    function get__maxSym():StdTypes.Int return this._maxSym;
    function set__maxSym(v:StdTypes.Int):StdTypes.Int {
        this._maxSym = (v : stdgo.GoInt);
        return v;
    }
    public var _maxBits(get, set) : StdTypes.Int;
    function get__maxBits():StdTypes.Int return this._maxBits;
    function set__maxBits(v:StdTypes.Int):StdTypes.Int {
        this._maxBits = (v : stdgo.GoInt);
        return v;
    }
    public var _toBaseline(get, set) : (Reader, StdTypes.Int, Array<T_fseEntry>, Array<T_fseBaselineEntry>) -> stdgo.Error;
    function get__toBaseline():(Reader, StdTypes.Int, Array<T_fseEntry>, Array<T_fseBaselineEntry>) -> stdgo.Error return (_0, _1, _2, _3) -> this._toBaseline(_0, _1, [for (i in _2) i], [for (i in _3) i]);
    function set__toBaseline(v:(Reader, StdTypes.Int, Array<T_fseEntry>, Array<T_fseBaselineEntry>) -> stdgo.Error):(Reader, StdTypes.Int, Array<T_fseEntry>, Array<T_fseBaselineEntry>) -> stdgo.Error {
        this._toBaseline = v;
        return v;
    }
    public function new(?_predefTable:Array<T_fseBaselineEntry>, ?_predefTableBits:StdTypes.Int, ?_maxSym:StdTypes.Int, ?_maxBits:StdTypes.Int, ?_toBaseline:(Reader, StdTypes.Int, Array<T_fseEntry>, Array<T_fseBaselineEntry>) -> stdgo.Error) this = new stdgo._internal.internal.zstd.Zstd_t_seqcodeinfodata.T_seqCodeInfoData(([for (i in _predefTable) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>), (_predefTableBits : stdgo.GoInt), (_maxSym : stdgo.GoInt), (_maxBits : stdgo.GoInt), _toBaseline);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.zstd.Zstd.T_fseEntry_static_extension) @:dox(hide) abstract T_fseEntry(stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry) from stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry to stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry {
    public var _sym(get, set) : std.UInt;
    function get__sym():std.UInt return this._sym;
    function set__sym(v:std.UInt):std.UInt {
        this._sym = (v : stdgo.GoUInt8);
        return v;
    }
    public var _bits(get, set) : std.UInt;
    function get__bits():std.UInt return this._bits;
    function set__bits(v:std.UInt):std.UInt {
        this._bits = (v : stdgo.GoUInt8);
        return v;
    }
    public var _base(get, set) : std.UInt;
    function get__base():std.UInt return this._base;
    function set__base(v:std.UInt):std.UInt {
        this._base = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?_sym:std.UInt, ?_bits:std.UInt, ?_base:std.UInt) this = new stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry((_sym : stdgo.GoUInt8), (_bits : stdgo.GoUInt8), (_base : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.zstd.Zstd.T_fseBaselineEntry_static_extension) @:dox(hide) abstract T_fseBaselineEntry(stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry) from stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry to stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry {
    public var _baseline(get, set) : std.UInt;
    function get__baseline():std.UInt return this._baseline;
    function set__baseline(v:std.UInt):std.UInt {
        this._baseline = (v : stdgo.GoUInt32);
        return v;
    }
    public var _basebits(get, set) : std.UInt;
    function get__basebits():std.UInt return this._basebits;
    function set__basebits(v:std.UInt):std.UInt {
        this._basebits = (v : stdgo.GoUInt8);
        return v;
    }
    public var _bits(get, set) : std.UInt;
    function get__bits():std.UInt return this._bits;
    function set__bits(v:std.UInt):std.UInt {
        this._bits = (v : stdgo.GoUInt8);
        return v;
    }
    public var _base(get, set) : std.UInt;
    function get__base():std.UInt return this._base;
    function set__base(v:std.UInt):std.UInt {
        this._base = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?_baseline:std.UInt, ?_basebits:std.UInt, ?_bits:std.UInt, ?_base:std.UInt) this = new stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry((_baseline : stdgo.GoUInt32), (_basebits : stdgo.GoUInt8), (_bits : stdgo.GoUInt8), (_base : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.zstd.Zstd.T_xxhash64_static_extension) @:dox(hide) abstract T_xxhash64(stdgo._internal.internal.zstd.Zstd_t_xxhash64.T_xxhash64) from stdgo._internal.internal.zstd.Zstd_t_xxhash64.T_xxhash64 to stdgo._internal.internal.zstd.Zstd_t_xxhash64.T_xxhash64 {
    public var _len(get, set) : haxe.UInt64;
    function get__len():haxe.UInt64 return this._len;
    function set__len(v:haxe.UInt64):haxe.UInt64 {
        this._len = (v : stdgo.GoUInt64);
        return v;
    }
    public var _v(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get__v():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this._v) i]);
    function set__v(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this._v = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _cnt(get, set) : StdTypes.Int;
    function get__cnt():StdTypes.Int return this._cnt;
    function set__cnt(v:StdTypes.Int):StdTypes.Int {
        this._cnt = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_len:haxe.UInt64, ?_v:haxe.ds.Vector<haxe.UInt64>, ?_buf:haxe.ds.Vector<std.UInt>, ?_cnt:StdTypes.Int) this = new stdgo._internal.internal.zstd.Zstd_t_xxhash64.T_xxhash64((_len : stdgo.GoUInt64), ([for (i in _v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_cnt : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.zstd.Zstd.Reader_static_extension) abstract Reader(stdgo._internal.internal.zstd.Zstd_reader.Reader) from stdgo._internal.internal.zstd.Zstd_reader.Reader to stdgo._internal.internal.zstd.Zstd_reader.Reader {
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
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
        this._seqTables = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>)] : stdgo.GoArray<stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>>);
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
        this._seqTableBuffers = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>)] : stdgo.GoArray<stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>>);
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
        this._fseScratch = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
        return v;
    }
    public var _checksum(get, set) : T_xxhash64;
    function get__checksum():T_xxhash64 return this._checksum;
    function set__checksum(v:T_xxhash64):T_xxhash64 {
        this._checksum = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_sawFrameHeader:Bool, ?_hasChecksum:Bool, ?_readOneFrame:Bool, ?_frameSizeUnknown:Bool, ?_remainingFrameSize:haxe.UInt64, ?_blockOffset:haxe.Int64, ?_buffer:Array<std.UInt>, ?_off:StdTypes.Int, ?_repeatedOffset1:std.UInt, ?_repeatedOffset2:std.UInt, ?_repeatedOffset3:std.UInt, ?_huffmanTable:Array<std.UInt>, ?_huffmanTableBits:StdTypes.Int, ?_windowSize:StdTypes.Int, ?_window:Array<std.UInt>, ?_compressedBuf:Array<std.UInt>, ?_literals:Array<std.UInt>, ?_seqTables:haxe.ds.Vector<Array<T_fseBaselineEntry>>, ?_seqTableBits:haxe.ds.Vector<std.UInt>, ?_seqTableBuffers:haxe.ds.Vector<Array<T_fseBaselineEntry>>, ?_scratch:haxe.ds.Vector<std.UInt>, ?_fseScratch:Array<T_fseEntry>, ?_checksum:T_xxhash64) this = new stdgo._internal.internal.zstd.Zstd_reader.Reader(
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
([for (i in _seqTables) ([for (i in i) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>)] : stdgo.GoArray<stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>>),
([for (i in _seqTableBits) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _seqTableBuffers) ([for (i in i) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>)] : stdgo.GoArray<stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>>),
([for (i in _scratch) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _fseScratch) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>),
_checksum);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.zstd.Zstd.T_zstdError_static_extension) @:dox(hide) abstract T_zstdError(stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError) from stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError to stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError {
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = (v : stdgo.GoInt64);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_offset:haxe.Int64, ?_err:stdgo.Error) this = new stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError((_offset : stdgo.GoInt64), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_block = stdgo._internal.internal.zstd.Zstd_t_block.T_block;
@:dox(hide) typedef T_seqCode = stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode;
@:dox(hide) typedef T_bitReaderPointer = stdgo._internal.internal.zstd.Zstd_t_bitreaderpointer.T_bitReaderPointer;
@:dox(hide) class T_bitReader_static_extension {
    static public function _makeError(_br:T_bitReader, _msg:String):stdgo.Error {
        final _br = (_br : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader>);
        final _msg = (_msg : stdgo.GoString);
        return stdgo._internal.internal.zstd.Zstd_t_bitreader_static_extension.T_bitReader_static_extension._makeError(_br, _msg);
    }
    static public function _backup(_br:T_bitReader):Void {
        final _br = (_br : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader>);
        stdgo._internal.internal.zstd.Zstd_t_bitreader_static_extension.T_bitReader_static_extension._backup(_br);
    }
    static public function _val(_br:T_bitReader, _b:std.UInt):std.UInt {
        final _br = (_br : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader>);
        final _b = (_b : stdgo.GoUInt8);
        return stdgo._internal.internal.zstd.Zstd_t_bitreader_static_extension.T_bitReader_static_extension._val(_br, _b);
    }
    static public function _moreBits(_br:T_bitReader):stdgo.Error {
        final _br = (_br : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader>);
        return stdgo._internal.internal.zstd.Zstd_t_bitreader_static_extension.T_bitReader_static_extension._moreBits(_br);
    }
}
@:dox(hide) typedef T_reverseBitReaderPointer = stdgo._internal.internal.zstd.Zstd_t_reversebitreaderpointer.T_reverseBitReaderPointer;
@:dox(hide) class T_reverseBitReader_static_extension {
    static public function _makeError(_rbr:T_reverseBitReader, _msg:String):stdgo.Error {
        final _rbr = (_rbr : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>);
        final _msg = (_msg : stdgo.GoString);
        return stdgo._internal.internal.zstd.Zstd_t_reversebitreader_static_extension.T_reverseBitReader_static_extension._makeError(_rbr, _msg);
    }
    static public function _fetch(_rbr:T_reverseBitReader, _b:std.UInt):Bool {
        final _rbr = (_rbr : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>);
        final _b = (_b : stdgo.GoUInt8);
        return stdgo._internal.internal.zstd.Zstd_t_reversebitreader_static_extension.T_reverseBitReader_static_extension._fetch(_rbr, _b);
    }
    static public function _val(_rbr:T_reverseBitReader, _b:std.UInt):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _rbr = (_rbr : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>);
        final _b = (_b : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_t_reversebitreader_static_extension.T_reverseBitReader_static_extension._val(_rbr, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_seqCodeInfoDataPointer = stdgo._internal.internal.zstd.Zstd_t_seqcodeinfodatapointer.T_seqCodeInfoDataPointer;
@:dox(hide) class T_seqCodeInfoData_static_extension {

}
@:dox(hide) typedef T_fseEntryPointer = stdgo._internal.internal.zstd.Zstd_t_fseentrypointer.T_fseEntryPointer;
@:dox(hide) class T_fseEntry_static_extension {

}
@:dox(hide) typedef T_fseBaselineEntryPointer = stdgo._internal.internal.zstd.Zstd_t_fsebaselineentrypointer.T_fseBaselineEntryPointer;
@:dox(hide) class T_fseBaselineEntry_static_extension {

}
@:dox(hide) typedef T_xxhash64Pointer = stdgo._internal.internal.zstd.Zstd_t_xxhash64pointer.T_xxhash64Pointer;
@:dox(hide) class T_xxhash64_static_extension {
    static public function _mergeRound(_xh:T_xxhash64, _v:haxe.UInt64, _n:haxe.UInt64):haxe.UInt64 {
        final _xh = (_xh : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_xxhash64.T_xxhash64>);
        final _v = (_v : stdgo.GoUInt64);
        final _n = (_n : stdgo.GoUInt64);
        return stdgo._internal.internal.zstd.Zstd_t_xxhash64_static_extension.T_xxhash64_static_extension._mergeRound(_xh, _v, _n);
    }
    static public function _round(_xh:T_xxhash64, _v:haxe.UInt64, _n:haxe.UInt64):haxe.UInt64 {
        final _xh = (_xh : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_xxhash64.T_xxhash64>);
        final _v = (_v : stdgo.GoUInt64);
        final _n = (_n : stdgo.GoUInt64);
        return stdgo._internal.internal.zstd.Zstd_t_xxhash64_static_extension.T_xxhash64_static_extension._round(_xh, _v, _n);
    }
    static public function _digest(_xh:T_xxhash64):haxe.UInt64 {
        final _xh = (_xh : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_xxhash64.T_xxhash64>);
        return stdgo._internal.internal.zstd.Zstd_t_xxhash64_static_extension.T_xxhash64_static_extension._digest(_xh);
    }
    static public function _update(_xh:T_xxhash64, _b:Array<std.UInt>):Void {
        final _xh = (_xh : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_xxhash64.T_xxhash64>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.internal.zstd.Zstd_t_xxhash64_static_extension.T_xxhash64_static_extension._update(_xh, _b);
    }
    static public function _reset(_xh:T_xxhash64):Void {
        final _xh = (_xh : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_xxhash64.T_xxhash64>);
        stdgo._internal.internal.zstd.Zstd_t_xxhash64_static_extension.T_xxhash64_static_extension._reset(_xh);
    }
}
typedef ReaderPointer = stdgo._internal.internal.zstd.Zstd_readerpointer.ReaderPointer;
class Reader_static_extension {
    static public function _wrapError(_r:Reader, _off:StdTypes.Int, _err:stdgo.Error):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._wrapError(_r, _off, _err);
    }
    static public function _makeError(_r:Reader, _off:StdTypes.Int, _msg:String):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _msg = (_msg : stdgo.GoString);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._makeError(_r, _off, _msg);
    }
    static public function _wrapNonEOFError(_r:Reader, _off:StdTypes.Int, _err:stdgo.Error):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._wrapNonEOFError(_r, _off, _err);
    }
    static public function _makeEOFError(_r:Reader, _off:StdTypes.Int):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._makeEOFError(_r, _off);
    }
    static public function _saveWindow(_r:Reader, _buf:Array<std.UInt>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._saveWindow(_r, _buf);
    }
    static public function _setBufferSize(_r:Reader, _size:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _size = (_size : stdgo.GoInt);
        stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._setBufferSize(_r, _size);
    }
    static public function _readBlock(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._readBlock(_r);
    }
    static public function _skipFrame(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._skipFrame(_r);
    }
    static public function _readFrameHeader(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._readFrameHeader(_r);
    }
    static public function _refill(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._refill(_r);
    }
    static public function _refillIfNeeded(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._refillIfNeeded(_r);
    }
    static public function readByte(_r:Reader):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension.readByte(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:Reader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function reset(_r:Reader, _input:stdgo._internal.io.Io_reader.Reader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension.reset(_r, _input);
    }
    static public function _readLiteralsFourStreams(_r:Reader, _data:T_block, _off:StdTypes.Int, _totalStreamsSize:StdTypes.Int, _regeneratedSize:StdTypes.Int, _outbuf:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _totalStreamsSize = (_totalStreamsSize : stdgo.GoInt);
        final _regeneratedSize = (_regeneratedSize : stdgo.GoInt);
        final _outbuf = ([for (i in _outbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._readLiteralsFourStreams(_r, _data, _off, _totalStreamsSize, _regeneratedSize, _outbuf);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _readLiteralsOneStream(_r:Reader, _data:T_block, _off:StdTypes.Int, _compressedSize:StdTypes.Int, _regeneratedSize:StdTypes.Int, _outbuf:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _compressedSize = (_compressedSize : stdgo.GoInt);
        final _regeneratedSize = (_regeneratedSize : stdgo.GoInt);
        final _outbuf = ([for (i in _outbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._readLiteralsOneStream(_r, _data, _off, _compressedSize, _regeneratedSize, _outbuf);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _readHuffLiterals(_r:Reader, _data:T_block, _off:StdTypes.Int, _hdr:std.UInt, _outbuf:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _hdr = (_hdr : stdgo.GoUInt8);
        final _outbuf = ([for (i in _outbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._readHuffLiterals(_r, _data, _off, _hdr, _outbuf);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function _readRawRLELiterals(_r:Reader, _data:T_block, _off:StdTypes.Int, _hdr:std.UInt, _outbuf:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _hdr = (_hdr : stdgo.GoUInt8);
        final _outbuf = ([for (i in _outbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._readRawRLELiterals(_r, _data, _off, _hdr, _outbuf);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function _readLiterals(_r:Reader, _data:T_block, _off:StdTypes.Int, _outbuf:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _outbuf = ([for (i in _outbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._readLiterals(_r, _data, _off, _outbuf);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function _readHuff(_r:Reader, _data:T_block, _off:StdTypes.Int, _table:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _table = ([for (i in _table) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._readHuff(_r, _data, _off, _table);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _makeMatchBaselineFSE(_r:Reader, _off:StdTypes.Int, _fseTable:Array<T_fseEntry>, _baselineTable:Array<T_fseBaselineEntry>):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _fseTable = ([for (i in _fseTable) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
        final _baselineTable = ([for (i in _baselineTable) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._makeMatchBaselineFSE(_r, _off, _fseTable, _baselineTable);
    }
    static public function _makeOffsetBaselineFSE(_r:Reader, _off:StdTypes.Int, _fseTable:Array<T_fseEntry>, _baselineTable:Array<T_fseBaselineEntry>):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _fseTable = ([for (i in _fseTable) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
        final _baselineTable = ([for (i in _baselineTable) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._makeOffsetBaselineFSE(_r, _off, _fseTable, _baselineTable);
    }
    static public function _makeLiteralBaselineFSE(_r:Reader, _off:StdTypes.Int, _fseTable:Array<T_fseEntry>, _baselineTable:Array<T_fseBaselineEntry>):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _fseTable = ([for (i in _fseTable) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
        final _baselineTable = ([for (i in _baselineTable) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._makeLiteralBaselineFSE(_r, _off, _fseTable, _baselineTable);
    }
    static public function _buildFSE(_r:Reader, _off:StdTypes.Int, _norm:Array<StdTypes.Int>, _table:Array<T_fseEntry>, _tableBits:StdTypes.Int):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _norm = ([for (i in _norm) (i : stdgo.GoInt16)] : stdgo.Slice<stdgo.GoInt16>);
        final _table = ([for (i in _table) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
        final _tableBits = (_tableBits : stdgo.GoInt);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._buildFSE(_r, _off, _norm, _table, _tableBits);
    }
    static public function _readFSE(_r:Reader, _data:T_block, _off:StdTypes.Int, _maxSym:StdTypes.Int, _maxBits:StdTypes.Int, _table:Array<T_fseEntry>):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _maxSym = (_maxSym : stdgo.GoInt);
        final _maxBits = (_maxBits : stdgo.GoInt);
        final _table = ([for (i in _table) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._readFSE(_r, _data, _off, _maxSym, _maxBits, _table);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _copyFromWindow(_r:Reader, _rbr:T_reverseBitReader, _offset:std.UInt, _match:std.UInt):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _rbr = (_rbr : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>);
        final _offset = (_offset : stdgo.GoUInt32);
        final _match = (_match : stdgo.GoUInt32);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._copyFromWindow(_r, _rbr, _offset, _match);
    }
    static public function _execSeqs(_r:Reader, _data:T_block, _off:StdTypes.Int, _litbuf:Array<std.UInt>, _seqCount:StdTypes.Int):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _litbuf = ([for (i in _litbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _seqCount = (_seqCount : stdgo.GoInt);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._execSeqs(_r, _data, _off, _litbuf, _seqCount);
    }
    static public function _setSeqTable(_r:Reader, _data:T_block, _off:StdTypes.Int, _kind:T_seqCode, _mode:std.UInt):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _mode = (_mode : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._setSeqTable(_r, _data, _off, _kind, _mode);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _initSeqs(_r:Reader, _data:T_block, _off:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._initSeqs(_r, _data, _off);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _compressedBlock(_r:Reader, _blockSize:StdTypes.Int):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _blockSize = (_blockSize : stdgo.GoInt);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._compressedBlock(_r, _blockSize);
    }
    static public function _makeReverseBitReader(_r:Reader, _data:T_block, _off:StdTypes.Int, _start:StdTypes.Int):stdgo.Tuple<T_reverseBitReader, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _start = (_start : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._makeReverseBitReader(_r, _data, _off, _start);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _makeBitReader(_r:Reader, _data:T_block, _off:StdTypes.Int):T_bitReader {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        return stdgo._internal.internal.zstd.Zstd_reader_static_extension.Reader_static_extension._makeBitReader(_r, _data, _off);
    }
}
@:dox(hide) typedef T_zstdErrorPointer = stdgo._internal.internal.zstd.Zstd_t_zstderrorpointer.T_zstdErrorPointer;
@:dox(hide) class T_zstdError_static_extension {
    static public function unwrap(_ze:T_zstdError):stdgo.Error {
        final _ze = (_ze : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError>);
        return stdgo._internal.internal.zstd.Zstd_t_zstderror_static_extension.T_zstdError_static_extension.unwrap(_ze);
    }
    static public function error(_ze:T_zstdError):String {
        final _ze = (_ze : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError>);
        return stdgo._internal.internal.zstd.Zstd_t_zstderror_static_extension.T_zstdError_static_extension.error(_ze);
    }
}
@:dox(hide) typedef T_blockPointer = stdgo._internal.internal.zstd.Zstd_t_blockpointer.T_blockPointer;
@:dox(hide) class T_block_static_extension {

}
@:dox(hide) typedef T_seqCodePointer = stdgo._internal.internal.zstd.Zstd_t_seqcodepointer.T_seqCodePointer;
@:dox(hide) class T_seqCode_static_extension {

}
/**
    * Package zstd provides a decompressor for zstd streams,
    * described in RFC 8878. It does not support dictionaries.
**/
class Zstd {
    /**
        * NewReader creates a new Reader that decompresses data from the given reader.
    **/
    static public inline function newReader(_input:stdgo._internal.io.Io_reader.Reader):Reader {
        return stdgo._internal.internal.zstd.Zstd_newreader.newReader(_input);
    }
}
