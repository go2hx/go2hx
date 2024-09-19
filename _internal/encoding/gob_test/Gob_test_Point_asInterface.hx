package _internal.encoding.gob_test;
class Point_asInterface {
    @:keep
    public dynamic function hypotenuse():stdgo.GoFloat64 return __self__.value.hypotenuse();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.encoding.gob_test.Gob_test_Point.Point>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
