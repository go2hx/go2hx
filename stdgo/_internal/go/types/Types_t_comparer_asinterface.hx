package stdgo._internal.go.types;
class T_comparer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _identical(_x:stdgo._internal.go.types.Types_type_.Type_, _y:stdgo._internal.go.types.Types_type_.Type_, _p:stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>):Bool return @:_0 __self__.value._identical(_x, _y, _p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_comparerpointer.T_comparerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
