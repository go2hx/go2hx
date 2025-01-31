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
class ReadCloser_asInterface {
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _openReadDir(_0:stdgo.GoString):stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> return @:_0 __self__.value._openReadDir(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _openLookup(_0:stdgo.GoString):stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> return @:_0 __self__.value._openLookup(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _initFileList():Void @:_0 __self__.value._initFileList();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _init(_0:stdgo._internal.io.Io_ReaderAt.ReaderAt, _1:stdgo.GoInt64):stdgo.Error return @:_0 __self__.value._init(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _decompressor(_0:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_Decompressor.Decompressor return @:_0 __self__.value._decompressor(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function registerDecompressor(_0:stdgo.GoUInt16, _1:stdgo._internal.archive.zip.Zip_Decompressor.Decompressor):Void @:_0 __self__.value.registerDecompressor(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function open(_0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return @:_0 __self__.value.open(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.zip.Zip_ReadCloserPointer.ReadCloserPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
