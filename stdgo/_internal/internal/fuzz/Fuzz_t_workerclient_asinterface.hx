package stdgo._internal.internal.fuzz;
class T_workerClient_asInterface {
    @:keep
    @:tdfield
    public dynamic function _callLocked(_ctx:stdgo._internal.context.Context_context.Context, _c:stdgo._internal.internal.fuzz.Fuzz_t_call.T_call, _resp:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value._callLocked(_ctx, _c, _resp);
    @:keep
    @:tdfield
    public dynamic function _ping(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Error return @:_0 __self__.value._ping(_ctx);
    @:keep
    @:tdfield
    public dynamic function _fuzz(_ctx:stdgo._internal.context.Context_context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry, _args:stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } return @:_0 __self__.value._fuzz(_ctx, _entryIn, _args);
    @:keep
    @:tdfield
    public dynamic function _minimize(_ctx:stdgo._internal.context.Context_context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry, _args:stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } return @:_0 __self__.value._minimize(_ctx, _entryIn, _args);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.fuzz.Fuzz_t_workerclientpointer.T_workerClientPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
