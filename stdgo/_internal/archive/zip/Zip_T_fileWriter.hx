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
    public var fileInfo(get, never) : () -> stdgo._internal.io.fs.Fs_FileInfo.FileInfo;
    @:embedded
    @:embeddededffieldsffun
    public function get_fileInfo():() -> stdgo._internal.io.fs.Fs_FileInfo.FileInfo return @:check3 this._header.fileInfo;
    public var modTime(get, never) : () -> stdgo._internal.time.Time_Time.Time;
    @:embedded
    @:embeddededffieldsffun
    public function get_modTime():() -> stdgo._internal.time.Time_Time.Time return @:check3 this._header.modTime;
    public var mode(get, never) : () -> stdgo._internal.io.fs.Fs_FileMode.FileMode;
    @:embedded
    @:embeddededffieldsffun
    public function get_mode():() -> stdgo._internal.io.fs.Fs_FileMode.FileMode return @:check3 this._header.mode;
    public var setModTime(get, never) : stdgo._internal.time.Time_Time.Time -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setModTime():stdgo._internal.time.Time_Time.Time -> Void return @:check3 this._header.setModTime;
    public var setMode(get, never) : stdgo._internal.io.fs.Fs_FileMode.FileMode -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setMode():stdgo._internal.io.fs.Fs_FileMode.FileMode -> Void return @:check3 this._header.setMode;
    public var _hasDataDescriptor(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__hasDataDescriptor():() -> Bool return @:check3 this._header._hasDataDescriptor;
    public var _isZip64(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__isZip64():() -> Bool return @:check3 this._header._isZip64;
    public function __copy__() {
        return new T_fileWriter(_header, _zipw, _rawCount, _comp, _compCount, _crc32, _closed);
    }
}
