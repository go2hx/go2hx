package stdgo._internal.go.printer;
@:structInit @:using(stdgo._internal.go.printer.Printer_commentednode_static_extension.CommentedNode_static_extension) class CommentedNode {
    public var node : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var comments : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
    public function new(?node:stdgo.AnyInterface, ?comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>) {
        if (node != null) this.node = node;
        if (comments != null) this.comments = comments;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CommentedNode(node, comments);
    }
}
