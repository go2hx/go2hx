package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_selectorexpr_static_extension.SelectorExpr_static_extension) class SelectorExpr {
    public var x : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var sel : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    public function new(?x:stdgo._internal.go.ast.Ast_expr.Expr, ?sel:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) {
        if (x != null) this.x = x;
        if (sel != null) this.sel = sel;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SelectorExpr(x, sel);
    }
}
