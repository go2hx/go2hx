package stdgo._internal.go.types;
function _flattenUnion(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _x:stdgo._internal.go.ast.Ast_expr.Expr):{ var _0 : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>; var _1 : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>; } {
        var _blist = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>), _tlist = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L194"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>), _1 : false };
            }, _o = __tmp__._0, __0 = __tmp__._1;
            if ((({
                final value = _o;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _o ?? throw "null pointer dereference").op == (18 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.go.types.Types__flattenunion._flattenUnion(_list, (@:checkr _o ?? throw "null pointer dereference").x);
                    _blist = @:tmpset0 __tmp__._0;
                    _tlist = @:tmpset0 __tmp__._1;
                };
                _blist = (_blist.__append__(stdgo.Go.asInterface(_o)) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                _x = (@:checkr _o ?? throw "null pointer dereference").y;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L199"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>; var _1 : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>; } = { _0 : _blist, _1 : (_tlist.__append__(_x) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>) };
            _blist = __tmp__._0;
            _tlist = __tmp__._1;
            __tmp__;
        };
    }
