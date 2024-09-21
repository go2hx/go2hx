package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
class T_unexp_asInterface {
    @:keep
    public dynamic function _g():{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt8; } return __self__.value._g();
    @:keep
    public dynamic function _f():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt8; } return __self__.value._f();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.reflect_test.Reflect_test_T_unexp.T_unexp>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
