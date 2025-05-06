package stdgo._internal.go.types;
class T_unifier_asInterface {
    @:keep
    @:tdfield
    public dynamic function _nify(_x:stdgo._internal.go.types.Types_type_.Type_, _y:stdgo._internal.go.types.Types_type_.Type_, _mode:stdgo._internal.go.types.Types_t_unifymode.T_unifyMode, _p:stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>):Bool return @:_0 __self__.value._nify(_x, _y, _mode, _p);
    @:keep
    @:tdfield
    public dynamic function _inferred(_tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> return @:_0 __self__.value._inferred(_tparams);
    @:keep
    @:tdfield
    public dynamic function _unknowns():stdgo.GoInt return @:_0 __self__.value._unknowns();
    @:keep
    @:tdfield
    public dynamic function _set(_x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _t:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value._set(_x, _t);
    @:keep
    @:tdfield
    public dynamic function _at(_x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._at(_x);
    @:keep
    @:tdfield
    public dynamic function _setHandle(_x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _h:stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>):Void @:_0 __self__.value._setHandle(_x, _h);
    @:keep
    @:tdfield
    public dynamic function _asTypeParam(_x:stdgo._internal.go.types.Types_type_.Type_):stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> return @:_0 __self__.value._asTypeParam(_x);
    @:keep
    @:tdfield
    public dynamic function _join(_x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _y:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):Bool return @:_0 __self__.value._join(_x, _y);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function _tracef(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._tracef(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _unify(_x:stdgo._internal.go.types.Types_type_.Type_, _y:stdgo._internal.go.types.Types_type_.Type_, _mode:stdgo._internal.go.types.Types_t_unifymode.T_unifyMode):Bool return @:_0 __self__.value._unify(_x, _y, _mode);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_unifierpointer.T_unifierPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
