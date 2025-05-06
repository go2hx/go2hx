package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_indexlistexpr_static_extension.IndexListExpr_static_extension) class IndexListExpr {
    public var x : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var lbrack : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var indices : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
    public var rbrack : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public function new(?x:stdgo._internal.go.ast.Ast_expr.Expr, ?lbrack:stdgo._internal.go.token.Token_pos.Pos, ?indices:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, ?rbrack:stdgo._internal.go.token.Token_pos.Pos) {
        if (x != null) this.x = x;
        if (lbrack != null) this.lbrack = lbrack;
        if (indices != null) this.indices = indices;
        if (rbrack != null) this.rbrack = rbrack;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IndexListExpr(x, lbrack, indices, rbrack);
    }
}
