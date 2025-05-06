package stdgo._internal.go.build.constraint;
@:keep class Expr_static_extension {
    @:interfacetypeffun
    static public function _isExpr(t:stdgo._internal.go.build.constraint.Constraint_expr.Expr):Void t._isExpr();
    @:interfacetypeffun
    static public function eval(t:stdgo._internal.go.build.constraint.Constraint_expr.Expr, _ok:stdgo.GoString -> Bool):Bool return t.eval(_ok);
    @:interfacetypeffun
    static public function string(t:stdgo._internal.go.build.constraint.Constraint_expr.Expr):stdgo.GoString return t.string();
}
