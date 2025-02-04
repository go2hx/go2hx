package stdgo._internal.testing.fstest;
class T_noSub_asInterface {
    @:keep
    @:tdfield
    public dynamic function sub():Void @:_0 __self__.value.sub();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function stat(_0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:_0 __self__.value.stat(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readFile(_0:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.readFile(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readDir(_0:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } return @:_0 __self__.value.readDir(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function open(_0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } return @:_0 __self__.value.open(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function glob(_0:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.glob(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.testing.fstest.Fstest_t_nosubpointer.T_noSubPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
