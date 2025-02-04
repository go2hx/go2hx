package stdgo._internal.compress.flate;
@:structInit @:using(stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension) class T_compressor {
    @:embedded
    public var _compressionLevel : stdgo._internal.compress.flate.Flate_t_compressionlevel.T_compressionLevel = ({} : stdgo._internal.compress.flate.Flate_t_compressionlevel.T_compressionLevel);
    public var _w : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>);
    public var _bulkHasher : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt32>) -> Void = null;
    public var _fill : (stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt = null;
    public var _step : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> -> Void = null;
    public var _sync : Bool = false;
    public var _bestSpeed : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>);
    public var _chainHead : stdgo.GoInt = 0;
    public var _hashHead : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(131072, 131072).__setNumber32__();
    public var _hashPrev : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(32768, 32768).__setNumber32__();
    public var _hashOffset : stdgo.GoInt = 0;
    public var _index : stdgo.GoInt = 0;
    public var _window : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _windowEnd : stdgo.GoInt = 0;
    public var _blockStart : stdgo.GoInt = 0;
    public var _byteAvailable : Bool = false;
    public var _tokens : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token> = (null : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
    public var _length : stdgo.GoInt = 0;
    public var _offset : stdgo.GoInt = 0;
    public var _maxInsertIndex : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _hashMatch : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(257, 257).__setNumber32__();
    public function new(?_compressionLevel:stdgo._internal.compress.flate.Flate_t_compressionlevel.T_compressionLevel, ?_w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, ?_bulkHasher:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt32>) -> Void, ?_fill:(stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt, ?_step:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> -> Void, ?_sync:Bool, ?_bestSpeed:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>, ?_chainHead:stdgo.GoInt, ?_hashHead:stdgo.GoArray<stdgo.GoUInt32>, ?_hashPrev:stdgo.GoArray<stdgo.GoUInt32>, ?_hashOffset:stdgo.GoInt, ?_index:stdgo.GoInt, ?_window:stdgo.Slice<stdgo.GoUInt8>, ?_windowEnd:stdgo.GoInt, ?_blockStart:stdgo.GoInt, ?_byteAvailable:Bool, ?_tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>, ?_length:stdgo.GoInt, ?_offset:stdgo.GoInt, ?_maxInsertIndex:stdgo.GoInt, ?_err:stdgo.Error, ?_hashMatch:stdgo.GoArray<stdgo.GoUInt32>) {
        if (_compressionLevel != null) this._compressionLevel = _compressionLevel;
        if (_w != null) this._w = _w;
        if (_bulkHasher != null) this._bulkHasher = _bulkHasher;
        if (_fill != null) this._fill = _fill;
        if (_step != null) this._step = _step;
        if (_sync != null) this._sync = _sync;
        if (_bestSpeed != null) this._bestSpeed = _bestSpeed;
        if (_chainHead != null) this._chainHead = _chainHead;
        if (_hashHead != null) this._hashHead = _hashHead;
        if (_hashPrev != null) this._hashPrev = _hashPrev;
        if (_hashOffset != null) this._hashOffset = _hashOffset;
        if (_index != null) this._index = _index;
        if (_window != null) this._window = _window;
        if (_windowEnd != null) this._windowEnd = _windowEnd;
        if (_blockStart != null) this._blockStart = _blockStart;
        if (_byteAvailable != null) this._byteAvailable = _byteAvailable;
        if (_tokens != null) this._tokens = _tokens;
        if (_length != null) this._length = _length;
        if (_offset != null) this._offset = _offset;
        if (_maxInsertIndex != null) this._maxInsertIndex = _maxInsertIndex;
        if (_err != null) this._err = _err;
        if (_hashMatch != null) this._hashMatch = _hashMatch;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_compressor(
_compressionLevel,
_w,
_bulkHasher,
_fill,
_step,
_sync,
_bestSpeed,
_chainHead,
_hashHead,
_hashPrev,
_hashOffset,
_index,
_window,
_windowEnd,
_blockStart,
_byteAvailable,
_tokens,
_length,
_offset,
_maxInsertIndex,
_err,
_hashMatch);
    }
}
