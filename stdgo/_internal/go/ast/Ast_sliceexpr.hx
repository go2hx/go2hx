package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_sliceexpr_static_extension.SliceExpr_static_extension) class SliceExpr {
    public var x : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var lbrack : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var low : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var high : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var max : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var slice3 : Bool = false;
    public var rbrack : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public function new(?x:stdgo._internal.go.ast.Ast_expr.Expr, ?lbrack:stdgo._internal.go.token.Token_pos.Pos, ?low:stdgo._internal.go.ast.Ast_expr.Expr, ?high:stdgo._internal.go.ast.Ast_expr.Expr, ?max:stdgo._internal.go.ast.Ast_expr.Expr, ?slice3:Bool, ?rbrack:stdgo._internal.go.token.Token_pos.Pos) {
        if (x != null) this.x = x;
        if (lbrack != null) this.lbrack = lbrack;
        if (low != null) this.low = low;
        if (high != null) this.high = high;
        if (max != null) this.max = max;
        if (slice3 != null) this.slice3 = slice3;
        if (rbrack != null) this.rbrack = rbrack;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SliceExpr(x, lbrack, low, high, max, slice3, rbrack);
    }
}
