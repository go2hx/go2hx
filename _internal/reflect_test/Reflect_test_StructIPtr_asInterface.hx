package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
class StructIPtr_asInterface {
    @:keep
    @:pointer
    public dynamic function set(_v:stdgo.GoInt):Void __self__.value.set(__self__, _v);
    @:keep
    @:pointer
    public dynamic function get():stdgo.GoInt return __self__.value.get(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.reflect_test.Reflect_test_StructIPtr.StructIPtr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
