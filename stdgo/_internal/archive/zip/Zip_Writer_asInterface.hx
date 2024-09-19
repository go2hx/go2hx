package stdgo._internal.archive.zip;
class Writer_asInterface {
    @:keep
    public dynamic function _compressor(_method:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_Compressor.Compressor return __self__.value._compressor(_method);
    @:keep
    public dynamic function registerCompressor(_method:stdgo.GoUInt16, _comp:stdgo._internal.archive.zip.Zip_Compressor.Compressor):Void __self__.value.registerCompressor(_method, _comp);
    @:keep
    public dynamic function copy(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>):stdgo.Error return __self__.value.copy(_f);
    @:keep
    public dynamic function createRaw(_fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>):{ var _0 : stdgo._internal.io.Io_Writer.Writer; var _1 : stdgo.Error; } return __self__.value.createRaw(_fh);
    @:keep
    public dynamic function createHeader(_fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>):{ var _0 : stdgo._internal.io.Io_Writer.Writer; var _1 : stdgo.Error; } return __self__.value.createHeader(_fh);
    @:keep
    public dynamic function _prepare(_fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>):stdgo.Error return __self__.value._prepare(_fh);
    @:keep
    public dynamic function create(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_Writer.Writer; var _1 : stdgo.Error; } return __self__.value.create(_name);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function setComment(_comment:stdgo.GoString):stdgo.Error return __self__.value.setComment(_comment);
    @:keep
    public dynamic function flush():stdgo.Error return __self__.value.flush();
    @:keep
    public dynamic function setOffset(_n:stdgo.GoInt64):Void __self__.value.setOffset(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.archive.zip.Zip_Writer.Writer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
