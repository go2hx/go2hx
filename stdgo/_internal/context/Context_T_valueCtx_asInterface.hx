package stdgo._internal.context;
class T_valueCtx_asInterface {
    @:keep
    public dynamic function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:embedded
    public dynamic function done():stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return __self__.value.done();
    @:embedded
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.context.Context_T_valueCtx.T_valueCtx>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
