package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
class T_otherContext_asInterface {
    @:embedded
    public dynamic function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key);
    @:embedded
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:embedded
    public dynamic function done():stdgo.Chan<{ }> return __self__.value.done();
    @:embedded
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.context_test.Context_test_T_otherContext.T_otherContext>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
