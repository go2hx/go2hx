package stdgo._internal.archive.zip;
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
        return new File(fileHeader, _zip, _zipr, _headerOffset, _zip64);
    }
}
