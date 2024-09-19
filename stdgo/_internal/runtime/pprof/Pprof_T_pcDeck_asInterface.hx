package stdgo._internal.runtime.pprof;
class T_pcDeck_asInterface {
    @:keep
    public dynamic function _tryAdd(_pc:stdgo.GoUIntptr, _frames:stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>, _symbolizeResult:stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag):Bool return __self__.value._tryAdd(_pc, _frames, _symbolizeResult);
    @:keep
    public dynamic function _reset():Void __self__.value._reset();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
