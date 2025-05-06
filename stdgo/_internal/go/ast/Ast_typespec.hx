package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_typespec_static_extension.TypeSpec_static_extension) class TypeSpec {
    public var doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public var name : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    public var typeParams : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
    public var assign : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var type : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var comment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public function new(?doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?name:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, ?typeParams:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, ?assign:stdgo._internal.go.token.Token_pos.Pos, ?type:stdgo._internal.go.ast.Ast_expr.Expr, ?comment:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>) {
        if (doc != null) this.doc = doc;
        if (name != null) this.name = name;
        if (typeParams != null) this.typeParams = typeParams;
        if (assign != null) this.assign = assign;
        if (type != null) this.type = type;
        if (comment != null) this.comment = comment;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TypeSpec(doc, name, typeParams, assign, type, comment);
    }
}
