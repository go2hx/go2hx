package stdgo._internal.go.types;
class Info_asInterface {
    @:keep
    @:tdfield
    public dynamic function objectOf(_id:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):stdgo._internal.go.types.Types_object.Object return @:_0 __self__.value.objectOf(_id);
    @:keep
    @:tdfield
    public dynamic function typeOf(_e:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.typeOf(_e);
    @:keep
    @:tdfield
    public dynamic function _recordTypes():Bool return @:_0 __self__.value._recordTypes();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_infopointer.InfoPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
