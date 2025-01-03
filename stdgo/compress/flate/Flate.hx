package stdgo.compress.flate;
final noCompression : haxe.UInt64 = stdgo._internal.compress.flate.Flate_noCompression.noCompression;
final bestSpeed : haxe.UInt64 = stdgo._internal.compress.flate.Flate_bestSpeed.bestSpeed;
final bestCompression : haxe.UInt64 = stdgo._internal.compress.flate.Flate_bestCompression.bestCompression;
final defaultCompression : haxe.UInt64 = stdgo._internal.compress.flate.Flate_defaultCompression.defaultCompression;
final huffmanOnly : haxe.UInt64 = stdgo._internal.compress.flate.Flate_huffmanOnly.huffmanOnly;
class Resetter_static_extension {
    static public function reset(t:stdgo._internal.compress.flate.Flate_Resetter.Resetter, _r:stdgo._internal.io.Io_Reader.Reader, _dict:Array<std.UInt>):stdgo.Error {
        final _dict = ([for (i in _dict) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_Resetter_static_extension.Resetter_static_extension.reset(t, _r, _dict);
    }
}
typedef Resetter = stdgo._internal.compress.flate.Flate_Resetter.Resetter;
class Reader_static_extension {

}
typedef Reader = stdgo._internal.compress.flate.Flate_Reader.Reader;
@:structInit abstract T_compressionLevel(stdgo._internal.compress.flate.Flate_T_compressionLevel.T_compressionLevel) from stdgo._internal.compress.flate.Flate_T_compressionLevel.T_compressionLevel to stdgo._internal.compress.flate.Flate_T_compressionLevel.T_compressionLevel {
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
    public function new(?_level:StdTypes.Int, ?_good:StdTypes.Int, ?_lazy:StdTypes.Int, ?_nice:StdTypes.Int, ?_chain:StdTypes.Int, ?_fastSkipHashing:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_T_compressionLevel.T_compressionLevel(_level, _good, _lazy, _nice, _chain, _fastSkipHashing);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_compressor_static_extension) abstract T_compressor(stdgo._internal.compress.flate.Flate_T_compressor.T_compressor) from stdgo._internal.compress.flate.Flate_T_compressor.T_compressor to stdgo._internal.compress.flate.Flate_T_compressor.T_compressor {
    public var _compressionLevel(get, set) : T_compressionLevel;
    function get__compressionLevel():T_compressionLevel return this._compressionLevel;
    function set__compressionLevel(v:T_compressionLevel):T_compressionLevel {
        this._compressionLevel = v;
        return v;
    }
    public var _w(get, set) : T_huffmanBitWriter;
    function get__w():T_huffmanBitWriter return this._w;
    function set__w(v:T_huffmanBitWriter):T_huffmanBitWriter {
        this._w = v;
        return v;
    }
    public var _bulkHasher(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt32>) -> Void;
    function get__bulkHasher():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt32>) -> Void return (_0, _1) -> this._bulkHasher([for (i in _0) i], [for (i in _1) i]);
    function set__bulkHasher(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt32>) -> Void):(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt32>) -> Void {
        this._bulkHasher = v;
        return v;
    }
    public var _fill(get, set) : (stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt;
    function get__fill():(stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt return (_0, _1) -> this._fill(_0, [for (i in _1) i]);
    function set__fill(v:(stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt):(stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt {
        this._fill = v;
        return v;
    }
    public var _step(get, set) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> -> Void;
    function get__step():stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> -> Void return _0 -> this._step(_0);
    function set__step(v:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> -> Void):stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> -> Void {
        this._step = v;
        return v;
    }
    public var _sync(get, set) : Bool;
    function get__sync():Bool return this._sync;
    function set__sync(v:Bool):Bool {
        this._sync = v;
        return v;
    }
    public var _bestSpeed(get, set) : T_deflateFast;
    function get__bestSpeed():T_deflateFast return this._bestSpeed;
    function set__bestSpeed(v:T_deflateFast):T_deflateFast {
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
    public var _tokens(get, set) : Array<T_token>;
    function get__tokens():Array<T_token> return [for (i in this._tokens) i];
    function set__tokens(v:Array<T_token>):Array<T_token> {
        this._tokens = ([for (i in v) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
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
    public function new(?_compressionLevel:T_compressionLevel, ?_w:T_huffmanBitWriter, ?_bulkHasher:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt32>) -> Void, ?_fill:(stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt, ?_step:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> -> Void, ?_sync:Bool, ?_bestSpeed:T_deflateFast, ?_chainHead:StdTypes.Int, ?_hashHead:haxe.ds.Vector<std.UInt>, ?_hashPrev:haxe.ds.Vector<std.UInt>, ?_hashOffset:StdTypes.Int, ?_index:StdTypes.Int, ?_window:Array<std.UInt>, ?_windowEnd:StdTypes.Int, ?_blockStart:StdTypes.Int, ?_byteAvailable:Bool, ?_tokens:Array<T_token>, ?_length:StdTypes.Int, ?_offset:StdTypes.Int, ?_maxInsertIndex:StdTypes.Int, ?_err:stdgo.Error, ?_hashMatch:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.compress.flate.Flate_T_compressor.T_compressor(
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
([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>),
_length,
_offset,
_maxInsertIndex,
_err,
([for (i in _hashMatch) i] : stdgo.GoArray<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_dictWriter_static_extension) abstract T_dictWriter(stdgo._internal.compress.flate.Flate_T_dictWriter.T_dictWriter) from stdgo._internal.compress.flate.Flate_T_dictWriter.T_dictWriter to stdgo._internal.compress.flate.Flate_T_dictWriter.T_dictWriter {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.compress.flate.Flate_T_dictWriter.T_dictWriter(_w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.Writer_static_extension) abstract Writer(stdgo._internal.compress.flate.Flate_Writer.Writer) from stdgo._internal.compress.flate.Flate_Writer.Writer to stdgo._internal.compress.flate.Flate_Writer.Writer {
    public var _d(get, set) : T_compressor;
    function get__d():T_compressor return this._d;
    function set__d(v:T_compressor):T_compressor {
        this._d = v;
        return v;
    }
    public var _dict(get, set) : Array<std.UInt>;
    function get__dict():Array<std.UInt> return [for (i in this._dict) i];
    function set__dict(v:Array<std.UInt>):Array<std.UInt> {
        this._dict = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_d:T_compressor, ?_dict:Array<std.UInt>) this = new stdgo._internal.compress.flate.Flate_Writer.Writer(_d, ([for (i in _dict) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_tableEntry(stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry) from stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry to stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry {
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
    public function new(?_val:std.UInt, ?_offset:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry(_val, _offset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_deflateFast_static_extension) abstract T_deflateFast(stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast) from stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast to stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast {
    public var _table(get, set) : haxe.ds.Vector<T_tableEntry>;
    function get__table():haxe.ds.Vector<T_tableEntry> return haxe.ds.Vector.fromArrayCopy([for (i in this._table) i]);
    function set__table(v:haxe.ds.Vector<T_tableEntry>):haxe.ds.Vector<T_tableEntry> {
        this._table = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry>);
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
    public function new(?_table:haxe.ds.Vector<T_tableEntry>, ?_prev:Array<std.UInt>, ?_cur:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast(([for (i in _table) i] : stdgo.GoArray<stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry>), ([for (i in _prev) i] : stdgo.Slice<stdgo.GoUInt8>), _cur);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_dictDecoder_static_extension) abstract T_dictDecoder(stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder) from stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder to stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder {
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
    public function new(?_hist:Array<std.UInt>, ?_wrPos:StdTypes.Int, ?_rdPos:StdTypes.Int, ?_full:Bool) this = new stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder(([for (i in _hist) i] : stdgo.Slice<stdgo.GoUInt8>), _wrPos, _rdPos, _full);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_huffmanBitWriter_static_extension) abstract T_huffmanBitWriter(stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter) from stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter to stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter {
    public var _writer(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__writer():stdgo._internal.io.Io_Writer.Writer return this._writer;
    function set__writer(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
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
    public var _literalEncoding(get, set) : T_huffmanEncoder;
    function get__literalEncoding():T_huffmanEncoder return this._literalEncoding;
    function set__literalEncoding(v:T_huffmanEncoder):T_huffmanEncoder {
        this._literalEncoding = v;
        return v;
    }
    public var _offsetEncoding(get, set) : T_huffmanEncoder;
    function get__offsetEncoding():T_huffmanEncoder return this._offsetEncoding;
    function set__offsetEncoding(v:T_huffmanEncoder):T_huffmanEncoder {
        this._offsetEncoding = v;
        return v;
    }
    public var _codegenEncoding(get, set) : T_huffmanEncoder;
    function get__codegenEncoding():T_huffmanEncoder return this._codegenEncoding;
    function set__codegenEncoding(v:T_huffmanEncoder):T_huffmanEncoder {
        this._codegenEncoding = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_writer:stdgo._internal.io.Io_Writer.Writer, ?_bits:haxe.UInt64, ?_nbits:std.UInt, ?_bytes:haxe.ds.Vector<std.UInt>, ?_codegenFreq:haxe.ds.Vector<StdTypes.Int>, ?_nbytes:StdTypes.Int, ?_literalFreq:Array<StdTypes.Int>, ?_offsetFreq:Array<StdTypes.Int>, ?_codegen:Array<std.UInt>, ?_literalEncoding:T_huffmanEncoder, ?_offsetEncoding:T_huffmanEncoder, ?_codegenEncoding:T_huffmanEncoder, ?_err:stdgo.Error) this = new stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter(
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
@:structInit @:using(stdgo.compress.flate.Flate.T_hcode_static_extension) abstract T_hcode(stdgo._internal.compress.flate.Flate_T_hcode.T_hcode) from stdgo._internal.compress.flate.Flate_T_hcode.T_hcode to stdgo._internal.compress.flate.Flate_T_hcode.T_hcode {
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
    public function new(?_code:std.UInt, ?_len:std.UInt) this = new stdgo._internal.compress.flate.Flate_T_hcode.T_hcode(_code, _len);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_huffmanEncoder_static_extension) abstract T_huffmanEncoder(stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder) from stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder to stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder {
    public var _codes(get, set) : Array<T_hcode>;
    function get__codes():Array<T_hcode> return [for (i in this._codes) i];
    function set__codes(v:Array<T_hcode>):Array<T_hcode> {
        this._codes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>);
        return v;
    }
    public var _freqcache(get, set) : Array<T_literalNode>;
    function get__freqcache():Array<T_literalNode> return [for (i in this._freqcache) i];
    function set__freqcache(v:Array<T_literalNode>):Array<T_literalNode> {
        this._freqcache = ([for (i in v) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
        return v;
    }
    public var _bitCount(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__bitCount():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._bitCount) i]);
    function set__bitCount(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._bitCount = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt32>);
        return v;
    }
    public var _lns(get, set) : T_byLiteral;
    function get__lns():T_byLiteral return this._lns;
    function set__lns(v:T_byLiteral):T_byLiteral {
        this._lns = v;
        return v;
    }
    public var _lfs(get, set) : T_byFreq;
    function get__lfs():T_byFreq return this._lfs;
    function set__lfs(v:T_byFreq):T_byFreq {
        this._lfs = v;
        return v;
    }
    public function new(?_codes:Array<T_hcode>, ?_freqcache:Array<T_literalNode>, ?_bitCount:haxe.ds.Vector<StdTypes.Int>, ?_lns:T_byLiteral, ?_lfs:T_byFreq) this = new stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder(([for (i in _codes) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>), ([for (i in _freqcache) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>), ([for (i in _bitCount) i] : stdgo.GoArray<stdgo.GoInt32>), _lns, _lfs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_literalNode(stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode) from stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode to stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode {
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
    public function new(?_literal:std.UInt, ?_freq:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode(_literal, _freq);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_levelInfo(stdgo._internal.compress.flate.Flate_T_levelInfo.T_levelInfo) from stdgo._internal.compress.flate.Flate_T_levelInfo.T_levelInfo to stdgo._internal.compress.flate.Flate_T_levelInfo.T_levelInfo {
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
    public function new(?_level:StdTypes.Int, ?_lastFreq:StdTypes.Int, ?_nextCharFreq:StdTypes.Int, ?_nextPairFreq:StdTypes.Int, ?_needed:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_T_levelInfo.T_levelInfo(_level, _lastFreq, _nextCharFreq, _nextPairFreq, _needed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.ReadError_static_extension) abstract ReadError(stdgo._internal.compress.flate.Flate_ReadError.ReadError) from stdgo._internal.compress.flate.Flate_ReadError.ReadError to stdgo._internal.compress.flate.Flate_ReadError.ReadError {
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
    public function new(?offset:haxe.Int64, ?err:stdgo.Error) this = new stdgo._internal.compress.flate.Flate_ReadError.ReadError(offset, err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.WriteError_static_extension) abstract WriteError(stdgo._internal.compress.flate.Flate_WriteError.WriteError) from stdgo._internal.compress.flate.Flate_WriteError.WriteError to stdgo._internal.compress.flate.Flate_WriteError.WriteError {
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
    public function new(?offset:haxe.Int64, ?err:stdgo.Error) this = new stdgo._internal.compress.flate.Flate_WriteError.WriteError(offset, err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_huffmanDecoder_static_extension) abstract T_huffmanDecoder(stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder) from stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder to stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder {
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
    public function new(?_min:StdTypes.Int, ?_chunks:haxe.ds.Vector<std.UInt>, ?_links:Array<Array<std.UInt>>, ?_linkMask:std.UInt) this = new stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder(_min, ([for (i in _chunks) i] : stdgo.GoArray<stdgo.GoUInt32>), ([for (i in _links) ([for (i in i) i] : stdgo.Slice<stdgo.GoUInt32>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>), _linkMask);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_decompressor_static_extension) abstract T_decompressor(stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor) from stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor to stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor {
    public var _r(get, set) : Reader;
    function get__r():Reader return this._r;
    function set__r(v:Reader):Reader {
        this._r = v;
        return v;
    }
    public var _rBuf(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__rBuf():stdgo._internal.bufio.Bufio_Reader.Reader return this._rBuf;
    function set__rBuf(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
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
    public var _h1(get, set) : T_huffmanDecoder;
    function get__h1():T_huffmanDecoder return this._h1;
    function set__h1(v:T_huffmanDecoder):T_huffmanDecoder {
        this._h1 = v;
        return v;
    }
    public var _h2(get, set) : T_huffmanDecoder;
    function get__h2():T_huffmanDecoder return this._h2;
    function set__h2(v:T_huffmanDecoder):T_huffmanDecoder {
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
    public var _dict(get, set) : T_dictDecoder;
    function get__dict():T_dictDecoder return this._dict;
    function set__dict(v:T_dictDecoder):T_dictDecoder {
        this._dict = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _step(get, set) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> -> Void;
    function get__step():stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> -> Void return _0 -> this._step(_0);
    function set__step(v:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> -> Void):stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> -> Void {
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
    public var _hl(get, set) : T_huffmanDecoder;
    function get__hl():T_huffmanDecoder return this._hl;
    function set__hl(v:T_huffmanDecoder):T_huffmanDecoder {
        this._hl = v;
        return v;
    }
    public var _hd(get, set) : T_huffmanDecoder;
    function get__hd():T_huffmanDecoder return this._hd;
    function set__hd(v:T_huffmanDecoder):T_huffmanDecoder {
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
    public function new(?_r:Reader, ?_rBuf:stdgo._internal.bufio.Bufio_Reader.Reader, ?_roffset:haxe.Int64, ?_b:std.UInt, ?_nb:std.UInt, ?_h1:T_huffmanDecoder, ?_h2:T_huffmanDecoder, ?_bits:haxe.ds.Vector<StdTypes.Int>, ?_codebits:haxe.ds.Vector<StdTypes.Int>, ?_dict:T_dictDecoder, ?_buf:haxe.ds.Vector<std.UInt>, ?_step:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> -> Void, ?_stepState:StdTypes.Int, ?_final:Bool, ?_err:stdgo.Error, ?_toRead:Array<std.UInt>, ?_hl:T_huffmanDecoder, ?_hd:T_huffmanDecoder, ?_copyLen:StdTypes.Int, ?_copyDist:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor(
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
typedef T_byLiteral = stdgo._internal.compress.flate.Flate_T_byLiteral.T_byLiteral;
typedef T_byFreq = stdgo._internal.compress.flate.Flate_T_byFreq.T_byFreq;
typedef CorruptInputError = stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError;
typedef InternalError = stdgo._internal.compress.flate.Flate_InternalError.InternalError;
typedef T_token = stdgo._internal.compress.flate.Flate_T_token.T_token;
typedef T_compressorPointer = stdgo._internal.compress.flate.Flate_T_compressorPointer.T_compressorPointer;
class T_compressor_static_extension {
    static public function _close(_d:T_compressor):stdgo.Error {
        return stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._close(_d);
    }
    static public function _reset(_d:T_compressor, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._reset(_d, _w);
    }
    static public function _init(_d:T_compressor, _w:stdgo._internal.io.Io_Writer.Writer, _level:StdTypes.Int):stdgo.Error {
        return stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._init(_d, _w, _level);
    }
    static public function _syncFlush(_d:T_compressor):stdgo.Error {
        return stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._syncFlush(_d);
    }
    static public function _write(_d:T_compressor, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._write(_d, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _storeHuff(_d:T_compressor):Void {
        stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._storeHuff(_d);
    }
    static public function _store(_d:T_compressor):Void {
        stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._store(_d);
    }
    static public function _fillStore(_d:T_compressor, _b:Array<std.UInt>):StdTypes.Int {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._fillStore(_d, _b);
    }
    static public function _deflate(_d:T_compressor):Void {
        stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._deflate(_d);
    }
    static public function _initDeflate(_d:T_compressor):Void {
        stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._initDeflate(_d);
    }
    static public function _encSpeed(_d:T_compressor):Void {
        stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._encSpeed(_d);
    }
    static public function _writeStoredBlock(_d:T_compressor, _buf:Array<std.UInt>):stdgo.Error {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._writeStoredBlock(_d, _buf);
    }
    static public function _findMatch(_d:T_compressor, _pos:StdTypes.Int, _prevHead:StdTypes.Int, _prevLength:StdTypes.Int, _lookahead:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._findMatch(_d, _pos, _prevHead, _prevLength, _lookahead);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _fillWindow(_d:T_compressor, _b:Array<std.UInt>):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._fillWindow(_d, _b);
    }
    static public function _writeBlock(_d:T_compressor, _tokens:Array<T_token>, _index:StdTypes.Int):stdgo.Error {
        final _tokens = ([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
        return stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._writeBlock(_d, _tokens, _index);
    }
    static public function _fillDeflate(_d:T_compressor, _b:Array<std.UInt>):StdTypes.Int {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._fillDeflate(_d, _b);
    }
}
typedef T_dictWriterPointer = stdgo._internal.compress.flate.Flate_T_dictWriterPointer.T_dictWriterPointer;
class T_dictWriter_static_extension {
    static public function write(_w:T_dictWriter, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_dictWriter_static_extension.T_dictWriter_static_extension.write(_w, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef WriterPointer = stdgo._internal.compress.flate.Flate_WriterPointer.WriterPointer;
class Writer_static_extension {
    static public function reset(_w:Writer, _dst:stdgo._internal.io.Io_Writer.Writer):Void {
        stdgo._internal.compress.flate.Flate_Writer_static_extension.Writer_static_extension.reset(_w, _dst);
    }
    static public function close(_w:Writer):stdgo.Error {
        return stdgo._internal.compress.flate.Flate_Writer_static_extension.Writer_static_extension.close(_w);
    }
    static public function flush(_w:Writer):stdgo.Error {
        return stdgo._internal.compress.flate.Flate_Writer_static_extension.Writer_static_extension.flush(_w);
    }
    static public function write(_w:Writer, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_Writer_static_extension.Writer_static_extension.write(_w, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_deflateFastPointer = stdgo._internal.compress.flate.Flate_T_deflateFastPointer.T_deflateFastPointer;
class T_deflateFast_static_extension {
    static public function _shiftOffsets(_e:T_deflateFast):Void {
        stdgo._internal.compress.flate.Flate_T_deflateFast_static_extension.T_deflateFast_static_extension._shiftOffsets(_e);
    }
    static public function _reset(_e:T_deflateFast):Void {
        stdgo._internal.compress.flate.Flate_T_deflateFast_static_extension.T_deflateFast_static_extension._reset(_e);
    }
    static public function _matchLen(_e:T_deflateFast, _s:StdTypes.Int, _t:StdTypes.Int, _src:Array<std.UInt>):StdTypes.Int {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_T_deflateFast_static_extension.T_deflateFast_static_extension._matchLen(_e, _s, _t, _src);
    }
    static public function _encode(_e:T_deflateFast, _dst:Array<T_token>, _src:Array<std.UInt>):Array<T_token> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.compress.flate.Flate_T_deflateFast_static_extension.T_deflateFast_static_extension._encode(_e, _dst, _src)) i];
    }
}
typedef T_dictDecoderPointer = stdgo._internal.compress.flate.Flate_T_dictDecoderPointer.T_dictDecoderPointer;
class T_dictDecoder_static_extension {
    static public function _readFlush(_dd:T_dictDecoder):Array<std.UInt> {
        return [for (i in stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._readFlush(_dd)) i];
    }
    static public function _tryWriteCopy(_dd:T_dictDecoder, _dist:StdTypes.Int, _length:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._tryWriteCopy(_dd, _dist, _length);
    }
    static public function _writeCopy(_dd:T_dictDecoder, _dist:StdTypes.Int, _length:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._writeCopy(_dd, _dist, _length);
    }
    static public function _writeByte(_dd:T_dictDecoder, _c:std.UInt):Void {
        stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._writeByte(_dd, _c);
    }
    static public function _writeMark(_dd:T_dictDecoder, _cnt:StdTypes.Int):Void {
        stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._writeMark(_dd, _cnt);
    }
    static public function _writeSlice(_dd:T_dictDecoder):Array<std.UInt> {
        return [for (i in stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._writeSlice(_dd)) i];
    }
    static public function _availWrite(_dd:T_dictDecoder):StdTypes.Int {
        return stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._availWrite(_dd);
    }
    static public function _availRead(_dd:T_dictDecoder):StdTypes.Int {
        return stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._availRead(_dd);
    }
    static public function _histSize(_dd:T_dictDecoder):StdTypes.Int {
        return stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._histSize(_dd);
    }
    static public function _init(_dd:T_dictDecoder, _size:StdTypes.Int, _dict:Array<std.UInt>):Void {
        final _dict = ([for (i in _dict) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._init(_dd, _size, _dict);
    }
}
typedef T_huffmanBitWriterPointer = stdgo._internal.compress.flate.Flate_T_huffmanBitWriterPointer.T_huffmanBitWriterPointer;
class T_huffmanBitWriter_static_extension {
    static public function _writeBlockHuff(_w:T_huffmanBitWriter, _eof:Bool, _input:Array<std.UInt>):Void {
        final _input = ([for (i in _input) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeBlockHuff(_w, _eof, _input);
    }
    static public function _writeTokens(_w:T_huffmanBitWriter, _tokens:Array<T_token>, _leCodes:Array<T_hcode>, _oeCodes:Array<T_hcode>):Void {
        final _tokens = ([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
        final _leCodes = ([for (i in _leCodes) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>);
        final _oeCodes = ([for (i in _oeCodes) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeTokens(_w, _tokens, _leCodes, _oeCodes);
    }
    static public function _indexTokens(_w:T_huffmanBitWriter, _tokens:Array<T_token>):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _tokens = ([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._indexTokens(_w, _tokens);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeBlockDynamic(_w:T_huffmanBitWriter, _tokens:Array<T_token>, _eof:Bool, _input:Array<std.UInt>):Void {
        final _tokens = ([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
        final _input = ([for (i in _input) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeBlockDynamic(_w, _tokens, _eof, _input);
    }
    static public function _writeBlock(_w:T_huffmanBitWriter, _tokens:Array<T_token>, _eof:Bool, _input:Array<std.UInt>):Void {
        final _tokens = ([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
        final _input = ([for (i in _input) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeBlock(_w, _tokens, _eof, _input);
    }
    static public function _writeFixedHeader(_w:T_huffmanBitWriter, _isEof:Bool):Void {
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeFixedHeader(_w, _isEof);
    }
    static public function _writeStoredHeader(_w:T_huffmanBitWriter, _length:StdTypes.Int, _isEof:Bool):Void {
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeStoredHeader(_w, _length, _isEof);
    }
    static public function _writeDynamicHeader(_w:T_huffmanBitWriter, _numLiterals:StdTypes.Int, _numOffsets:StdTypes.Int, _numCodegens:StdTypes.Int, _isEof:Bool):Void {
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeDynamicHeader(_w, _numLiterals, _numOffsets, _numCodegens, _isEof);
    }
    static public function _writeCode(_w:T_huffmanBitWriter, _c:T_hcode):Void {
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeCode(_w, _c);
    }
    static public function _storedSize(_w:T_huffmanBitWriter, _in:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._storedSize(_w, _in);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _fixedSize(_w:T_huffmanBitWriter, _extraBits:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._fixedSize(_w, _extraBits);
    }
    static public function _dynamicSize(_w:T_huffmanBitWriter, _litEnc:T_huffmanEncoder, _offEnc:T_huffmanEncoder, _extraBits:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._dynamicSize(_w, _litEnc, _offEnc, _extraBits);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _generateCodegen(_w:T_huffmanBitWriter, _numLiterals:StdTypes.Int, _numOffsets:StdTypes.Int, _litEnc:T_huffmanEncoder, _offEnc:T_huffmanEncoder):Void {
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._generateCodegen(_w, _numLiterals, _numOffsets, _litEnc, _offEnc);
    }
    static public function _writeBytes(_w:T_huffmanBitWriter, _bytes:Array<std.UInt>):Void {
        final _bytes = ([for (i in _bytes) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeBytes(_w, _bytes);
    }
    static public function _writeBits(_w:T_huffmanBitWriter, _b:StdTypes.Int, _nb:std.UInt):Void {
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeBits(_w, _b, _nb);
    }
    static public function _write(_w:T_huffmanBitWriter, _b:Array<std.UInt>):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._write(_w, _b);
    }
    static public function _flush(_w:T_huffmanBitWriter):Void {
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._flush(_w);
    }
    static public function _reset(_w:T_huffmanBitWriter, _writer:stdgo._internal.io.Io_Writer.Writer):Void {
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._reset(_w, _writer);
    }
}
typedef T_hcodePointer = stdgo._internal.compress.flate.Flate_T_hcodePointer.T_hcodePointer;
class T_hcode_static_extension {
    static public function _set(_h:T_hcode, _code:std.UInt, _length:std.UInt):Void {
        stdgo._internal.compress.flate.Flate_T_hcode_static_extension.T_hcode_static_extension._set(_h, _code, _length);
    }
}
typedef T_huffmanEncoderPointer = stdgo._internal.compress.flate.Flate_T_huffmanEncoderPointer.T_huffmanEncoderPointer;
class T_huffmanEncoder_static_extension {
    static public function _generate(_h:T_huffmanEncoder, _freq:Array<StdTypes.Int>, _maxBits:StdTypes.Int):Void {
        final _freq = ([for (i in _freq) i] : stdgo.Slice<stdgo.GoInt32>);
        stdgo._internal.compress.flate.Flate_T_huffmanEncoder_static_extension.T_huffmanEncoder_static_extension._generate(_h, _freq, _maxBits);
    }
    static public function _assignEncodingAndSize(_h:T_huffmanEncoder, _bitCount:Array<StdTypes.Int>, _list:Array<T_literalNode>):Void {
        final _bitCount = ([for (i in _bitCount) i] : stdgo.Slice<stdgo.GoInt32>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
        stdgo._internal.compress.flate.Flate_T_huffmanEncoder_static_extension.T_huffmanEncoder_static_extension._assignEncodingAndSize(_h, _bitCount, _list);
    }
    static public function _bitCounts(_h:T_huffmanEncoder, _list:Array<T_literalNode>, _maxBits:StdTypes.Int):Array<StdTypes.Int> {
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
        return [for (i in stdgo._internal.compress.flate.Flate_T_huffmanEncoder_static_extension.T_huffmanEncoder_static_extension._bitCounts(_h, _list, _maxBits)) i];
    }
    static public function _bitLength(_h:T_huffmanEncoder, _freq:Array<StdTypes.Int>):StdTypes.Int {
        final _freq = ([for (i in _freq) i] : stdgo.Slice<stdgo.GoInt32>);
        return stdgo._internal.compress.flate.Flate_T_huffmanEncoder_static_extension.T_huffmanEncoder_static_extension._bitLength(_h, _freq);
    }
}
typedef ReadErrorPointer = stdgo._internal.compress.flate.Flate_ReadErrorPointer.ReadErrorPointer;
class ReadError_static_extension {
    static public function error(_e:ReadError):String {
        return stdgo._internal.compress.flate.Flate_ReadError_static_extension.ReadError_static_extension.error(_e);
    }
}
typedef WriteErrorPointer = stdgo._internal.compress.flate.Flate_WriteErrorPointer.WriteErrorPointer;
class WriteError_static_extension {
    static public function error(_e:WriteError):String {
        return stdgo._internal.compress.flate.Flate_WriteError_static_extension.WriteError_static_extension.error(_e);
    }
}
typedef T_huffmanDecoderPointer = stdgo._internal.compress.flate.Flate_T_huffmanDecoderPointer.T_huffmanDecoderPointer;
class T_huffmanDecoder_static_extension {
    static public function _init(_h:T_huffmanDecoder, _lengths:Array<StdTypes.Int>):Bool {
        final _lengths = ([for (i in _lengths) i] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.compress.flate.Flate_T_huffmanDecoder_static_extension.T_huffmanDecoder_static_extension._init(_h, _lengths);
    }
}
typedef T_decompressorPointer = stdgo._internal.compress.flate.Flate_T_decompressorPointer.T_decompressorPointer;
class T_decompressor_static_extension {
    static public function reset(_f:T_decompressor, _r:stdgo._internal.io.Io_Reader.Reader, _dict:Array<std.UInt>):stdgo.Error {
        final _dict = ([for (i in _dict) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension.reset(_f, _r, _dict);
    }
    static public function _makeReader(_f:T_decompressor, _r:stdgo._internal.io.Io_Reader.Reader):Void {
        stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._makeReader(_f, _r);
    }
    static public function _huffSym(_f:T_decompressor, _h:T_huffmanDecoder):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._huffSym(_f, _h);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _moreBits(_f:T_decompressor):stdgo.Error {
        return stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._moreBits(_f);
    }
    static public function _finishBlock(_f:T_decompressor):Void {
        stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._finishBlock(_f);
    }
    static public function _copyData(_f:T_decompressor):Void {
        stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._copyData(_f);
    }
    static public function _dataBlock(_f:T_decompressor):Void {
        stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._dataBlock(_f);
    }
    static public function _huffmanBlock(_f:T_decompressor):Void {
        stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._huffmanBlock(_f);
    }
    static public function _readHuffman(_f:T_decompressor):stdgo.Error {
        return stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._readHuffman(_f);
    }
    static public function close(_f:T_decompressor):stdgo.Error {
        return stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension.close(_f);
    }
    static public function read(_f:T_decompressor, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension.read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _nextBlock(_f:T_decompressor):Void {
        stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._nextBlock(_f);
    }
}
typedef T_byLiteralPointer = stdgo._internal.compress.flate.Flate_T_byLiteralPointer.T_byLiteralPointer;
class T_byLiteral_static_extension {
    static public function swap(_s:T_byLiteral, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        stdgo._internal.compress.flate.Flate_T_byLiteral_static_extension.T_byLiteral_static_extension.swap(_s, _i, _j);
    }
    static public function less(_s:T_byLiteral, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.compress.flate.Flate_T_byLiteral_static_extension.T_byLiteral_static_extension.less(_s, _i, _j);
    }
    static public function len(_s:T_byLiteral):StdTypes.Int {
        return stdgo._internal.compress.flate.Flate_T_byLiteral_static_extension.T_byLiteral_static_extension.len(_s);
    }
    static public function _sort(_s:T_byLiteral, _a:Array<T_literalNode>):Void {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
        stdgo._internal.compress.flate.Flate_T_byLiteral_static_extension.T_byLiteral_static_extension._sort(_s, _a);
    }
}
typedef T_byFreqPointer = stdgo._internal.compress.flate.Flate_T_byFreqPointer.T_byFreqPointer;
class T_byFreq_static_extension {
    static public function swap(_s:T_byFreq, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        stdgo._internal.compress.flate.Flate_T_byFreq_static_extension.T_byFreq_static_extension.swap(_s, _i, _j);
    }
    static public function less(_s:T_byFreq, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.compress.flate.Flate_T_byFreq_static_extension.T_byFreq_static_extension.less(_s, _i, _j);
    }
    static public function len(_s:T_byFreq):StdTypes.Int {
        return stdgo._internal.compress.flate.Flate_T_byFreq_static_extension.T_byFreq_static_extension.len(_s);
    }
    static public function _sort(_s:T_byFreq, _a:Array<T_literalNode>):Void {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
        stdgo._internal.compress.flate.Flate_T_byFreq_static_extension.T_byFreq_static_extension._sort(_s, _a);
    }
}
typedef CorruptInputErrorPointer = stdgo._internal.compress.flate.Flate_CorruptInputErrorPointer.CorruptInputErrorPointer;
class CorruptInputError_static_extension {
    static public function error(_e:CorruptInputError):String {
        return stdgo._internal.compress.flate.Flate_CorruptInputError_static_extension.CorruptInputError_static_extension.error(_e);
    }
}
typedef InternalErrorPointer = stdgo._internal.compress.flate.Flate_InternalErrorPointer.InternalErrorPointer;
class InternalError_static_extension {
    static public function error(_e:InternalError):String {
        return stdgo._internal.compress.flate.Flate_InternalError_static_extension.InternalError_static_extension.error(_e);
    }
}
typedef T_tokenPointer = stdgo._internal.compress.flate.Flate_T_tokenPointer.T_tokenPointer;
class T_token_static_extension {
    static public function _length(_t:T_token):std.UInt {
        return stdgo._internal.compress.flate.Flate_T_token_static_extension.T_token_static_extension._length(_t);
    }
    static public function _offset(_t:T_token):std.UInt {
        return stdgo._internal.compress.flate.Flate_T_token_static_extension.T_token_static_extension._offset(_t);
    }
    static public function _literal(_t:T_token):std.UInt {
        return stdgo._internal.compress.flate.Flate_T_token_static_extension.T_token_static_extension._literal(_t);
    }
}
/**
    /|*{
    	stateInit_3720426 = 1
    	gotoNext = 3720492
    	_ = gotoNext == 3720492
    	switch f.stepState {
    	case 0:
    		gotoNext = 3720514
    		_ = gotoNext == 3720514
    		gotoNext = 3720589
    		gotoNext = 3720589
    	case 1:
    		gotoNext = 3720550
    		_ = gotoNext == 3720550
    		gotoNext = 3722695
    		gotoNext = 3720589
    	default:
    		gotoNext = 3720589
    	}
    	_ = gotoNext == 3720589
    	gotoNext = 3720589
    	_ = gotoNext == 3720589
    	{
    		gotoNext = 3720678
    		_ = gotoNext == 3720678
    		v_3720682, err_3720685 = f.huffSym(f.hl)
    		if err_3720685 != nil {
    			gotoNext = 3720724
    			_ = gotoNext == 3720724
    			f.err = err_3720685
    			return
    			gotoNext = 3720757
    		} else {
    			gotoNext = 3720757
    		}
    		_ = gotoNext == 3720757
    		gotoNext = 3720811
    		_ = gotoNext == 3720811
    		switch {
    		case v_3720682 < 256:
    			gotoNext = 3720822
    			_ = gotoNext == 3720822
    			f.dict.writeByte(byte(v_3720682))
    			if f.dict.availWrite() == 0 {
    				gotoNext = 3720896
    				_ = gotoNext == 3720896
    				f.toRead = f.dict.readFlush()
    				f.step = (*decompressor).huffmanBlock
    				f.stepState = 0
    				return
    				gotoNext = 3721021
    			} else {
    				gotoNext = 3721021
    			}
    			_ = gotoNext == 3721021
    			gotoNext = 3720589
    			gotoNext = 3721574
    		case v_3720682 == 256:
    			gotoNext = 3721040
    			_ = gotoNext == 3721040
    			f.finishBlock()
    			return
    			gotoNext = 3721574
    		case v_3720682 < 265:
    			gotoNext = 3721126
    			_ = gotoNext == 3721126
    			length_3720798 = v_3720682 - 254
    			n_3720761 = 0
    			gotoNext = 3721574
    		case v_3720682 < 269:
    			gotoNext = 3721177
    			_ = gotoNext == 3721177
    			length_3720798 = v_3720682*2 - 519
    			n_3720761 = 1
    			gotoNext = 3721574
    		case v_3720682 < 273:
    			gotoNext = 3721233
    			_ = gotoNext == 3721233
    			length_3720798 = v_3720682*4 - 1057
    			n_3720761 = 2
    			gotoNext = 3721574
    		case v_3720682 < 277:
    			gotoNext = 3721289
    			_ = gotoNext == 3721289
    			length_3720798 = v_3720682*8 - 2149
    			n_3720761 = 3
    			gotoNext = 3721574
    		case v_3720682 < 281:
    			gotoNext = 3721345
    			_ = gotoNext == 3721345
    			length_3720798 = v_3720682*16 - 4365
    			n_3720761 = 4
    			gotoNext = 3721574
    		case v_3720682 < 285:
    			gotoNext = 3721403
    			_ = gotoNext == 3721403
    			length_3720798 = v_3720682*32 - 8861
    			n_3720761 = 5
    			gotoNext = 3721574
    		case v_3720682 < 286:
    			gotoNext = 3721462
    			_ = gotoNext == 3721462
    			length_3720798 = 258
    			n_3720761 = 0
    			gotoNext = 3721574
    		default:
    			gotoNext = 3721509
    			_ = gotoNext == 3721509
    			f.err = CorruptInputError(f.roffset)
    			return
    			gotoNext = 3721574
    		}
    		_ = gotoNext == 3721574
    		if n_3720761 > 0 {
    			gotoNext = 3721583
    			_ = gotoNext == 3721583
    			_ = 0
    			gotoNext = 3721588
    			_ = gotoNext == 3721588
    			if f.nb < n_3720761 {
    				gotoNext = 3721601
    				_ = gotoNext == 3721601
    				if err_3720685 = f.moreBits(); err_3720685 != nil {
    					gotoNext = 3721641
    					_ = gotoNext == 3721641
    					f.err = err_3720685
    					return
    					gotoNext = 3721588
    				} else {
    					gotoNext = 3721588
    				}
    				gotoNext = 3721588
    			} else {
    				gotoNext = 3721686
    			}
    			_ = gotoNext == 3721686
    			length_3720798 += int(f.b & uint32(1<<n_3720761-1))
    			f.b >>= n_3720761
    			f.nb -= n_3720761
    			gotoNext = 3721755
    		} else {
    			gotoNext = 3721755
    		}
    		_ = gotoNext == 3721755
    		if f.hd == nil {
    			gotoNext = 3721785
    			_ = gotoNext == 3721785
    			_ = 0
    			gotoNext = 3721790
    			_ = gotoNext == 3721790
    			if f.nb < 5 {
    				gotoNext = 3721803
    				_ = gotoNext == 3721803
    				if err_3720685 = f.moreBits(); err_3720685 != nil {
    					gotoNext = 3721843
    					_ = gotoNext == 3721843
    					f.err = err_3720685
    					return
    					gotoNext = 3721790
    				} else {
    					gotoNext = 3721790
    				}
    				gotoNext = 3721790
    			} else {
    				gotoNext = 3721888
    			}
    			_ = gotoNext == 3721888
    			dist_3721759 = int(bits.Reverse8(uint8(f.b & 31 << 3)))
    			f.b >>= 5
    			f.nb -= 5
    			gotoNext = 3722062
    		} else {
    			gotoNext = 3721973
    			_ = gotoNext == 3721973
    			gotoNext = 3721973
    			_ = gotoNext == 3721973
    			if dist_3721759, err_3720685 = f.huffSym(f.hd); err_3720685 != nil {
    				gotoNext = 3722021
    				_ = gotoNext == 3722021
    				f.err = err_3720685
    				return
    				gotoNext = 3722062
    			} else {
    				gotoNext = 3722062
    			}
    			_ = 0
    			gotoNext = 3722062
    		}
    		_ = gotoNext == 3722062
    		gotoNext = 3722062
    		_ = gotoNext == 3722062
    		switch {
    		case dist_3721759 < 4:
    			gotoNext = 3722073
    			_ = gotoNext == 3722073
    			dist_3721759++
    			gotoNext = 3722548
    		case dist_3721759 < 30:
    			gotoNext = 3722100
    			_ = gotoNext == 3722100
    			nb_3722127 = uint(dist_3721759-2) >> 1
    			extra_3722204 = (dist_3721759 & 1) << nb_3722127
    			_ = 0
    			gotoNext = 3722233
    			_ = gotoNext == 3722233
    			if f.nb < nb_3722127 {
    				gotoNext = 3722247
    				_ = gotoNext == 3722247
    				if err_3720685 = f.moreBits(); err_3720685 != nil {
    					gotoNext = 3722287
    					_ = gotoNext == 3722287
    					f.err = err_3720685
    					return
    					gotoNext = 3722233
    				} else {
    					gotoNext = 3722233
    				}
    				gotoNext = 3722233
    			} else {
    				gotoNext = 3722332
    			}
    			_ = gotoNext == 3722332
    			extra_3722204 |= int(f.b & uint32(1<<nb_3722127-1))
    			f.b >>= nb_3722127
    			f.nb -= nb_3722127
    			dist_3721759 = 1<<(nb_3722127+1) + 1 + extra_3722204
    			gotoNext = 3722548
    		default:
    			gotoNext = 3722430
    			_ = gotoNext == 3722430
    			f.err = CorruptInputError(f.roffset)
    			return
    			gotoNext = 3722548
    		}
    		_ = gotoNext == 3722548
    		if dist_3721759 > f.dict.histSize() {
    			gotoNext = 3722576
    			_ = gotoNext == 3722576
    			f.err = CorruptInputError(f.roffset)
    			return
    			gotoNext = 3722635
    		} else {
    			gotoNext = 3722635
    		}
    		_ = gotoNext == 3722635
    		f.copyLen, f.copyDist = length_3720798, dist_3721759
    		gotoNext = 3722695
    		gotoNext = 3722695
    	}
    	_ = gotoNext == 3722695
    	gotoNext = 3722695
    	_ = gotoNext == 3722695
    	{
    		gotoNext = 3722770
    		_ = gotoNext == 3722770
    		cnt_3722774 = f.dict.tryWriteCopy(f.copyDist, f.copyLen)
    		if cnt_3722774 == 0 {
    			gotoNext = 3722838
    			_ = gotoNext == 3722838
    			cnt_3722774 = f.dict.writeCopy(f.copyDist, f.copyLen)
    			gotoNext = 3722895
    		} else {
    			gotoNext = 3722895
    		}
    		_ = gotoNext == 3722895
    		f.copyLen -= cnt_3722774
    		if f.dict.availWrite() == 0 || f.copyLen > 0 {
    			gotoNext = 3722960
    			_ = gotoNext == 3722960
    			f.toRead = f.dict.readFlush()
    			f.step = (*decompressor).huffmanBlock
    			f.stepState = 1
    			return
    			gotoNext = 3723112
    		} else {
    			gotoNext = 3723112
    		}
    		_ = gotoNext == 3723112
    		gotoNext = 3720589
    		gotoNext = 3723132
    	}
    	_ = gotoNext == 3723132
    	gotoNext = -1
    }*|/
**/
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
    static public function newWriter(_w:stdgo._internal.io.Io_Writer.Writer, _level:StdTypes.Int):stdgo.Tuple<Writer, stdgo.Error> {
        return {
            final obj = stdgo._internal.compress.flate.Flate_newWriter.newWriter(_w, _level);
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
    static public function newWriterDict(_w:stdgo._internal.io.Io_Writer.Writer, _level:StdTypes.Int, _dict:Array<std.UInt>):stdgo.Tuple<Writer, stdgo.Error> {
        final _dict = ([for (i in _dict) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_newWriterDict.newWriterDict(_w, _level, _dict);
            { _0 : obj._0, _1 : obj._1 };
        };
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
    static public function newReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        return stdgo._internal.compress.flate.Flate_newReader.newReader(_r);
    }
    /**
        NewReaderDict is like NewReader but initializes the reader
        with a preset dictionary. The returned Reader behaves as if
        the uncompressed data stream started with the given dictionary,
        which has already been read. NewReaderDict is typically used
        to read data compressed by NewWriterDict.
        
        The ReadCloser returned by NewReader also implements Resetter.
    **/
    static public function newReaderDict(_r:stdgo._internal.io.Io_Reader.Reader, _dict:Array<std.UInt>):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        final _dict = ([for (i in _dict) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_newReaderDict.newReaderDict(_r, _dict);
    }
}
