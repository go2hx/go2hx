package stdgo._internal.compress.bzip2;
@:structInit @:using(stdgo._internal.compress.bzip2.Bzip2_t_reader_static_extension.T_reader_static_extension) class T_reader {
    public var _br : stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader = ({} : stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader);
    public var _fileCRC : stdgo.GoUInt32 = 0;
    public var _blockCRC : stdgo.GoUInt32 = 0;
    public var _wantBlockCRC : stdgo.GoUInt32 = 0;
    public var _setupDone : Bool = false;
    public var _blockSize : stdgo.GoInt = 0;
    public var _eof : Bool = false;
    public var _c : stdgo.GoArray<stdgo.GoUInt> = new stdgo.GoArray<stdgo.GoUInt>(256, 256).__setNumber32__();
    public var _tt : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _tPos : stdgo.GoUInt32 = 0;
    public var _preRLE : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _preRLEUsed : stdgo.GoInt = 0;
    public var _lastByte : stdgo.GoInt = 0;
    public var _byteRepeats : stdgo.GoUInt = 0;
    public var _repeats : stdgo.GoUInt = 0;
    public function new(?_br:stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader, ?_fileCRC:stdgo.GoUInt32, ?_blockCRC:stdgo.GoUInt32, ?_wantBlockCRC:stdgo.GoUInt32, ?_setupDone:Bool, ?_blockSize:stdgo.GoInt, ?_eof:Bool, ?_c:stdgo.GoArray<stdgo.GoUInt>, ?_tt:stdgo.Slice<stdgo.GoUInt32>, ?_tPos:stdgo.GoUInt32, ?_preRLE:stdgo.Slice<stdgo.GoUInt32>, ?_preRLEUsed:stdgo.GoInt, ?_lastByte:stdgo.GoInt, ?_byteRepeats:stdgo.GoUInt, ?_repeats:stdgo.GoUInt) {
        if (_br != null) this._br = _br;
        if (_fileCRC != null) this._fileCRC = _fileCRC;
        if (_blockCRC != null) this._blockCRC = _blockCRC;
        if (_wantBlockCRC != null) this._wantBlockCRC = _wantBlockCRC;
        if (_setupDone != null) this._setupDone = _setupDone;
        if (_blockSize != null) this._blockSize = _blockSize;
        if (_eof != null) this._eof = _eof;
        if (_c != null) this._c = _c;
        if (_tt != null) this._tt = _tt;
        if (_tPos != null) this._tPos = _tPos;
        if (_preRLE != null) this._preRLE = _preRLE;
        if (_preRLEUsed != null) this._preRLEUsed = _preRLEUsed;
        if (_lastByte != null) this._lastByte = _lastByte;
        if (_byteRepeats != null) this._byteRepeats = _byteRepeats;
        if (_repeats != null) this._repeats = _repeats;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_reader(
_br,
_fileCRC,
_blockCRC,
_wantBlockCRC,
_setupDone,
_blockSize,
_eof,
_c,
_tt,
_tPos,
_preRLE,
_preRLEUsed,
_lastByte,
_byteRepeats,
_repeats);
    }
}
