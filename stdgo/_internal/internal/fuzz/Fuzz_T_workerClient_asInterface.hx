package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
class T_workerClient_asInterface {
    @:keep
    public dynamic function _callLocked(_ctx:stdgo._internal.context.Context_Context.Context, _c:stdgo._internal.internal.fuzz.Fuzz_T_call.T_call, _resp:stdgo.AnyInterface):stdgo.Error return __self__.value._callLocked(_ctx, _c, _resp);
    @:keep
    public dynamic function _ping(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return __self__.value._ping(_ctx);
    @:keep
    public dynamic function _fuzz(_ctx:stdgo._internal.context.Context_Context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, _args:stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } return __self__.value._fuzz(_ctx, _entryIn, _args);
    @:keep
    public dynamic function _minimize(_ctx:stdgo._internal.context.Context_Context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, _args:stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } return __self__.value._minimize(_ctx, _entryIn, _args);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
