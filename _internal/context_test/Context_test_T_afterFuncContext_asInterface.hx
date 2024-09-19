package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
class T_afterFuncContext_asInterface {
    @:keep
    public dynamic function _cancel(_err:stdgo.Error):Void __self__.value._cancel(_err);
    @:keep
    public dynamic function afterFunc(_f:() -> Void):() -> Bool return __self__.value.afterFunc(_f);
    @:keep
    public dynamic function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key);
    @:keep
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:keep
    public dynamic function done():stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1> return __self__.value.done();
    @:keep
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
