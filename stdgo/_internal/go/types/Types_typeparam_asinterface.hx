package stdgo._internal.go.types;
class TypeParam_asInterface {
    @:keep
    @:tdfield
    public dynamic function _underIs(_f:stdgo._internal.go.types.Types_type_.Type_ -> Bool):Bool return @:_0 __self__.value._underIs(_f);
    @:keep
    @:tdfield
    public dynamic function _is(_f:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> -> Bool):Bool return @:_0 __self__.value._is(_f);
    @:keep
    @:tdfield
    public dynamic function _iface():stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> return @:_0 __self__.value._iface();
    @:keep
    @:tdfield
    public dynamic function _cleanup():Void @:_0 __self__.value._cleanup();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function underlying():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.underlying();
    @:keep
    @:tdfield
    public dynamic function setConstraint(_bound:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value.setConstraint(_bound);
    @:keep
    @:tdfield
    public dynamic function constraint():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.constraint();
    @:keep
    @:tdfield
    public dynamic function index():stdgo.GoInt return @:_0 __self__.value.index();
    @:keep
    @:tdfield
    public dynamic function obj():stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> return @:_0 __self__.value.obj();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_typeparampointer.TypeParamPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
