package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_declinfo_static_extension.T_declInfo_static_extension) class T_declInfo {
    public var _file : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
    public var _lhs : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
    public var _vtyp : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var _init : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var _inherited : Bool = false;
    public var _tdecl : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>);
    public var _fdecl : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
    public var _deps : stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, Bool> = (null : stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, Bool>);
    public function new(?_file:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, ?_lhs:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>, ?_vtyp:stdgo._internal.go.ast.Ast_expr.Expr, ?_init:stdgo._internal.go.ast.Ast_expr.Expr, ?_inherited:Bool, ?_tdecl:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>, ?_fdecl:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>, ?_deps:stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, Bool>) {
        if (_file != null) this._file = _file;
        if (_lhs != null) this._lhs = _lhs;
        if (_vtyp != null) this._vtyp = _vtyp;
        if (_init != null) this._init = _init;
        if (_inherited != null) this._inherited = _inherited;
        if (_tdecl != null) this._tdecl = _tdecl;
        if (_fdecl != null) this._fdecl = _fdecl;
        if (_deps != null) this._deps = _deps;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_declInfo(_file, _lhs, _vtyp, _init, _inherited, _tdecl, _fdecl, _deps);
    }
}
