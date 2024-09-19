package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
class T_timp_asInterface {
    @:keep
    public dynamic function _y():Void __self__.value._y();
    @:keep
    public dynamic function _w():Void __self__.value._w();
    @:keep
    public dynamic function y():Void __self__.value.y();
    @:keep
    public dynamic function w():Void __self__.value.w();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.reflect_test.Reflect_test_T_timp.T_timp>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
