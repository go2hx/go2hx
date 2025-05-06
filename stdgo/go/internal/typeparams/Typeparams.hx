package stdgo.go.internal.typeparams;
typedef IndexExpr = stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr;
typedef IndexExprPointer = stdgo._internal.go.internal.typeparams.Typeparams_indexexprpointer.IndexExprPointer;
class Typeparams {
    static public inline function packIndexExpr(_x:stdgo._internal.go.ast.Ast_expr.Expr, _lbrack:stdgo._internal.go.token.Token_pos.Pos, _exprs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _rbrack:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.ast.Ast_expr.Expr return stdgo._internal.go.internal.typeparams.Typeparams_packindexexpr.packIndexExpr(_x, _lbrack, _exprs, _rbrack);
    static public inline function unpackIndexExpr(_n:stdgo._internal.go.ast.Ast_node.Node):stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr> return stdgo._internal.go.internal.typeparams.Typeparams_unpackindexexpr.unpackIndexExpr(_n);
}
