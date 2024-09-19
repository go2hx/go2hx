package stdgo._internal.archive.zip;
class Reader_asInterface {
    @:keep
    public dynamic function _openReadDir(_dir:stdgo.GoString):stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> return __self__.value._openReadDir(_dir);
    @:keep
    public dynamic function _openLookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> return __self__.value._openLookup(_name);
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    @:keep
    public dynamic function _initFileList():Void __self__.value._initFileList();
    @:keep
    public dynamic function _decompressor(_method:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_Decompressor.Decompressor return __self__.value._decompressor(_method);
    @:keep
    public dynamic function registerDecompressor(_method:stdgo.GoUInt16, _dcomp:stdgo._internal.archive.zip.Zip_Decompressor.Decompressor):Void __self__.value.registerDecompressor(_method, _dcomp);
    @:keep
    public dynamic function _init(_rdr:stdgo._internal.io.Io_ReaderAt.ReaderAt, _size:stdgo.GoInt64):stdgo.Error return __self__.value._init(_rdr, _size);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.archive.zip.Zip_Reader.Reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
