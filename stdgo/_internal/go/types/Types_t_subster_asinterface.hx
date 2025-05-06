package stdgo._internal.go.types;
class T_subster_asInterface {
    @:keep
    @:tdfield
    public dynamic function _termlist(_in:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>; var _1 : Bool; } return @:_0 __self__.value._termlist(_in);
    @:keep
    @:tdfield
    public dynamic function _typeList(_in:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):{ var _0 : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>; var _1 : Bool; } return @:_0 __self__.value._typeList(_in);
    @:keep
    @:tdfield
    public dynamic function _funcList(_in:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>; var _1 : Bool; } return @:_0 __self__.value._funcList(_in);
    @:keep
    @:tdfield
    public dynamic function _func_(_f:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> return @:_0 __self__.value._func_(_f);
    @:keep
    @:tdfield
    public dynamic function _varList(_in:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>; var _1 : Bool; } return @:_0 __self__.value._varList(_in);
    @:keep
    @:tdfield
    public dynamic function _tuple(_t:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>):stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> return @:_0 __self__.value._tuple(_t);
    @:keep
    @:tdfield
    public dynamic function _var_(_v:stdgo.Ref<stdgo._internal.go.types.Types_var.Var>):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> return @:_0 __self__.value._var_(_v);
    @:keep
    @:tdfield
    public dynamic function _typOrNil(_typ:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._typOrNil(_typ);
    @:keep
    @:tdfield
    public dynamic function _typ(_typ:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._typ(_typ);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_substerpointer.T_substerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
