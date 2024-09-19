package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
class T_workerServer_asInterface {
    @:keep
    public dynamic function _ping(_ctx:stdgo._internal.context.Context_Context.Context, _args:stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs):stdgo._internal.internal.fuzz.Fuzz_T_pingResponse.T_pingResponse return __self__.value._ping(_ctx, _args);
    @:keep
    public dynamic function _minimizeInput(_ctx:stdgo._internal.context.Context_Context.Context, _vals:stdgo.Slice<stdgo.AnyInterface>, _mem:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>, _args:stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs):{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value._minimizeInput(_ctx, _vals, _mem, _args);
    @:keep
    public dynamic function _minimize(_ctx:stdgo._internal.context.Context_Context.Context, _args:stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs):stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse return __self__.value._minimize(_ctx, _args);
    @:keep
    public dynamic function _fuzz(_ctx:stdgo._internal.context.Context_Context.Context, _args:stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs):stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse return __self__.value._fuzz(_ctx, _args);
    @:keep
    public dynamic function _serve(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return __self__.value._serve(_ctx);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
