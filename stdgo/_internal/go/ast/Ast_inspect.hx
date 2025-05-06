package stdgo._internal.go.ast;
function inspect(_node:stdgo._internal.go.ast.Ast_node.Node, _f:stdgo._internal.go.ast.Ast_node.Node -> Bool):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L397"
        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface((_f : stdgo._internal.go.ast.Ast_t_inspector.T_inspector)), _node);
    }
