package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_exprstmt_static_extension.ExprStmt_static_extension) class ExprStmt {
    public var x : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public function new(?x:stdgo._internal.go.ast.Ast_expr.Expr) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ExprStmt(x);
    }
}
