package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_constdecl_static_extension.T_constDecl_static_extension) class T_constDecl {
    public var _spec : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
    public var _iota : stdgo.GoInt = 0;
    public var _typ : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var _init : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
    public var _inherited : Bool = false;
    public function new(?_spec:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>, ?_iota:stdgo.GoInt, ?_typ:stdgo._internal.go.ast.Ast_expr.Expr, ?_init:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, ?_inherited:Bool) {
        if (_spec != null) this._spec = _spec;
        if (_iota != null) this._iota = _iota;
        if (_typ != null) this._typ = _typ;
        if (_init != null) this._init = _init;
        if (_inherited != null) this._inherited = _inherited;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_constDecl(_spec, _iota, _typ, _init, _inherited);
    }
}
