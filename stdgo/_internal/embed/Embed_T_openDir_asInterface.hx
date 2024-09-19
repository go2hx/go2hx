package stdgo._internal.embed;
class T_openDir_asInterface {
    @:keep
    public dynamic function readDir(_count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_count);
    @:keep
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_0);
    @:keep
    public dynamic function stat():{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat();
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.embed.Embed_T_openDir.T_openDir>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
