package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
class T_exhaustive_asInterface {
    @:keep
    public dynamic function maybe():Bool return __self__.value.maybe();
    @:keep
    public dynamic function choose(_max:stdgo.GoInt):stdgo.GoInt return __self__.value.choose(_max);
    @:keep
    public dynamic function next():Bool return __self__.value.next();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.reflect_test.Reflect_test_T_exhaustive.T_exhaustive>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
