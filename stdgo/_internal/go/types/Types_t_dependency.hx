package stdgo._internal.go.types;
@:interface typedef T_dependency = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _isDependency():Void;
    public dynamic function exported():Bool;
    public dynamic function id():stdgo.GoString;
    public dynamic function name():stdgo.GoString;
    public dynamic function parent():stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>;
    public dynamic function pkg():stdgo.Ref<stdgo._internal.go.types.Types_package.Package>;
    public dynamic function pos():stdgo._internal.go.token.Token_pos.Pos;
    public dynamic function string():stdgo.GoString;
    public dynamic function type():stdgo._internal.go.types.Types_type_.Type_;
    public dynamic function _color():stdgo._internal.go.types.Types_t_color.T_color;
    public dynamic function _order():stdgo.GoUInt32;
    public dynamic function _sameId(_0:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _1:stdgo.GoString):Bool;
    public dynamic function _scopePos():stdgo._internal.go.token.Token_pos.Pos;
    public dynamic function _setColor(_0:stdgo._internal.go.types.Types_t_color.T_color):Void;
    public dynamic function _setOrder(_0:stdgo.GoUInt32):Void;
    public dynamic function _setParent(_0:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):Void;
    public dynamic function _setScopePos(_0:stdgo._internal.go.token.Token_pos.Pos):Void;
    public dynamic function _setType(_0:stdgo._internal.go.types.Types_type_.Type_):Void;
};
