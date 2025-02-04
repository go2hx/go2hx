package stdgo._internal.crypto.tls;
class T_marshalingFunction_asInterface {
    @:keep
    @:tdfield
    public dynamic function marshal(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):stdgo.Error return @:_0 __self__.value.marshal(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_t_marshalingfunctionpointer.T_marshalingFunctionPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
