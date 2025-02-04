package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_readcloser_static_extension.ReadCloser_static_extension) class ReadCloser {
    public var _f : stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
    @:embedded
    public var reader : stdgo._internal.archive.zip.Zip_reader.Reader = ({} : stdgo._internal.archive.zip.Zip_reader.Reader);
    public function new(?_f:stdgo.Ref<stdgo._internal.os.Os_file.File>, ?reader:stdgo._internal.archive.zip.Zip_reader.Reader) {
        if (_f != null) this._f = _f;
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var open(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_open():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } return @:check32 this.reader.open;
    public var registerDecompressor(get, never) : (stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_decompressor.Decompressor) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_registerDecompressor():(stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_decompressor.Decompressor) -> Void return @:check32 this.reader.registerDecompressor;
    public var _decompressor(get, never) : stdgo.GoUInt16 -> stdgo._internal.archive.zip.Zip_decompressor.Decompressor;
    @:embedded
    @:embeddededffieldsffun
    public function get__decompressor():stdgo.GoUInt16 -> stdgo._internal.archive.zip.Zip_decompressor.Decompressor return @:check32 this.reader._decompressor;
    public var _init(get, never) : (stdgo._internal.io.Io_readerat.ReaderAt, stdgo.GoInt64) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__init():(stdgo._internal.io.Io_readerat.ReaderAt, stdgo.GoInt64) -> stdgo.Error return @:check32 this.reader._init;
    public var _initFileList(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__initFileList():() -> Void return @:check32 this.reader._initFileList;
    public var _openLookup(get, never) : stdgo.GoString -> stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>;
    @:embedded
    @:embeddededffieldsffun
    public function get__openLookup():stdgo.GoString -> stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> return @:check32 this.reader._openLookup;
    public var _openReadDir(get, never) : stdgo.GoString -> stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>;
    @:embedded
    @:embeddededffieldsffun
    public function get__openReadDir():stdgo.GoString -> stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> return @:check32 this.reader._openReadDir;
    public function __copy__() {
        return new ReadCloser(_f, reader);
    }
}
