package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_callexpr_static_extension.CallExpr_static_extension) class CallExpr {
    public var fun : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var lparen : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var args : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
    public var ellipsis : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var rparen : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public function new(?fun:stdgo._internal.go.ast.Ast_expr.Expr, ?lparen:stdgo._internal.go.token.Token_pos.Pos, ?args:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, ?ellipsis:stdgo._internal.go.token.Token_pos.Pos, ?rparen:stdgo._internal.go.token.Token_pos.Pos) {
        if (fun != null) this.fun = fun;
        if (lparen != null) this.lparen = lparen;
        if (args != null) this.args = args;
        if (ellipsis != null) this.ellipsis = ellipsis;
        if (rparen != null) this.rparen = rparen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CallExpr(fun, lparen, args, ellipsis, rparen);
    }
}
