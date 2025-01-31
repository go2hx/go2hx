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
@:structInit @:using(stdgo._internal.archive.zip.Zip_Writer_static_extension.Writer_static_extension) class Writer {
    public var _cw : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>);
    public var _dir : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>>);
    public var _last : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter>);
    public var _closed : Bool = false;
    public var _compressors : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor> = (null : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor>);
    public var _comment : stdgo.GoString = "";
    public var _testHookCloseSizeOffset : (stdgo.GoUInt64, stdgo.GoUInt64) -> Void = null;
    public function new(?_cw:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>, ?_dir:stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>>, ?_last:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter>, ?_closed:Bool, ?_compressors:stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Compressor.Compressor>, ?_comment:stdgo.GoString, ?_testHookCloseSizeOffset:(stdgo.GoUInt64, stdgo.GoUInt64) -> Void) {
        if (_cw != null) this._cw = _cw;
        if (_dir != null) this._dir = _dir;
        if (_last != null) this._last = _last;
        if (_closed != null) this._closed = _closed;
        if (_compressors != null) this._compressors = _compressors;
        if (_comment != null) this._comment = _comment;
        if (_testHookCloseSizeOffset != null) this._testHookCloseSizeOffset = _testHookCloseSizeOffset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(_cw, _dir, _last, _closed, _compressors, _comment, _testHookCloseSizeOffset);
    }
}
