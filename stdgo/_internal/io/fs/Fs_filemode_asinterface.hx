package stdgo._internal.io.fs;
class FileMode_asInterface {
    @:keep
    @:tdfield
    public dynamic function type():stdgo._internal.io.fs.Fs_filemode.FileMode return @:_0 __self__.value.type();
    @:keep
    @:tdfield
    public dynamic function perm():stdgo._internal.io.fs.Fs_filemode.FileMode return @:_0 __self__.value.perm();
    @:keep
    @:tdfield
    public dynamic function isRegular():Bool return @:_0 __self__.value.isRegular();
    @:keep
    @:tdfield
    public dynamic function isDir():Bool return @:_0 __self__.value.isDir();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.io.fs.Fs_filemodepointer.FileModePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
