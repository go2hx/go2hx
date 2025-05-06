package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_commentgroup_static_extension.CommentGroup_static_extension) class CommentGroup {
    public var list : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>);
    public function new(?list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>) {
        if (list != null) this.list = list;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CommentGroup(list);
    }
}
