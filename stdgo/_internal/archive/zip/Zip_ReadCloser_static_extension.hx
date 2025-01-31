package stdgo._internal.archive.zip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.Path;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.encoding.binary.Binary;
@:keep @:allow(stdgo._internal.archive.zip.Zip.ReadCloser_asInterface) class ReadCloser_static_extension {
    @:keep
    @:tdfield
    static public function close( _rc:stdgo.Ref<stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser>):stdgo.Error {
        @:recv var _rc:stdgo.Ref<stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser> = _rc;
        return @:check2r (@:checkr _rc ?? throw "null pointer dereference")._f.close();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _openReadDir( __self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:stdgo.GoString):stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> return @:_5 __self__._openReadDir(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _openLookup( __self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:stdgo.GoString):stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> return @:_5 __self__._openLookup(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _initFileList( __self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser):Void return @:_5 __self__._initFileList();
    @:embedded
    @:embeddededffieldsffun
    public static function _init( __self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:stdgo._internal.io.Io_ReaderAt.ReaderAt, _1:stdgo.GoInt64):stdgo.Error return @:_5 __self__._init(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _decompressor( __self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_Decompressor.Decompressor return @:_5 __self__._decompressor(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function registerDecompressor( __self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:stdgo.GoUInt16, _1:stdgo._internal.archive.zip.Zip_Decompressor.Decompressor):Void return @:_5 __self__.registerDecompressor(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function open( __self__:stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser, _0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return @:_5 __self__.open(_0);
}
