package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_parenexpr_static_extension.ParenExpr_static_extension) class ParenExpr {
    public var lparen : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var x : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var rparen : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public function new(?lparen:stdgo._internal.go.token.Token_pos.Pos, ?x:stdgo._internal.go.ast.Ast_expr.Expr, ?rparen:stdgo._internal.go.token.Token_pos.Pos) {
        if (lparen != null) this.lparen = lparen;
        if (x != null) this.x = x;
        if (rparen != null) this.rparen = rparen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ParenExpr(lparen, x, rparen);
    }
}
