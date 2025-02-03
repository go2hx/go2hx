package stdgo.compress.flate;
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
        this._w = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
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
        this._bestSpeed = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>);
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
        this._tokens = ([for (i in v) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
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
    public function new(?_compressionLevel:T_compressionLevel, ?_w:T_huffmanBitWriter, ?_bulkHasher:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt32>) -> Void, ?_fill:(stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt, ?_step:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> -> Void, ?_sync:Bool, ?_bestSpeed:T_deflateFast, ?_chainHead:StdTypes.Int, ?_hashHead:haxe.ds.Vector<std.UInt>, ?_hashPrev:haxe.ds.Vector<std.UInt>, ?_hashOffset:StdTypes.Int, ?_index:StdTypes.Int, ?_window:Array<std.UInt>, ?_windowEnd:StdTypes.Int, ?_blockStart:StdTypes.Int, ?_byteAvailable:Bool, ?_tokens:Array<T_token>, ?_length:StdTypes.Int, ?_offset:StdTypes.Int, ?_maxInsertIndex:StdTypes.Int, ?_err:stdgo.Error, ?_hashMatch:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.compress.flate.Flate_T_compressor.T_compressor(
_compressionLevel,
(_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>),
_bulkHasher,
_fill,
_step,
_sync,
(_bestSpeed : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>),
(_chainHead : stdgo.GoInt),
([for (i in _hashHead) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>),
([for (i in _hashPrev) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>),
(_hashOffset : stdgo.GoInt),
(_index : stdgo.GoInt),
([for (i in _window) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_windowEnd : stdgo.GoInt),
(_blockStart : stdgo.GoInt),
_byteAvailable,
([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>),
(_length : stdgo.GoInt),
(_offset : stdgo.GoInt),
(_maxInsertIndex : stdgo.GoInt),
(_err : stdgo.Error),
([for (i in _hashMatch) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
