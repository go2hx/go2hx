package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_funcdecl_static_extension.FuncDecl_static_extension) class FuncDecl {
    public var doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public var recv : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
    public var name : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    public var type : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
    public function new(?doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?recv:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, ?name:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, ?type:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) {
        if (doc != null) this.doc = doc;
        if (recv != null) this.recv = recv;
        if (name != null) this.name = name;
        if (type != null) this.type = type;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FuncDecl(doc, recv, name, type, body);
    }
}
