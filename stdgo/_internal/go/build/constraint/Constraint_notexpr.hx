package stdgo._internal.go.build.constraint;
@:structInit @:using(stdgo._internal.go.build.constraint.Constraint_notexpr_static_extension.NotExpr_static_extension) class NotExpr {
    public var x : stdgo._internal.go.build.constraint.Constraint_expr.Expr = (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
    public function new(?x:stdgo._internal.go.build.constraint.Constraint_expr.Expr) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NotExpr(x);
    }
}
