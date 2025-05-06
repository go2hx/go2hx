package stdgo._internal.go.build.constraint;
function _not(_x:stdgo._internal.go.build.constraint.Constraint_expr.Expr):stdgo._internal.go.build.constraint.Constraint_expr.Expr {
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L73"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr(_x) : stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>));
    }
