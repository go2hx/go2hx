package stdgo.compress;
/**
    Package flate implements the DEFLATE compressed data format, described in
    RFC 1951.  The gzip and zlib packages implement access to DEFLATE-based file
    formats.
**/
private var __go2hxdoc__package : Bool;
final noCompression : haxe.UInt64 = stdgo._internal.compress.flate.Flate.noCompression;
final bestSpeed : haxe.UInt64 = stdgo._internal.compress.flate.Flate.bestSpeed;
final bestCompression : haxe.UInt64 = stdgo._internal.compress.flate.Flate.bestCompression;
final defaultCompression : haxe.UInt64 = stdgo._internal.compress.flate.Flate.defaultCompression;
final huffmanOnly : haxe.UInt64 = stdgo._internal.compress.flate.Flate.huffmanOnly;
typedef Resetter = stdgo._internal.compress.flate.Flate.Resetter;
typedef Reader = stdgo._internal.compress.flate.Flate.Reader;
abstract T_compressionLevel(stdgo._internal.compress.flate.Flate.T_compressionLevel) from stdgo._internal.compress.flate.Flate.T_compressionLevel to stdgo._internal.compress.flate.Flate.T_compressionLevel {
    public var _level(get, set) : StdTypes.Int;
    function get__level():StdTypes.Int return this._level;
    function set__level(v:StdTypes.Int):StdTypes.Int {
        this._level = v;
        return v;
    }
    public var _good(get, set) : StdTypes.Int;
    function get__good():StdTypes.Int return this._good;
    function set__good(v:StdTypes.Int):StdTypes.Int {
        this._good = v;
        return v;
    }
    public var _lazy(get, set) : StdTypes.Int;
    function get__lazy():StdTypes.Int return this._lazy;
    function set__lazy(v:StdTypes.Int):StdTypes.Int {
        this._lazy = v;
        return v;
    }
    public var _nice(get, set) : StdTypes.Int;
    function get__nice():StdTypes.Int return this._nice;
    function set__nice(v:StdTypes.Int):StdTypes.Int {
        this._nice = v;
        return v;
    }
    public var _chain(get, set) : StdTypes.Int;
    function get__chain():StdTypes.Int return this._chain;
    function set__chain(v:StdTypes.Int):StdTypes.Int {
        this._chain = v;
        return v;
    }
    public var _fastSkipHashing(get, set) : StdTypes.Int;
    function get__fastSkipHashing():StdTypes.Int return this._fastSkipHashing;
    function set__fastSkipHashing(v:StdTypes.Int):StdTypes.Int {
        this._fastSkipHashing = v;
        return v;
    }
    public function new(?_level:StdTypes.Int, ?_good:StdTypes.Int, ?_lazy:StdTypes.Int, ?_nice:StdTypes.Int, ?_chain:StdTypes.Int, ?_fastSkipHashing:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate.T_compressionLevel(_level, _good, _lazy, _nice, _chain, _fastSkipHashing);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_compressor(stdgo._internal.compress.flate.Flate.T_compressor) from stdgo._internal.compress.flate.Flate.T_compressor to stdgo._internal.compress.flate.Flate.T_compressor {
    public var _compressionLevel(get, set) : stdgo._internal.compress.flate.Flate.T_compressionLevel;
    function get__compressionLevel():stdgo._internal.compress.flate.Flate.T_compressionLevel return this._compressionLevel;
    function set__compressionLevel(v:stdgo._internal.compress.flate.Flate.T_compressionLevel):stdgo._internal.compress.flate.Flate.T_compressionLevel {
        this._compressionLevel = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.compress.flate.Flate.T_huffmanBitWriter;
    function get__w():stdgo._internal.compress.flate.Flate.T_huffmanBitWriter return this._w;
    function set__w(v:stdgo._internal.compress.flate.Flate.T_huffmanBitWriter):stdgo._internal.compress.flate.Flate.T_huffmanBitWriter {
        this._w = v;
        return v;
    }
    public var _bulkHasher(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt32>) -> Void;
    function get__bulkHasher():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt32>) -> Void return (_0, _1) -> this._bulkHasher([for (i in _0) i], [for (i in _1) i]);
    function set__bulkHasher(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt32>) -> Void):(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt32>) -> Void {
        this._bulkHasher = v;
        return v;
    }
    public var _fill(get, set) : (stdgo.Ref<stdgo._internal.compress.flate.Flate.T_compressor>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt;
    function get__fill():(stdgo.Ref<stdgo._internal.compress.flate.Flate.T_compressor>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt return (_0, _1) -> this._fill(_0, [for (i in _1) i]);
    function set__fill(v:(stdgo.Ref<stdgo._internal.compress.flate.Flate.T_compressor>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt):(stdgo.Ref<stdgo._internal.compress.flate.Flate.T_compressor>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt {
        this._fill = v;
        return v;
    }
    public var _step(get, set) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_compressor> -> Void;
    function get__step():stdgo.Ref<stdgo._internal.compress.flate.Flate.T_compressor> -> Void return _0 -> this._step(_0);
    function set__step(v:stdgo.Ref<stdgo._internal.compress.flate.Flate.T_compressor> -> Void):stdgo.Ref<stdgo._internal.compress.flate.Flate.T_compressor> -> Void {
        this._step = v;
        return v;
    }
    public var _sync(get, set) : Bool;
    function get__sync():Bool return this._sync;
    function set__sync(v:Bool):Bool {
        this._sync = v;
        return v;
    }
    public var _bestSpeed(get, set) : stdgo._internal.compress.flate.Flate.T_deflateFast;
    function get__bestSpeed():stdgo._internal.compress.flate.Flate.T_deflateFast return this._bestSpeed;
    function set__bestSpeed(v:stdgo._internal.compress.flate.Flate.T_deflateFast):stdgo._internal.compress.flate.Flate.T_deflateFast {
        this._bestSpeed = v;
        return v;
    }
    public var _chainHead(get, set) : StdTypes.Int;
    function get__chainHead():StdTypes.Int return this._chainHead;
    function set__chainHead(v:StdTypes.Int):StdTypes.Int {
        this._chainHead = v;
        return v;
    }
    public var _hashHead(get, set) : haxe.ds.Vector<std.UInt>;
    function get__hashHead():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._hashHead) i]);
    function set__hashHead(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._hashHead = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public var _hashPrev(get, set) : haxe.ds.Vector<std.UInt>;
    function get__hashPrev():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._hashPrev) i]);
    function set__hashPrev(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._hashPrev = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public var _hashOffset(get, set) : StdTypes.Int;
    function get__hashOffset():StdTypes.Int return this._hashOffset;
    function set__hashOffset(v:StdTypes.Int):StdTypes.Int {
        this._hashOffset = v;
        return v;
    }
    public var _index(get, set) : StdTypes.Int;
    function get__index():StdTypes.Int return this._index;
    function set__index(v:StdTypes.Int):StdTypes.Int {
        this._index = v;
        return v;
    }
    public var _window(get, set) : Array<std.UInt>;
    function get__window():Array<std.UInt> return [for (i in this._window) i];
    function set__window(v:Array<std.UInt>):Array<std.UInt> {
        this._window = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _windowEnd(get, set) : StdTypes.Int;
    function get__windowEnd():StdTypes.Int return this._windowEnd;
    function set__windowEnd(v:StdTypes.Int):StdTypes.Int {
        this._windowEnd = v;
        return v;
    }
    public var _blockStart(get, set) : StdTypes.Int;
    function get__blockStart():StdTypes.Int return this._blockStart;
    function set__blockStart(v:StdTypes.Int):StdTypes.Int {
        this._blockStart = v;
        return v;
    }
    public var _byteAvailable(get, set) : Bool;
    function get__byteAvailable():Bool return this._byteAvailable;
    function set__byteAvailable(v:Bool):Bool {
        this._byteAvailable = v;
        return v;
    }
    public var _tokens(get, set) : Array<stdgo._internal.compress.flate.Flate.T_token>;
    function get__tokens():Array<stdgo._internal.compress.flate.Flate.T_token> return [for (i in this._tokens) i];
    function set__tokens(v:Array<stdgo._internal.compress.flate.Flate.T_token>):Array<stdgo._internal.compress.flate.Flate.T_token> {
        this._tokens = ([for (i in v) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>);
        return v;
    }
    public var _length(get, set) : StdTypes.Int;
    function get__length():StdTypes.Int return this._length;
    function set__length(v:StdTypes.Int):StdTypes.Int {
        this._length = v;
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = v;
        return v;
    }
    public var _maxInsertIndex(get, set) : StdTypes.Int;
    function get__maxInsertIndex():StdTypes.Int return this._maxInsertIndex;
    function set__maxInsertIndex(v:StdTypes.Int):StdTypes.Int {
        this._maxInsertIndex = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _hashMatch(get, set) : haxe.ds.Vector<std.UInt>;
    function get__hashMatch():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._hashMatch) i]);
    function set__hashMatch(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._hashMatch = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public function new(?_compressionLevel:stdgo._internal.compress.flate.Flate.T_compressionLevel, ?_w:stdgo._internal.compress.flate.Flate.T_huffmanBitWriter, ?_bulkHasher:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt32>) -> Void, ?_fill:(stdgo.Ref<stdgo._internal.compress.flate.Flate.T_compressor>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt, ?_step:stdgo.Ref<stdgo._internal.compress.flate.Flate.T_compressor> -> Void, ?_sync:Bool, ?_bestSpeed:stdgo._internal.compress.flate.Flate.T_deflateFast, ?_chainHead:StdTypes.Int, ?_hashHead:haxe.ds.Vector<std.UInt>, ?_hashPrev:haxe.ds.Vector<std.UInt>, ?_hashOffset:StdTypes.Int, ?_index:StdTypes.Int, ?_window:Array<std.UInt>, ?_windowEnd:StdTypes.Int, ?_blockStart:StdTypes.Int, ?_byteAvailable:Bool, ?_tokens:Array<stdgo._internal.compress.flate.Flate.T_token>, ?_length:StdTypes.Int, ?_offset:StdTypes.Int, ?_maxInsertIndex:StdTypes.Int, ?_err:stdgo.Error, ?_hashMatch:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.compress.flate.Flate.T_compressor(
_compressionLevel,
_w,
_bulkHasher,
_fill,
_step,
_sync,
_bestSpeed,
_chainHead,
([for (i in _hashHead) i] : stdgo.GoArray<stdgo.GoUInt32>),
([for (i in _hashPrev) i] : stdgo.GoArray<stdgo.GoUInt32>),
_hashOffset,
_index,
([for (i in _window) i] : stdgo.Slice<stdgo.GoUInt8>),
_windowEnd,
_blockStart,
_byteAvailable,
([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>),
_length,
_offset,
_maxInsertIndex,
_err,
([for (i in _hashMatch) i] : stdgo.GoArray<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_dictWriter(stdgo._internal.compress.flate.Flate.T_dictWriter) from stdgo._internal.compress.flate.Flate.T_dictWriter to stdgo._internal.compress.flate.Flate.T_dictWriter {
    public var _w(get, set) : stdgo._internal.io.Io.Writer;
    function get__w():stdgo._internal.io.Io.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        this._w = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io.Writer) this = new stdgo._internal.compress.flate.Flate.T_dictWriter(_w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Writer(stdgo._internal.compress.flate.Flate.Writer) from stdgo._internal.compress.flate.Flate.Writer to stdgo._internal.compress.flate.Flate.Writer {
    public var _d(get, set) : stdgo._internal.compress.flate.Flate.T_compressor;
    function get__d():stdgo._internal.compress.flate.Flate.T_compressor return this._d;
    function set__d(v:stdgo._internal.compress.flate.Flate.T_compressor):stdgo._internal.compress.flate.Flate.T_compressor {
        this._d = v;
        return v;
    }
    public var _dict(get, set) : Array<std.UInt>;
    function get__dict():Array<std.UInt> return [for (i in this._dict) i];
    function set__dict(v:Array<std.UInt>):Array<std.UInt> {
        this._dict = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_d:stdgo._internal.compress.flate.Flate.T_compressor, ?_dict:Array<std.UInt>) this = new stdgo._internal.compress.flate.Flate.Writer(_d, ([for (i in _dict) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_deflateTest(stdgo._internal.compress.flate.Flate.T_deflateTest) from stdgo._internal.compress.flate.Flate.T_deflateTest to stdgo._internal.compress.flate.Flate.T_deflateTest {
    public var _in(get, set) : Array<std.UInt>;
    function get__in():Array<std.UInt> return [for (i in this._in) i];
    function set__in(v:Array<std.UInt>):Array<std.UInt> {
        this._in = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _level(get, set) : StdTypes.Int;
    function get__level():StdTypes.Int return this._level;
    function set__level(v:StdTypes.Int):StdTypes.Int {
        this._level = v;
        return v;
    }
    public var _out(get, set) : Array<std.UInt>;
    function get__out():Array<std.UInt> return [for (i in this._out) i];
    function set__out(v:Array<std.UInt>):Array<std.UInt> {
        this._out = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_in:Array<std.UInt>, ?_level:StdTypes.Int, ?_out:Array<std.UInt>) this = new stdgo._internal.compress.flate.Flate.T_deflateTest(([for (i in _in) i] : stdgo.Slice<stdgo.GoUInt8>), _level, ([for (i in _out) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_deflateInflateTest(stdgo._internal.compress.flate.Flate.T_deflateInflateTest) from stdgo._internal.compress.flate.Flate.T_deflateInflateTest to stdgo._internal.compress.flate.Flate.T_deflateInflateTest {
    public var _in(get, set) : Array<std.UInt>;
    function get__in():Array<std.UInt> return [for (i in this._in) i];
    function set__in(v:Array<std.UInt>):Array<std.UInt> {
        this._in = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_in:Array<std.UInt>) this = new stdgo._internal.compress.flate.Flate.T_deflateInflateTest(([for (i in _in) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_reverseBitsTest(stdgo._internal.compress.flate.Flate.T_reverseBitsTest) from stdgo._internal.compress.flate.Flate.T_reverseBitsTest to stdgo._internal.compress.flate.Flate.T_reverseBitsTest {
    public var _in(get, set) : std.UInt;
    function get__in():std.UInt return this._in;
    function set__in(v:std.UInt):std.UInt {
        this._in = v;
        return v;
    }
    public var _bitCount(get, set) : std.UInt;
    function get__bitCount():std.UInt return this._bitCount;
    function set__bitCount(v:std.UInt):std.UInt {
        this._bitCount = v;
        return v;
    }
    public var _out(get, set) : std.UInt;
    function get__out():std.UInt return this._out;
    function set__out(v:std.UInt):std.UInt {
        this._out = v;
        return v;
    }
    public function new(?_in:std.UInt, ?_bitCount:std.UInt, ?_out:std.UInt) this = new stdgo._internal.compress.flate.Flate.T_reverseBitsTest(_in, _bitCount, _out);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_sparseReader(stdgo._internal.compress.flate.Flate.T_sparseReader) from stdgo._internal.compress.flate.Flate.T_sparseReader to stdgo._internal.compress.flate.Flate.T_sparseReader {
    public var _l(get, set) : haxe.Int64;
    function get__l():haxe.Int64 return this._l;
    function set__l(v:haxe.Int64):haxe.Int64 {
        this._l = v;
        return v;
    }
    public var _cur(get, set) : haxe.Int64;
    function get__cur():haxe.Int64 return this._cur;
    function set__cur(v:haxe.Int64):haxe.Int64 {
        this._cur = v;
        return v;
    }
    public function new(?_l:haxe.Int64, ?_cur:haxe.Int64) this = new stdgo._internal.compress.flate.Flate.T_sparseReader(_l, _cur);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_syncBuffer(stdgo._internal.compress.flate.Flate.T_syncBuffer) from stdgo._internal.compress.flate.Flate.T_syncBuffer to stdgo._internal.compress.flate.Flate.T_syncBuffer {
    public var _buf(get, set) : stdgo._internal.bytes.Bytes.Buffer;
    function get__buf():stdgo._internal.bytes.Bytes.Buffer return this._buf;
    function set__buf(v:stdgo._internal.bytes.Bytes.Buffer):stdgo._internal.bytes.Bytes.Buffer {
        this._buf = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync.RWMutex;
    function get__mu():stdgo._internal.sync.Sync.RWMutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync.RWMutex):stdgo._internal.sync.Sync.RWMutex {
        this._mu = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _ready(get, set) : stdgo.Chan<Bool>;
    function get__ready():stdgo.Chan<Bool> return this._ready;
    function set__ready(v:stdgo.Chan<Bool>):stdgo.Chan<Bool> {
        this._ready = v;
        return v;
    }
    public function new(?_buf:stdgo._internal.bytes.Bytes.Buffer, ?_mu:stdgo._internal.sync.Sync.RWMutex, ?_closed:Bool, ?_ready:stdgo.Chan<Bool>) this = new stdgo._internal.compress.flate.Flate.T_syncBuffer(_buf, _mu, _closed, _ready);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_deflateInflateStringTest(stdgo._internal.compress.flate.Flate.T_deflateInflateStringTest) from stdgo._internal.compress.flate.Flate.T_deflateInflateStringTest to stdgo._internal.compress.flate.Flate.T_deflateInflateStringTest {
    public var _filename(get, set) : String;
    function get__filename():String return this._filename;
    function set__filename(v:String):String {
        this._filename = v;
        return v;
    }
    public var _label(get, set) : String;
    function get__label():String return this._label;
    function set__label(v:String):String {
        this._label = v;
        return v;
    }
    public var _limit(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__limit():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._limit) i]);
    function set__limit(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._limit = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt>);
        return v;
    }
    public function new(?_filename:String, ?_label:String, ?_limit:haxe.ds.Vector<StdTypes.Int>) this = new stdgo._internal.compress.flate.Flate.T_deflateInflateStringTest(_filename, _label, ([for (i in _limit) i] : stdgo.GoArray<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_failWriter(stdgo._internal.compress.flate.Flate.T_failWriter) from stdgo._internal.compress.flate.Flate.T_failWriter to stdgo._internal.compress.flate.Flate.T_failWriter {
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = v;
        return v;
    }
    public function new(?_n:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate.T_failWriter(_n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_tableEntry(stdgo._internal.compress.flate.Flate.T_tableEntry) from stdgo._internal.compress.flate.Flate.T_tableEntry to stdgo._internal.compress.flate.Flate.T_tableEntry {
    public var _val(get, set) : std.UInt;
    function get__val():std.UInt return this._val;
    function set__val(v:std.UInt):std.UInt {
        this._val = v;
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = v;
        return v;
    }
    public function new(?_val:std.UInt, ?_offset:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate.T_tableEntry(_val, _offset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_deflateFast(stdgo._internal.compress.flate.Flate.T_deflateFast) from stdgo._internal.compress.flate.Flate.T_deflateFast to stdgo._internal.compress.flate.Flate.T_deflateFast {
    public var _table(get, set) : haxe.ds.Vector<stdgo._internal.compress.flate.Flate.T_tableEntry>;
    function get__table():haxe.ds.Vector<stdgo._internal.compress.flate.Flate.T_tableEntry> return haxe.ds.Vector.fromArrayCopy([for (i in this._table) i]);
    function set__table(v:haxe.ds.Vector<stdgo._internal.compress.flate.Flate.T_tableEntry>):haxe.ds.Vector<stdgo._internal.compress.flate.Flate.T_tableEntry> {
        this._table = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.compress.flate.Flate.T_tableEntry>);
        return v;
    }
    public var _prev(get, set) : Array<std.UInt>;
    function get__prev():Array<std.UInt> return [for (i in this._prev) i];
    function set__prev(v:Array<std.UInt>):Array<std.UInt> {
        this._prev = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _cur(get, set) : StdTypes.Int;
    function get__cur():StdTypes.Int return this._cur;
    function set__cur(v:StdTypes.Int):StdTypes.Int {
        this._cur = v;
        return v;
    }
    public function new(?_table:haxe.ds.Vector<stdgo._internal.compress.flate.Flate.T_tableEntry>, ?_prev:Array<std.UInt>, ?_cur:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate.T_deflateFast(([for (i in _table) i] : stdgo.GoArray<stdgo._internal.compress.flate.Flate.T_tableEntry>), ([for (i in _prev) i] : stdgo.Slice<stdgo.GoUInt8>), _cur);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_dictDecoder(stdgo._internal.compress.flate.Flate.T_dictDecoder) from stdgo._internal.compress.flate.Flate.T_dictDecoder to stdgo._internal.compress.flate.Flate.T_dictDecoder {
    public var _hist(get, set) : Array<std.UInt>;
    function get__hist():Array<std.UInt> return [for (i in this._hist) i];
    function set__hist(v:Array<std.UInt>):Array<std.UInt> {
        this._hist = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _wrPos(get, set) : StdTypes.Int;
    function get__wrPos():StdTypes.Int return this._wrPos;
    function set__wrPos(v:StdTypes.Int):StdTypes.Int {
        this._wrPos = v;
        return v;
    }
    public var _rdPos(get, set) : StdTypes.Int;
    function get__rdPos():StdTypes.Int return this._rdPos;
    function set__rdPos(v:StdTypes.Int):StdTypes.Int {
        this._rdPos = v;
        return v;
    }
    public var _full(get, set) : Bool;
    function get__full():Bool return this._full;
    function set__full(v:Bool):Bool {
        this._full = v;
        return v;
    }
    public function new(?_hist:Array<std.UInt>, ?_wrPos:StdTypes.Int, ?_rdPos:StdTypes.Int, ?_full:Bool) this = new stdgo._internal.compress.flate.Flate.T_dictDecoder(([for (i in _hist) i] : stdgo.Slice<stdgo.GoUInt8>), _wrPos, _rdPos, _full);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_huffmanBitWriter(stdgo._internal.compress.flate.Flate.T_huffmanBitWriter) from stdgo._internal.compress.flate.Flate.T_huffmanBitWriter to stdgo._internal.compress.flate.Flate.T_huffmanBitWriter {
    public var _writer(get, set) : stdgo._internal.io.Io.Writer;
    function get__writer():stdgo._internal.io.Io.Writer return this._writer;
    function set__writer(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        this._writer = v;
        return v;
    }
    public var _bits(get, set) : haxe.UInt64;
    function get__bits():haxe.UInt64 return this._bits;
    function set__bits(v:haxe.UInt64):haxe.UInt64 {
        this._bits = v;
        return v;
    }
    public var _nbits(get, set) : std.UInt;
    function get__nbits():std.UInt return this._nbits;
    function set__nbits(v:std.UInt):std.UInt {
        this._nbits = v;
        return v;
    }
    public var _bytes(get, set) : haxe.ds.Vector<std.UInt>;
    function get__bytes():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._bytes) i]);
    function set__bytes(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._bytes = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _codegenFreq(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__codegenFreq():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._codegenFreq) i]);
    function set__codegenFreq(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._codegenFreq = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt32>);
        return v;
    }
    public var _nbytes(get, set) : StdTypes.Int;
    function get__nbytes():StdTypes.Int return this._nbytes;
    function set__nbytes(v:StdTypes.Int):StdTypes.Int {
        this._nbytes = v;
        return v;
    }
    public var _literalFreq(get, set) : Array<StdTypes.Int>;
    function get__literalFreq():Array<StdTypes.Int> return [for (i in this._literalFreq) i];
    function set__literalFreq(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._literalFreq = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var _offsetFreq(get, set) : Array<StdTypes.Int>;
    function get__offsetFreq():Array<StdTypes.Int> return [for (i in this._offsetFreq) i];
    function set__offsetFreq(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._offsetFreq = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var _codegen(get, set) : Array<std.UInt>;
    function get__codegen():Array<std.UInt> return [for (i in this._codegen) i];
    function set__codegen(v:Array<std.UInt>):Array<std.UInt> {
        this._codegen = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _literalEncoding(get, set) : stdgo._internal.compress.flate.Flate.T_huffmanEncoder;
    function get__literalEncoding():stdgo._internal.compress.flate.Flate.T_huffmanEncoder return this._literalEncoding;
    function set__literalEncoding(v:stdgo._internal.compress.flate.Flate.T_huffmanEncoder):stdgo._internal.compress.flate.Flate.T_huffmanEncoder {
        this._literalEncoding = v;
        return v;
    }
    public var _offsetEncoding(get, set) : stdgo._internal.compress.flate.Flate.T_huffmanEncoder;
    function get__offsetEncoding():stdgo._internal.compress.flate.Flate.T_huffmanEncoder return this._offsetEncoding;
    function set__offsetEncoding(v:stdgo._internal.compress.flate.Flate.T_huffmanEncoder):stdgo._internal.compress.flate.Flate.T_huffmanEncoder {
        this._offsetEncoding = v;
        return v;
    }
    public var _codegenEncoding(get, set) : stdgo._internal.compress.flate.Flate.T_huffmanEncoder;
    function get__codegenEncoding():stdgo._internal.compress.flate.Flate.T_huffmanEncoder return this._codegenEncoding;
    function set__codegenEncoding(v:stdgo._internal.compress.flate.Flate.T_huffmanEncoder):stdgo._internal.compress.flate.Flate.T_huffmanEncoder {
        this._codegenEncoding = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_writer:stdgo._internal.io.Io.Writer, ?_bits:haxe.UInt64, ?_nbits:std.UInt, ?_bytes:haxe.ds.Vector<std.UInt>, ?_codegenFreq:haxe.ds.Vector<StdTypes.Int>, ?_nbytes:StdTypes.Int, ?_literalFreq:Array<StdTypes.Int>, ?_offsetFreq:Array<StdTypes.Int>, ?_codegen:Array<std.UInt>, ?_literalEncoding:stdgo._internal.compress.flate.Flate.T_huffmanEncoder, ?_offsetEncoding:stdgo._internal.compress.flate.Flate.T_huffmanEncoder, ?_codegenEncoding:stdgo._internal.compress.flate.Flate.T_huffmanEncoder, ?_err:stdgo.Error) this = new stdgo._internal.compress.flate.Flate.T_huffmanBitWriter(
_writer,
_bits,
_nbits,
([for (i in _bytes) i] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _codegenFreq) i] : stdgo.GoArray<stdgo.GoInt32>),
_nbytes,
([for (i in _literalFreq) i] : stdgo.Slice<stdgo.GoInt32>),
([for (i in _offsetFreq) i] : stdgo.Slice<stdgo.GoInt32>),
([for (i in _codegen) i] : stdgo.Slice<stdgo.GoUInt8>),
_literalEncoding,
_offsetEncoding,
_codegenEncoding,
_err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_huffTest(stdgo._internal.compress.flate.Flate.T_huffTest) from stdgo._internal.compress.flate.Flate.T_huffTest to stdgo._internal.compress.flate.Flate.T_huffTest {
    public var _tokens(get, set) : Array<stdgo._internal.compress.flate.Flate.T_token>;
    function get__tokens():Array<stdgo._internal.compress.flate.Flate.T_token> return [for (i in this._tokens) i];
    function set__tokens(v:Array<stdgo._internal.compress.flate.Flate.T_token>):Array<stdgo._internal.compress.flate.Flate.T_token> {
        this._tokens = ([for (i in v) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>);
        return v;
    }
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = v;
        return v;
    }
    public var _want(get, set) : String;
    function get__want():String return this._want;
    function set__want(v:String):String {
        this._want = v;
        return v;
    }
    public var _wantNoInput(get, set) : String;
    function get__wantNoInput():String return this._wantNoInput;
    function set__wantNoInput(v:String):String {
        this._wantNoInput = v;
        return v;
    }
    public function new(?_tokens:Array<stdgo._internal.compress.flate.Flate.T_token>, ?_input:String, ?_want:String, ?_wantNoInput:String) this = new stdgo._internal.compress.flate.Flate.T_huffTest(([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), _input, _want, _wantNoInput);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_hcode(stdgo._internal.compress.flate.Flate.T_hcode) from stdgo._internal.compress.flate.Flate.T_hcode to stdgo._internal.compress.flate.Flate.T_hcode {
    public var _code(get, set) : std.UInt;
    function get__code():std.UInt return this._code;
    function set__code(v:std.UInt):std.UInt {
        this._code = v;
        return v;
    }
    public var _len(get, set) : std.UInt;
    function get__len():std.UInt return this._len;
    function set__len(v:std.UInt):std.UInt {
        this._len = v;
        return v;
    }
    public function new(?_code:std.UInt, ?_len:std.UInt) this = new stdgo._internal.compress.flate.Flate.T_hcode(_code, _len);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_huffmanEncoder(stdgo._internal.compress.flate.Flate.T_huffmanEncoder) from stdgo._internal.compress.flate.Flate.T_huffmanEncoder to stdgo._internal.compress.flate.Flate.T_huffmanEncoder {
    public var _codes(get, set) : Array<stdgo._internal.compress.flate.Flate.T_hcode>;
    function get__codes():Array<stdgo._internal.compress.flate.Flate.T_hcode> return [for (i in this._codes) i];
    function set__codes(v:Array<stdgo._internal.compress.flate.Flate.T_hcode>):Array<stdgo._internal.compress.flate.Flate.T_hcode> {
        this._codes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_hcode>);
        return v;
    }
    public var _freqcache(get, set) : Array<stdgo._internal.compress.flate.Flate.T_literalNode>;
    function get__freqcache():Array<stdgo._internal.compress.flate.Flate.T_literalNode> return [for (i in this._freqcache) i];
    function set__freqcache(v:Array<stdgo._internal.compress.flate.Flate.T_literalNode>):Array<stdgo._internal.compress.flate.Flate.T_literalNode> {
        this._freqcache = ([for (i in v) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_literalNode>);
        return v;
    }
    public var _bitCount(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__bitCount():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._bitCount) i]);
    function set__bitCount(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._bitCount = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt32>);
        return v;
    }
    public var _lns(get, set) : stdgo._internal.compress.flate.Flate.T_byLiteral;
    function get__lns():stdgo._internal.compress.flate.Flate.T_byLiteral return this._lns;
    function set__lns(v:stdgo._internal.compress.flate.Flate.T_byLiteral):stdgo._internal.compress.flate.Flate.T_byLiteral {
        this._lns = v;
        return v;
    }
    public var _lfs(get, set) : stdgo._internal.compress.flate.Flate.T_byFreq;
    function get__lfs():stdgo._internal.compress.flate.Flate.T_byFreq return this._lfs;
    function set__lfs(v:stdgo._internal.compress.flate.Flate.T_byFreq):stdgo._internal.compress.flate.Flate.T_byFreq {
        this._lfs = v;
        return v;
    }
    public function new(?_codes:Array<stdgo._internal.compress.flate.Flate.T_hcode>, ?_freqcache:Array<stdgo._internal.compress.flate.Flate.T_literalNode>, ?_bitCount:haxe.ds.Vector<StdTypes.Int>, ?_lns:stdgo._internal.compress.flate.Flate.T_byLiteral, ?_lfs:stdgo._internal.compress.flate.Flate.T_byFreq) this = new stdgo._internal.compress.flate.Flate.T_huffmanEncoder(([for (i in _codes) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_hcode>), ([for (i in _freqcache) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_literalNode>), ([for (i in _bitCount) i] : stdgo.GoArray<stdgo.GoInt32>), _lns, _lfs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_literalNode(stdgo._internal.compress.flate.Flate.T_literalNode) from stdgo._internal.compress.flate.Flate.T_literalNode to stdgo._internal.compress.flate.Flate.T_literalNode {
    public var _literal(get, set) : std.UInt;
    function get__literal():std.UInt return this._literal;
    function set__literal(v:std.UInt):std.UInt {
        this._literal = v;
        return v;
    }
    public var _freq(get, set) : StdTypes.Int;
    function get__freq():StdTypes.Int return this._freq;
    function set__freq(v:StdTypes.Int):StdTypes.Int {
        this._freq = v;
        return v;
    }
    public function new(?_literal:std.UInt, ?_freq:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate.T_literalNode(_literal, _freq);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_levelInfo(stdgo._internal.compress.flate.Flate.T_levelInfo) from stdgo._internal.compress.flate.Flate.T_levelInfo to stdgo._internal.compress.flate.Flate.T_levelInfo {
    public var _level(get, set) : StdTypes.Int;
    function get__level():StdTypes.Int return this._level;
    function set__level(v:StdTypes.Int):StdTypes.Int {
        this._level = v;
        return v;
    }
    public var _lastFreq(get, set) : StdTypes.Int;
    function get__lastFreq():StdTypes.Int return this._lastFreq;
    function set__lastFreq(v:StdTypes.Int):StdTypes.Int {
        this._lastFreq = v;
        return v;
    }
    public var _nextCharFreq(get, set) : StdTypes.Int;
    function get__nextCharFreq():StdTypes.Int return this._nextCharFreq;
    function set__nextCharFreq(v:StdTypes.Int):StdTypes.Int {
        this._nextCharFreq = v;
        return v;
    }
    public var _nextPairFreq(get, set) : StdTypes.Int;
    function get__nextPairFreq():StdTypes.Int return this._nextPairFreq;
    function set__nextPairFreq(v:StdTypes.Int):StdTypes.Int {
        this._nextPairFreq = v;
        return v;
    }
    public var _needed(get, set) : StdTypes.Int;
    function get__needed():StdTypes.Int return this._needed;
    function set__needed(v:StdTypes.Int):StdTypes.Int {
        this._needed = v;
        return v;
    }
    public function new(?_level:StdTypes.Int, ?_lastFreq:StdTypes.Int, ?_nextCharFreq:StdTypes.Int, ?_nextPairFreq:StdTypes.Int, ?_needed:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate.T_levelInfo(_level, _lastFreq, _nextCharFreq, _nextPairFreq, _needed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract ReadError(stdgo._internal.compress.flate.Flate.ReadError) from stdgo._internal.compress.flate.Flate.ReadError to stdgo._internal.compress.flate.Flate.ReadError {
    public var offset(get, set) : haxe.Int64;
    function get_offset():haxe.Int64 return this.offset;
    function set_offset(v:haxe.Int64):haxe.Int64 {
        this.offset = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public function new(?offset:haxe.Int64, ?err:stdgo.Error) this = new stdgo._internal.compress.flate.Flate.ReadError(offset, err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract WriteError(stdgo._internal.compress.flate.Flate.WriteError) from stdgo._internal.compress.flate.Flate.WriteError to stdgo._internal.compress.flate.Flate.WriteError {
    public var offset(get, set) : haxe.Int64;
    function get_offset():haxe.Int64 return this.offset;
    function set_offset(v:haxe.Int64):haxe.Int64 {
        this.offset = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public function new(?offset:haxe.Int64, ?err:stdgo.Error) this = new stdgo._internal.compress.flate.Flate.WriteError(offset, err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_huffmanDecoder(stdgo._internal.compress.flate.Flate.T_huffmanDecoder) from stdgo._internal.compress.flate.Flate.T_huffmanDecoder to stdgo._internal.compress.flate.Flate.T_huffmanDecoder {
    public var _min(get, set) : StdTypes.Int;
    function get__min():StdTypes.Int return this._min;
    function set__min(v:StdTypes.Int):StdTypes.Int {
        this._min = v;
        return v;
    }
    public var _chunks(get, set) : haxe.ds.Vector<std.UInt>;
    function get__chunks():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._chunks) i]);
    function set__chunks(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._chunks = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public var _links(get, set) : Array<Array<std.UInt>>;
    function get__links():Array<Array<std.UInt>> return [for (i in this._links) [for (i in i) i]];
    function set__links(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this._links = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo.GoUInt32>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>);
        return v;
    }
    public var _linkMask(get, set) : std.UInt;
    function get__linkMask():std.UInt return this._linkMask;
    function set__linkMask(v:std.UInt):std.UInt {
        this._linkMask = v;
        return v;
    }
    public function new(?_min:StdTypes.Int, ?_chunks:haxe.ds.Vector<std.UInt>, ?_links:Array<Array<std.UInt>>, ?_linkMask:std.UInt) this = new stdgo._internal.compress.flate.Flate.T_huffmanDecoder(_min, ([for (i in _chunks) i] : stdgo.GoArray<stdgo.GoUInt32>), ([for (i in _links) ([for (i in i) i] : stdgo.Slice<stdgo.GoUInt32>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>), _linkMask);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_decompressor(stdgo._internal.compress.flate.Flate.T_decompressor) from stdgo._internal.compress.flate.Flate.T_decompressor to stdgo._internal.compress.flate.Flate.T_decompressor {
    public var _r(get, set) : stdgo._internal.compress.flate.Flate.Reader;
    function get__r():stdgo._internal.compress.flate.Flate.Reader return this._r;
    function set__r(v:stdgo._internal.compress.flate.Flate.Reader):stdgo._internal.compress.flate.Flate.Reader {
        this._r = v;
        return v;
    }
    public var _rBuf(get, set) : stdgo._internal.bufio.Bufio.Reader;
    function get__rBuf():stdgo._internal.bufio.Bufio.Reader return this._rBuf;
    function set__rBuf(v:stdgo._internal.bufio.Bufio.Reader):stdgo._internal.bufio.Bufio.Reader {
        this._rBuf = v;
        return v;
    }
    public var _roffset(get, set) : haxe.Int64;
    function get__roffset():haxe.Int64 return this._roffset;
    function set__roffset(v:haxe.Int64):haxe.Int64 {
        this._roffset = v;
        return v;
    }
    public var _b(get, set) : std.UInt;
    function get__b():std.UInt return this._b;
    function set__b(v:std.UInt):std.UInt {
        this._b = v;
        return v;
    }
    public var _nb(get, set) : std.UInt;
    function get__nb():std.UInt return this._nb;
    function set__nb(v:std.UInt):std.UInt {
        this._nb = v;
        return v;
    }
    public var _h1(get, set) : stdgo._internal.compress.flate.Flate.T_huffmanDecoder;
    function get__h1():stdgo._internal.compress.flate.Flate.T_huffmanDecoder return this._h1;
    function set__h1(v:stdgo._internal.compress.flate.Flate.T_huffmanDecoder):stdgo._internal.compress.flate.Flate.T_huffmanDecoder {
        this._h1 = v;
        return v;
    }
    public var _h2(get, set) : stdgo._internal.compress.flate.Flate.T_huffmanDecoder;
    function get__h2():stdgo._internal.compress.flate.Flate.T_huffmanDecoder return this._h2;
    function set__h2(v:stdgo._internal.compress.flate.Flate.T_huffmanDecoder):stdgo._internal.compress.flate.Flate.T_huffmanDecoder {
        this._h2 = v;
        return v;
    }
    public var _bits(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__bits():haxe.ds.Vector<StdTypes.Int> return this._bits;
    function set__bits(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._bits = v;
        return v;
    }
    public var _codebits(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__codebits():haxe.ds.Vector<StdTypes.Int> return this._codebits;
    function set__codebits(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._codebits = v;
        return v;
    }
    public var _dict(get, set) : stdgo._internal.compress.flate.Flate.T_dictDecoder;
    function get__dict():stdgo._internal.compress.flate.Flate.T_dictDecoder return this._dict;
    function set__dict(v:stdgo._internal.compress.flate.Flate.T_dictDecoder):stdgo._internal.compress.flate.Flate.T_dictDecoder {
        this._dict = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _step(get, set) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_decompressor> -> Void;
    function get__step():stdgo.Ref<stdgo._internal.compress.flate.Flate.T_decompressor> -> Void return _0 -> this._step(_0);
    function set__step(v:stdgo.Ref<stdgo._internal.compress.flate.Flate.T_decompressor> -> Void):stdgo.Ref<stdgo._internal.compress.flate.Flate.T_decompressor> -> Void {
        this._step = v;
        return v;
    }
    public var _stepState(get, set) : StdTypes.Int;
    function get__stepState():StdTypes.Int return this._stepState;
    function set__stepState(v:StdTypes.Int):StdTypes.Int {
        this._stepState = v;
        return v;
    }
    public var _final(get, set) : Bool;
    function get__final():Bool return this._final;
    function set__final(v:Bool):Bool {
        this._final = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _toRead(get, set) : Array<std.UInt>;
    function get__toRead():Array<std.UInt> return [for (i in this._toRead) i];
    function set__toRead(v:Array<std.UInt>):Array<std.UInt> {
        this._toRead = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _hl(get, set) : stdgo._internal.compress.flate.Flate.T_huffmanDecoder;
    function get__hl():stdgo._internal.compress.flate.Flate.T_huffmanDecoder return this._hl;
    function set__hl(v:stdgo._internal.compress.flate.Flate.T_huffmanDecoder):stdgo._internal.compress.flate.Flate.T_huffmanDecoder {
        this._hl = v;
        return v;
    }
    public var _hd(get, set) : stdgo._internal.compress.flate.Flate.T_huffmanDecoder;
    function get__hd():stdgo._internal.compress.flate.Flate.T_huffmanDecoder return this._hd;
    function set__hd(v:stdgo._internal.compress.flate.Flate.T_huffmanDecoder):stdgo._internal.compress.flate.Flate.T_huffmanDecoder {
        this._hd = v;
        return v;
    }
    public var _copyLen(get, set) : StdTypes.Int;
    function get__copyLen():StdTypes.Int return this._copyLen;
    function set__copyLen(v:StdTypes.Int):StdTypes.Int {
        this._copyLen = v;
        return v;
    }
    public var _copyDist(get, set) : StdTypes.Int;
    function get__copyDist():StdTypes.Int return this._copyDist;
    function set__copyDist(v:StdTypes.Int):StdTypes.Int {
        this._copyDist = v;
        return v;
    }
    public function new(?_r:stdgo._internal.compress.flate.Flate.Reader, ?_rBuf:stdgo._internal.bufio.Bufio.Reader, ?_roffset:haxe.Int64, ?_b:std.UInt, ?_nb:std.UInt, ?_h1:stdgo._internal.compress.flate.Flate.T_huffmanDecoder, ?_h2:stdgo._internal.compress.flate.Flate.T_huffmanDecoder, ?_bits:haxe.ds.Vector<StdTypes.Int>, ?_codebits:haxe.ds.Vector<StdTypes.Int>, ?_dict:stdgo._internal.compress.flate.Flate.T_dictDecoder, ?_buf:haxe.ds.Vector<std.UInt>, ?_step:stdgo.Ref<stdgo._internal.compress.flate.Flate.T_decompressor> -> Void, ?_stepState:StdTypes.Int, ?_final:Bool, ?_err:stdgo.Error, ?_toRead:Array<std.UInt>, ?_hl:stdgo._internal.compress.flate.Flate.T_huffmanDecoder, ?_hd:stdgo._internal.compress.flate.Flate.T_huffmanDecoder, ?_copyLen:StdTypes.Int, ?_copyDist:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate.T_decompressor(
_r,
_rBuf,
_roffset,
_b,
_nb,
_h1,
_h2,
_bits,
_codebits,
_dict,
([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>),
_step,
_stepState,
_final,
_err,
([for (i in _toRead) i] : stdgo.Slice<stdgo.GoUInt8>),
_hl,
_hd,
_copyLen,
_copyDist);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_errorWriter(stdgo._internal.compress.flate.Flate.T_errorWriter) from stdgo._internal.compress.flate.Flate.T_errorWriter to stdgo._internal.compress.flate.Flate.T_errorWriter {
    public var n(get, set) : StdTypes.Int;
    function get_n():StdTypes.Int return this.n;
    function set_n(v:StdTypes.Int):StdTypes.Int {
        this.n = v;
        return v;
    }
    public function new(?n:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate.T_errorWriter(n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0 = stdgo._internal.compress.flate.Flate.T__struct_0;
typedef T__struct_1 = stdgo._internal.compress.flate.Flate.T__struct_1;
typedef T__struct_2 = stdgo._internal.compress.flate.Flate.T__struct_2;
typedef T__struct_3 = stdgo._internal.compress.flate.Flate.T__struct_3;
typedef T__struct_4 = stdgo._internal.compress.flate.Flate.T__struct_4;
typedef T__struct_5 = stdgo._internal.compress.flate.Flate.T__struct_5;
typedef T__struct_6 = stdgo._internal.compress.flate.Flate.T__struct_6;
typedef T__struct_7 = stdgo._internal.compress.flate.Flate.T__struct_7;
typedef T_byLiteral = stdgo._internal.compress.flate.Flate.T_byLiteral;
typedef T_byFreq = stdgo._internal.compress.flate.Flate.T_byFreq;
typedef CorruptInputError = stdgo._internal.compress.flate.Flate.CorruptInputError;
typedef InternalError = stdgo._internal.compress.flate.Flate.InternalError;
typedef T_token = stdgo._internal.compress.flate.Flate.T_token;
class Flate {
    /**
        NewWriter returns a new Writer compressing data at the given level.
        Following zlib, levels range from 1 (BestSpeed) to 9 (BestCompression);
        higher levels typically run slower but compress more. Level 0
        (NoCompression) does not attempt any compression; it only adds the
        necessary DEFLATE framing.
        Level -1 (DefaultCompression) uses the default compression level.
        Level -2 (HuffmanOnly) will use Huffman compression only, giving
        a very fast compression for all types of input, but sacrificing considerable
        compression efficiency.
        
        If level is in the range [-2, 9] then the error returned will be nil.
        Otherwise the error returned will be non-nil.
    **/
    static public function newWriter(w:stdgo._internal.io.Io.Writer, level:StdTypes.Int):stdgo.Tuple<Writer, stdgo.Error> {
        return {
            final obj = stdgo._internal.compress.flate.Flate.newWriter(w, level);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewWriterDict is like NewWriter but initializes the new
        Writer with a preset dictionary. The returned Writer behaves
        as if the dictionary had been written to it without producing
        any compressed output. The compressed data written to w
        can only be decompressed by a Reader initialized with the
        same dictionary.
    **/
    static public function newWriterDict(w:stdgo._internal.io.Io.Writer, level:StdTypes.Int, dict:Array<StdTypes.Int>):stdgo.Tuple<Writer, stdgo.Error> {
        final dict = ([for (i in dict) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.compress.flate.Flate.newWriterDict(w, level, dict);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function testBulkHash4(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testBulkHash4(t);
    }
    static public function testDeflate(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testDeflate(t);
    }
    static public function testWriterClose(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testWriterClose(t);
    }
    static public function testVeryLongSparseChunk(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testVeryLongSparseChunk(t);
    }
    static public function testDeflateInflate(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testDeflateInflate(t);
    }
    static public function testReverseBits(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testReverseBits(t);
    }
    static public function testDeflateInflateString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testDeflateInflateString(t);
    }
    static public function testReaderDict(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testReaderDict(t);
    }
    static public function testWriterDict(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testWriterDict(t);
    }
    /**
        See https://golang.org/issue/2508
    **/
    static public function testRegression2508(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testRegression2508(t);
    }
    static public function testWriterReset(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testWriterReset(t);
    }
    /**
        TestBestSpeed tests that round-tripping through deflate and then inflate
        recovers the original input. The Write sizes are near the thresholds in the
        compressor.encSpeed method (0, 16, 128), as well as near maxStoreBlockSize
        (65535).
    **/
    static public function testBestSpeed(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testBestSpeed(t);
    }
    static public function testWriterPersistentWriteError(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testWriterPersistentWriteError(t);
    }
    static public function testWriterPersistentFlushError(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testWriterPersistentFlushError(t);
    }
    static public function testWriterPersistentCloseError(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testWriterPersistentCloseError(t);
    }
    static public function testBestSpeedMatch(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testBestSpeedMatch(t);
    }
    static public function testBestSpeedMaxMatchOffset(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testBestSpeedMaxMatchOffset(t);
    }
    static public function testBestSpeedShiftOffsets(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testBestSpeedShiftOffsets(t);
    }
    static public function testMaxStackSize(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testMaxStackSize(t);
    }
    static public function testDictDecoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testDictDecoder(t);
    }
    /**
        The following test should not panic.
    **/
    static public function testIssue5915(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testIssue5915(t);
    }
    /**
        The following test should not panic.
    **/
    static public function testIssue5962(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testIssue5962(t);
    }
    /**
        The following test should not panic.
    **/
    static public function testIssue6255(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testIssue6255(t);
    }
    static public function testInvalidEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testInvalidEncoding(t);
    }
    static public function testInvalidBits(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testInvalidBits(t);
    }
    static public function testStreams(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testStreams(t);
    }
    static public function testTruncatedStreams(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testTruncatedStreams(t);
    }
    /**
        Verify that flate.Reader.Read returns (n, io.EOF) instead
        of (n, nil) + (0, io.EOF) when possible.
        
        This helps net/http.Transport reuse HTTP/1 connections more
        aggressively.
        
        See https://github.com/google/go-github/pull/317 for background.
    **/
    static public function testReaderEarlyEOF(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testReaderEarlyEOF(t);
    }
    /**
        TestBlockHuff tests huffman encoding against reference files
        to detect possible regressions.
        If encoding/bit allocation changes you can regenerate these files
        by using the -update flag.
    **/
    static public function testBlockHuff(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testBlockHuff(t);
    }
    /**
        TestWriteBlock tests if the writeBlock encoding has changed.
        To update the reference files use the "-update" flag on the test.
    **/
    static public function testWriteBlock(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testWriteBlock(t);
    }
    /**
        TestWriteBlockDynamic tests if the writeBlockDynamic encoding has changed.
        To update the reference files use the "-update" flag on the test.
    **/
    static public function testWriteBlockDynamic(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testWriteBlockDynamic(t);
    }
    /**
        NewReader returns a new ReadCloser that can be used
        to read the uncompressed version of r.
        If r does not also implement io.ByteReader,
        the decompressor may read more data than necessary from r.
        The reader returns io.EOF after the final block in the DEFLATE stream has
        been encountered. Any trailing data after the final block is ignored.
        
        The ReadCloser returned by NewReader also implements Resetter.
    **/
    static public function newReader(r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.ReadCloser {
        return stdgo._internal.compress.flate.Flate.newReader(r);
    }
    /**
        NewReaderDict is like NewReader but initializes the reader
        with a preset dictionary. The returned Reader behaves as if
        the uncompressed data stream started with the given dictionary,
        which has already been read. NewReaderDict is typically used
        to read data compressed by NewWriterDict.
        
        The ReadCloser returned by NewReader also implements Resetter.
    **/
    static public function newReaderDict(r:stdgo._internal.io.Io.Reader, dict:Array<StdTypes.Int>):stdgo._internal.io.Io.ReadCloser {
        final dict = ([for (i in dict) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.compress.flate.Flate.newReaderDict(r, dict);
    }
    static public function testReset(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testReset(t);
    }
    static public function testReaderTruncated(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testReaderTruncated(t);
    }
    static public function testResetDict(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testResetDict(t);
    }
    static public function testReaderReusesReaderBuffer(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testReaderReusesReaderBuffer(t);
    }
    static public function testNlitOutOfRange(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testNlitOutOfRange(t);
    }
    static public function benchmarkDecode(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.compress.flate.Flate.benchmarkDecode(b);
    }
    static public function benchmarkEncode(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.compress.flate.Flate.benchmarkEncode(b);
    }
    /**
        Test if errors from the underlying writer is passed upwards.
    **/
    static public function testWriteError(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testWriteError(t);
    }
    /**
        Test if two runs produce identical results
        even when writing different sizes to the Writer.
    **/
    static public function testDeterministic(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testDeterministic(t);
    }
    /**
        TestDeflateFast_Reset will test that encoding is consistent
        across a warparound of the table offset.
        See https://github.com/golang/go/issues/34121
    **/
    static public function testDeflateFast_Reset(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.flate.Flate.testDeflateFast_Reset(t);
    }
}
