package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_t_header_static_extension.T_header_static_extension) class T_header {
    @:embedded
    public var fileHeader : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
    public var _offset : stdgo.GoUInt64 = 0;
    public var _raw : Bool = false;
    public function new(?fileHeader:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>, ?_offset:stdgo.GoUInt64, ?_raw:Bool) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (_offset != null) this._offset = _offset;
        if (_raw != null) this._raw = _raw;
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
        return new T_header(fileHeader, _offset, _raw);
    }
}
