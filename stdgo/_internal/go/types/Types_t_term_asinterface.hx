package stdgo._internal.go.types;
class T_term_asInterface {
    @:keep
    @:tdfield
    public dynamic function _disjoint(_y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool return @:_0 __self__.value._disjoint(_y);
    @:keep
    @:tdfield
    public dynamic function _subsetOf(_y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool return @:_0 __self__.value._subsetOf(_y);
    @:keep
    @:tdfield
    public dynamic function _includes(_t:stdgo._internal.go.types.Types_type_.Type_):Bool return @:_0 __self__.value._includes(_t);
    @:keep
    @:tdfield
    public dynamic function _intersect(_y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> return @:_0 __self__.value._intersect(_y);
    @:keep
    @:tdfield
    public dynamic function _union(_y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } return @:_0 __self__.value._union(_y);
    @:keep
    @:tdfield
    public dynamic function _equal(_y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool return @:_0 __self__.value._equal(_y);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_termpointer.T_termPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
