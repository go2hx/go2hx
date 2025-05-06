package stdgo._internal.go.types;
class Named_asInterface {
    @:keep
    @:tdfield
    public dynamic function _expandUnderlying():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._expandUnderlying();
    @:keep
    @:tdfield
    public dynamic function _lookupMethod(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _foldCase:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>; } return @:_0 __self__.value._lookupMethod(_pkg, _name, _foldCase);
    @:keep
    @:tdfield
    public dynamic function _setUnderlying(_typ:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value._setUnderlying(_typ);
    @:keep
    @:tdfield
    public dynamic function _under():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._under();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function underlying():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.underlying();
    @:keep
    @:tdfield
    public dynamic function addMethod(_m:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>):Void @:_0 __self__.value.addMethod(_m);
    @:keep
    @:tdfield
    public dynamic function setUnderlying(_underlying:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value.setUnderlying(_underlying);
    @:keep
    @:tdfield
    public dynamic function _expandMethod(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> return @:_0 __self__.value._expandMethod(_i);
    @:keep
    @:tdfield
    public dynamic function method(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> return @:_0 __self__.value.method(_i);
    @:keep
    @:tdfield
    public dynamic function numMethods():stdgo.GoInt return @:_0 __self__.value.numMethods();
    @:keep
    @:tdfield
    public dynamic function typeArgs():stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList> return @:_0 __self__.value.typeArgs();
    @:keep
    @:tdfield
    public dynamic function setTypeParams(_tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):Void @:_0 __self__.value.setTypeParams(_tparams);
    @:keep
    @:tdfield
    public dynamic function typeParams():stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> return @:_0 __self__.value.typeParams();
    @:keep
    @:tdfield
    public dynamic function origin():stdgo.Ref<stdgo._internal.go.types.Types_named.Named> return @:_0 __self__.value.origin();
    @:keep
    @:tdfield
    public dynamic function obj():stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> return @:_0 __self__.value.obj();
    @:keep
    @:tdfield
    public dynamic function _cleanup():Void @:_0 __self__.value._cleanup();
    @:keep
    @:tdfield
    public dynamic function _setState(_state:stdgo._internal.go.types.Types_t_namedstate.T_namedState):Void @:_0 __self__.value._setState(_state);
    @:keep
    @:tdfield
    public dynamic function _state():stdgo._internal.go.types.Types_t_namedstate.T_namedState return @:_0 __self__.value._state();
    @:keep
    @:tdfield
    public dynamic function _resolve():stdgo.Ref<stdgo._internal.go.types.Types_named.Named> return @:_0 __self__.value._resolve();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_namedpointer.NamedPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
