package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_importspec_static_extension.ImportSpec_static_extension) class ImportSpec {
    public var doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public var name : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    public var path : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
    public var comment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public var endPos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public function new(?doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?name:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, ?path:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>, ?comment:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?endPos:stdgo._internal.go.token.Token_pos.Pos) {
        if (doc != null) this.doc = doc;
        if (name != null) this.name = name;
        if (path != null) this.path = path;
        if (comment != null) this.comment = comment;
        if (endPos != null) this.endPos = endPos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ImportSpec(doc, name, path, comment, endPos);
    }
}
