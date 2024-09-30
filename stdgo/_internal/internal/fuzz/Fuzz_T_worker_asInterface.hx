package stdgo._internal.internal.fuzz;
class T_worker_asInterface {
    @:keep
    public dynamic function _stop():stdgo.Error return __self__.value._stop();
    @:keep
    public dynamic function _start():stdgo.Error return __self__.value._start();
    @:keep
    public dynamic function _startAndPing(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return __self__.value._startAndPing(_ctx);
    @:keep
    public dynamic function _isRunning():Bool return __self__.value._isRunning();
    @:keep
    public dynamic function _minimize(_ctx:stdgo._internal.context.Context_Context.Context, _input:stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult; var _1 : stdgo.Error; } return __self__.value._minimize(_ctx, _input);
    @:keep
    public dynamic function _coordinate(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return __self__.value._coordinate(_ctx);
    @:keep
    public dynamic function _cleanup():stdgo.Error return __self__.value._cleanup();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
