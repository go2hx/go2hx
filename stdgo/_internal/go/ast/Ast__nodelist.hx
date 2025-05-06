package stdgo._internal.go.ast;
function _nodeList(_n:stdgo._internal.go.ast.Ast_node.Node):stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node> {
        var _list:stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node>);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L58"
        stdgo._internal.go.ast.Ast_inspect.inspect(_n, function(_n:stdgo._internal.go.ast.Ast_node.Node):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L60"
            {
                final __type__ = _n;
                if (__type__ == null || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L62"
                    return false;
                };
            };
            _list = (_list.__append__(_n) : stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node>);
            //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L65"
            return true;
        });
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L72"
        return _list;
    }
