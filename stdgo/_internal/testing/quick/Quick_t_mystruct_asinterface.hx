package stdgo._internal.testing.quick;
class T_myStruct_asInterface {
    @:keep
    @:tdfield
    public dynamic function generate(_r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, __0:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.generate(_r, __0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.testing.quick.Quick_t_mystructpointer.T_myStructPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
