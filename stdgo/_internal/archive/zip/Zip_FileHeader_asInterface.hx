package stdgo._internal.archive.zip;
class FileHeader_asInterface {
    @:keep
    public dynamic function _hasDataDescriptor():Bool return __self__.value._hasDataDescriptor();
    @:keep
    public dynamic function _isZip64():Bool return __self__.value._isZip64();
    @:keep
    public dynamic function setMode(_mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):Void __self__.value.setMode(_mode);
    @:keep
    public dynamic function mode():stdgo._internal.io.fs.Fs_FileMode.FileMode return __self__.value.mode();
    @:keep
    public dynamic function setModTime(_t:stdgo._internal.time.Time_Time.Time):Void __self__.value.setModTime(_t);
    @:keep
    public dynamic function modTime():stdgo._internal.time.Time_Time.Time return __self__.value.modTime();
    @:keep
    public dynamic function fileInfo():stdgo._internal.io.fs.Fs_FileInfo.FileInfo return __self__.value.fileInfo();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
