package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.ReadCloser_asInterface) class ReadCloser_static_extension {
    @:keep
    @:tdfield
    static public function close( _rc:stdgo.Ref<stdgo._internal.archive.zip.Zip_readcloser.ReadCloser>):stdgo.Error {
        @:recv var _rc:stdgo.Ref<stdgo._internal.archive.zip.Zip_readcloser.ReadCloser> = _rc;
        return @:check2r (@:checkr _rc ?? throw "null pointer dereference")._f.close();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _openReadDir( __self__:stdgo._internal.archive.zip.Zip_readcloser.ReadCloser, _0:stdgo.GoString):stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> return @:_5 __self__._openReadDir(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _openLookup( __self__:stdgo._internal.archive.zip.Zip_readcloser.ReadCloser, _0:stdgo.GoString):stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> return @:_5 __self__._openLookup(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _initFileList( __self__:stdgo._internal.archive.zip.Zip_readcloser.ReadCloser):Void return @:_5 __self__._initFileList();
    @:embedded
    @:embeddededffieldsffun
    public static function _init( __self__:stdgo._internal.archive.zip.Zip_readcloser.ReadCloser, _0:stdgo._internal.io.Io_readerat.ReaderAt, _1:stdgo.GoInt64):stdgo.Error return @:_5 __self__._init(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _decompressor( __self__:stdgo._internal.archive.zip.Zip_readcloser.ReadCloser, _0:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_decompressor.Decompressor return @:_5 __self__._decompressor(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function registerDecompressor( __self__:stdgo._internal.archive.zip.Zip_readcloser.ReadCloser, _0:stdgo.GoUInt16, _1:stdgo._internal.archive.zip.Zip_decompressor.Decompressor):Void return @:_5 __self__.registerDecompressor(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function open( __self__:stdgo._internal.archive.zip.Zip_readcloser.ReadCloser, _0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } return @:_5 __self__.open(_0);
}
