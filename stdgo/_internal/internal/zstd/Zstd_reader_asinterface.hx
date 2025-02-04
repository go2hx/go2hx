package stdgo._internal.internal.zstd;
class Reader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _wrapError(_off:stdgo.GoInt, _err:stdgo.Error):stdgo.Error return @:_0 __self__.value._wrapError(_off, _err);
    @:keep
    @:tdfield
    public dynamic function _makeError(_off:stdgo.GoInt, _msg:stdgo.GoString):stdgo.Error return @:_0 __self__.value._makeError(_off, _msg);
    @:keep
    @:tdfield
    public dynamic function _wrapNonEOFError(_off:stdgo.GoInt, _err:stdgo.Error):stdgo.Error return @:_0 __self__.value._wrapNonEOFError(_off, _err);
    @:keep
    @:tdfield
    public dynamic function _makeEOFError(_off:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._makeEOFError(_off);
    @:keep
    @:tdfield
    public dynamic function _saveWindow(_buf:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._saveWindow(_buf);
    @:keep
    @:tdfield
    public dynamic function _setBufferSize(_size:stdgo.GoInt):Void @:_0 __self__.value._setBufferSize(_size);
    @:keep
    @:tdfield
    public dynamic function _readBlock():stdgo.Error return @:_0 __self__.value._readBlock();
    @:keep
    @:tdfield
    public dynamic function _skipFrame():stdgo.Error return @:_0 __self__.value._skipFrame();
    @:keep
    @:tdfield
    public dynamic function _readFrameHeader():stdgo.Error return @:_0 __self__.value._readFrameHeader();
    @:keep
    @:tdfield
    public dynamic function _refill():stdgo.Error return @:_0 __self__.value._refill();
    @:keep
    @:tdfield
    public dynamic function _refillIfNeeded():stdgo.Error return @:_0 __self__.value._refillIfNeeded();
    @:keep
    @:tdfield
    public dynamic function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:_0 __self__.value.readByte();
    @:keep
    @:tdfield
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_p);
    @:keep
    @:tdfield
    public dynamic function reset(_input:stdgo._internal.io.Io_reader.Reader):Void @:_0 __self__.value.reset(_input);
    @:keep
    @:tdfield
    public dynamic function _readLiteralsFourStreams(_data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _totalStreamsSize:stdgo.GoInt, _regeneratedSize:stdgo.GoInt, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._readLiteralsFourStreams(_data, _off, _totalStreamsSize, _regeneratedSize, _outbuf);
    @:keep
    @:tdfield
    public dynamic function _readLiteralsOneStream(_data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _compressedSize:stdgo.GoInt, _regeneratedSize:stdgo.GoInt, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._readLiteralsOneStream(_data, _off, _compressedSize, _regeneratedSize, _outbuf);
    @:keep
    @:tdfield
    public dynamic function _readHuffLiterals(_data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _hdr:stdgo.GoUInt8, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return @:_0 __self__.value._readHuffLiterals(_data, _off, _hdr, _outbuf);
    @:keep
    @:tdfield
    public dynamic function _readRawRLELiterals(_data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _hdr:stdgo.GoUInt8, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return @:_0 __self__.value._readRawRLELiterals(_data, _off, _hdr, _outbuf);
    @:keep
    @:tdfield
    public dynamic function _readLiterals(_data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return @:_0 __self__.value._readLiterals(_data, _off, _outbuf);
    @:keep
    @:tdfield
    public dynamic function _readHuff(_data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _table:stdgo.Slice<stdgo.GoUInt16>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value._readHuff(_data, _off, _table);
    @:keep
    @:tdfield
    public dynamic function _makeMatchBaselineFSE(_off:stdgo.GoInt, _fseTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>, _baselineTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>):stdgo.Error return @:_0 __self__.value._makeMatchBaselineFSE(_off, _fseTable, _baselineTable);
    @:keep
    @:tdfield
    public dynamic function _makeOffsetBaselineFSE(_off:stdgo.GoInt, _fseTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>, _baselineTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>):stdgo.Error return @:_0 __self__.value._makeOffsetBaselineFSE(_off, _fseTable, _baselineTable);
    @:keep
    @:tdfield
    public dynamic function _makeLiteralBaselineFSE(_off:stdgo.GoInt, _fseTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>, _baselineTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>):stdgo.Error return @:_0 __self__.value._makeLiteralBaselineFSE(_off, _fseTable, _baselineTable);
    @:keep
    @:tdfield
    public dynamic function _buildFSE(_off:stdgo.GoInt, _norm:stdgo.Slice<stdgo.GoInt16>, _table:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>, _tableBits:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._buildFSE(_off, _norm, _table, _tableBits);
    @:keep
    @:tdfield
    public dynamic function _readFSE(_data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _maxSym:stdgo.GoInt, _maxBits:stdgo.GoInt, _table:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value._readFSE(_data, _off, _maxSym, _maxBits, _table);
    @:keep
    @:tdfield
    public dynamic function _copyFromWindow(_rbr:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>, _offset:stdgo.GoUInt32, _match:stdgo.GoUInt32):stdgo.Error return @:_0 __self__.value._copyFromWindow(_rbr, _offset, _match);
    @:keep
    @:tdfield
    public dynamic function _execSeqs(_data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _litbuf:stdgo.Slice<stdgo.GoUInt8>, _seqCount:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._execSeqs(_data, _off, _litbuf, _seqCount);
    @:keep
    @:tdfield
    public dynamic function _setSeqTable(_data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _kind:stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode, _mode:stdgo.GoUInt8):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._setSeqTable(_data, _off, _kind, _mode);
    @:keep
    @:tdfield
    public dynamic function _initSeqs(_data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value._initSeqs(_data, _off);
    @:keep
    @:tdfield
    public dynamic function _compressedBlock(_blockSize:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._compressedBlock(_blockSize);
    @:keep
    @:tdfield
    public dynamic function _makeReverseBitReader(_data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _start:stdgo.GoInt):{ var _0 : stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader; var _1 : stdgo.Error; } return @:_0 __self__.value._makeReverseBitReader(_data, _off, _start);
    @:keep
    @:tdfield
    public dynamic function _makeBitReader(_data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt):stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader return @:_0 __self__.value._makeBitReader(_data, _off);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.zstd.Zstd_readerpointer.ReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
