package stdgo._internal.path.filepath;
class T_statDirEntry_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function info():{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    @:keep
    public dynamic function type():stdgo._internal.io.fs.Fs_FileMode.FileMode return __self__.value.type();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.path.filepath.Filepath_T_statDirEntry.T_statDirEntry>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
