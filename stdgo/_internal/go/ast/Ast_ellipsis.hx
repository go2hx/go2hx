package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_ellipsis_static_extension.Ellipsis_static_extension) class Ellipsis {
    public var ellipsis : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var elt : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public function new(?ellipsis:stdgo._internal.go.token.Token_pos.Pos, ?elt:stdgo._internal.go.ast.Ast_expr.Expr) {
        if (ellipsis != null) this.ellipsis = ellipsis;
        if (elt != null) this.elt = elt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Ellipsis(ellipsis, elt);
    }
}
