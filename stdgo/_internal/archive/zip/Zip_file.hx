package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_file_static_extension.File_static_extension) class File {
    @:embedded
    public var fileHeader : stdgo._internal.archive.zip.Zip_fileheader.FileHeader = ({} : stdgo._internal.archive.zip.Zip_fileheader.FileHeader);
    public var _zip : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>);
    public var _zipr : stdgo._internal.io.Io_readerat.ReaderAt = (null : stdgo._internal.io.Io_readerat.ReaderAt);
    public var _headerOffset : stdgo.GoInt64 = 0;
    public var _zip64 : Bool = false;
    public function new(?fileHeader:stdgo._internal.archive.zip.Zip_fileheader.FileHeader, ?_zip:stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>, ?_zipr:stdgo._internal.io.Io_readerat.ReaderAt, ?_headerOffset:stdgo.GoInt64, ?_zip64:Bool) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (_zip != null) this._zip = _zip;
        if (_zipr != null) this._zipr = _zipr;
        if (_headerOffset != null) this._headerOffset = _headerOffset;
        if (_zip64 != null) this._zip64 = _zip64;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var fileInfo(get, never) : () -> stdgo._internal.io.fs.Fs_fileinfo.FileInfo;
    @:embedded
    @:embeddededffieldsffun
    public function get_fileInfo():() -> stdgo._internal.io.fs.Fs_fileinfo.FileInfo return @:check32 this.fileHeader.fileInfo;
    public var modTime(get, never) : () -> stdgo._internal.time.Time_time.Time;
    @:embedded
    @:embeddededffieldsffun
    public function get_modTime():() -> stdgo._internal.time.Time_time.Time return @:check32 this.fileHeader.modTime;
    public var mode(get, never) : () -> stdgo._internal.io.fs.Fs_filemode.FileMode;
    @:embedded
    @:embeddededffieldsffun
    public function get_mode():() -> stdgo._internal.io.fs.Fs_filemode.FileMode return @:check32 this.fileHeader.mode;
    public var setModTime(get, never) : stdgo._internal.time.Time_time.Time -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setModTime():stdgo._internal.time.Time_time.Time -> Void return @:check32 this.fileHeader.setModTime;
    public var setMode(get, never) : stdgo._internal.io.fs.Fs_filemode.FileMode -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setMode():stdgo._internal.io.fs.Fs_filemode.FileMode -> Void return @:check32 this.fileHeader.setMode;
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
