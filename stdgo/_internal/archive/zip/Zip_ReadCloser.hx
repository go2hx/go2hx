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
    public var open(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_open():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").open;
    public var registerDecompressor(get, never) : (stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_registerDecompressor():(stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_Decompressor.Decompressor) -> Void return @:check3 (this.reader ?? throw "null pointer derefrence").registerDecompressor;
    public var _decompressor(get, never) : stdgo.GoUInt16 -> stdgo._internal.archive.zip.Zip_Decompressor.Decompressor;
    @:embedded
    @:embeddededffieldsffun
    public function get__decompressor():stdgo.GoUInt16 -> stdgo._internal.archive.zip.Zip_Decompressor.Decompressor return @:check3 (this.reader ?? throw "null pointer derefrence")._decompressor;
    public var _init(get, never) : (stdgo._internal.io.Io_ReaderAt.ReaderAt, stdgo.GoInt64) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__init():(stdgo._internal.io.Io_ReaderAt.ReaderAt, stdgo.GoInt64) -> stdgo.Error return @:check3 (this.reader ?? throw "null pointer derefrence")._init;
    public var _initFileList(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__initFileList():() -> Void return @:check3 (this.reader ?? throw "null pointer derefrence")._initFileList;
    public var _openLookup(get, never) : stdgo.GoString -> stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>;
    @:embedded
    @:embeddededffieldsffun
    public function get__openLookup():stdgo.GoString -> stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> return @:check3 (this.reader ?? throw "null pointer derefrence")._openLookup;
    public var _openReadDir(get, never) : stdgo.GoString -> stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>;
    @:embedded
    @:embeddededffieldsffun
    public function get__openReadDir():stdgo.GoString -> stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> return @:check3 (this.reader ?? throw "null pointer derefrence")._openReadDir;
    public function __copy__() {
        return new ReadCloser(_f, reader);
    }
}
