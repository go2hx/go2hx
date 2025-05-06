package stdgo._internal.go.types;
class T_termlist_asInterface {
    @:keep
    @:tdfield
    public dynamic function _subsetOf(_yl:stdgo._internal.go.types.Types_t_termlist.T_termlist):Bool return @:_0 __self__.value._subsetOf(_yl);
    @:keep
    @:tdfield
    public dynamic function _supersetOf(_y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool return @:_0 __self__.value._supersetOf(_y);
    @:keep
    @:tdfield
    public dynamic function _includes(_t:stdgo._internal.go.types.Types_type_.Type_):Bool return @:_0 __self__.value._includes(_t);
    @:keep
    @:tdfield
    public dynamic function _equal(_yl:stdgo._internal.go.types.Types_t_termlist.T_termlist):Bool return @:_0 __self__.value._equal(_yl);
    @:keep
    @:tdfield
    public dynamic function _intersect(_yl:stdgo._internal.go.types.Types_t_termlist.T_termlist):stdgo._internal.go.types.Types_t_termlist.T_termlist return @:_0 __self__.value._intersect(_yl);
    @:keep
    @:tdfield
    public dynamic function _union(_yl:stdgo._internal.go.types.Types_t_termlist.T_termlist):stdgo._internal.go.types.Types_t_termlist.T_termlist return @:_0 __self__.value._union(_yl);
    @:keep
    @:tdfield
    public dynamic function _norm():stdgo._internal.go.types.Types_t_termlist.T_termlist return @:_0 __self__.value._norm();
    @:keep
    @:tdfield
    public dynamic function _isAll():Bool return @:_0 __self__.value._isAll();
    @:keep
    @:tdfield
    public dynamic function _isEmpty():Bool return @:_0 __self__.value._isEmpty();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_termlistpointer.T_termlistPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
