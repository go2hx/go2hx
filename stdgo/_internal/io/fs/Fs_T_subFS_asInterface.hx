package stdgo._internal.io.fs;
class T_subFS_asInterface {
    @:keep
    public dynamic function sub(_dir:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FS.FS; var _1 : stdgo.Error; } return __self__.value.sub(_dir);
    @:keep
    public dynamic function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.glob(_pattern);
    @:keep
    public dynamic function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readFile(_name);
    @:keep
    public dynamic function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_name);
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    @:keep
    public dynamic function _fixErr(_err:stdgo.Error):stdgo.Error return __self__.value._fixErr(_err);
    @:keep
    public dynamic function _shorten(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } return __self__.value._shorten(_name);
    @:keep
    public dynamic function _fullName(_op:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._fullName(_op, _name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
