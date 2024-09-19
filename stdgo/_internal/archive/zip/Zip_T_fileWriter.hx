package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension) class T_fileWriter {
    @:embedded
    public var _header : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>);
    public var _zipw : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var _rawCount : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>);
    public var _comp : stdgo._internal.io.Io_WriteCloser.WriteCloser = (null : stdgo._internal.io.Io_WriteCloser.WriteCloser);
    public var _compCount : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>);
    public var _crc32 : stdgo._internal.hash.Hash_Hash32.Hash32 = (null : stdgo._internal.hash.Hash_Hash32.Hash32);
    public var _closed : Bool = false;
    public function new(?_header:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>, ?_zipw:stdgo._internal.io.Io_Writer.Writer, ?_rawCount:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>, ?_comp:stdgo._internal.io.Io_WriteCloser.WriteCloser, ?_compCount:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>, ?_crc32:stdgo._internal.hash.Hash_Hash32.Hash32, ?_closed:Bool) {
        if (_header != null) this._header = _header;
        if (_zipw != null) this._zipw = _zipw;
        if (_rawCount != null) this._rawCount = _rawCount;
        if (_comp != null) this._comp = _comp;
        if (_compCount != null) this._compCount = _compCount;
        if (_crc32 != null) this._crc32 = _crc32;
        if (_closed != null) this._closed = _closed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function fileInfo():stdgo._internal.io.fs.Fs_FileInfo.FileInfo return this._header.fileInfo();
    @:embedded
    public function modTime():stdgo._internal.time.Time_Time.Time return this._header.modTime();
    @:embedded
    public function mode():stdgo._internal.io.fs.Fs_FileMode.FileMode return this._header.mode();
    @:embedded
    public function setModTime(__0:stdgo._internal.time.Time_Time.Time) this._header.setModTime(__0);
    @:embedded
    public function setMode(__0:stdgo._internal.io.fs.Fs_FileMode.FileMode) this._header.setMode(__0);
    @:embedded
    public function _hasDataDescriptor():Bool return this._header._hasDataDescriptor();
    @:embedded
    public function _isZip64():Bool return this._header._isZip64();
    public function __copy__() {
        return new T_fileWriter(_header, _zipw, _rawCount, _comp, _compCount, _crc32, _closed);
    }
}
