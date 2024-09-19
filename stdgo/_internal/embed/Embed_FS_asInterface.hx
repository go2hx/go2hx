package stdgo._internal.embed;
class FS_asInterface {
    @:keep
    public dynamic function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readFile(_name);
    @:keep
    public dynamic function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_name);
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    @:keep
    public dynamic function _readDir(_dir:stdgo.GoString):stdgo.Slice<stdgo._internal.embed.Embed_T_file.T_file> return __self__.value._readDir(_dir);
    @:keep
    public dynamic function _lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> return __self__.value._lookup(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.embed.Embed_FS.FS>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}