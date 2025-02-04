package stdgo._internal.archive.zip;
class FileHeader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _hasDataDescriptor():Bool return @:_0 __self__.value._hasDataDescriptor();
    @:keep
    @:tdfield
    public dynamic function _isZip64():Bool return @:_0 __self__.value._isZip64();
    @:keep
    @:tdfield
    public dynamic function setMode(_mode:stdgo._internal.io.fs.Fs_filemode.FileMode):Void @:_0 __self__.value.setMode(_mode);
    @:keep
    @:tdfield
    public dynamic function mode():stdgo._internal.io.fs.Fs_filemode.FileMode return @:_0 __self__.value.mode();
    @:keep
    @:tdfield
    public dynamic function setModTime(_t:stdgo._internal.time.Time_time.Time):Void @:_0 __self__.value.setModTime(_t);
    @:keep
    @:tdfield
    public dynamic function modTime():stdgo._internal.time.Time_time.Time return @:_0 __self__.value.modTime();
    @:keep
    @:tdfield
    public dynamic function fileInfo():stdgo._internal.io.fs.Fs_fileinfo.FileInfo return @:_0 __self__.value.fileInfo();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.zip.Zip_fileheaderpointer.FileHeaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
