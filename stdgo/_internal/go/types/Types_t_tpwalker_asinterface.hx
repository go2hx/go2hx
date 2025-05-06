package stdgo._internal.go.types;
class T_tpWalker_asInterface {
    @:keep
    @:tdfield
    public dynamic function _varList(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):Bool return @:_0 __self__.value._varList(_list);
    @:keep
    @:tdfield
    public dynamic function _isParameterized(_typ:stdgo._internal.go.types.Types_type_.Type_):Bool return @:_0 __self__.value._isParameterized(_typ);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_tpwalkerpointer.T_tpWalkerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
