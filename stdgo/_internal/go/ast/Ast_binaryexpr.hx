package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_binaryexpr_static_extension.BinaryExpr_static_extension) class BinaryExpr {
    public var x : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var opPos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var op : stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
    public var y : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public function new(?x:stdgo._internal.go.ast.Ast_expr.Expr, ?opPos:stdgo._internal.go.token.Token_pos.Pos, ?op:stdgo._internal.go.token.Token_token.Token, ?y:stdgo._internal.go.ast.Ast_expr.Expr) {
        if (x != null) this.x = x;
        if (opPos != null) this.opPos = opPos;
        if (op != null) this.op = op;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BinaryExpr(x, opPos, op, y);
    }
}
