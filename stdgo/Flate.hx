package stdgo;
final noCompression : haxe.UInt64 = stdgo._internal.compress.flate.Flate_nocompression.noCompression;
final bestSpeed : haxe.UInt64 = stdgo._internal.compress.flate.Flate_bestspeed.bestSpeed;
final bestCompression : haxe.UInt64 = stdgo._internal.compress.flate.Flate_bestcompression.bestCompression;
final defaultCompression : haxe.UInt64 = stdgo._internal.compress.flate.Flate_defaultcompression.defaultCompression;
final huffmanOnly : haxe.UInt64 = stdgo._internal.compress.flate.Flate_huffmanonly.huffmanOnly;
class Resetter_static_extension {
    static public function reset(t:stdgo._internal.compress.flate.Flate_resetter.Resetter, _r:stdgo._internal.io.Io_reader.Reader, _dict:Array<std.UInt>):stdgo.Error {
        final _dict = ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_resetter_static_extension.Resetter_static_extension.reset(t, _r, _dict);
    }
}
@:forward abstract Resetter(stdgo._internal.compress.flate.Flate_resetter.Resetter) from stdgo._internal.compress.flate.Flate_resetter.Resetter to stdgo._internal.compress.flate.Flate_resetter.Resetter {
    @:from
    static function fromHaxeInterface(x:{ function reset(_r:stdgo._internal.io.Io_reader.Reader, _dict:Array<std.UInt>):stdgo.Error; }):Resetter {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Resetter = { reset : (_0, _1) -> x.reset(_0, [for (i in _1) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Reader_static_extension {

}
@:forward abstract Reader(stdgo._internal.compress.flate.Flate_reader.Reader) from stdgo._internal.compress.flate.Flate_reader.Reader to stdgo._internal.compress.flate.Flate_reader.Reader {
    @:from
    static function fromHaxeInterface(x:{ }):Reader {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Reader = { __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.T_compressionLevel_static_extension) @:dox(hide) abstract T_compressionLevel(stdgo._internal.compress.flate.Flate_t_compressionlevel.T_compressionLevel) from stdgo._internal.compress.flate.Flate_t_compressionlevel.T_compressionLevel to stdgo._internal.compress.flate.Flate_t_compressionlevel.T_compressionLevel {
    public var _level(get, set) : StdTypes.Int;
    function get__level():StdTypes.Int return this._level;
    function set__level(v:StdTypes.Int):StdTypes.Int {
        this._level = (v : stdgo.GoInt);
        return v;
    }
    public var _good(get, set) : StdTypes.Int;
    function get__good():StdTypes.Int return this._good;
    function set__good(v:StdTypes.Int):StdTypes.Int {
        this._good = (v : stdgo.GoInt);
        return v;
    }
    public var _lazy(get, set) : StdTypes.Int;
    function get__lazy():StdTypes.Int return this._lazy;
    function set__lazy(v:StdTypes.Int):StdTypes.Int {
        this._lazy = (v : stdgo.GoInt);
        return v;
    }
    public var _nice(get, set) : StdTypes.Int;
    function get__nice():StdTypes.Int return this._nice;
    function set__nice(v:StdTypes.Int):StdTypes.Int {
        this._nice = (v : stdgo.GoInt);
        return v;
    }
    public var _chain(get, set) : StdTypes.Int;
    function get__chain():StdTypes.Int return this._chain;
    function set__chain(v:StdTypes.Int):StdTypes.Int {
        this._chain = (v : stdgo.GoInt);
        return v;
    }
    public var _fastSkipHashing(get, set) : StdTypes.Int;
    function get__fastSkipHashing():StdTypes.Int return this._fastSkipHashing;
    function set__fastSkipHashing(v:StdTypes.Int):StdTypes.Int {
        this._fastSkipHashing = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_level:StdTypes.Int, ?_good:StdTypes.Int, ?_lazy:StdTypes.Int, ?_nice:StdTypes.Int, ?_chain:StdTypes.Int, ?_fastSkipHashing:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_t_compressionlevel.T_compressionLevel((_level : stdgo.GoInt), (_good : stdgo.GoInt), (_lazy : stdgo.GoInt), (_nice : stdgo.GoInt), (_chain : stdgo.GoInt), (_fastSkipHashing : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_compressor_static_extension) @:dox(hide) abstract T_compressor(stdgo._internal.compress.flate.Flate_t_compressor.T_compressor) from stdgo._internal.compress.flate.Flate_t_compressor.T_compressor to stdgo._internal.compress.flate.Flate_t_compressor.T_compressor {
    public var _compressionLevel(get, set) : T_compressionLevel;
    function get__compressionLevel():T_compressionLevel return this._compressionLevel;
    function set__compressionLevel(v:T_compressionLevel):T_compressionLevel {
        this._compressionLevel = v;
        return v;
    }
    public var _w(get, set) : T_huffmanBitWriter;
    function get__w():T_huffmanBitWriter return this._w;
    function set__w(v:T_huffmanBitWriter):T_huffmanBitWriter {
        this._w = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        return v;
    }
    public var _bulkHasher(get, set) : (Array<std.UInt>, Array<std.UInt>) -> Void;
    function get__bulkHasher():(Array<std.UInt>, Array<std.UInt>) -> Void return (_0, _1) -> this._bulkHasher([for (i in _0) i], [for (i in _1) i]);
    function set__bulkHasher(v:(Array<std.UInt>, Array<std.UInt>) -> Void):(Array<std.UInt>, Array<std.UInt>) -> Void {
        this._bulkHasher = v;
        return v;
    }
    public var _fill(get, set) : (T_compressor, Array<std.UInt>) -> StdTypes.Int;
    function get__fill():(T_compressor, Array<std.UInt>) -> StdTypes.Int return (_0, _1) -> this._fill(_0, [for (i in _1) i]);
    function set__fill(v:(T_compressor, Array<std.UInt>) -> StdTypes.Int):(T_compressor, Array<std.UInt>) -> StdTypes.Int {
        this._fill = v;
        return v;
    }
    public var _step(get, set) : T_compressor -> Void;
    function get__step():T_compressor -> Void return _0 -> this._step(_0);
    function set__step(v:T_compressor -> Void):T_compressor -> Void {
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
        this._bestSpeed = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>);
        return v;
    }
    public var _chainHead(get, set) : StdTypes.Int;
    function get__chainHead():StdTypes.Int return this._chainHead;
    function set__chainHead(v:StdTypes.Int):StdTypes.Int {
        this._chainHead = (v : stdgo.GoInt);
        return v;
    }
    public var _hashHead(get, set) : haxe.ds.Vector<std.UInt>;
    function get__hashHead():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._hashHead) i]);
    function set__hashHead(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._hashHead = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public var _hashPrev(get, set) : haxe.ds.Vector<std.UInt>;
    function get__hashPrev():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._hashPrev) i]);
    function set__hashPrev(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._hashPrev = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public var _hashOffset(get, set) : StdTypes.Int;
    function get__hashOffset():StdTypes.Int return this._hashOffset;
    function set__hashOffset(v:StdTypes.Int):StdTypes.Int {
        this._hashOffset = (v : stdgo.GoInt);
        return v;
    }
    public var _index(get, set) : StdTypes.Int;
    function get__index():StdTypes.Int return this._index;
    function set__index(v:StdTypes.Int):StdTypes.Int {
        this._index = (v : stdgo.GoInt);
        return v;
    }
    public var _window(get, set) : Array<std.UInt>;
    function get__window():Array<std.UInt> return [for (i in this._window) i];
    function set__window(v:Array<std.UInt>):Array<std.UInt> {
        this._window = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _windowEnd(get, set) : StdTypes.Int;
    function get__windowEnd():StdTypes.Int return this._windowEnd;
    function set__windowEnd(v:StdTypes.Int):StdTypes.Int {
        this._windowEnd = (v : stdgo.GoInt);
        return v;
    }
    public var _blockStart(get, set) : StdTypes.Int;
    function get__blockStart():StdTypes.Int return this._blockStart;
    function set__blockStart(v:StdTypes.Int):StdTypes.Int {
        this._blockStart = (v : stdgo.GoInt);
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
        this._tokens = ([for (i in v) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
        return v;
    }
    public var _length(get, set) : StdTypes.Int;
    function get__length():StdTypes.Int return this._length;
    function set__length(v:StdTypes.Int):StdTypes.Int {
        this._length = (v : stdgo.GoInt);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt);
        return v;
    }
    public var _maxInsertIndex(get, set) : StdTypes.Int;
    function get__maxInsertIndex():StdTypes.Int return this._maxInsertIndex;
    function set__maxInsertIndex(v:StdTypes.Int):StdTypes.Int {
        this._maxInsertIndex = (v : stdgo.GoInt);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _hashMatch(get, set) : haxe.ds.Vector<std.UInt>;
    function get__hashMatch():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._hashMatch) i]);
    function set__hashMatch(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._hashMatch = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public function new(?_compressionLevel:T_compressionLevel, ?_w:T_huffmanBitWriter, ?_bulkHasher:(Array<std.UInt>, Array<std.UInt>) -> Void, ?_fill:(T_compressor, Array<std.UInt>) -> StdTypes.Int, ?_step:T_compressor -> Void, ?_sync:Bool, ?_bestSpeed:T_deflateFast, ?_chainHead:StdTypes.Int, ?_hashHead:haxe.ds.Vector<std.UInt>, ?_hashPrev:haxe.ds.Vector<std.UInt>, ?_hashOffset:StdTypes.Int, ?_index:StdTypes.Int, ?_window:Array<std.UInt>, ?_windowEnd:StdTypes.Int, ?_blockStart:StdTypes.Int, ?_byteAvailable:Bool, ?_tokens:Array<T_token>, ?_length:StdTypes.Int, ?_offset:StdTypes.Int, ?_maxInsertIndex:StdTypes.Int, ?_err:stdgo.Error, ?_hashMatch:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.compress.flate.Flate_t_compressor.T_compressor(
_compressionLevel,
(_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>),
_bulkHasher,
_fill,
_step,
_sync,
(_bestSpeed : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>),
(_chainHead : stdgo.GoInt),
([for (i in _hashHead) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>),
([for (i in _hashPrev) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>),
(_hashOffset : stdgo.GoInt),
(_index : stdgo.GoInt),
([for (i in _window) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_windowEnd : stdgo.GoInt),
(_blockStart : stdgo.GoInt),
_byteAvailable,
([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>),
(_length : stdgo.GoInt),
(_offset : stdgo.GoInt),
(_maxInsertIndex : stdgo.GoInt),
(_err : stdgo.Error),
([for (i in _hashMatch) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_dictWriter_static_extension) @:dox(hide) abstract T_dictWriter(stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter) from stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter to stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter {
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_writer.Writer) this = new stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter(_w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.Writer_static_extension) abstract Writer(stdgo._internal.compress.flate.Flate_writer.Writer) from stdgo._internal.compress.flate.Flate_writer.Writer to stdgo._internal.compress.flate.Flate_writer.Writer {
    public var _d(get, set) : T_compressor;
    function get__d():T_compressor return this._d;
    function set__d(v:T_compressor):T_compressor {
        this._d = v;
        return v;
    }
    public var _dict(get, set) : Array<std.UInt>;
    function get__dict():Array<std.UInt> return [for (i in this._dict) i];
    function set__dict(v:Array<std.UInt>):Array<std.UInt> {
        this._dict = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_d:T_compressor, ?_dict:Array<std.UInt>) this = new stdgo._internal.compress.flate.Flate_writer.Writer(_d, ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_tableEntry_static_extension) @:dox(hide) abstract T_tableEntry(stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry) from stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry to stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry {
    public var _val(get, set) : std.UInt;
    function get__val():std.UInt return this._val;
    function set__val(v:std.UInt):std.UInt {
        this._val = (v : stdgo.GoUInt32);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_val:std.UInt, ?_offset:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry((_val : stdgo.GoUInt32), (_offset : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_deflateFast_static_extension) @:dox(hide) abstract T_deflateFast(stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast) from stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast to stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast {
    public var _table(get, set) : haxe.ds.Vector<T_tableEntry>;
    function get__table():haxe.ds.Vector<T_tableEntry> return haxe.ds.Vector.fromArrayCopy([for (i in this._table) i]);
    function set__table(v:haxe.ds.Vector<T_tableEntry>):haxe.ds.Vector<T_tableEntry> {
        this._table = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry>);
        return v;
    }
    public var _prev(get, set) : Array<std.UInt>;
    function get__prev():Array<std.UInt> return [for (i in this._prev) i];
    function set__prev(v:Array<std.UInt>):Array<std.UInt> {
        this._prev = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _cur(get, set) : StdTypes.Int;
    function get__cur():StdTypes.Int return this._cur;
    function set__cur(v:StdTypes.Int):StdTypes.Int {
        this._cur = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_table:haxe.ds.Vector<T_tableEntry>, ?_prev:Array<std.UInt>, ?_cur:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast(([for (i in _table) i] : stdgo.GoArray<stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry>), ([for (i in _prev) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_cur : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_dictDecoder_static_extension) @:dox(hide) abstract T_dictDecoder(stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder) from stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder to stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder {
    public var _hist(get, set) : Array<std.UInt>;
    function get__hist():Array<std.UInt> return [for (i in this._hist) i];
    function set__hist(v:Array<std.UInt>):Array<std.UInt> {
        this._hist = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _wrPos(get, set) : StdTypes.Int;
    function get__wrPos():StdTypes.Int return this._wrPos;
    function set__wrPos(v:StdTypes.Int):StdTypes.Int {
        this._wrPos = (v : stdgo.GoInt);
        return v;
    }
    public var _rdPos(get, set) : StdTypes.Int;
    function get__rdPos():StdTypes.Int return this._rdPos;
    function set__rdPos(v:StdTypes.Int):StdTypes.Int {
        this._rdPos = (v : stdgo.GoInt);
        return v;
    }
    public var _full(get, set) : Bool;
    function get__full():Bool return this._full;
    function set__full(v:Bool):Bool {
        this._full = v;
        return v;
    }
    public function new(?_hist:Array<std.UInt>, ?_wrPos:StdTypes.Int, ?_rdPos:StdTypes.Int, ?_full:Bool) this = new stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder(([for (i in _hist) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_wrPos : stdgo.GoInt), (_rdPos : stdgo.GoInt), _full);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_huffmanBitWriter_static_extension) @:dox(hide) abstract T_huffmanBitWriter(stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter) from stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter to stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter {
    public var _writer(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__writer():stdgo._internal.io.Io_writer.Writer return this._writer;
    function set__writer(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._writer = v;
        return v;
    }
    public var _bits(get, set) : haxe.UInt64;
    function get__bits():haxe.UInt64 return this._bits;
    function set__bits(v:haxe.UInt64):haxe.UInt64 {
        this._bits = (v : stdgo.GoUInt64);
        return v;
    }
    public var _nbits(get, set) : std.UInt;
    function get__nbits():std.UInt return this._nbits;
    function set__nbits(v:std.UInt):std.UInt {
        this._nbits = (v : stdgo.GoUInt);
        return v;
    }
    public var _bytes(get, set) : haxe.ds.Vector<std.UInt>;
    function get__bytes():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._bytes) i]);
    function set__bytes(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._bytes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _codegenFreq(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__codegenFreq():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._codegenFreq) i]);
    function set__codegenFreq(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._codegenFreq = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>);
        return v;
    }
    public var _nbytes(get, set) : StdTypes.Int;
    function get__nbytes():StdTypes.Int return this._nbytes;
    function set__nbytes(v:StdTypes.Int):StdTypes.Int {
        this._nbytes = (v : stdgo.GoInt);
        return v;
    }
    public var _literalFreq(get, set) : Array<StdTypes.Int>;
    function get__literalFreq():Array<StdTypes.Int> return [for (i in this._literalFreq) i];
    function set__literalFreq(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._literalFreq = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var _offsetFreq(get, set) : Array<StdTypes.Int>;
    function get__offsetFreq():Array<StdTypes.Int> return [for (i in this._offsetFreq) i];
    function set__offsetFreq(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._offsetFreq = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var _codegen(get, set) : Array<std.UInt>;
    function get__codegen():Array<std.UInt> return [for (i in this._codegen) i];
    function set__codegen(v:Array<std.UInt>):Array<std.UInt> {
        this._codegen = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _literalEncoding(get, set) : T_huffmanEncoder;
    function get__literalEncoding():T_huffmanEncoder return this._literalEncoding;
    function set__literalEncoding(v:T_huffmanEncoder):T_huffmanEncoder {
        this._literalEncoding = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
        return v;
    }
    public var _offsetEncoding(get, set) : T_huffmanEncoder;
    function get__offsetEncoding():T_huffmanEncoder return this._offsetEncoding;
    function set__offsetEncoding(v:T_huffmanEncoder):T_huffmanEncoder {
        this._offsetEncoding = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
        return v;
    }
    public var _codegenEncoding(get, set) : T_huffmanEncoder;
    function get__codegenEncoding():T_huffmanEncoder return this._codegenEncoding;
    function set__codegenEncoding(v:T_huffmanEncoder):T_huffmanEncoder {
        this._codegenEncoding = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_writer:stdgo._internal.io.Io_writer.Writer, ?_bits:haxe.UInt64, ?_nbits:std.UInt, ?_bytes:haxe.ds.Vector<std.UInt>, ?_codegenFreq:haxe.ds.Vector<StdTypes.Int>, ?_nbytes:StdTypes.Int, ?_literalFreq:Array<StdTypes.Int>, ?_offsetFreq:Array<StdTypes.Int>, ?_codegen:Array<std.UInt>, ?_literalEncoding:T_huffmanEncoder, ?_offsetEncoding:T_huffmanEncoder, ?_codegenEncoding:T_huffmanEncoder, ?_err:stdgo.Error) this = new stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter(
_writer,
(_bits : stdgo.GoUInt64),
(_nbits : stdgo.GoUInt),
([for (i in _bytes) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _codegenFreq) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>),
(_nbytes : stdgo.GoInt),
([for (i in _literalFreq) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>),
([for (i in _offsetFreq) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>),
([for (i in _codegen) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_literalEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>),
(_offsetEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>),
(_codegenEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>),
(_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_hcode_static_extension) @:dox(hide) abstract T_hcode(stdgo._internal.compress.flate.Flate_t_hcode.T_hcode) from stdgo._internal.compress.flate.Flate_t_hcode.T_hcode to stdgo._internal.compress.flate.Flate_t_hcode.T_hcode {
    public var _code(get, set) : std.UInt;
    function get__code():std.UInt return this._code;
    function set__code(v:std.UInt):std.UInt {
        this._code = (v : stdgo.GoUInt16);
        return v;
    }
    public var _len(get, set) : std.UInt;
    function get__len():std.UInt return this._len;
    function set__len(v:std.UInt):std.UInt {
        this._len = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?_code:std.UInt, ?_len:std.UInt) this = new stdgo._internal.compress.flate.Flate_t_hcode.T_hcode((_code : stdgo.GoUInt16), (_len : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_huffmanEncoder_static_extension) @:dox(hide) abstract T_huffmanEncoder(stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder) from stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder to stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder {
    public var _codes(get, set) : Array<T_hcode>;
    function get__codes():Array<T_hcode> return [for (i in this._codes) i];
    function set__codes(v:Array<T_hcode>):Array<T_hcode> {
        this._codes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>);
        return v;
    }
    public var _freqcache(get, set) : Array<T_literalNode>;
    function get__freqcache():Array<T_literalNode> return [for (i in this._freqcache) i];
    function set__freqcache(v:Array<T_literalNode>):Array<T_literalNode> {
        this._freqcache = ([for (i in v) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>);
        return v;
    }
    public var _bitCount(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__bitCount():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._bitCount) i]);
    function set__bitCount(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._bitCount = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>);
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
    public function new(?_codes:Array<T_hcode>, ?_freqcache:Array<T_literalNode>, ?_bitCount:haxe.ds.Vector<StdTypes.Int>, ?_lns:T_byLiteral, ?_lfs:T_byFreq) this = new stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder(([for (i in _codes) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>), ([for (i in _freqcache) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>), ([for (i in _bitCount) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>), _lns, _lfs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_literalNode_static_extension) @:dox(hide) abstract T_literalNode(stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode) from stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode to stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode {
    public var _literal(get, set) : std.UInt;
    function get__literal():std.UInt return this._literal;
    function set__literal(v:std.UInt):std.UInt {
        this._literal = (v : stdgo.GoUInt16);
        return v;
    }
    public var _freq(get, set) : StdTypes.Int;
    function get__freq():StdTypes.Int return this._freq;
    function set__freq(v:StdTypes.Int):StdTypes.Int {
        this._freq = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_literal:std.UInt, ?_freq:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode((_literal : stdgo.GoUInt16), (_freq : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_levelInfo_static_extension) @:dox(hide) abstract T_levelInfo(stdgo._internal.compress.flate.Flate_t_levelinfo.T_levelInfo) from stdgo._internal.compress.flate.Flate_t_levelinfo.T_levelInfo to stdgo._internal.compress.flate.Flate_t_levelinfo.T_levelInfo {
    public var _level(get, set) : StdTypes.Int;
    function get__level():StdTypes.Int return this._level;
    function set__level(v:StdTypes.Int):StdTypes.Int {
        this._level = (v : stdgo.GoInt32);
        return v;
    }
    public var _lastFreq(get, set) : StdTypes.Int;
    function get__lastFreq():StdTypes.Int return this._lastFreq;
    function set__lastFreq(v:StdTypes.Int):StdTypes.Int {
        this._lastFreq = (v : stdgo.GoInt32);
        return v;
    }
    public var _nextCharFreq(get, set) : StdTypes.Int;
    function get__nextCharFreq():StdTypes.Int return this._nextCharFreq;
    function set__nextCharFreq(v:StdTypes.Int):StdTypes.Int {
        this._nextCharFreq = (v : stdgo.GoInt32);
        return v;
    }
    public var _nextPairFreq(get, set) : StdTypes.Int;
    function get__nextPairFreq():StdTypes.Int return this._nextPairFreq;
    function set__nextPairFreq(v:StdTypes.Int):StdTypes.Int {
        this._nextPairFreq = (v : stdgo.GoInt32);
        return v;
    }
    public var _needed(get, set) : StdTypes.Int;
    function get__needed():StdTypes.Int return this._needed;
    function set__needed(v:StdTypes.Int):StdTypes.Int {
        this._needed = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_level:StdTypes.Int, ?_lastFreq:StdTypes.Int, ?_nextCharFreq:StdTypes.Int, ?_nextPairFreq:StdTypes.Int, ?_needed:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_t_levelinfo.T_levelInfo((_level : stdgo.GoInt32), (_lastFreq : stdgo.GoInt32), (_nextCharFreq : stdgo.GoInt32), (_nextPairFreq : stdgo.GoInt32), (_needed : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.ReadError_static_extension) abstract ReadError(stdgo._internal.compress.flate.Flate_readerror.ReadError) from stdgo._internal.compress.flate.Flate_readerror.ReadError to stdgo._internal.compress.flate.Flate_readerror.ReadError {
    public var offset(get, set) : haxe.Int64;
    function get_offset():haxe.Int64 return this.offset;
    function set_offset(v:haxe.Int64):haxe.Int64 {
        this.offset = (v : stdgo.GoInt64);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?offset:haxe.Int64, ?err:stdgo.Error) this = new stdgo._internal.compress.flate.Flate_readerror.ReadError((offset : stdgo.GoInt64), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.WriteError_static_extension) abstract WriteError(stdgo._internal.compress.flate.Flate_writeerror.WriteError) from stdgo._internal.compress.flate.Flate_writeerror.WriteError to stdgo._internal.compress.flate.Flate_writeerror.WriteError {
    public var offset(get, set) : haxe.Int64;
    function get_offset():haxe.Int64 return this.offset;
    function set_offset(v:haxe.Int64):haxe.Int64 {
        this.offset = (v : stdgo.GoInt64);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?offset:haxe.Int64, ?err:stdgo.Error) this = new stdgo._internal.compress.flate.Flate_writeerror.WriteError((offset : stdgo.GoInt64), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_huffmanDecoder_static_extension) @:dox(hide) abstract T_huffmanDecoder(stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder) from stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder to stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder {
    public var _min(get, set) : StdTypes.Int;
    function get__min():StdTypes.Int return this._min;
    function set__min(v:StdTypes.Int):StdTypes.Int {
        this._min = (v : stdgo.GoInt);
        return v;
    }
    public var _chunks(get, set) : haxe.ds.Vector<std.UInt>;
    function get__chunks():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._chunks) i]);
    function set__chunks(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._chunks = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public var _links(get, set) : Array<Array<std.UInt>>;
    function get__links():Array<Array<std.UInt>> return [for (i in this._links) [for (i in i) i]];
    function set__links(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this._links = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>);
        return v;
    }
    public var _linkMask(get, set) : std.UInt;
    function get__linkMask():std.UInt return this._linkMask;
    function set__linkMask(v:std.UInt):std.UInt {
        this._linkMask = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_min:StdTypes.Int, ?_chunks:haxe.ds.Vector<std.UInt>, ?_links:Array<Array<std.UInt>>, ?_linkMask:std.UInt) this = new stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder((_min : stdgo.GoInt), ([for (i in _chunks) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>), ([for (i in _links) ([for (i in i) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>), (_linkMask : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.flate.Flate.T_decompressor_static_extension) @:dox(hide) abstract T_decompressor(stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor) from stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor to stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor {
    public var _r(get, set) : Reader;
    function get__r():Reader return this._r;
    function set__r(v:Reader):Reader {
        this._r = v;
        return v;
    }
    public var _rBuf(get, set) : stdgo._internal.bufio.Bufio_reader.Reader;
    function get__rBuf():stdgo._internal.bufio.Bufio_reader.Reader return this._rBuf;
    function set__rBuf(v:stdgo._internal.bufio.Bufio_reader.Reader):stdgo._internal.bufio.Bufio_reader.Reader {
        this._rBuf = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return v;
    }
    public var _roffset(get, set) : haxe.Int64;
    function get__roffset():haxe.Int64 return this._roffset;
    function set__roffset(v:haxe.Int64):haxe.Int64 {
        this._roffset = (v : stdgo.GoInt64);
        return v;
    }
    public var _b(get, set) : std.UInt;
    function get__b():std.UInt return this._b;
    function set__b(v:std.UInt):std.UInt {
        this._b = (v : stdgo.GoUInt32);
        return v;
    }
    public var _nb(get, set) : std.UInt;
    function get__nb():std.UInt return this._nb;
    function set__nb(v:std.UInt):std.UInt {
        this._nb = (v : stdgo.GoUInt);
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
        this._bits = (v : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
        return v;
    }
    public var _codebits(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__codebits():haxe.ds.Vector<StdTypes.Int> return this._codebits;
    function set__codebits(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._codebits = (v : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
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
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _step(get, set) : T_decompressor -> Void;
    function get__step():T_decompressor -> Void return _0 -> this._step(_0);
    function set__step(v:T_decompressor -> Void):T_decompressor -> Void {
        this._step = v;
        return v;
    }
    public var _stepState(get, set) : StdTypes.Int;
    function get__stepState():StdTypes.Int return this._stepState;
    function set__stepState(v:StdTypes.Int):StdTypes.Int {
        this._stepState = (v : stdgo.GoInt);
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
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _toRead(get, set) : Array<std.UInt>;
    function get__toRead():Array<std.UInt> return [for (i in this._toRead) i];
    function set__toRead(v:Array<std.UInt>):Array<std.UInt> {
        this._toRead = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _hl(get, set) : T_huffmanDecoder;
    function get__hl():T_huffmanDecoder return this._hl;
    function set__hl(v:T_huffmanDecoder):T_huffmanDecoder {
        this._hl = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>);
        return v;
    }
    public var _hd(get, set) : T_huffmanDecoder;
    function get__hd():T_huffmanDecoder return this._hd;
    function set__hd(v:T_huffmanDecoder):T_huffmanDecoder {
        this._hd = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>);
        return v;
    }
    public var _copyLen(get, set) : StdTypes.Int;
    function get__copyLen():StdTypes.Int return this._copyLen;
    function set__copyLen(v:StdTypes.Int):StdTypes.Int {
        this._copyLen = (v : stdgo.GoInt);
        return v;
    }
    public var _copyDist(get, set) : StdTypes.Int;
    function get__copyDist():StdTypes.Int return this._copyDist;
    function set__copyDist(v:StdTypes.Int):StdTypes.Int {
        this._copyDist = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_r:Reader, ?_rBuf:stdgo._internal.bufio.Bufio_reader.Reader, ?_roffset:haxe.Int64, ?_b:std.UInt, ?_nb:std.UInt, ?_h1:T_huffmanDecoder, ?_h2:T_huffmanDecoder, ?_bits:haxe.ds.Vector<StdTypes.Int>, ?_codebits:haxe.ds.Vector<StdTypes.Int>, ?_dict:T_dictDecoder, ?_buf:haxe.ds.Vector<std.UInt>, ?_step:T_decompressor -> Void, ?_stepState:StdTypes.Int, ?_final:Bool, ?_err:stdgo.Error, ?_toRead:Array<std.UInt>, ?_hl:T_huffmanDecoder, ?_hd:T_huffmanDecoder, ?_copyLen:StdTypes.Int, ?_copyDist:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor(
_r,
(_rBuf : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>),
(_roffset : stdgo.GoInt64),
(_b : stdgo.GoUInt32),
(_nb : stdgo.GoUInt),
_h1,
_h2,
(_bits : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>),
(_codebits : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>),
_dict,
([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
_step,
(_stepState : stdgo.GoInt),
_final,
(_err : stdgo.Error),
([for (i in _toRead) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_hl : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>),
(_hd : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>),
(_copyLen : stdgo.GoInt),
(_copyDist : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_byLiteral = stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral;
@:dox(hide) typedef T_byFreq = stdgo._internal.compress.flate.Flate_t_byfreq.T_byFreq;
typedef CorruptInputError = stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError;
typedef InternalError = stdgo._internal.compress.flate.Flate_internalerror.InternalError;
@:dox(hide) typedef T_token = stdgo._internal.compress.flate.Flate_t_token.T_token;
@:dox(hide) typedef T_compressionLevelPointer = stdgo._internal.compress.flate.Flate_t_compressionlevelpointer.T_compressionLevelPointer;
@:dox(hide) class T_compressionLevel_static_extension {

}
@:dox(hide) typedef T_compressorPointer = stdgo._internal.compress.flate.Flate_t_compressorpointer.T_compressorPointer;
@:dox(hide) class T_compressor_static_extension {
    static public function _close(_d:T_compressor):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        return stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._close(_d);
    }
    static public function _reset(_d:T_compressor, _w:stdgo._internal.io.Io_writer.Writer):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._reset(_d, _w);
    }
    static public function _init(_d:T_compressor, _w:stdgo._internal.io.Io_writer.Writer, _level:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        final _level = (_level : stdgo.GoInt);
        return stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._init(_d, _w, _level);
    }
    static public function _syncFlush(_d:T_compressor):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        return stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._syncFlush(_d);
    }
    static public function _write(_d:T_compressor, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._write(_d, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _storeHuff(_d:T_compressor):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._storeHuff(_d);
    }
    static public function _store(_d:T_compressor):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._store(_d);
    }
    static public function _fillStore(_d:T_compressor, _b:Array<std.UInt>):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._fillStore(_d, _b);
    }
    static public function _deflate(_d:T_compressor):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._deflate(_d);
    }
    static public function _initDeflate(_d:T_compressor):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._initDeflate(_d);
    }
    static public function _encSpeed(_d:T_compressor):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._encSpeed(_d);
    }
    static public function _writeStoredBlock(_d:T_compressor, _buf:Array<std.UInt>):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._writeStoredBlock(_d, _buf);
    }
    static public function _findMatch(_d:T_compressor, _pos:StdTypes.Int, _prevHead:StdTypes.Int, _prevLength:StdTypes.Int, _lookahead:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        final _pos = (_pos : stdgo.GoInt);
        final _prevHead = (_prevHead : stdgo.GoInt);
        final _prevLength = (_prevLength : stdgo.GoInt);
        final _lookahead = (_lookahead : stdgo.GoInt);
        return {
            final obj = stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._findMatch(_d, _pos, _prevHead, _prevLength, _lookahead);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _fillWindow(_d:T_compressor, _b:Array<std.UInt>):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._fillWindow(_d, _b);
    }
    static public function _writeBlock(_d:T_compressor, _tokens:Array<T_token>, _index:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        final _tokens = ([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
        final _index = (_index : stdgo.GoInt);
        return stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._writeBlock(_d, _tokens, _index);
    }
    static public function _fillDeflate(_d:T_compressor, _b:Array<std.UInt>):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._fillDeflate(_d, _b);
    }
}
@:dox(hide) typedef T_dictWriterPointer = stdgo._internal.compress.flate.Flate_t_dictwriterpointer.T_dictWriterPointer;
@:dox(hide) class T_dictWriter_static_extension {
    static public function write(_w:T_dictWriter, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_t_dictwriter_static_extension.T_dictWriter_static_extension.write(_w, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef WriterPointer = stdgo._internal.compress.flate.Flate_writerpointer.WriterPointer;
class Writer_static_extension {
    static public function reset(_w:Writer, _dst:stdgo._internal.io.Io_writer.Writer):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>);
        stdgo._internal.compress.flate.Flate_writer_static_extension.Writer_static_extension.reset(_w, _dst);
    }
    static public function close(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>);
        return stdgo._internal.compress.flate.Flate_writer_static_extension.Writer_static_extension.close(_w);
    }
    static public function flush(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>);
        return stdgo._internal.compress.flate.Flate_writer_static_extension.Writer_static_extension.flush(_w);
    }
    static public function write(_w:Writer, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_writer_static_extension.Writer_static_extension.write(_w, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_tableEntryPointer = stdgo._internal.compress.flate.Flate_t_tableentrypointer.T_tableEntryPointer;
@:dox(hide) class T_tableEntry_static_extension {

}
@:dox(hide) typedef T_deflateFastPointer = stdgo._internal.compress.flate.Flate_t_deflatefastpointer.T_deflateFastPointer;
@:dox(hide) class T_deflateFast_static_extension {
    static public function _shiftOffsets(_e:T_deflateFast):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>);
        stdgo._internal.compress.flate.Flate_t_deflatefast_static_extension.T_deflateFast_static_extension._shiftOffsets(_e);
    }
    static public function _reset(_e:T_deflateFast):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>);
        stdgo._internal.compress.flate.Flate_t_deflatefast_static_extension.T_deflateFast_static_extension._reset(_e);
    }
    static public function _matchLen(_e:T_deflateFast, _s:StdTypes.Int, _t:StdTypes.Int, _src:Array<std.UInt>):StdTypes.Int {
        final _e = (_e : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>);
        final _s = (_s : stdgo.GoInt32);
        final _t = (_t : stdgo.GoInt32);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_t_deflatefast_static_extension.T_deflateFast_static_extension._matchLen(_e, _s, _t, _src);
    }
    static public function _encode(_e:T_deflateFast, _dst:Array<T_token>, _src:Array<std.UInt>):Array<T_token> {
        final _e = (_e : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>);
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.compress.flate.Flate_t_deflatefast_static_extension.T_deflateFast_static_extension._encode(_e, _dst, _src)) i];
    }
}
@:dox(hide) typedef T_dictDecoderPointer = stdgo._internal.compress.flate.Flate_t_dictdecoderpointer.T_dictDecoderPointer;
@:dox(hide) class T_dictDecoder_static_extension {
    static public function _readFlush(_dd:T_dictDecoder):Array<std.UInt> {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>);
        return [for (i in stdgo._internal.compress.flate.Flate_t_dictdecoder_static_extension.T_dictDecoder_static_extension._readFlush(_dd)) i];
    }
    static public function _tryWriteCopy(_dd:T_dictDecoder, _dist:StdTypes.Int, _length:StdTypes.Int):StdTypes.Int {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>);
        final _dist = (_dist : stdgo.GoInt);
        final _length = (_length : stdgo.GoInt);
        return stdgo._internal.compress.flate.Flate_t_dictdecoder_static_extension.T_dictDecoder_static_extension._tryWriteCopy(_dd, _dist, _length);
    }
    static public function _writeCopy(_dd:T_dictDecoder, _dist:StdTypes.Int, _length:StdTypes.Int):StdTypes.Int {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>);
        final _dist = (_dist : stdgo.GoInt);
        final _length = (_length : stdgo.GoInt);
        return stdgo._internal.compress.flate.Flate_t_dictdecoder_static_extension.T_dictDecoder_static_extension._writeCopy(_dd, _dist, _length);
    }
    static public function _writeByte(_dd:T_dictDecoder, _c:std.UInt):Void {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>);
        final _c = (_c : stdgo.GoUInt8);
        stdgo._internal.compress.flate.Flate_t_dictdecoder_static_extension.T_dictDecoder_static_extension._writeByte(_dd, _c);
    }
    static public function _writeMark(_dd:T_dictDecoder, _cnt:StdTypes.Int):Void {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>);
        final _cnt = (_cnt : stdgo.GoInt);
        stdgo._internal.compress.flate.Flate_t_dictdecoder_static_extension.T_dictDecoder_static_extension._writeMark(_dd, _cnt);
    }
    static public function _writeSlice(_dd:T_dictDecoder):Array<std.UInt> {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>);
        return [for (i in stdgo._internal.compress.flate.Flate_t_dictdecoder_static_extension.T_dictDecoder_static_extension._writeSlice(_dd)) i];
    }
    static public function _availWrite(_dd:T_dictDecoder):StdTypes.Int {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>);
        return stdgo._internal.compress.flate.Flate_t_dictdecoder_static_extension.T_dictDecoder_static_extension._availWrite(_dd);
    }
    static public function _availRead(_dd:T_dictDecoder):StdTypes.Int {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>);
        return stdgo._internal.compress.flate.Flate_t_dictdecoder_static_extension.T_dictDecoder_static_extension._availRead(_dd);
    }
    static public function _histSize(_dd:T_dictDecoder):StdTypes.Int {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>);
        return stdgo._internal.compress.flate.Flate_t_dictdecoder_static_extension.T_dictDecoder_static_extension._histSize(_dd);
    }
    static public function _init(_dd:T_dictDecoder, _size:StdTypes.Int, _dict:Array<std.UInt>):Void {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>);
        final _size = (_size : stdgo.GoInt);
        final _dict = ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_t_dictdecoder_static_extension.T_dictDecoder_static_extension._init(_dd, _size, _dict);
    }
}
@:dox(hide) typedef T_huffmanBitWriterPointer = stdgo._internal.compress.flate.Flate_t_huffmanbitwriterpointer.T_huffmanBitWriterPointer;
@:dox(hide) class T_huffmanBitWriter_static_extension {
    static public function _writeBlockHuff(_w:T_huffmanBitWriter, _eof:Bool, _input:Array<std.UInt>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        final _input = ([for (i in _input) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._writeBlockHuff(_w, _eof, _input);
    }
    static public function _writeTokens(_w:T_huffmanBitWriter, _tokens:Array<T_token>, _leCodes:Array<T_hcode>, _oeCodes:Array<T_hcode>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        final _tokens = ([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
        final _leCodes = ([for (i in _leCodes) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>);
        final _oeCodes = ([for (i in _oeCodes) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>);
        stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._writeTokens(_w, _tokens, _leCodes, _oeCodes);
    }
    static public function _indexTokens(_w:T_huffmanBitWriter, _tokens:Array<T_token>):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        final _tokens = ([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._indexTokens(_w, _tokens);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeBlockDynamic(_w:T_huffmanBitWriter, _tokens:Array<T_token>, _eof:Bool, _input:Array<std.UInt>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        final _tokens = ([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
        final _input = ([for (i in _input) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._writeBlockDynamic(_w, _tokens, _eof, _input);
    }
    static public function _writeBlock(_w:T_huffmanBitWriter, _tokens:Array<T_token>, _eof:Bool, _input:Array<std.UInt>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        final _tokens = ([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
        final _input = ([for (i in _input) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._writeBlock(_w, _tokens, _eof, _input);
    }
    static public function _writeFixedHeader(_w:T_huffmanBitWriter, _isEof:Bool):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._writeFixedHeader(_w, _isEof);
    }
    static public function _writeStoredHeader(_w:T_huffmanBitWriter, _length:StdTypes.Int, _isEof:Bool):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        final _length = (_length : stdgo.GoInt);
        stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._writeStoredHeader(_w, _length, _isEof);
    }
    static public function _writeDynamicHeader(_w:T_huffmanBitWriter, _numLiterals:StdTypes.Int, _numOffsets:StdTypes.Int, _numCodegens:StdTypes.Int, _isEof:Bool):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        final _numLiterals = (_numLiterals : stdgo.GoInt);
        final _numOffsets = (_numOffsets : stdgo.GoInt);
        final _numCodegens = (_numCodegens : stdgo.GoInt);
        stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._writeDynamicHeader(_w, _numLiterals, _numOffsets, _numCodegens, _isEof);
    }
    static public function _writeCode(_w:T_huffmanBitWriter, _c:T_hcode):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._writeCode(_w, _c);
    }
    static public function _storedSize(_w:T_huffmanBitWriter, _in:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._storedSize(_w, _in);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _fixedSize(_w:T_huffmanBitWriter, _extraBits:StdTypes.Int):StdTypes.Int {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        final _extraBits = (_extraBits : stdgo.GoInt);
        return stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._fixedSize(_w, _extraBits);
    }
    static public function _dynamicSize(_w:T_huffmanBitWriter, _litEnc:T_huffmanEncoder, _offEnc:T_huffmanEncoder, _extraBits:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        final _litEnc = (_litEnc : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
        final _offEnc = (_offEnc : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
        final _extraBits = (_extraBits : stdgo.GoInt);
        return {
            final obj = stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._dynamicSize(_w, _litEnc, _offEnc, _extraBits);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _generateCodegen(_w:T_huffmanBitWriter, _numLiterals:StdTypes.Int, _numOffsets:StdTypes.Int, _litEnc:T_huffmanEncoder, _offEnc:T_huffmanEncoder):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        final _numLiterals = (_numLiterals : stdgo.GoInt);
        final _numOffsets = (_numOffsets : stdgo.GoInt);
        final _litEnc = (_litEnc : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
        final _offEnc = (_offEnc : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
        stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._generateCodegen(_w, _numLiterals, _numOffsets, _litEnc, _offEnc);
    }
    static public function _writeBytes(_w:T_huffmanBitWriter, _bytes:Array<std.UInt>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        final _bytes = ([for (i in _bytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._writeBytes(_w, _bytes);
    }
    static public function _writeBits(_w:T_huffmanBitWriter, _b:StdTypes.Int, _nb:std.UInt):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        final _b = (_b : stdgo.GoInt32);
        final _nb = (_nb : stdgo.GoUInt);
        stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._writeBits(_w, _b, _nb);
    }
    static public function _write(_w:T_huffmanBitWriter, _b:Array<std.UInt>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._write(_w, _b);
    }
    static public function _flush(_w:T_huffmanBitWriter):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._flush(_w);
    }
    static public function _reset(_w:T_huffmanBitWriter, _writer:stdgo._internal.io.Io_writer.Writer):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
        stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension._reset(_w, _writer);
    }
}
@:dox(hide) typedef T_hcodePointer = stdgo._internal.compress.flate.Flate_t_hcodepointer.T_hcodePointer;
@:dox(hide) class T_hcode_static_extension {
    static public function _set(_h:T_hcode, _code:std.UInt, _length:std.UInt):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>);
        final _code = (_code : stdgo.GoUInt16);
        final _length = (_length : stdgo.GoUInt16);
        stdgo._internal.compress.flate.Flate_t_hcode_static_extension.T_hcode_static_extension._set(_h, _code, _length);
    }
}
@:dox(hide) typedef T_huffmanEncoderPointer = stdgo._internal.compress.flate.Flate_t_huffmanencoderpointer.T_huffmanEncoderPointer;
@:dox(hide) class T_huffmanEncoder_static_extension {
    static public function _generate(_h:T_huffmanEncoder, _freq:Array<StdTypes.Int>, _maxBits:StdTypes.Int):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
        final _freq = ([for (i in _freq) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        final _maxBits = (_maxBits : stdgo.GoInt32);
        stdgo._internal.compress.flate.Flate_t_huffmanencoder_static_extension.T_huffmanEncoder_static_extension._generate(_h, _freq, _maxBits);
    }
    static public function _assignEncodingAndSize(_h:T_huffmanEncoder, _bitCount:Array<StdTypes.Int>, _list:Array<T_literalNode>):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
        final _bitCount = ([for (i in _bitCount) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>);
        stdgo._internal.compress.flate.Flate_t_huffmanencoder_static_extension.T_huffmanEncoder_static_extension._assignEncodingAndSize(_h, _bitCount, _list);
    }
    static public function _bitCounts(_h:T_huffmanEncoder, _list:Array<T_literalNode>, _maxBits:StdTypes.Int):Array<StdTypes.Int> {
        final _h = (_h : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>);
        final _maxBits = (_maxBits : stdgo.GoInt32);
        return [for (i in stdgo._internal.compress.flate.Flate_t_huffmanencoder_static_extension.T_huffmanEncoder_static_extension._bitCounts(_h, _list, _maxBits)) i];
    }
    static public function _bitLength(_h:T_huffmanEncoder, _freq:Array<StdTypes.Int>):StdTypes.Int {
        final _h = (_h : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
        final _freq = ([for (i in _freq) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return stdgo._internal.compress.flate.Flate_t_huffmanencoder_static_extension.T_huffmanEncoder_static_extension._bitLength(_h, _freq);
    }
}
@:dox(hide) typedef T_literalNodePointer = stdgo._internal.compress.flate.Flate_t_literalnodepointer.T_literalNodePointer;
@:dox(hide) class T_literalNode_static_extension {

}
@:dox(hide) typedef T_levelInfoPointer = stdgo._internal.compress.flate.Flate_t_levelinfopointer.T_levelInfoPointer;
@:dox(hide) class T_levelInfo_static_extension {

}
typedef ReadErrorPointer = stdgo._internal.compress.flate.Flate_readerrorpointer.ReadErrorPointer;
class ReadError_static_extension {
    static public function error(_e:ReadError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.compress.flate.Flate_readerror.ReadError>);
        return stdgo._internal.compress.flate.Flate_readerror_static_extension.ReadError_static_extension.error(_e);
    }
}
typedef WriteErrorPointer = stdgo._internal.compress.flate.Flate_writeerrorpointer.WriteErrorPointer;
class WriteError_static_extension {
    static public function error(_e:WriteError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.compress.flate.Flate_writeerror.WriteError>);
        return stdgo._internal.compress.flate.Flate_writeerror_static_extension.WriteError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_huffmanDecoderPointer = stdgo._internal.compress.flate.Flate_t_huffmandecoderpointer.T_huffmanDecoderPointer;
@:dox(hide) class T_huffmanDecoder_static_extension {
    static public function _init(_h:T_huffmanDecoder, _lengths:Array<StdTypes.Int>):Bool {
        final _h = (_h : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>);
        final _lengths = ([for (i in _lengths) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.compress.flate.Flate_t_huffmandecoder_static_extension.T_huffmanDecoder_static_extension._init(_h, _lengths);
    }
}
@:dox(hide) typedef T_decompressorPointer = stdgo._internal.compress.flate.Flate_t_decompressorpointer.T_decompressorPointer;
@:dox(hide) class T_decompressor_static_extension {
    static public function reset(_f:T_decompressor, _r:stdgo._internal.io.Io_reader.Reader, _dict:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>);
        final _dict = ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension.reset(_f, _r, _dict);
    }
    static public function _makeReader(_f:T_decompressor, _r:stdgo._internal.io.Io_reader.Reader):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>);
        stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._makeReader(_f, _r);
    }
    static public function _huffSym(_f:T_decompressor, _h:T_huffmanDecoder):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>);
        final _h = (_h : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._huffSym(_f, _h);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _moreBits(_f:T_decompressor):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>);
        return stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._moreBits(_f);
    }
    static public function _finishBlock(_f:T_decompressor):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>);
        stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._finishBlock(_f);
    }
    static public function _copyData(_f:T_decompressor):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>);
        stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._copyData(_f);
    }
    static public function _dataBlock(_f:T_decompressor):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>);
        stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._dataBlock(_f);
    }
    static public function _huffmanBlock(_f:T_decompressor):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>);
        stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._huffmanBlock(_f);
    }
    static public function _readHuffman(_f:T_decompressor):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>);
        return stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._readHuffman(_f);
    }
    static public function close(_f:T_decompressor):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>);
        return stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension.close(_f);
    }
    static public function read(_f:T_decompressor, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension.read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _nextBlock(_f:T_decompressor):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>);
        stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._nextBlock(_f);
    }
}
@:dox(hide) typedef T_byLiteralPointer = stdgo._internal.compress.flate.Flate_t_byliteralpointer.T_byLiteralPointer;
@:dox(hide) class T_byLiteral_static_extension {
    static public function swap(_s:T_byLiteral, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.compress.flate.Flate_t_byliteral_static_extension.T_byLiteral_static_extension.swap(_s, _i, _j);
    }
    static public function less(_s:T_byLiteral, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.compress.flate.Flate_t_byliteral_static_extension.T_byLiteral_static_extension.less(_s, _i, _j);
    }
    static public function len(_s:T_byLiteral):StdTypes.Int {
        return stdgo._internal.compress.flate.Flate_t_byliteral_static_extension.T_byLiteral_static_extension.len(_s);
    }
    static public function _sort(_s:T_byLiteral, _a:Array<T_literalNode>):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral>);
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>);
        stdgo._internal.compress.flate.Flate_t_byliteral_static_extension.T_byLiteral_static_extension._sort(_s, _a);
    }
}
@:dox(hide) typedef T_byFreqPointer = stdgo._internal.compress.flate.Flate_t_byfreqpointer.T_byFreqPointer;
@:dox(hide) class T_byFreq_static_extension {
    static public function swap(_s:T_byFreq, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.compress.flate.Flate_t_byfreq_static_extension.T_byFreq_static_extension.swap(_s, _i, _j);
    }
    static public function less(_s:T_byFreq, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.compress.flate.Flate_t_byfreq_static_extension.T_byFreq_static_extension.less(_s, _i, _j);
    }
    static public function len(_s:T_byFreq):StdTypes.Int {
        return stdgo._internal.compress.flate.Flate_t_byfreq_static_extension.T_byFreq_static_extension.len(_s);
    }
    static public function _sort(_s:T_byFreq, _a:Array<T_literalNode>):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_byfreq.T_byFreq>);
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>);
        stdgo._internal.compress.flate.Flate_t_byfreq_static_extension.T_byFreq_static_extension._sort(_s, _a);
    }
}
typedef CorruptInputErrorPointer = stdgo._internal.compress.flate.Flate_corruptinputerrorpointer.CorruptInputErrorPointer;
class CorruptInputError_static_extension {
    static public function error(_e:CorruptInputError):String {
        return stdgo._internal.compress.flate.Flate_corruptinputerror_static_extension.CorruptInputError_static_extension.error(_e);
    }
}
typedef InternalErrorPointer = stdgo._internal.compress.flate.Flate_internalerrorpointer.InternalErrorPointer;
class InternalError_static_extension {
    static public function error(_e:InternalError):String {
        return stdgo._internal.compress.flate.Flate_internalerror_static_extension.InternalError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_tokenPointer = stdgo._internal.compress.flate.Flate_t_tokenpointer.T_tokenPointer;
@:dox(hide) class T_token_static_extension {
    static public function _length(_t:T_token):std.UInt {
        return stdgo._internal.compress.flate.Flate_t_token_static_extension.T_token_static_extension._length(_t);
    }
    static public function _offset(_t:T_token):std.UInt {
        return stdgo._internal.compress.flate.Flate_t_token_static_extension.T_token_static_extension._offset(_t);
    }
    static public function _literal(_t:T_token):std.UInt {
        return stdgo._internal.compress.flate.Flate_t_token_static_extension.T_token_static_extension._literal(_t);
    }
}
/**
    * Package flate implements the DEFLATE compressed data format, described in
    * RFC 1951.  The gzip and zlib packages implement access to DEFLATE-based file
    * formats.
**/
class Flate {
    /**
        * NewWriter returns a new Writer compressing data at the given level.
        * Following zlib, levels range from 1 (BestSpeed) to 9 (BestCompression);
        * higher levels typically run slower but compress more. Level 0
        * (NoCompression) does not attempt any compression; it only adds the
        * necessary DEFLATE framing.
        * Level -1 (DefaultCompression) uses the default compression level.
        * Level -2 (HuffmanOnly) will use Huffman compression only, giving
        * a very fast compression for all types of input, but sacrificing considerable
        * compression efficiency.
        * 
        * If level is in the range [-2, 9] then the error returned will be nil.
        * Otherwise the error returned will be non-nil.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer, _level:StdTypes.Int):stdgo.Tuple<Writer, stdgo.Error> {
        final _level = (_level : stdgo.GoInt);
        return {
            final obj = stdgo._internal.compress.flate.Flate_newwriter.newWriter(_w, _level);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewWriterDict is like NewWriter but initializes the new
        * Writer with a preset dictionary. The returned Writer behaves
        * as if the dictionary had been written to it without producing
        * any compressed output. The compressed data written to w
        * can only be decompressed by a Reader initialized with the
        * same dictionary.
    **/
    static public inline function newWriterDict(_w:stdgo._internal.io.Io_writer.Writer, _level:StdTypes.Int, _dict:Array<std.UInt>):stdgo.Tuple<Writer, stdgo.Error> {
        final _level = (_level : stdgo.GoInt);
        final _dict = ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_newwriterdict.newWriterDict(_w, _level, _dict);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewReader returns a new ReadCloser that can be used
        * to read the uncompressed version of r.
        * If r does not also implement io.ByteReader,
        * the decompressor may read more data than necessary from r.
        * The reader returns io.EOF after the final block in the DEFLATE stream has
        * been encountered. Any trailing data after the final block is ignored.
        * 
        * The ReadCloser returned by NewReader also implements Resetter.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_readcloser.ReadCloser {
        return stdgo._internal.compress.flate.Flate_newreader.newReader(_r);
    }
    /**
        * NewReaderDict is like NewReader but initializes the reader
        * with a preset dictionary. The returned Reader behaves as if
        * the uncompressed data stream started with the given dictionary,
        * which has already been read. NewReaderDict is typically used
        * to read data compressed by NewWriterDict.
        * 
        * The ReadCloser returned by NewReader also implements Resetter.
    **/
    static public inline function newReaderDict(_r:stdgo._internal.io.Io_reader.Reader, _dict:Array<std.UInt>):stdgo._internal.io.Io_readcloser.ReadCloser {
        final _dict = ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_newreaderdict.newReaderDict(_r, _dict);
    }
}
