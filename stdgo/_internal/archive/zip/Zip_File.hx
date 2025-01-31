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
@:structInit @:using(stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension) class File {
    @:embedded
    public var fileHeader : stdgo._internal.archive.zip.Zip_FileHeader.FileHeader = ({} : stdgo._internal.archive.zip.Zip_FileHeader.FileHeader);
    public var _zip : stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>);
    public var _zipr : stdgo._internal.io.Io_ReaderAt.ReaderAt = (null : stdgo._internal.io.Io_ReaderAt.ReaderAt);
    public var _headerOffset : stdgo.GoInt64 = 0;
    public var _zip64 : Bool = false;
    public function new(?fileHeader:stdgo._internal.archive.zip.Zip_FileHeader.FileHeader, ?_zip:stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>, ?_zipr:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_headerOffset:stdgo.GoInt64, ?_zip64:Bool) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (_zip != null) this._zip = _zip;
        if (_zipr != null) this._zipr = _zipr;
        if (_headerOffset != null) this._headerOffset = _headerOffset;
        if (_zip64 != null) this._zip64 = _zip64;
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
        return new File(fileHeader, _zip, _zipr, _headerOffset, _zip64);
    }
}
