package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
class KeepMethodLive_asInterface {
    @:keep
    public dynamic function method2(_i:stdgo.GoInt):Void __self__.value.method2(_i);
    @:keep
    public dynamic function method1(_i:stdgo.GoInt):Void __self__.value.method1(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.reflect_test.Reflect_test_KeepMethodLive.KeepMethodLive>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
