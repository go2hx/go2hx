package stdgo._internal.testing.fstest;
class T_mapFileInfo_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function info():{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:_0 __self__.value.info();
    @:keep
    @:tdfield
    public dynamic function sys():stdgo.AnyInterface return @:_0 __self__.value.sys();
    @:keep
    @:tdfield
    public dynamic function isDir():Bool return @:_0 __self__.value.isDir();
    @:keep
    @:tdfield
    public dynamic function modTime():stdgo._internal.time.Time_time.Time return @:_0 __self__.value.modTime();
    @:keep
    @:tdfield
    public dynamic function type():stdgo._internal.io.fs.Fs_filemode.FileMode return @:_0 __self__.value.type();
    @:keep
    @:tdfield
    public dynamic function mode():stdgo._internal.io.fs.Fs_filemode.FileMode return @:_0 __self__.value.mode();
    @:keep
    @:tdfield
    public dynamic function size():stdgo.GoInt64 return @:_0 __self__.value.size();
    @:keep
    @:tdfield
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.testing.fstest.Fstest_t_mapfileinfopointer.T_mapFileInfoPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
