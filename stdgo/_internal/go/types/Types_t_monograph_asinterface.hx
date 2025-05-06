package stdgo._internal.go.types;
class T_monoGraph_asInterface {
    @:keep
    @:tdfield
    public dynamic function _addEdge(_dst:stdgo.GoInt, _src:stdgo.GoInt, _weight:stdgo.GoInt, _pos:stdgo._internal.go.token.Token_pos.Pos, _typ:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value._addEdge(_dst, _src, _weight, _pos, _typ);
    @:keep
    @:tdfield
    public dynamic function _typeParamVertex(_tpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo.GoInt return @:_0 __self__.value._typeParamVertex(_tpar);
    @:keep
    @:tdfield
    public dynamic function _localNamedVertex(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _named:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.GoInt return @:_0 __self__.value._localNamedVertex(_pkg, _named);
    @:keep
    @:tdfield
    public dynamic function _assign(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _pos:stdgo._internal.go.token.Token_pos.Pos, _tpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _targ:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value._assign(_pkg, _pos, _tpar, _targ);
    @:keep
    @:tdfield
    public dynamic function _recordInstance(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _pos:stdgo._internal.go.token.Token_pos.Pos, _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _xlist:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Void @:_0 __self__.value._recordInstance(_pkg, _pos, _tparams, _targs, _xlist);
    @:keep
    @:tdfield
    public dynamic function _recordCanon(_mpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _tpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):Void @:_0 __self__.value._recordCanon(_mpar, _tpar);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_monographpointer.T_monoGraphPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
