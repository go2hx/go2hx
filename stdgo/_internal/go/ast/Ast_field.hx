package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_field_static_extension.Field_static_extension) class Field {
    public var doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public var names : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
    public var type : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var tag : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
    public var comment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public function new(?doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?names:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>, ?type:stdgo._internal.go.ast.Ast_expr.Expr, ?tag:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>, ?comment:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>) {
        if (doc != null) this.doc = doc;
        if (names != null) this.names = names;
        if (type != null) this.type = type;
        if (tag != null) this.tag = tag;
        if (comment != null) this.comment = comment;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Field(doc, names, type, tag, comment);
    }
}
