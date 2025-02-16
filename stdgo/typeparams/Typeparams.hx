package stdgo.typeparams;
@:structInit @:using(stdgo.go.internal.typeparams.Typeparams.IndexExpr_static_extension) abstract IndexExpr(stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr) from stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr to stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr {
    public var orig(get, set) : stdgo._internal.go.ast.Ast_expr.Expr;
    function get_orig():stdgo._internal.go.ast.Ast_expr.Expr return this.orig;
    function set_orig(v:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        this.orig = v;
        return v;
    }
    public var indexListExpr(get, set) : stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr;
    function get_indexListExpr():stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr return this.indexListExpr;
    function set_indexListExpr(v:stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr):stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr {
        this.indexListExpr = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>);
        return v;
    }
    public function new(?orig:stdgo._internal.go.ast.Ast_expr.Expr, ?indexListExpr:stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr) this = new stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr(orig, (indexListExpr : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef IndexExprPointer = stdgo._internal.go.internal.typeparams.Typeparams_indexexprpointer.IndexExprPointer;
class IndexExpr_static_extension {
    public static function _exprNode(__self__:stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr):Void {
        stdgo._internal.go.internal.typeparams.Typeparams_indexexpr_static_extension.IndexExpr_static_extension._exprNode(__self__);
    }
    public static function pos(__self__:stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.internal.typeparams.Typeparams_indexexpr_static_extension.IndexExpr_static_extension.pos(__self__);
    }
    public static function end(__self__:stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr):stdgo._internal.go.token.Token_pos.Pos {
        return stdgo._internal.go.internal.typeparams.Typeparams_indexexpr_static_extension.IndexExpr_static_extension.end(__self__);
    }
}
class Typeparams {
    static public inline function packIndexExpr(_x:stdgo._internal.go.ast.Ast_expr.Expr, _lbrack:stdgo._internal.go.token.Token_pos.Pos, _exprs:Array<stdgo._internal.go.ast.Ast_expr.Expr>, _rbrack:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.ast.Ast_expr.Expr {
        final _exprs = ([for (i in _exprs) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        return stdgo._internal.go.internal.typeparams.Typeparams_packindexexpr.packIndexExpr(_x, _lbrack, _exprs, _rbrack);
    }
    static public inline function unpackIndexExpr(_n:stdgo._internal.go.ast.Ast_node.Node):IndexExpr {
        return stdgo._internal.go.internal.typeparams.Typeparams_unpackindexexpr.unpackIndexExpr(_n);
    }
}
