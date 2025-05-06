package stdgo._internal.go.build.constraint;
function _appendSplitOr(_list:stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>, _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr):stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr> {
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L568"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>), _1 : false };
            }, _x = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _list = stdgo._internal.go.build.constraint.Constraint__appendsplitor._appendSplitOr(_list, (@:checkr _x ?? throw "null pointer dereference").x);
                _list = stdgo._internal.go.build.constraint.Constraint__appendsplitor._appendSplitOr(_list, (@:checkr _x ?? throw "null pointer dereference").y);
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L571"
                return _list;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L573"
        return (_list.__append__(_x) : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>);
    }
