package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
class NonExportedFirst_asInterface {
    @:keep
    public dynamic function _nonexported():stdgo.GoInt return __self__.value._nonexported();
    @:keep
    public dynamic function __934Exported():Void __self__.value.__934Exported();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.reflect_test.Reflect_test_NonExportedFirst.NonExportedFirst>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
