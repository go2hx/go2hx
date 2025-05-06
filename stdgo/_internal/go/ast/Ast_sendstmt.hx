package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_sendstmt_static_extension.SendStmt_static_extension) class SendStmt {
    public var chan : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var arrow : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var value : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public function new(?chan:stdgo._internal.go.ast.Ast_expr.Expr, ?arrow:stdgo._internal.go.token.Token_pos.Pos, ?value:stdgo._internal.go.ast.Ast_expr.Expr) {
        if (chan != null) this.chan = chan;
        if (arrow != null) this.arrow = arrow;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SendStmt(chan, arrow, value);
    }
}
