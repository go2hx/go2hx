package stdgo._internal.go.types;
function _trimTrailingEmptyStmts(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>):stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/stmt.go#L107"
        {
            var _i = (_list.length : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/stmt.go#L108"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_list[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>), _1 : false };
                    }, __0 = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/stmt.go#L109"
                        return (_list.__slice__(0, _i) : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
                    };
                };
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/stmt.go#L112"
        return (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
    }
