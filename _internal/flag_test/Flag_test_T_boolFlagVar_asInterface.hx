package _internal.flag_test;
import stdgo._internal.flag.Flag;
class T_boolFlagVar_asInterface {
    @:keep
    public dynamic function isBoolFlag():Bool return __self__.value.isBoolFlag();
    @:keep
    public dynamic function set(_value:stdgo.GoString):stdgo.Error return __self__.value.set(_value);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.flag_test.Flag_test_T_boolFlagVar.T_boolFlagVar>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
