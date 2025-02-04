package stdgo._internal.archive.zip;
class Writer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _compressor(_method:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_compressor.Compressor return @:_0 __self__.value._compressor(_method);
    @:keep
    @:tdfield
    public dynamic function registerCompressor(_method:stdgo.GoUInt16, _comp:stdgo._internal.archive.zip.Zip_compressor.Compressor):Void @:_0 __self__.value.registerCompressor(_method, _comp);
    @:keep
    @:tdfield
    public dynamic function copy(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>):stdgo.Error return @:_0 __self__.value.copy(_f);
    @:keep
    @:tdfield
    public dynamic function createRaw(_fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } return @:_0 __self__.value.createRaw(_fh);
    @:keep
    @:tdfield
    public dynamic function createHeader(_fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } return @:_0 __self__.value.createHeader(_fh);
    @:keep
    @:tdfield
    public dynamic function _prepare(_fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>):stdgo.Error return @:_0 __self__.value._prepare(_fh);
    @:keep
    @:tdfield
    public dynamic function create(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } return @:_0 __self__.value.create(_name);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function setComment(_comment:stdgo.GoString):stdgo.Error return @:_0 __self__.value.setComment(_comment);
    @:keep
    @:tdfield
    public dynamic function flush():stdgo.Error return @:_0 __self__.value.flush();
    @:keep
    @:tdfield
    public dynamic function setOffset(_n:stdgo.GoInt64):Void @:_0 __self__.value.setOffset(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.zip.Zip_writerpointer.WriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
