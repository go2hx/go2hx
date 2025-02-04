package stdgo._internal.internal.coverage.cformat;
class T_pstate_asInterface {
    @:keep
    @:tdfield
    public dynamic function _sortUnits(_units:stdgo.Slice<stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu>):Void @:_0 __self__.value._sortUnits(_units);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.coverage.cformat.Cformat_t_pstatepointer.T_pstatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
