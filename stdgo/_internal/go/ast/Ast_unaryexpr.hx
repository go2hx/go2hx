package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_unaryexpr_static_extension.UnaryExpr_static_extension) class UnaryExpr {
    public var opPos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var op : stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
    public var x : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public function new(?opPos:stdgo._internal.go.token.Token_pos.Pos, ?op:stdgo._internal.go.token.Token_token.Token, ?x:stdgo._internal.go.ast.Ast_expr.Expr) {
        if (opPos != null) this.opPos = opPos;
        if (op != null) this.op = op;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnaryExpr(opPos, op, x);
    }
}
