package stdgo._internal.archive.zip;
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
    public function get_fileInfo():() -> stdgo._internal.io.fs.Fs_FileInfo.FileInfo return @:check3 (this.fileHeader ?? throw "null pointer derefrence").fileInfo;
    public var modTime(get, never) : () -> stdgo._internal.time.Time_Time.Time;
    @:embedded
    @:embeddededffieldsffun
    public function get_modTime():() -> stdgo._internal.time.Time_Time.Time return @:check3 (this.fileHeader ?? throw "null pointer derefrence").modTime;
    public var mode(get, never) : () -> stdgo._internal.io.fs.Fs_FileMode.FileMode;
    @:embedded
    @:embeddededffieldsffun
    public function get_mode():() -> stdgo._internal.io.fs.Fs_FileMode.FileMode return @:check3 (this.fileHeader ?? throw "null pointer derefrence").mode;
    public var setModTime(get, never) : stdgo._internal.time.Time_Time.Time -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setModTime():stdgo._internal.time.Time_Time.Time -> Void return @:check3 (this.fileHeader ?? throw "null pointer derefrence").setModTime;
    public var setMode(get, never) : stdgo._internal.io.fs.Fs_FileMode.FileMode -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setMode():stdgo._internal.io.fs.Fs_FileMode.FileMode -> Void return @:check3 (this.fileHeader ?? throw "null pointer derefrence").setMode;
    public var _hasDataDescriptor(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__hasDataDescriptor():() -> Bool return @:check3 (this.fileHeader ?? throw "null pointer derefrence")._hasDataDescriptor;
    public var _isZip64(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__isZip64():() -> Bool return @:check3 (this.fileHeader ?? throw "null pointer derefrence")._isZip64;
    public function __copy__() {
        return new T_header(fileHeader, _offset, _raw);
    }
}
