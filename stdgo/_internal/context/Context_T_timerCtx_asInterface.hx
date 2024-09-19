package stdgo._internal.context;
class T_timerCtx_asInterface {
    @:keep
    public dynamic function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void __self__.value._cancel(_removeFromParent, _err, _cause);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return __self__.value.deadline();
    @:embedded
    public dynamic function _propagateCancel(_parent:stdgo._internal.context.Context_Context.Context, _child:stdgo._internal.context.Context_T_canceler.T_canceler):Void __self__.value._propagateCancel(_parent, _child);
    @:embedded
    public dynamic function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key);
    @:embedded
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:embedded
    public dynamic function done():stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return __self__.value.done();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.context.Context_T_timerCtx.T_timerCtx>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
