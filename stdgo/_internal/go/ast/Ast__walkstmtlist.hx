package stdgo._internal.go.ast;
function _walkStmtList(_v:stdgo._internal.go.ast.Ast_visitor.Visitor, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L31"
        for (__0 => _x in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L32"
            stdgo._internal.go.ast.Ast_walk.walk(_v, _x);
        };
    }
