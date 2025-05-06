package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_incdecstmt_static_extension.IncDecStmt_static_extension) class IncDecStmt {
    public var x : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var tokPos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var tok : stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
    public function new(?x:stdgo._internal.go.ast.Ast_expr.Expr, ?tokPos:stdgo._internal.go.token.Token_pos.Pos, ?tok:stdgo._internal.go.token.Token_token.Token) {
        if (x != null) this.x = x;
        if (tokPos != null) this.tokPos = tokPos;
        if (tok != null) this.tok = tok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IncDecStmt(x, tokPos, tok);
    }
}
