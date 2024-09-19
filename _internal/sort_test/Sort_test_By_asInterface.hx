package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
class By_asInterface {
    @:keep
    public dynamic function sort(_planets:stdgo.Slice<_internal.sort_test.Sort_test_Planet.Planet>):Void __self__.value.sort(_planets);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.sort_test.Sort_test_By.By>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
