package stdgo._internal.internal.fuzz;
class T_worker_asInterface {
    @:keep
    @:tdfield
    public dynamic function _stop():stdgo.Error return @:_0 __self__.value._stop();
    @:keep
    @:tdfield
    public dynamic function _start():stdgo.Error return @:_0 __self__.value._start();
    @:keep
    @:tdfield
    public dynamic function _startAndPing(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Error return @:_0 __self__.value._startAndPing(_ctx);
    @:keep
    @:tdfield
    public dynamic function _isRunning():Bool return @:_0 __self__.value._isRunning();
    @:keep
    @:tdfield
    public dynamic function _minimize(_ctx:stdgo._internal.context.Context_context.Context, _input:stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult; var _1 : stdgo.Error; } return @:_0 __self__.value._minimize(_ctx, _input);
    @:keep
    @:tdfield
    public dynamic function _coordinate(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Error return @:_0 __self__.value._coordinate(_ctx);
    @:keep
    @:tdfield
    public dynamic function _cleanup():stdgo.Error return @:_0 __self__.value._cleanup();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.fuzz.Fuzz_t_workerpointer.T_workerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
