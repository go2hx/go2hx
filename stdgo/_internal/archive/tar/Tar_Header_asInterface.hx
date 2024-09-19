package stdgo._internal.archive.tar;
class Header_asInterface {
    @:keep
    public dynamic function fileInfo():stdgo._internal.io.fs.Fs_FileInfo.FileInfo return __self__.value.fileInfo();
    @:keep
    public dynamic function _allowedFormats():{ var _0 : stdgo._internal.archive.tar.Tar_Format.Format; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _2 : stdgo.Error; } return __self__.value._allowedFormats();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.archive.tar.Tar_Header.Header>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
