package stdgo._internal.testing.fstest;
class T_mapDir_asInterface {
    @:keep
    public dynamic function readDir(_count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_count);
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function stat():{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat();
    @:embedded
    public dynamic function type():stdgo._internal.io.fs.Fs_FileMode.FileMode return __self__.value.type();
    @:embedded
    public dynamic function sys():stdgo.AnyInterface return __self__.value.sys();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function size():stdgo.GoInt64 return __self__.value.size();
    @:embedded
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:embedded
    public dynamic function mode():stdgo._internal.io.fs.Fs_FileMode.FileMode return __self__.value.mode();
    @:embedded
    public dynamic function modTime():stdgo._internal.time.Time_Time.Time return __self__.value.modTime();
    @:embedded
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:embedded
    public dynamic function info():{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
