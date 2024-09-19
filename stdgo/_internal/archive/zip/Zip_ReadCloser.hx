package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension) class ReadCloser {
    public var _f : stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
    @:embedded
    public var reader : stdgo._internal.archive.zip.Zip_Reader.Reader = ({} : stdgo._internal.archive.zip.Zip_Reader.Reader);
    public function new(?_f:stdgo.Ref<stdgo._internal.os.Os_File.File>, ?reader:stdgo._internal.archive.zip.Zip_Reader.Reader) {
        if (_f != null) this._f = _f;
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function open(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return this.reader.open(_name);
    @:embedded
    public function registerDecompressor(_method:stdgo.GoUInt16, _dcomp:stdgo._internal.archive.zip.Zip_Decompressor.Decompressor) this.reader.registerDecompressor(_method, _dcomp);
    @:embedded
    public function _decompressor(_method:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_Decompressor.Decompressor return this.reader._decompressor(_method);
    @:embedded
    public function _init(_rdr:stdgo._internal.io.Io_ReaderAt.ReaderAt, _size:stdgo.GoInt64):stdgo.Error return this.reader._init(_rdr, _size);
    @:embedded
    public function _initFileList() this.reader._initFileList();
    @:embedded
    public function _openLookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> return this.reader._openLookup(_name);
    @:embedded
    public function _openReadDir(_name:stdgo.GoString):stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> return this.reader._openReadDir(_name);
    public function __copy__() {
        return new ReadCloser(_f, reader);
    }
}
