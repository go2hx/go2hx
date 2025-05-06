package stdgo._internal.go.constant;
class T__struct_2Pointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.constant.Constant_t__struct_2pointerpointer.T__struct_2PointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
