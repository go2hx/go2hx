package stdgo.internal.zstd;
class Reader_static_extension {
    static public function _wrapError(_r:Reader, _off:StdTypes.Int, _err:stdgo.Error):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._wrapError(_r, _off, _err);
    }
    static public function _makeError(_r:Reader, _off:StdTypes.Int, _msg:String):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _msg = (_msg : stdgo.GoString);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._makeError(_r, _off, _msg);
    }
    static public function _wrapNonEOFError(_r:Reader, _off:StdTypes.Int, _err:stdgo.Error):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._wrapNonEOFError(_r, _off, _err);
    }
    static public function _makeEOFError(_r:Reader, _off:StdTypes.Int):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._makeEOFError(_r, _off);
    }
    static public function _saveWindow(_r:Reader, _buf:Array<std.UInt>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._saveWindow(_r, _buf);
    }
    static public function _setBufferSize(_r:Reader, _size:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _size = (_size : stdgo.GoInt);
        stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._setBufferSize(_r, _size);
    }
    static public function _readBlock(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._readBlock(_r);
    }
    static public function _skipFrame(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._skipFrame(_r);
    }
    static public function _readFrameHeader(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._readFrameHeader(_r);
    }
    static public function _refill(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._refill(_r);
    }
    static public function _refillIfNeeded(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._refillIfNeeded(_r);
    }
    static public function readByte(_r:Reader):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension.readByte(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:Reader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function reset(_r:Reader, _input:stdgo._internal.io.Io_Reader.Reader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension.reset(_r, _input);
    }
    static public function _readLiteralsFourStreams(_r:Reader, _data:T_block, _off:StdTypes.Int, _totalStreamsSize:StdTypes.Int, _regeneratedSize:StdTypes.Int, _outbuf:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _totalStreamsSize = (_totalStreamsSize : stdgo.GoInt);
        final _regeneratedSize = (_regeneratedSize : stdgo.GoInt);
        final _outbuf = ([for (i in _outbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._readLiteralsFourStreams(_r, _data, _off, _totalStreamsSize, _regeneratedSize, _outbuf);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _readLiteralsOneStream(_r:Reader, _data:T_block, _off:StdTypes.Int, _compressedSize:StdTypes.Int, _regeneratedSize:StdTypes.Int, _outbuf:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _compressedSize = (_compressedSize : stdgo.GoInt);
        final _regeneratedSize = (_regeneratedSize : stdgo.GoInt);
        final _outbuf = ([for (i in _outbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._readLiteralsOneStream(_r, _data, _off, _compressedSize, _regeneratedSize, _outbuf);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _readHuffLiterals(_r:Reader, _data:T_block, _off:StdTypes.Int, _hdr:std.UInt, _outbuf:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _hdr = (_hdr : stdgo.GoUInt8);
        final _outbuf = ([for (i in _outbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._readHuffLiterals(_r, _data, _off, _hdr, _outbuf);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function _readRawRLELiterals(_r:Reader, _data:T_block, _off:StdTypes.Int, _hdr:std.UInt, _outbuf:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _hdr = (_hdr : stdgo.GoUInt8);
        final _outbuf = ([for (i in _outbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._readRawRLELiterals(_r, _data, _off, _hdr, _outbuf);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function _readLiterals(_r:Reader, _data:T_block, _off:StdTypes.Int, _outbuf:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _outbuf = ([for (i in _outbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._readLiterals(_r, _data, _off, _outbuf);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function _readHuff(_r:Reader, _data:T_block, _off:StdTypes.Int, _table:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _table = ([for (i in _table) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._readHuff(_r, _data, _off, _table);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _makeMatchBaselineFSE(_r:Reader, _off:StdTypes.Int, _fseTable:Array<T_fseEntry>, _baselineTable:Array<T_fseBaselineEntry>):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _fseTable = ([for (i in _fseTable) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>);
        final _baselineTable = ([for (i in _baselineTable) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._makeMatchBaselineFSE(_r, _off, _fseTable, _baselineTable);
    }
    static public function _makeOffsetBaselineFSE(_r:Reader, _off:StdTypes.Int, _fseTable:Array<T_fseEntry>, _baselineTable:Array<T_fseBaselineEntry>):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _fseTable = ([for (i in _fseTable) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>);
        final _baselineTable = ([for (i in _baselineTable) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._makeOffsetBaselineFSE(_r, _off, _fseTable, _baselineTable);
    }
    static public function _makeLiteralBaselineFSE(_r:Reader, _off:StdTypes.Int, _fseTable:Array<T_fseEntry>, _baselineTable:Array<T_fseBaselineEntry>):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _fseTable = ([for (i in _fseTable) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>);
        final _baselineTable = ([for (i in _baselineTable) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._makeLiteralBaselineFSE(_r, _off, _fseTable, _baselineTable);
    }
    static public function _buildFSE(_r:Reader, _off:StdTypes.Int, _norm:Array<StdTypes.Int>, _table:Array<T_fseEntry>, _tableBits:StdTypes.Int):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _norm = ([for (i in _norm) (i : stdgo.GoInt16)] : stdgo.Slice<stdgo.GoInt16>);
        final _table = ([for (i in _table) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>);
        final _tableBits = (_tableBits : stdgo.GoInt);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._buildFSE(_r, _off, _norm, _table, _tableBits);
    }
    static public function _readFSE(_r:Reader, _data:T_block, _off:StdTypes.Int, _maxSym:StdTypes.Int, _maxBits:StdTypes.Int, _table:Array<T_fseEntry>):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _maxSym = (_maxSym : stdgo.GoInt);
        final _maxBits = (_maxBits : stdgo.GoInt);
        final _table = ([for (i in _table) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._readFSE(_r, _data, _off, _maxSym, _maxBits, _table);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _copyFromWindow(_r:Reader, _rbr:T_reverseBitReader, _offset:std.UInt, _match:std.UInt):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _rbr = (_rbr : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader>);
        final _offset = (_offset : stdgo.GoUInt32);
        final _match = (_match : stdgo.GoUInt32);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._copyFromWindow(_r, _rbr, _offset, _match);
    }
    static public function _execSeqs(_r:Reader, _data:T_block, _off:StdTypes.Int, _litbuf:Array<std.UInt>, _seqCount:StdTypes.Int):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _litbuf = ([for (i in _litbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _seqCount = (_seqCount : stdgo.GoInt);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._execSeqs(_r, _data, _off, _litbuf, _seqCount);
    }
    static public function _setSeqTable(_r:Reader, _data:T_block, _off:StdTypes.Int, _kind:T_seqCode, _mode:std.UInt):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _mode = (_mode : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._setSeqTable(_r, _data, _off, _kind, _mode);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _initSeqs(_r:Reader, _data:T_block, _off:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._initSeqs(_r, _data, _off);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _compressedBlock(_r:Reader, _blockSize:StdTypes.Int):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _blockSize = (_blockSize : stdgo.GoInt);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._compressedBlock(_r, _blockSize);
    }
    static public function _makeReverseBitReader(_r:Reader, _data:T_block, _off:StdTypes.Int, _start:StdTypes.Int):stdgo.Tuple<T_reverseBitReader, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        final _start = (_start : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._makeReverseBitReader(_r, _data, _off, _start);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _makeBitReader(_r:Reader, _data:T_block, _off:StdTypes.Int):T_bitReader {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        final _off = (_off : stdgo.GoInt);
        return stdgo._internal.internal.zstd.Zstd_Reader_static_extension.Reader_static_extension._makeBitReader(_r, _data, _off);
    }
}
