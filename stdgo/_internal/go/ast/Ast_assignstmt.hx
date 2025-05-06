package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_assignstmt_static_extension.AssignStmt_static_extension) class AssignStmt {
    public var lhs : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
    public var tokPos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var tok : stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
    public var rhs : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
    public function new(?lhs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, ?tokPos:stdgo._internal.go.token.Token_pos.Pos, ?tok:stdgo._internal.go.token.Token_token.Token, ?rhs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>) {
        if (lhs != null) this.lhs = lhs;
        if (tokPos != null) this.tokPos = tokPos;
        if (tok != null) this.tok = tok;
        if (rhs != null) this.rhs = rhs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AssignStmt(lhs, tokPos, tok, rhs);
    }
}
