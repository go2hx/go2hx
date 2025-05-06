package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_arraytype_static_extension.ArrayType_static_extension) class ArrayType {
    public var lbrack : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var len : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var elt : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public function new(?lbrack:stdgo._internal.go.token.Token_pos.Pos, ?len:stdgo._internal.go.ast.Ast_expr.Expr, ?elt:stdgo._internal.go.ast.Ast_expr.Expr) {
        if (lbrack != null) this.lbrack = lbrack;
        if (len != null) this.len = len;
        if (elt != null) this.elt = elt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ArrayType(lbrack, len, elt);
    }
}
