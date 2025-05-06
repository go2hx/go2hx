package stdgo._internal.go.build.constraint;
function _andArg(_x:stdgo._internal.go.build.constraint.Constraint_expr.Expr):stdgo.GoString {
        var _s = ((_x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L95"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _s = ((("(" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L98"
        return _s?.__copy__();
    }
