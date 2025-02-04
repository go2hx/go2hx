package stdgo._internal.archive.zip;
class ReadCloser_asInterface {
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _openReadDir(_0:stdgo.GoString):stdgo.Slice<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> return @:_0 __self__.value._openReadDir(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _openLookup(_0:stdgo.GoString):stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> return @:_0 __self__.value._openLookup(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _initFileList():Void @:_0 __self__.value._initFileList();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _init(_0:stdgo._internal.io.Io_readerat.ReaderAt, _1:stdgo.GoInt64):stdgo.Error return @:_0 __self__.value._init(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _decompressor(_0:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_decompressor.Decompressor return @:_0 __self__.value._decompressor(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function registerDecompressor(_0:stdgo.GoUInt16, _1:stdgo._internal.archive.zip.Zip_decompressor.Decompressor):Void @:_0 __self__.value.registerDecompressor(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function open(_0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } return @:_0 __self__.value.open(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.zip.Zip_readcloserpointer.ReadCloserPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
