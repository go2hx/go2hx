package stdgo._internal.go.types;
class Slice__asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function underlying():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.underlying();
    @:keep
    @:tdfield
    public dynamic function elem():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.elem();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_slice_pointer.Slice_Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
