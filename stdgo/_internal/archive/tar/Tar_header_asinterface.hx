package stdgo._internal.archive.tar;
class Header_asInterface {
    @:keep
    @:tdfield
    public dynamic function fileInfo():stdgo._internal.io.fs.Fs_fileinfo.FileInfo return @:_0 __self__.value.fileInfo();
    @:keep
    @:tdfield
    public dynamic function _allowedFormats():{ var _0 : stdgo._internal.archive.tar.Tar_format.Format; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _2 : stdgo.Error; } return @:_0 __self__.value._allowedFormats();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.tar.Tar_headerpointer.HeaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
