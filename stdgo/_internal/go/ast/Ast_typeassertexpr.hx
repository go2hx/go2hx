package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_typeassertexpr_static_extension.TypeAssertExpr_static_extension) class TypeAssertExpr {
    public var x : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var lparen : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var type : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var rparen : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public function new(?x:stdgo._internal.go.ast.Ast_expr.Expr, ?lparen:stdgo._internal.go.token.Token_pos.Pos, ?type:stdgo._internal.go.ast.Ast_expr.Expr, ?rparen:stdgo._internal.go.token.Token_pos.Pos) {
        if (x != null) this.x = x;
        if (lparen != null) this.lparen = lparen;
        if (type != null) this.type = type;
        if (rparen != null) this.rparen = rparen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TypeAssertExpr(x, lparen, type, rparen);
    }
}
