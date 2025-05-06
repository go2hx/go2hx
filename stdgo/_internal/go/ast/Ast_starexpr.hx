package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_starexpr_static_extension.StarExpr_static_extension) class StarExpr {
    public var star : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var x : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public function new(?star:stdgo._internal.go.token.Token_pos.Pos, ?x:stdgo._internal.go.ast.Ast_expr.Expr) {
        if (star != null) this.star = star;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StarExpr(star, x);
    }
}
