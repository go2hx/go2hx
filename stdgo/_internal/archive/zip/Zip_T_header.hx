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
    @:embedded
    public function fileInfo():stdgo._internal.io.fs.Fs_FileInfo.FileInfo return this.fileHeader.fileInfo();
    @:embedded
    public function modTime():stdgo._internal.time.Time_Time.Time return this.fileHeader.modTime();
    @:embedded
    public function mode():stdgo._internal.io.fs.Fs_FileMode.FileMode return this.fileHeader.mode();
    @:embedded
    public function setModTime(__0:stdgo._internal.time.Time_Time.Time) this.fileHeader.setModTime(__0);
    @:embedded
    public function setMode(__0:stdgo._internal.io.fs.Fs_FileMode.FileMode) this.fileHeader.setMode(__0);
    @:embedded
    public function _hasDataDescriptor():Bool return this.fileHeader._hasDataDescriptor();
    @:embedded
    public function _isZip64():Bool return this.fileHeader._isZip64();
    public function __copy__() {
        return new T_header(fileHeader, _offset, _raw);
    }
}
