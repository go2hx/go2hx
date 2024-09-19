package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.ReadCloser_asInterface) class ReadCloser_static_extension {
    @:keep
    static public function close( _rc:stdgo.Ref<stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser>):stdgo.Error {
        @:recv var _rc:stdgo.Ref<stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser> = _rc;
        return _rc._f.close();
    }
    @:embedded
    public static function _openReadDir( __self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _name:stdgo.GoString):stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> return __self__._openReadDir(_name);
    @:embedded
    public static function _openLookup( __self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> return __self__._openLookup(_name);
    @:embedded
    public static function _initFileList( __self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser) __self__._initFileList();
    @:embedded
    public static function _init( __self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _rdr:stdgo._internal.io.Io_ReaderAt.ReaderAt, _size:stdgo.GoInt64):stdgo.Error return __self__._init(_rdr, _size);
    @:embedded
    public static function _decompressor( __self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _method:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_Decompressor.Decompressor return __self__._decompressor(_method);
    @:embedded
    public static function registerDecompressor( __self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _method:stdgo.GoUInt16, _dcomp:stdgo._internal.archive.zip.Zip_Decompressor.Decompressor) __self__.registerDecompressor(_method, _dcomp);
    @:embedded
    public static function open( __self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return __self__.open(_name);
}
