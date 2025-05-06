package stdgo._internal.go.types;
class T_cycleFinder_asInterface {
    @:keep
    @:tdfield
    public dynamic function _varList(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):Void @:_0 __self__.value._varList(_list);
    @:keep
    @:tdfield
    public dynamic function _typ(_typ:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value._typ(_typ);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_cyclefinderpointer.T_cycleFinderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
