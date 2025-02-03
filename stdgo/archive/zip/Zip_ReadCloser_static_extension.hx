package stdgo.archive.zip;
class ReadCloser_static_extension {
    static public function close(_rc:ReadCloser):stdgo.Error {
        final _rc = (_rc : stdgo.Ref<stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser>);
        return stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension.close(_rc);
    }
    public static function _openReadDir(__self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:String):Array<T_fileListEntry> {
        final _0 = (_0 : stdgo.GoString);
        return [for (i in stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension._openReadDir(__self__, _0)) i];
    }
    public static function _openLookup(__self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:String):T_fileListEntry {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension._openLookup(__self__, _0);
    }
    public static function _initFileList(__self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser):Void {
        stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension._initFileList(__self__);
    }
    public static function _init(__self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:stdgo._internal.io.Io_ReaderAt.ReaderAt, _1:haxe.Int64):stdgo.Error {
        final _1 = (_1 : stdgo.GoInt64);
        return stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension._init(__self__, _0, _1);
    }
    public static function _decompressor(__self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:std.UInt):Decompressor {
        final _0 = (_0 : stdgo.GoUInt16);
        return stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension._decompressor(__self__, _0);
    }
    public static function registerDecompressor(__self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:std.UInt, _1:Decompressor):Void {
        final _0 = (_0 : stdgo.GoUInt16);
        stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension.registerDecompressor(__self__, _0, _1);
    }
    public static function open(__self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_File.File, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.archive.zip.Zip_ReadCloser_static_extension.ReadCloser_static_extension.open(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
