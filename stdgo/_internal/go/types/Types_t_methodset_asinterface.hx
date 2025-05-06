package stdgo._internal.go.types;
class T_methodSet_asInterface {
    @:keep
    @:tdfield
    public dynamic function _addOne(_f:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>, _index:stdgo.Slice<stdgo.GoInt>, _indirect:Bool, _multiples:Bool):stdgo._internal.go.types.Types_t_methodset.T_methodSet return @:_0 __self__.value._addOne(_f, _index, _indirect, _multiples);
    @:keep
    @:tdfield
    public dynamic function _add(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>, _index:stdgo.Slice<stdgo.GoInt>, _indirect:Bool, _multiples:Bool):stdgo._internal.go.types.Types_t_methodset.T_methodSet return @:_0 __self__.value._add(_list, _index, _indirect, _multiples);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_methodsetpointer.T_methodSetPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
