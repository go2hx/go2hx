package stdgo._internal.archive.zip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.Path;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.encoding.binary.Binary;
@:structInit @:using(stdgo._internal.archive.zip.Zip_T_directoryEnd_static_extension.T_directoryEnd_static_extension) class T_directoryEnd {
    public var _diskNbr : stdgo.GoUInt32 = 0;
    public var _dirDiskNbr : stdgo.GoUInt32 = 0;
    public var _dirRecordsThisDisk : stdgo.GoUInt64 = 0;
    public var _directoryRecords : stdgo.GoUInt64 = 0;
    public var _directorySize : stdgo.GoUInt64 = 0;
    public var _directoryOffset : stdgo.GoUInt64 = 0;
    public var _commentLen : stdgo.GoUInt16 = 0;
    public var _comment : stdgo.GoString = "";
    public function new(?_diskNbr:stdgo.GoUInt32, ?_dirDiskNbr:stdgo.GoUInt32, ?_dirRecordsThisDisk:stdgo.GoUInt64, ?_directoryRecords:stdgo.GoUInt64, ?_directorySize:stdgo.GoUInt64, ?_directoryOffset:stdgo.GoUInt64, ?_commentLen:stdgo.GoUInt16, ?_comment:stdgo.GoString) {
        if (_diskNbr != null) this._diskNbr = _diskNbr;
        if (_dirDiskNbr != null) this._dirDiskNbr = _dirDiskNbr;
        if (_dirRecordsThisDisk != null) this._dirRecordsThisDisk = _dirRecordsThisDisk;
        if (_directoryRecords != null) this._directoryRecords = _directoryRecords;
        if (_directorySize != null) this._directorySize = _directorySize;
        if (_directoryOffset != null) this._directoryOffset = _directoryOffset;
        if (_commentLen != null) this._commentLen = _commentLen;
        if (_comment != null) this._comment = _comment;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_directoryEnd(_diskNbr, _dirDiskNbr, _dirRecordsThisDisk, _directoryRecords, _directorySize, _directoryOffset, _commentLen, _comment);
    }
}
