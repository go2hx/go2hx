package stdgo._internal.internal.xcoff;
class Archive_asInterface {
    @:keep
    public dynamic function getFile(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>; var _1 : stdgo.Error; } return __self__.value.getFile(_name);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.xcoff.Xcoff_Archive.Archive>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
