package stdgo._internal.embed;
class FS_asInterface {
    @:keep
    @:tdfield
    public dynamic function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.readFile(_name);
    @:keep
    @:tdfield
    public dynamic function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } return @:_0 __self__.value.readDir(_name);
    @:keep
    @:tdfield
    public dynamic function open(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } return @:_0 __self__.value.open(_name);
    @:keep
    @:tdfield
    public dynamic function _readDir(_dir:stdgo.GoString):stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file> return @:_0 __self__.value._readDir(_dir);
    @:keep
    @:tdfield
    public dynamic function _lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file> return @:_0 __self__.value._lookup(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.embed.Embed_fspointer.FSPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
