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
@:structInit @:using(stdgo._internal.archive.zip.Zip_T_header_static_extension.T_header_static_extension) class T_header {
    @:embedded
    public var fileHeader : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
    public var _offset : stdgo.GoUInt64 = 0;
    public var _raw : Bool = false;
    public function new(?fileHeader:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>, ?_offset:stdgo.GoUInt64, ?_raw:Bool) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (_offset != null) this._offset = _offset;
        if (_raw != null) this._raw = _raw;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var fileInfo(get, never) : () -> stdgo._internal.io.fs.Fs_FileInfo.FileInfo;
    @:embedded
    @:embeddededffieldsffun
    public function get_fileInfo():() -> stdgo._internal.io.fs.Fs_FileInfo.FileInfo return @:check32 this.fileHeader.fileInfo;
    public var modTime(get, never) : () -> stdgo._internal.time.Time_Time.Time;
    @:embedded
    @:embeddededffieldsffun
    public function get_modTime():() -> stdgo._internal.time.Time_Time.Time return @:check32 this.fileHeader.modTime;
    public var mode(get, never) : () -> stdgo._internal.io.fs.Fs_FileMode.FileMode;
    @:embedded
    @:embeddededffieldsffun
    public function get_mode():() -> stdgo._internal.io.fs.Fs_FileMode.FileMode return @:check32 this.fileHeader.mode;
    public var setModTime(get, never) : stdgo._internal.time.Time_Time.Time -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setModTime():stdgo._internal.time.Time_Time.Time -> Void return @:check32 this.fileHeader.setModTime;
    public var setMode(get, never) : stdgo._internal.io.fs.Fs_FileMode.FileMode -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setMode():stdgo._internal.io.fs.Fs_FileMode.FileMode -> Void return @:check32 this.fileHeader.setMode;
    public var _hasDataDescriptor(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__hasDataDescriptor():() -> Bool return @:check32 this.fileHeader._hasDataDescriptor;
    public var _isZip64(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__isZip64():() -> Bool return @:check32 this.fileHeader._isZip64;
    public function __copy__() {
        return new T_header(fileHeader, _offset, _raw);
    }
}
