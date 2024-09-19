package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
class Tm3_asInterface {
    @:embedded
    public dynamic function m(__0:stdgo.GoInt, __1:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } return __self__.value.m(__0, __1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.reflect_test.Reflect_test_Tm3.Tm3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
