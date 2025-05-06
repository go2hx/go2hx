package stdgo._internal.go.ast;
function _walkDeclList(_v:stdgo._internal.go.ast.Ast_visitor.Visitor, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L37"
        for (__0 => _x in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L38"
            stdgo._internal.go.ast.Ast_walk.walk(_v, _x);
        };
    }
