package _internal.math.big_test;
class T_zeroOrOne_asInterface {
    @:keep
    public dynamic function generate(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.generate(_rand, _size);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.math.big_test.Big_test_T_zeroOrOne.T_zeroOrOne>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
