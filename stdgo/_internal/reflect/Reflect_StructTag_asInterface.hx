package stdgo._internal.reflect;
class StructTag_asInterface {
    @:keep
    public dynamic function lookup(_key:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } return __self__.value.lookup(_key);
    @:keep
    public dynamic function get(_key:stdgo.GoString):stdgo.GoString return __self__.value.get(_key);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.reflect.Reflect_StructTag.StructTag>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
