package _internal.internal.zstd;
@:structInit @:using(_internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension) class Reader {
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _sawFrameHeader : Bool = false;
    public var _hasChecksum : Bool = false;
    public var _readOneFrame : Bool = false;
    public var _frameSizeUnknown : Bool = false;
    public var _remainingFrameSize : stdgo.GoUInt64 = 0;
    public var _blockOffset : stdgo.GoInt64 = 0;
    public var _buffer : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _off : stdgo.GoInt = 0;
    public var _repeatedOffset1 : stdgo.GoUInt32 = 0;
    public var _repeatedOffset2 : stdgo.GoUInt32 = 0;
    public var _repeatedOffset3 : stdgo.GoUInt32 = 0;
    public var _huffmanTable : stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
    public var _huffmanTableBits : stdgo.GoInt = 0;
    public var _windowSize : stdgo.GoInt = 0;
    public var _window : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _compressedBuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _literals : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _seqTables : stdgo.GoArray<stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>> = new stdgo.GoArray<stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>>(3, 3, ...[for (i in 0 ... 3) (null : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>)]);
    public var _seqTableBits : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoUInt8)]);
    public var _seqTableBuffers : stdgo.GoArray<stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>> = new stdgo.GoArray<stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>>(3, 3, ...[for (i in 0 ... 3) (null : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>)]);
    public var _scratch : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
    public var _fseScratch : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry> = (null : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>);
    public var _checksum : _internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64 = ({} : _internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64);
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_sawFrameHeader:Bool, ?_hasChecksum:Bool, ?_readOneFrame:Bool, ?_frameSizeUnknown:Bool, ?_remainingFrameSize:stdgo.GoUInt64, ?_blockOffset:stdgo.GoInt64, ?_buffer:stdgo.Slice<stdgo.GoUInt8>, ?_off:stdgo.GoInt, ?_repeatedOffset1:stdgo.GoUInt32, ?_repeatedOffset2:stdgo.GoUInt32, ?_repeatedOffset3:stdgo.GoUInt32, ?_huffmanTable:stdgo.Slice<stdgo.GoUInt16>, ?_huffmanTableBits:stdgo.GoInt, ?_windowSize:stdgo.GoInt, ?_window:stdgo.Slice<stdgo.GoUInt8>, ?_compressedBuf:stdgo.Slice<stdgo.GoUInt8>, ?_literals:stdgo.Slice<stdgo.GoUInt8>, ?_seqTables:stdgo.GoArray<stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>>, ?_seqTableBits:stdgo.GoArray<stdgo.GoUInt8>, ?_seqTableBuffers:stdgo.GoArray<stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>>, ?_scratch:stdgo.GoArray<stdgo.GoUInt8>, ?_fseScratch:stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>, ?_checksum:_internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64) {
        if (_r != null) this._r = _r;
        if (_sawFrameHeader != null) this._sawFrameHeader = _sawFrameHeader;
        if (_hasChecksum != null) this._hasChecksum = _hasChecksum;
        if (_readOneFrame != null) this._readOneFrame = _readOneFrame;
        if (_frameSizeUnknown != null) this._frameSizeUnknown = _frameSizeUnknown;
        if (_remainingFrameSize != null) this._remainingFrameSize = _remainingFrameSize;
        if (_blockOffset != null) this._blockOffset = _blockOffset;
        if (_buffer != null) this._buffer = _buffer;
        if (_off != null) this._off = _off;
        if (_repeatedOffset1 != null) this._repeatedOffset1 = _repeatedOffset1;
        if (_repeatedOffset2 != null) this._repeatedOffset2 = _repeatedOffset2;
        if (_repeatedOffset3 != null) this._repeatedOffset3 = _repeatedOffset3;
        if (_huffmanTable != null) this._huffmanTable = _huffmanTable;
        if (_huffmanTableBits != null) this._huffmanTableBits = _huffmanTableBits;
        if (_windowSize != null) this._windowSize = _windowSize;
        if (_window != null) this._window = _window;
        if (_compressedBuf != null) this._compressedBuf = _compressedBuf;
        if (_literals != null) this._literals = _literals;
        if (_seqTables != null) this._seqTables = _seqTables;
        if (_seqTableBits != null) this._seqTableBits = _seqTableBits;
        if (_seqTableBuffers != null) this._seqTableBuffers = _seqTableBuffers;
        if (_scratch != null) this._scratch = _scratch;
        if (_fseScratch != null) this._fseScratch = _fseScratch;
        if (_checksum != null) this._checksum = _checksum;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(
_r,
_sawFrameHeader,
_hasChecksum,
_readOneFrame,
_frameSizeUnknown,
_remainingFrameSize,
_blockOffset,
_buffer,
_off,
_repeatedOffset1,
_repeatedOffset2,
_repeatedOffset3,
_huffmanTable,
_huffmanTableBits,
_windowSize,
_window,
_compressedBuf,
_literals,
_seqTables,
_seqTableBits,
_seqTableBuffers,
_scratch,
_fseScratch,
_checksum);
    }
}
