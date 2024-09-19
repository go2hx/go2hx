package stdgo._internal.testing.fstest;
class T_noSub_asInterface {
    @:keep
    public dynamic function sub():Void __self__.value.sub();
    @:embedded
    public dynamic function stat(_pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat(_pattern);
    @:embedded
    public dynamic function readFile(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readFile(_pattern);
    @:embedded
    public dynamic function readDir(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_pattern);
    @:embedded
    public dynamic function open(_pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return __self__.value.open(_pattern);
    @:embedded
    public dynamic function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.glob(_pattern);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
