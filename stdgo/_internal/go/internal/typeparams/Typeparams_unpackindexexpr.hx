package stdgo._internal.go.internal.typeparams;
function unpackIndexExpr(_n:stdgo._internal.go.ast.Ast_node.Node):stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr> {
        //"file:///home/runner/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L42"
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L44"
                return (stdgo.Go.setRef((new stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr(stdgo.Go.asInterface(_e), (stdgo.Go.setRef(({ x : (@:checkr _e ?? throw "null pointer dereference").x, lbrack : (@:checkr _e ?? throw "null pointer dereference").lbrack, indices : (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(1, 1, ...[(@:checkr _e ?? throw "null pointer dereference").index]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>), rbrack : (@:checkr _e ?? throw "null pointer dereference").rbrack } : stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>)) : stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr)) : stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr>);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L51"
                return (stdgo.Go.setRef((new stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr(stdgo.Go.asInterface(_e), _e) : stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr)) : stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L53"
        return null;
    }
