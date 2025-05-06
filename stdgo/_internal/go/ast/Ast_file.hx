package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_file_static_extension.File_static_extension) class File {
    public var doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public var package_ : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var name : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    public var decls : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
    public var fileStart : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var fileEnd : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var scope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
    public var imports : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>);
    public var unresolved : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
    public var comments : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
    public var goVersion : stdgo.GoString = "";
    public function new(?doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?package_:stdgo._internal.go.token.Token_pos.Pos, ?name:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, ?decls:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>, ?fileStart:stdgo._internal.go.token.Token_pos.Pos, ?fileEnd:stdgo._internal.go.token.Token_pos.Pos, ?scope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, ?imports:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>, ?unresolved:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>, ?comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>, ?goVersion:stdgo.GoString) {
        if (doc != null) this.doc = doc;
        if (package_ != null) this.package_ = package_;
        if (name != null) this.name = name;
        if (decls != null) this.decls = decls;
        if (fileStart != null) this.fileStart = fileStart;
        if (fileEnd != null) this.fileEnd = fileEnd;
        if (scope != null) this.scope = scope;
        if (imports != null) this.imports = imports;
        if (unresolved != null) this.unresolved = unresolved;
        if (comments != null) this.comments = comments;
        if (goVersion != null) this.goVersion = goVersion;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new File(
doc,
package_,
name,
decls,
fileStart,
fileEnd,
scope,
imports,
unresolved,
comments,
goVersion);
    }
}
