package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_keyvalueexpr_static_extension.KeyValueExpr_static_extension) class KeyValueExpr {
    public var key : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var colon : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var value : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public function new(?key:stdgo._internal.go.ast.Ast_expr.Expr, ?colon:stdgo._internal.go.token.Token_pos.Pos, ?value:stdgo._internal.go.ast.Ast_expr.Expr) {
        if (key != null) this.key = key;
        if (colon != null) this.colon = colon;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new KeyValueExpr(key, colon, value);
    }
}
