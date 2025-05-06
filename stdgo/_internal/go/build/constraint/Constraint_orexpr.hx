package stdgo._internal.go.build.constraint;
@:structInit @:using(stdgo._internal.go.build.constraint.Constraint_orexpr_static_extension.OrExpr_static_extension) class OrExpr {
    public var x : stdgo._internal.go.build.constraint.Constraint_expr.Expr = (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
    public var y : stdgo._internal.go.build.constraint.Constraint_expr.Expr = (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
    public function new(?x:stdgo._internal.go.build.constraint.Constraint_expr.Expr, ?y:stdgo._internal.go.build.constraint.Constraint_expr.Expr) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new OrExpr(x, y);
    }
}
